/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : x-admin-vue

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 30/06/2021 22:30:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作人',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'ip',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 273 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES (6, '用户 hello 登录系统', '2021-05-13 23:39:25', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (7, '用户 hello 登录系统', '2021-05-13 23:49:54', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (8, '用户 hello 登录系统', '2021-05-13 23:50:01', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (9, '用户 hello 登录系统', '2021-05-13 23:50:27', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (10, '更新用户：hello ', '2021-05-14 00:00:41', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (11, '更新角色：超级管理员', '2021-05-14 12:54:15', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (12, '更新角色：超级管理员', '2021-05-14 12:55:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (13, '更新角色：超级管理员', '2021-05-14 12:55:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (14, '更新角色：普通用户', '2021-05-14 12:55:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (15, '更新角色：普通用户', '2021-05-14 12:55:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (16, '更新角色：超级管理员', '2021-05-14 12:58:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (17, '更新角色：超级管理员', '2021-05-14 12:59:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (18, '更新角色：超级管理员', '2021-05-14 12:59:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (19, '更新角色：超级管理员', '2021-05-14 13:01:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (20, '更新角色：超级管理员', '2021-05-14 13:01:15', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (21, '更新角色：超级管理员', '2021-05-14 13:01:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (22, '更新角色：超级管理员', '2021-05-14 13:01:17', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (23, '更新角色：超级管理员', '2021-05-14 13:08:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (24, '更新角色：超级管理员', '2021-05-14 13:09:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (25, '更新角色：超级管理员', '2021-05-14 13:09:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (26, '更新角色：超级管理员', '2021-05-14 13:09:33', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (27, '更新角色：超级管理员', '2021-05-14 13:09:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (28, '更新角色：超级管理员', '2021-05-14 13:09:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (29, '更新角色：超级管理员', '2021-05-14 13:09:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (30, '更新角色：超级管理员', '2021-05-14 13:15:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (31, '更新角色：超级管理员', '2021-05-14 13:30:31', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (32, '更新角色：超级管理员', '2021-05-14 13:30:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (33, '更新角色：超级管理员', '2021-05-14 13:31:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (34, '更新角色：超级管理员', '2021-05-14 13:31:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (35, '删除权限菜单：日志管理', '2021-05-14 13:33:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (36, '用户 admin 登录系统', '2021-05-14 13:39:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (37, '用户 admin 登录系统', '2021-05-14 13:40:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (38, '用户 admin 登录系统', '2021-05-14 14:38:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (39, '用户 admin 登录系统', '2021-05-14 14:38:39', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (40, '用户 admin 登录系统', '2021-05-14 14:38:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (41, '用户 admin 登录系统', '2021-05-14 14:39:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (42, '用户 admin 登录系统', '2021-05-14 14:41:25', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (43, '用户 admin 登录系统', '2021-05-14 14:43:17', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (44, '用户 admin 登录系统', '2021-05-14 14:43:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (45, '用户 admin 登录系统', '2021-05-14 14:44:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (46, '用户 admin 登录系统', '2021-05-14 14:45:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (47, '用户 admin 登录系统', '2021-05-14 14:47:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (48, '用户 admin 登录系统', '2021-05-14 14:47:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (49, '用户 admin 登录系统', '2021-05-14 14:53:20', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (50, '用户 admin 登录系统', '2021-05-14 14:53:39', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (51, '用户 admin 登录系统', '2021-05-14 14:54:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (52, '用户 admin 登录系统', '2021-05-14 14:55:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (53, '用户 admin 登录系统', '2021-05-14 14:56:27', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (54, '用户 admin 登录系统', '2021-05-14 14:58:58', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (55, '用户 admin 登录系统', '2021-05-14 15:02:48', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (56, '用户 admin 登录系统', '2021-05-14 15:03:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (57, '用户 admin 登录系统', '2021-05-14 15:03:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (58, '用户 admin 登录系统', '2021-05-14 15:06:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (59, '用户 admin 登录系统', '2021-05-14 15:06:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (60, '用户 admin 登录系统', '2021-05-14 15:07:27', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (61, '用户 admin 登录系统', '2021-05-14 15:07:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (62, '用户 admin 登录系统', '2021-05-14 15:08:25', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (63, '用户 admin 登录系统', '2021-05-14 15:09:55', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (64, '用户 admin 登录系统', '2021-05-14 15:10:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (65, '用户 admin 登录系统', '2021-05-14 16:16:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (66, '用户 admin 登录系统', '2021-05-14 16:27:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (67, '用户 admin 登录系统', '2021-05-14 16:27:48', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (68, '用户 admin 登录系统', '2021-05-14 16:27:58', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (69, '用户 admin 登录系统', '2021-05-14 16:28:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (70, '用户 admin 登录系统', '2021-05-14 16:28:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (71, '用户 admin 登录系统', '2021-05-14 16:29:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (72, '用户 admin 登录系统', '2021-05-14 16:33:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (73, '用户 admin 登录系统', '2021-05-14 16:36:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (74, '用户 admin 登录系统', '2021-05-14 16:36:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (75, '用户 admin 登录系统', '2021-05-14 16:37:37', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (76, '用户 admin 登录系统', '2021-05-14 16:38:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (77, '用户 admin 登录系统', '2021-05-14 16:38:27', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (78, '用户 admin 登录系统', '2021-05-14 16:38:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (79, '用户 admin 登录系统', '2021-05-14 16:44:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (80, '用户 admin 登录系统', '2021-05-14 16:44:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (81, '用户 admin 登录系统', '2021-05-14 16:44:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (82, '用户 admin 登录系统', '2021-05-14 16:49:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (83, '用户 admin 登录系统', '2021-05-14 16:49:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (84, '用户 admin 登录系统', '2021-05-14 16:52:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (85, '用户 admin 登录系统', '2021-05-14 16:52:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (86, '用户 admin 登录系统', '2021-05-14 17:05:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (87, '用户 admin 登录系统', '2021-05-14 17:12:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (88, '更新角色：超级管理员', '2021-05-14 17:15:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (89, '更新角色：超级管理员', '2021-05-14 17:15:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (90, '更新角色：超级管理员', '2021-05-14 17:15:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (91, '更新角色：超级管理员', '2021-05-14 17:15:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (92, '更新角色：超级管理员', '2021-05-14 17:16:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (93, '更新角色：超级管理员', '2021-05-14 17:16:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (94, '更新角色：超级管理员', '2021-05-14 17:16:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (95, '更新角色：超级管理员', '2021-05-14 17:16:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (96, '更新角色：超级管理员', '2021-05-14 17:16:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (97, '更新角色：超级管理员', '2021-05-14 17:16:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (98, '更新角色：超级管理员', '2021-05-14 17:16:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (99, '更新角色：超级管理员', '2021-05-14 17:16:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (100, '用户 admin 登录系统', '2021-05-14 17:17:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (101, '用户 admin 登录系统', '2021-05-14 17:17:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (102, '用户 admin 登录系统', '2021-05-14 17:17:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (103, '用户 admin 登录系统', '2021-05-14 17:17:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (104, '删除权限菜单：日志管理', '2021-05-14 17:20:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (105, '新增权限菜单：1', '2021-05-14 17:21:05', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (106, '更新角色：超级管理员', '2021-05-14 17:21:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (107, '更新角色：超级管理员', '2021-05-14 17:21:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (108, '更新角色：超级管理员', '2021-05-14 17:21:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (109, '更新角色：超级管理员', '2021-05-14 17:25:33', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (110, '更新角色：超级管理员', '2021-05-14 17:25:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (111, '更新角色：超级管理员', '2021-05-14 17:25:37', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (112, '用户 admin 登录系统', '2021-05-14 17:42:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (113, '用户 admin 登录系统', '2021-05-14 17:43:17', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (114, '更新角色：超级管理员', '2021-05-14 17:43:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (115, '用户 admin 登录系统', '2021-05-14 17:43:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (116, '更新角色：超级管理员', '2021-05-14 17:45:51', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (117, '更新角色：超级管理员', '2021-05-14 17:45:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (118, '更新角色：超级管理员', '2021-05-14 17:46:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (119, '更新角色：超级管理员', '2021-05-14 17:46:25', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (120, '更新角色：超级管理员', '2021-05-14 17:46:27', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (121, '更新角色：超级管理员', '2021-05-14 17:46:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (122, '更新角色：超级管理员', '2021-05-14 18:02:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (123, '用户 admin 登录系统', '2021-05-14 18:06:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (124, '用户 admin 登录系统', '2021-05-14 18:11:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (125, '用户 admin 登录系统', '2021-05-14 18:13:01', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (126, '用户 admin 登录系统', '2021-05-14 18:13:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (127, '用户 admin 登录系统', '2021-05-14 18:15:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (128, '用户 admin 登录系统', '2021-05-14 18:17:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (129, '用户 admin 登录系统', '2021-05-14 18:18:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (130, '更新角色：超级管理员', '2021-05-14 18:18:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (131, '更新角色：超级管理员', '2021-05-14 18:18:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (132, '更新角色：超级管理员', '2021-05-14 18:18:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (133, '用户 admin 登录系统', '2021-05-14 18:31:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (134, '用户 admin 登录系统', '2021-05-14 18:33:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (135, '用户 admin 登录系统', '2021-05-14 18:33:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (136, '用户 admin 登录系统', '2021-05-14 18:34:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (137, '用户 admin 登录系统', '2021-05-14 18:34:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (138, '用户 admin 登录系统', '2021-05-14 18:37:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (139, '更新角色：超级管理员', '2021-05-14 18:38:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (140, '更新角色：超级管理员', '2021-05-14 18:38:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (141, '更新角色：超级管理员', '2021-05-14 18:38:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (142, '用户 admin 登录系统', '2021-05-14 18:47:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (143, '更新角色：超级管理员', '2021-05-14 18:47:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (144, '用户 admin 登录系统', '2021-05-14 19:13:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (145, '用户 admin 登录系统', '2021-05-14 19:19:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (146, '用户 admin 登录系统', '2021-05-14 19:19:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (147, '用户 admin 登录系统', '2021-05-14 19:48:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (148, '更新角色：超级管理员', '2021-05-14 19:48:05', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (149, '用户 admin 登录系统', '2021-05-14 19:56:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (150, '更新角色：超级管理员', '2021-05-14 20:00:15', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (151, '更新角色：超级管理员', '2021-05-14 20:00:17', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (152, '更新角色：超级管理员', '2021-05-14 20:00:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (153, '更新角色：超级管理员', '2021-05-14 20:02:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (154, '删除权限菜单：1', '2021-05-14 20:02:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (155, '新增权限菜单：1', '2021-05-14 20:05:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (156, '更新角色：超级管理员', '2021-05-14 20:05:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (157, '更新角色：超级管理员', '2021-05-14 20:05:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (158, '删除权限菜单：1', '2021-05-14 20:05:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (159, '更新角色：超级管理员', '2021-05-14 20:05:33', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (160, '新增权限菜单：1', '2021-05-14 20:06:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (161, '更新角色：超级管理员', '2021-05-14 20:06:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (162, '删除权限菜单：1', '2021-05-14 20:06:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (163, '新增权限菜单：2', '2021-05-14 20:41:09', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (164, '更新角色：超级管理员', '2021-05-14 20:41:12', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (165, '更新角色：超级管理员', '2021-05-14 20:41:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (166, '删除权限菜单：2', '2021-05-14 20:41:20', 'admin', '127.0.0.1');
INSERT INTO `t_log` VALUES (167, '新增权限菜单：2', '2021-05-14 20:42:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (168, '删除权限菜单：2', '2021-05-14 20:42:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (169, '删除权限菜单：2', '2021-05-14 20:43:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (170, '新增权限菜单：1', '2021-05-14 20:44:59', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (171, '更新角色：超级管理员', '2021-05-14 20:45:01', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (172, '删除权限菜单：1', '2021-05-14 20:45:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (173, '新增权限菜单：1', '2021-05-14 22:03:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (174, '更新角色：超级管理员', '2021-05-14 22:03:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (175, '删除权限菜单：1', '2021-05-14 22:03:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (176, '用户 admin 登录系统', '2021-05-14 22:05:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (177, '用户 admin 登录系统', '2021-05-14 22:06:51', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (178, '新增权限菜单：1', '2021-05-14 22:06:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (179, '更新角色：超级管理员', '2021-05-14 22:07:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (180, '删除权限菜单：1', '2021-05-14 22:07:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (181, '新增权限菜单：22', '2021-05-14 22:11:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (182, '更新角色：超级管理员', '2021-05-14 22:11:40', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (183, '更新角色：超级管理员', '2021-05-14 22:11:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (184, '删除权限菜单：22', '2021-05-14 22:11:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (185, '用户 admin 登录系统', '2021-05-15 23:18:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (186, '更新用户：admin ', '2021-05-15 23:22:25', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (187, '用户 admin 登录系统', '2021-05-15 23:37:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (188, '用户 admin 登录系统', '2021-05-17 19:35:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (189, '用户 admin 登录系统', '2021-05-17 19:36:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (190, '用户 admin 登录系统', '2021-05-17 19:37:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (191, '用户 admin 登录系统', '2021-05-17 19:42:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (192, '用户 admin 登录系统', '2021-05-17 20:00:25', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (193, '用户 admin 登录系统', '2021-05-24 17:37:59', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (194, '用户 admin 登录系统', '2021-05-24 17:55:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (195, '更新用户：jerry ', '2021-05-24 17:57:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (196, '更新用户：jack ', '2021-05-24 17:57:51', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (197, '用户 admin 登录系统', '2021-05-24 18:02:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (198, '用户 hello 登录系统', '2021-05-24 18:15:41', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (199, '更新用户：hello ', '2021-05-24 18:17:40', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (200, '用户 admin 登录系统', '2021-05-26 13:47:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (201, '新增权限菜单：留言板', '2021-05-26 13:51:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (202, '更新权限菜单：留言板', '2021-05-26 13:51:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (203, '更新角色：超级管理员', '2021-05-26 13:51:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (204, '更新用户：admin ', '2021-05-26 13:51:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (205, '用户 admin 登录系统', '2021-05-26 13:53:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (206, '更新用户：admin ', '2021-05-26 13:53:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (207, '用户 hello 登录系统', '2021-05-26 13:53:40', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (208, '用户 admin 登录系统', '2021-05-26 13:54:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (209, '用户 hello 登录系统', '2021-05-26 13:54:55', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (210, '用户 admin 登录系统', '2021-05-26 13:55:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (211, '更新角色：普通用户', '2021-05-26 13:55:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (212, '用户 hello 登录系统', '2021-05-26 13:55:24', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (213, '更新用户：hello ', '2021-05-26 13:55:32', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (214, '用户 admin 登录系统', '2021-05-26 13:55:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (215, '用户 admin 登录系统', '2021-05-26 13:58:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (216, '用户 admin 登录系统', '2021-05-26 14:13:33', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (217, '用户 admin 登录系统', '2021-05-26 14:14:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (218, '用户 admin 登录系统', '2021-05-26 14:14:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (219, '更新用户：admin ', '2021-05-26 14:19:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (220, '用户 admin 登录系统', '2021-05-26 14:38:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (221, '更新角色：超级管理员', '2021-05-26 14:39:05', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (222, '更新角色：超级管理员', '2021-05-26 14:39:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (223, '更新用户：admin ', '2021-05-26 14:40:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (224, '用户 admin 登录系统', '2021-05-26 14:41:59', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (225, '更新角色：超级管理员', '2021-05-26 14:49:59', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (226, '更新权限菜单：我的管理管理', '2021-05-26 14:50:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (227, '用户 admin 登录系统', '2021-05-27 11:19:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (228, '用户 admin 登录系统', '2021-05-27 11:23:33', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (229, '用户 hello 登录系统', '2021-06-17 14:59:31', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (230, '用户 admin 登录系统', '2021-06-17 14:59:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (231, '用户 admin 登录系统', '2021-06-27 18:06:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (232, '更新角色：超级管理员', '2021-06-27 18:06:39', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (233, '更新角色：超级管理员', '2021-06-27 18:06:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (234, '用户 admin 登录系统', '2021-06-27 18:14:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (235, '更新角色：超级管理员', '2021-06-27 18:14:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (236, '更新角色：超级管理员', '2021-06-27 18:14:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (237, '更新角色：超级管理员', '2021-06-27 18:17:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (238, '更新角色：超级管理员', '2021-06-27 18:17:05', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (239, '更新角色：超级管理员', '2021-06-27 18:22:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (240, '更新角色：超级管理员', '2021-06-27 18:22:20', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (241, '用户 admin 登录系统', '2021-06-30 12:23:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (242, '用户 admin 登录系统', '2021-06-30 19:19:39', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (243, '更新权限菜单：系统管理', '2021-06-30 19:28:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (244, '更新权限菜单：系统管理', '2021-06-30 19:29:05', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (245, '用户 admin 登录系统', '2021-06-30 19:37:51', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (246, '更新角色：超级管理员', '2021-06-30 19:48:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (247, '用户 admin 登录系统', '2021-06-30 21:29:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (248, '用户 admin 登录系统', '2021-06-30 21:30:05', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (249, '用户 admin 登录系统', '2021-06-30 21:38:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (250, '用户 admin 登录系统', '2021-06-30 21:41:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (251, '用户 admin 登录系统', '2021-06-30 21:41:25', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (252, '用户 admin 登录系统', '2021-06-30 21:41:48', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (253, '用户 admin 登录系统', '2021-06-30 21:44:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (254, '用户 admin 登录系统', '2021-06-30 21:46:17', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (255, '用户 admin 登录系统', '2021-06-30 21:48:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (256, '用户 admin 登录系统', '2021-06-30 21:49:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (257, '用户 admin 登录系统', '2021-06-30 21:50:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (258, '用户 admin 登录系统', '2021-06-30 21:53:43', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (259, '用户 admin 登录系统', '2021-06-30 21:54:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (260, '用户 admin 登录系统', '2021-06-30 21:59:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (261, '用户 admin 登录系统', '2021-06-30 21:59:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (262, '用户 admin 登录系统', '2021-06-30 22:01:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (263, '用户 admin 登录系统', '2021-06-30 22:02:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (264, '更新角色：普通用户', '2021-06-30 22:16:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (265, '用户 admin 登录系统', '2021-06-30 22:16:27', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (266, '用户 hello 登录系统', '2021-06-30 22:19:09', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (267, '用户 admin 登录系统', '2021-06-30 22:19:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (268, '用户 admin 登录系统', '2021-06-30 22:19:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (269, '用户 admin 登录系统', '2021-06-30 22:22:48', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (270, '用户 admin 登录系统', '2021-06-30 22:24:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (271, '用户 hello 登录系统', '2021-06-30 22:25:02', 'hello', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES (272, '用户 admin 登录系统', '2021-06-30 22:25:12', 'admin', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论人',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论时间',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父ID',
  `foreign_id` bigint(20) NULL DEFAULT 0 COMMENT '关联id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '留言表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES (20, '哈哈哈', 'admin', '2021-05-22 10:48:55', NULL, 0);
INSERT INTO `t_message` VALUES (21, '哦豁', 'admin', '2021-05-22 10:49:48', NULL, 0);
INSERT INTO `t_message` VALUES (22, '老弟', 'admin', '2021-05-22 10:51:07', 21, 0);
INSERT INTO `t_message` VALUES (23, '哈哈哈', 'hello', '2021-05-24 17:13:45', 22, 0);
INSERT INTO `t_message` VALUES (24, '我们都爱吃大西瓜', 'hello', '2021-05-24 17:13:58', NULL, 0);
INSERT INTO `t_message` VALUES (26, '111', 'admin', '2021-05-26 14:40:32', 24, 0);

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES (1, 'QQ付费群 929481338', 'QQ付费群提供关于本项目的一切问题解答、技术指导，分享实战项目源码，带你做项目。', '2021-04-16 17:54:10');
INSERT INTO `t_notice` VALUES (2, '学习', '别问！问就是3连！', '2021-05-17 15:29:29');
INSERT INTO `t_notice` VALUES (3, '快乐是什么？', '快乐就是一杯咖啡，一个键盘，从早到晚', '2021-05-17 15:30:08');

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单路径',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `parent` bigint(20) NULL DEFAULT 0 COMMENT '父节点id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES (1, '首页', '首页', '/home', 's-home', 0);
INSERT INTO `t_permission` VALUES (2, '用户管理', '用户管理', '/user', 'user-solid', 15);
INSERT INTO `t_permission` VALUES (3, '角色管理', '角色管理', '/role', 's-cooperation', 15);
INSERT INTO `t_permission` VALUES (4, '菜单管理', '菜单管理', '/permission', 'menu', 15);
INSERT INTO `t_permission` VALUES (5, '公告管理', '公告管理', '/notice', 'data-board', 0);
INSERT INTO `t_permission` VALUES (6, '日志管理', '日志管理', '/log', 'notebook-2', 0);
INSERT INTO `t_permission` VALUES (7, '留言板', '留言板', '/message', 'message', 0);
INSERT INTO `t_permission` VALUES (15, '系统管理', '系统管理', '/system', 's-tools', 0);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `permission` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限列表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '超级管理员', '所有权限', '[1,5,6,7,15,2,3,4]');
INSERT INTO `t_role` VALUES (2, '普通用户', '部分权限', '[1,5,6,7]');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', 'admin', '管理员', '111124444', '13978786565', '1622011254634', '[1]', '北京', 20);
INSERT INTO `t_user` VALUES (11, 'tom', '123456', '汤姆', 'tom@qq.com', '13685249632', '1616271650817', '[2]', '上海', 20);
INSERT INTO `t_user` VALUES (21, 'hello', '123456', '哈喽', 'hello@qq.com', '13695285413', '1622008532581', '[2]', '北京', 25);
INSERT INTO `t_user` VALUES (22, 'jack', '123456', '杰克', 'jack@qq.com', '13878549623', NULL, '[2]', '合肥', 30);
INSERT INTO `t_user` VALUES (23, 'jerry', '123456', '杰瑞', 'jerry@163.com', '13696965656', NULL, '[2]', '北京', 21);

SET FOREIGN_KEY_CHECKS = 1;
