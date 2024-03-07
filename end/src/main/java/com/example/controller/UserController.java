package com.example.controller;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.io.FileUtil;
import cn.hutool.core.io.IoUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.common.Result;
import com.example.entity.User;
import com.example.exception.CustomException;
import com.example.service.LogService;
import com.example.service.UserService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/user")
public class UserController {

    @Resource
    private UserService userService;

    @Resource
    private LogService logService;

    /**
     * 登录
     *
     * @param user
     * @return
     */
    @PostMapping("/login")
    public Result<User> login(@RequestBody User user) {
        User res = userService.login(user);
        // 生成token
        String token = JWT.create().withAudience(res.getUsername()).sign(Algorithm.HMAC256(res.getPassword()));
        res.setToken(token);

        logService.log(user.getUsername(), StrUtil.format("用户 {} 登录系统", user.getUsername()));
        return Result.success(res);
    }

    /**
     * 注册
     *
     * @param user
     * @param request
     * @return
     */
    @PostMapping("/register")
    public Result<User> register(@RequestBody User user, HttpServletRequest request) {
        if (user.getPassword() == null) {
            user.setPassword("123456");
        }
        User dbUser = userService.register(user);
        request.getSession().setAttribute("user", user);

        logService.log(user.getUsername(), StrUtil.format("用户 {} 注册账号成功", user.getUsername()));
        return Result.success(dbUser);
    }


    @PostMapping
    public Result<?> save(@RequestBody User user) {
        if (user.getPassword() == null) {
            user.setPassword("123456");
        }
        User one = userService.getOne((Wrappers.<User>lambdaQuery().eq(User::getUsername, user.getUsername())));
        if (one != null) {
            throw new CustomException("-1", "用户已存在");
        }

        logService.log(StrUtil.format("新增用户：{} ", user.getUsername()));
        return Result.success(userService.save(user));
    }

    @PutMapping
    public Result<?> update(@RequestBody User user) {
        logService.log(StrUtil.format("更新用户：{} ", user.getUsername()));
        return Result.success(userService.updateById(user));
    }

    @PutMapping("/reset")
    public Result<?> reset(@RequestBody User user) {
        if (StrUtil.isBlank(user.getUsername())) {
            throw new CustomException("-1", "用户名不能为空");
        }
        User one = userService.getOne(Wrappers.<User>lambdaQuery().eq(User::getUsername, user.getUsername()));
        if (one == null) {
            throw new CustomException("-1", "未找到用户");
        }
        if (one.getPhone() != null && !one.getPhone().equals(user.getPhone())) {
            throw new CustomException("-1", "电话号码不匹配");
        }
        one.setPassword(user.getPassword());
        return Result.success(userService.updateById(one));
    }


    @DeleteMapping("/{id}")
    public Result<?> delete(@PathVariable Long id) {
        User user = userService.getById(id);
        logService.log(StrUtil.format("删除用户 {} ", user.getUsername()));

        userService.removeById(id);
        return Result.success();
    }

    @GetMapping("/{id}")
    public Result<User> findById(@PathVariable Long id) {
        return Result.success(userService.findById(id));
    }

    @GetMapping
    public Result<List<User>> findAll() {
        return Result.success(userService.list());
    }

    @GetMapping("/page")
    public Result<IPage<User>> findPage(@RequestParam(required = false, defaultValue = "") String name,
                                        @RequestParam(required = false, defaultValue = "1") Integer pageNum,
                                        @RequestParam(required = false, defaultValue = "10") Integer pageSize) {
        LambdaQueryWrapper<User> wrapper = Wrappers.<User>lambdaQuery().ne(User::getUsername, "admin").like(User::getUsername, name).orderByDesc(User::getId);
        return Result.success(userService.page(new Page<>(pageNum, pageSize), wrapper));
    }

    @GetMapping("/export")
    public void export(HttpServletResponse response) throws IOException {

        List<Map<String, Object>> list = CollUtil.newArrayList();

        List<User> all = userService.list();
        for (User user : all) {
            Map<String, Object> row1 = new LinkedHashMap<>();
            row1.put("名称", user.getUsername());
            row1.put("手机", user.getPhone());
            row1.put("邮箱", user.getEmail());
            list.add(row1);
        }

        // 2. 写excel
        ExcelWriter writer = ExcelUtil.getWriter(true);
        writer.write(list, true);

        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        String fileName = URLEncoder.encode("用户信息", "UTF-8");
        response.setHeader("Content-Disposition", "attachment;filename=" + fileName + ".xlsx");

        ServletOutputStream out = response.getOutputStream();
        writer.flush(out, true);
        writer.close();
        IoUtil.close(System.out);
    }

    @GetMapping("/upload/{fileId}")
    public Result<?> upload(@PathVariable String fileId) {
        String basePath = System.getProperty("user.dir") + "/src/main/resources/static/file/";
        List<String> fileNames = FileUtil.listFileNames(basePath);
        String file = fileNames.stream().filter(name -> name.contains(fileId)).findAny().orElse("");
        List<List<Object>> lists = ExcelUtil.getReader(basePath + file).read(1);
        List<User> saveList = new ArrayList<>();
        for (List<Object> row : lists) {
            User user = new User();
            user.setUsername((String) row.get(0));
            user.setNickName((String) row.get(1));
            user.setEmail((String) row.get(2));
            user.setPhone((String) row.get(3));
            saveList.add(user);
        }
        userService.saveBatch(saveList);
        return Result.success();
    }

}
