/*
 Navicat Premium Data Transfer

 Source Server         : 本地MYSQL
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : fastcc

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 06/03/2024 17:00:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `casbin_rule`;
CREATE TABLE `casbin_rule`  (
  `ptype` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v0` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v1` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v2` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v3` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v4` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v5` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of casbin_rule
-- ----------------------------
INSERT INTO `casbin_rule` VALUES ('p', '1', '28', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '30', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '3', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '4', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '11', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '12', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '13', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '14', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '19', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '20', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '21', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '23', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '24', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '25', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'u_3', '1', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'u_3', '2', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '31', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '34', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'u_31', '2', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '33', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '29', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '32', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '2', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '15', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '26', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '22', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '10', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '1', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '35', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '27', 'All', '', '', '');

-- ----------------------------
-- Table structure for sys_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_rule`;
CREATE TABLE `sys_auth_rule`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '父ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `menu_type` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型 0目录 1菜单 2按钮',
  `weigh` int NOT NULL DEFAULT 0 COMMENT '权重',
  `is_hide` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '显示状态',
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '组件路径',
  `is_link` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否外链 1是 0否',
  `module_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '所属模块',
  `model_id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '模型ID',
  `is_iframe` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否内嵌iframe',
  `is_cached` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否缓存',
  `redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '路由重定向地址',
  `is_affix` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否固定',
  `link_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '链接地址',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE,
  INDEX `pid`(`pid` ASC) USING BTREE,
  INDEX `weigh`(`weigh` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单节点表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_auth_rule
-- ----------------------------
INSERT INTO `sys_auth_rule` VALUES (1, 0, 'api/v1/system/auth', '职务管理', 'ele-Stamp', '', '', 0, 30, 0, '/system/auth', 'layout/routerView/parent', 0, '', 0, 0, 1, '0', 0, '', '2022-03-24 15:03:37', '2024-03-06 08:20:32');
INSERT INTO `sys_auth_rule` VALUES (2, 0, 'api/v1/system/auth/menuList', '系统管理', 'ele-Calendar', '', '', 0, 0, 0, '/system/auth/menuList', 'system/menu/index', 0, '', 0, 0, 1, '', 0, '', '2022-03-24 17:24:13', '2024-03-06 08:11:07');
INSERT INTO `sys_auth_rule` VALUES (3, 2, 'api/v1/system/menu/add', '添加菜单', '', '', '', 2, 0, 0, '', '', 0, '', 0, 0, 1, '', 0, '', '2022-03-29 16:48:43', '2022-03-29 17:05:19');
INSERT INTO `sys_auth_rule` VALUES (4, 2, 'api/v1/system/menu/update', '修改菜单', '', '', '', 2, 0, 0, '', '', 0, '', 0, 0, 1, '', 0, '', '2022-03-29 17:04:25', '2022-03-29 18:11:36');
INSERT INTO `sys_auth_rule` VALUES (10, 1, 'api/v1/system/role/list', '角色管理', 'iconfont icon-juxingkaobei', '', '', 1, 0, 0, '/system/auth/roleList', 'system/role/index', 0, '', 0, 0, 1, '', 0, '', '2022-03-29 18:15:03', '2024-03-06 08:19:34');
INSERT INTO `sys_auth_rule` VALUES (11, 2, 'api/v1/system/menu/delete', '删除菜单', '', '', '', 2, 0, 0, '', '', 0, '', 0, 0, 1, '', 0, '', '2022-04-06 14:49:10', '2022-04-06 14:49:17');
INSERT INTO `sys_auth_rule` VALUES (12, 10, 'api/v1/system/role/add', '添加角色', '', '', '', 2, 0, 0, '', '', 0, '', 0, 0, 1, '', 0, '', '2022-04-06 14:49:46', '2022-04-06 14:49:46');
INSERT INTO `sys_auth_rule` VALUES (13, 10, '/api/v1/system/role/edit', '修改角色', '', '', '', 2, 0, 0, '', '', 0, '', 0, 0, 1, '', 0, '', '2022-04-06 14:50:08', '2022-04-06 14:50:08');
INSERT INTO `sys_auth_rule` VALUES (14, 10, '/api/v1/system/role/delete', '删除角色', '', '', '', 2, 0, 0, '', '', 0, '', 0, 0, 1, '', 0, '', '2022-04-06 14:50:22', '2022-04-06 14:50:22');
INSERT INTO `sys_auth_rule` VALUES (15, 0, 'api/v1/system/dept/list', '部门管理', 'iconfont icon-siweidaotu', '', '', 0, 0, 0, '/system/auth/deptList', 'system/dept/index', 0, '', 0, 0, 1, '', 0, '', '2022-04-06 14:52:23', '2024-03-06 08:11:28');
INSERT INTO `sys_auth_rule` VALUES (19, 15, 'api/v1/system/dept/add', '添加部门', '', '', '', 2, 0, 0, '', '', 0, '', 0, 0, 1, '', 0, '', '2022-04-07 22:56:39', '2022-04-07 22:56:39');
INSERT INTO `sys_auth_rule` VALUES (20, 15, 'api/v1/system/dept/edit', '修改部门', '', '', '', 2, 0, 0, '', '', 0, '', 0, 0, 1, '', 0, '', '2022-04-07 22:57:00', '2022-04-07 22:57:00');
INSERT INTO `sys_auth_rule` VALUES (21, 15, 'api/v1/system/dept/delete', '删除部门', '', '', '', 2, 0, 0, '', '', 0, '', 0, 0, 1, '', 0, '', '2022-04-07 22:57:30', '2022-04-07 22:57:30');
INSERT INTO `sys_auth_rule` VALUES (22, 1, 'api/v1/system/post/list', '岗位管理', 'iconfont icon-neiqianshujuchucun', '', '', 1, 0, 0, '/system/auth/postList', 'system/post/index', 0, '', 0, 0, 1, '', 0, '', '2022-04-07 22:58:46', '2024-03-06 08:19:25');
INSERT INTO `sys_auth_rule` VALUES (23, 22, 'api/v1/system/post/add', '添加岗位', '', '', '', 2, 0, 0, '', '', 0, '', 0, 0, 1, '', 0, '', '2022-04-09 14:14:49', '2022-04-09 14:14:49');
INSERT INTO `sys_auth_rule` VALUES (24, 22, 'api/v1/system/post/edit', '修改岗位', '', '', '', 2, 0, 0, '', '', 0, '', 0, 0, 1, '', 0, '', '2022-04-09 14:15:25', '2022-04-09 14:15:25');
INSERT INTO `sys_auth_rule` VALUES (25, 22, 'api/v1/system/post/delete', '删除岗位', '', '', '', 2, 0, 0, '', '', 0, '', 0, 0, 1, '', 0, '', '2022-04-09 14:15:47', '2022-04-09 14:15:47');
INSERT INTO `sys_auth_rule` VALUES (26, 0, 'api/v1/system/user/list', '人员管理', 'ele-User', '', '', 0, 0, 0, '/system/auth/user/list', 'system/user/index', 0, '', 0, 0, 1, '', 0, '', '2022-04-09 14:19:10', '2024-03-06 08:16:12');
INSERT INTO `sys_auth_rule` VALUES (27, 0, 'api/v1/system/dict', '系统配置', 'iconfont icon-shuxingtu', '', '', 0, 40, 0, '/system/dict', 'layout/routerView/parent', 0, '', 0, 0, 1, '654', 0, '', '2022-04-14 16:28:51', '2024-03-06 08:59:14');
INSERT INTO `sys_auth_rule` VALUES (28, 27, 'api/v1/system/dict/type/list', '字典管理', 'iconfont icon-crew_feature', '', '', 1, 0, 0, '/system/dict/type/list', 'system/dict/index', 0, '', 0, 0, 1, '', 0, '', '2022-04-14 16:32:10', '2022-04-16 17:02:50');
INSERT INTO `sys_auth_rule` VALUES (29, 27, 'api/v1/system/dict/dataList', '字典数据管理', 'iconfont icon-putong', '', '', 1, 0, 0, '/system/dict/data/list/:dictType', 'system/dict/dataList', 0, '', 0, 0, 1, '', 0, '', '2022-04-18 12:04:17', '2024-03-06 02:17:37');
INSERT INTO `sys_auth_rule` VALUES (30, 27, 'api/v1/system/config/list', '参数管理', 'ele-Cherry', '', '', 1, 0, 0, '/system/config/list', 'system/config/index', 0, '', 0, 0, 1, '', 0, '', '2022-04-18 21:05:20', '2022-04-18 21:13:19');
INSERT INTO `sys_auth_rule` VALUES (31, 0, 'api/v1/system/monitor', '系统监控', 'iconfont icon-xuanzeqi', '', '', 0, 30, 0, '/system/monitor', 'layout/routerView/parent', 0, '', 0, 0, 1, '', 0, '', '2022-04-19 10:40:19', '2022-04-19 10:44:38');
INSERT INTO `sys_auth_rule` VALUES (32, 31, 'api/v1/system/monitor/server', '服务监控', 'iconfont icon-shuju', '', '', 0, 0, 0, '/system/monitor/server', 'system/monitor/server/index', 0, '', 0, 0, 1, '', 0, '', '2022-04-19 10:43:32', '2024-03-06 02:23:09');
INSERT INTO `sys_auth_rule` VALUES (33, 35, 'api/swagger', 'api文档', 'iconfont icon--chaifenlie', '', '', 1, 0, 0, '/system/swagger', 'layout/routerView/iframes', 1, '', 0, 1, 1, '', 0, 'http://localhost:8808/swagger', '2022-04-21 09:23:43', '2022-11-29 17:10:35');
INSERT INTO `sys_auth_rule` VALUES (34, 31, 'api/v1/system/loginLog/list', '登录日志', 'ele-Finished', '', '', 1, 0, 0, '/system/monitor/loginLog', 'system/monitor/loginLog/index', 0, '', 0, 0, 1, '', 0, '', '2022-04-28 09:59:47', '2022-04-28 09:59:47');
INSERT INTO `sys_auth_rule` VALUES (35, 0, 'api/v1/system/tools', 'api文档', 'iconfont icon-zujian', '', '', 0, 25, 0, '/system/tools', 'layout/routerView/parent', 0, '', 0, 0, 1, '', 0, '', '2022-10-26 09:29:08', '2024-03-06 08:46:50');
INSERT INTO `sys_auth_rule` VALUES (38, 31, 'api/v1/system/operLog/list', '操作日志', 'iconfont icon-bolangnengshiyanchang', '', '', 1, 0, 0, '/system/monitor/operLog', 'system/monitor/operLog/index', 0, '', 0, 0, 1, '', 0, '', '2022-12-23 16:19:05', '2022-12-23 16:21:50');
INSERT INTO `sys_auth_rule` VALUES (39, 31, 'api/v1/system/online/list', '在线用户', 'iconfont icon-skin', '', '', 1, 0, 0, '/system/monitor/userOnlie', 'system/monitor/userOnline/index', 0, '', 0, 0, 1, '', 0, '', '2023-01-11 15:48:06', '2023-01-11 17:02:39');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` tinyint(1) NULL DEFAULT 0 COMMENT '系统内置（Y是 N否）',
  `create_by` int UNSIGNED NULL DEFAULT 0 COMMENT '创建者',
  `update_by` int UNSIGNED NULL DEFAULT 0 COMMENT '更新者',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`config_id`) USING BTREE,
  UNIQUE INDEX `uni_config_key`(`config_key` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '文件上传-文件大小', 'sys.uploadFile.fileSize', '50M', 1, 31, 31, '文件上传大小限制', NULL, '2021-07-06 14:57:35');
INSERT INTO `sys_config` VALUES (2, '文件上传-文件类型', 'sys.uploadFile.fileType', 'doc,docx,zip,xls,xlsx,rar,jpg,jpeg,gif,npm,png,mp4', 1, 31, 31, '文件上传后缀类型限制', NULL, '2022-12-16 09:52:45');
INSERT INTO `sys_config` VALUES (3, '图片上传-图片类型', 'sys.uploadFile.imageType', 'jpg,jpeg,gif,npm,png', 1, 31, 0, '图片上传后缀类型限制', NULL, NULL);
INSERT INTO `sys_config` VALUES (4, '图片上传-图片大小', 'sys.uploadFile.imageSize', '50M', 1, 31, 31, '图片上传大小限制', NULL, NULL);
INSERT INTO `sys_config` VALUES (11, '静态资源', 'static.resource', '/', 1, 2, 0, '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` tinyint UNSIGNED NULL DEFAULT 0 COMMENT '部门状态（0正常 1停用）',
  `created_by` bigint UNSIGNED NULL DEFAULT 0 COMMENT '创建人',
  `updated_by` bigint NULL DEFAULT NULL COMMENT '修改人',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 204 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', 'XX组织部', 0, NULL, '15888888888', 'ry@qq.com', 1, 0, 31, '2021-07-13 15:56:52', '2021-07-13 15:57:05', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', 'A分部', 1, NULL, '15888888888', 'ry@qq.com', 1, 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', 'B分部', 2, NULL, '15888888888', 'ry@qq.com', 1, 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '信访办公室', 1, NULL, '15888888888', 'ry@qq.com', 1, 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '研究室', 2, NULL, '15888888888', 'ry@qq.com', 1, 0, 31, '2021-07-13 15:56:52', '2021-11-04 09:16:38', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '组织科', 3, NULL, '15888888888', 'ry@qq.com', 1, 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '培训科', 4, NULL, '15888888888', 'ry@qq.com', 1, 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` VALUES (107, 102, '0,100,102', '监督科', 5, NULL, '15888888888', 'ry@qq.com', 1, 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '信息管理办公室', 1, NULL, '15888888888', 'ry@qq.com', 1, 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '人事部门', 2, '', '15888888888', 'ry@qq.com', 1, 0, 1, '2021-07-13 15:56:52', '2024-03-06 08:29:12', NULL);
INSERT INTO `sys_dept` VALUES (110, 102, '0.100.102', '人事', 1, '', '18888888888', 'liou@qq.com', 0, 0, 31, '2021-07-13 15:56:52', '2022-09-16 16:46:57', '2024-03-06 07:15:46');
INSERT INTO `sys_dept` VALUES (201, 100, '', '开发', 1, NULL, '18888888888', 'li@qq.com', 0, 31, NULL, '2021-07-13 15:56:52', '2022-04-07 22:35:21', '2024-03-06 07:15:50');
INSERT INTO `sys_dept` VALUES (202, 108, '', '外勤', 1, NULL, '18888888888', 'aa@qq.com', 1, 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', '2024-03-06 07:15:53');
INSERT INTO `sys_dept` VALUES (203, 108, '', '行政', 0, '', '18888888888', 'aa@qq.com', 1, 0, 31, '2021-07-13 15:56:52', '2022-09-16 16:46:47', '2024-03-06 07:15:55');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` tinyint(1) NULL DEFAULT 0 COMMENT '是否默认（1是 0否）',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态（0正常 1停用）',
  `create_by` bigint UNSIGNED NULL DEFAULT 0 COMMENT '创建者',
  `update_by` bigint UNSIGNED NULL DEFAULT 0 COMMENT '更新者',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 0, '男', '1', 'sys_user_sex', '', '', 0, 1, 31, 2, '备注信息', '2022-04-18 16:46:22', NULL);
INSERT INTO `sys_dict_data` VALUES (2, 0, '女', '2', 'sys_user_sex', '', '', 0, 1, 31, 31, '备注信息', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (3, 0, '保密', '0', 'sys_user_sex', '', '', 1, 1, 31, 31, '备注信息', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (24, 0, '频道页', '1', 'cms_category_type', '', '', 0, 1, 31, 31, '作为频道页，不可作为栏目发布文章，可添加下级分类', NULL, '2021-07-21 10:54:22');
INSERT INTO `sys_dict_data` VALUES (25, 0, '发布栏目', '2', 'cms_category_type', '', '', 0, 1, 31, 31, '作为发布栏目，可添加文章', NULL, '2021-07-21 10:54:22');
INSERT INTO `sys_dict_data` VALUES (26, 0, '跳转栏目', '3', 'cms_category_type', '', '', 0, 1, 31, 31, '不直接发布内容，用于跳转页面', NULL, '2021-07-21 10:54:22');
INSERT INTO `sys_dict_data` VALUES (27, 0, '单页栏目', '4', 'cms_category_type', '', '', 0, 1, 31, 31, '单页面模式，分类直接显示为文章', NULL, '2021-07-21 10:54:22');
INSERT INTO `sys_dict_data` VALUES (28, 0, '正常', '0', 'sys_job_status', '', 'default', 1, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (29, 0, '暂停', '1', 'sys_job_status', '', 'default', 0, 1, 31, 31, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (30, 0, '默认', 'DEFAULT', 'sys_job_group', '', 'default', 1, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (31, 0, '系统', 'SYSTEM', 'sys_job_group', '', 'default', 0, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (32, 0, '成功', '1', 'admin_login_status', '', 'default', 0, 1, 31, 31, '', NULL, '2022-09-16 15:26:01');
INSERT INTO `sys_dict_data` VALUES (33, 0, '失败', '0', 'admin_login_status', '', 'default', 0, 1, 31, 0, '', NULL, '2022-09-16 15:26:01');
INSERT INTO `sys_dict_data` VALUES (34, 0, '成功', '1', 'sys_oper_log_status', '', 'default', 0, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (35, 0, '失败', '0', 'sys_oper_log_status', '', 'default', 0, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (36, 0, '重复执行', '1', 'sys_job_policy', '', 'default', 1, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (37, 0, '执行一次', '2', 'sys_job_policy', '', 'default', 1, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (38, 0, '显示', '0', 'sys_show_hide', NULL, 'default', 1, 1, 31, 0, NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (39, 0, '隐藏', '1', 'sys_show_hide', NULL, 'default', 0, 1, 31, 0, NULL, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (40, 0, '正常', '1', 'sys_normal_disable', '', 'default', 1, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (41, 0, '停用', '0', 'sys_normal_disable', '', 'default', 0, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (49, 0, '是', '1', 'sys_yes_no', '', '', 1, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (50, 0, '否', '0', 'sys_yes_no', '', '', 0, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (51, 0, '已发布', '1', 'cms_article_pub_type', '', '', 1, 1, 31, 31, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (54, 0, '未发布', '0', 'cms_article_pub_type', '', '', 0, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (55, 0, '置顶', '1', 'cms_article_attr', '', '', 0, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (56, 0, '推荐', '2', 'cms_article_attr', '', '', 0, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (57, 0, '普通文章', '0', 'cms_article_type', '', '', 0, 1, 31, 31, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (58, 0, '跳转链接', '1', 'cms_article_type', '', '', 0, 1, 31, 31, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (59, 0, 'cms模型', '6', 'cms_cate_models', '', '', 0, 1, 1, 1, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (61, 0, '政府工作目标', '1', 'gov_cate_models', '', '', 0, 1, 2, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (62, 0, '系统后台', 'sys_admin', 'menu_module_type', '', '', 1, 1, 2, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (63, 0, '政务工作', 'gov_work', 'menu_module_type', '', '', 0, 1, 2, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (64, 0, '幻灯', '3', 'cms_article_attr', '', '', 0, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (65, 0, '[work]测试业务表', 'wf_news', 'flow_type', '', '', 0, 1, 2, 2, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (66, 0, '回退修改', '-1', 'flow_status', '', '', 0, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (67, 0, '保存中', '0', 'flow_status', '', '', 0, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (68, 0, '流程中', '1', 'flow_status', '', '', 0, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (69, 0, '审批通过', '2', 'flow_status', '', '', 0, 1, 31, 2, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (70, 2, '发布栏目', '2', 'sys_blog_sign', '', '', 0, 1, 31, 31, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (71, 3, '跳转栏目', '3', 'sys_blog_sign', '', '', 0, 1, 31, 31, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (72, 4, '单页栏目', '4', 'sys_blog_sign', '', '', 0, 1, 31, 31, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (73, 2, '置顶', '1', 'sys_log_sign', '', '', 0, 1, 31, 31, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (74, 3, '幻灯', '2', 'sys_log_sign', '', '', 0, 1, 31, 31, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (75, 4, '推荐', '3', 'sys_log_sign', '', '', 0, 1, 31, 31, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (76, 1, '一般', '0', 'sys_log_sign', '', '', 0, 1, 31, 31, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (77, 1, '频道页', '1', 'sys_blog_sign', '', '', 0, 1, 31, 31, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (78, 0, '普通', '0', 'flow_level', '', '', 0, 1, 31, 0, '', NULL, '2021-07-20 08:55:20');
INSERT INTO `sys_dict_data` VALUES (79, 0, '加急', '1', 'flow_level', '', '', 0, 1, 31, 0, '', NULL, '2021-07-20 08:55:20');
INSERT INTO `sys_dict_data` VALUES (80, 0, '紧急', '2', 'flow_level', '', '', 0, 1, 31, 0, '', NULL, '2021-07-20 08:55:20');
INSERT INTO `sys_dict_data` VALUES (81, 0, '特急', '3', 'flow_level', '', '', 0, 1, 31, 31, '', NULL, '2021-07-20 08:55:25');
INSERT INTO `sys_dict_data` VALUES (82, 0, '频道页', '1', 'sys_blog_type', '', '', 0, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (83, 0, '发布栏目', '2', 'sys_blog_type', '', '', 0, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (84, 0, '跳转栏目', '3', 'sys_blog_type', '', '', 0, 1, 31, 31, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (85, 0, '单页栏目', '4', 'sys_blog_type', '', '', 0, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (87, 0, '[cms]文章表', 'cms_news', 'flow_type', '', '', 0, 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (91, 0, '测试一下', '666', 'cms_article_type', '', '', 0, 1, 31, 0, '', '2021-08-03 17:04:12', '2021-08-03 17:04:12');
INSERT INTO `sys_dict_data` VALUES (92, 0, '缓存测试222', '33333', 'cms_article_type', '', '', 0, 1, 31, 31, '', '2021-08-03 17:16:45', '2021-08-03 17:19:41');
INSERT INTO `sys_dict_data` VALUES (93, 0, '缓存测试222', '11111', 'cms_article_type', '', '', 0, 1, 31, 31, '', '2021-08-03 17:26:14', '2021-08-03 17:26:26');
INSERT INTO `sys_dict_data` VALUES (94, 0, '1折', '10', 'plugin_store_discount', '', '', 0, 1, 31, 0, '', '2021-08-14 11:59:38', '2021-08-14 11:59:38');
INSERT INTO `sys_dict_data` VALUES (95, 0, '5折', '50', 'plugin_store_discount', '', '', 0, 1, 31, 0, '', '2021-08-14 11:59:49', '2021-08-14 11:59:49');
INSERT INTO `sys_dict_data` VALUES (96, 0, '8折', '80', 'plugin_store_discount', '', '', 0, 1, 31, 0, '', '2021-08-14 12:00:00', '2021-08-14 12:00:00');
INSERT INTO `sys_dict_data` VALUES (97, 0, '9折', '90', 'plugin_store_discount', '', '', 0, 1, 31, 0, '', '2021-08-14 12:00:07', '2021-08-14 12:00:07');
INSERT INTO `sys_dict_data` VALUES (98, 0, '无折扣', '100', 'plugin_store_discount', '', '', 0, 1, 31, 0, '', '2021-08-14 12:00:16', '2021-08-14 12:00:16');
INSERT INTO `sys_dict_data` VALUES (99, 0, '不显示', 'none', 'cms_nav_position', '', '', 1, 1, 22, 0, '', '2021-08-31 15:37:35', '2021-08-31 15:37:35');
INSERT INTO `sys_dict_data` VALUES (100, 0, '顶部导航', 'top', 'cms_nav_position', '', '', 0, 1, 22, 0, '', '2021-08-31 15:37:57', '2021-08-31 15:37:57');
INSERT INTO `sys_dict_data` VALUES (101, 0, '底部导航', 'bottom', 'cms_nav_position', '', '', 0, 1, 22, 0, '', '2021-08-31 15:38:08', '2021-08-31 15:38:08');
INSERT INTO `sys_dict_data` VALUES (102, 0, '读取', 'GET', 'sys_oper_log_type', '', '', 0, 1, 31, 31, '', '2022-12-21 11:59:10', '2022-12-23 19:03:02');
INSERT INTO `sys_dict_data` VALUES (103, 0, '新增', 'POST', 'sys_oper_log_type', '', '', 0, 1, 31, 31, '', '2022-12-21 11:59:22', '2022-12-23 19:03:10');
INSERT INTO `sys_dict_data` VALUES (104, 0, '修改', 'PUT', 'sys_oper_log_type', '', '', 0, 1, 31, 31, '', '2022-12-21 11:59:32', '2022-12-23 19:03:19');
INSERT INTO `sys_dict_data` VALUES (105, 0, '删除', 'DELETE', 'sys_oper_log_type', '', '', 0, 1, 31, 31, '', '2022-12-21 11:59:44', '2022-12-23 19:03:27');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` tinyint UNSIGNED NULL DEFAULT 0 COMMENT '状态（0正常 1停用）',
  `create_by` int UNSIGNED NULL DEFAULT 0 COMMENT '创建者',
  `update_by` int UNSIGNED NULL DEFAULT 0 COMMENT '更新者',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', 1, 31, 1, '用于选择用户性别', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (2, '分类类型', 'cms_category_type', 1, 31, 3, '文章分类类型', NULL, '2021-07-21 10:54:22');
INSERT INTO `sys_dict_type` VALUES (3, '任务状态', 'sys_job_status', 1, 31, 31, '任务状态列表', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (13, '任务分组', 'sys_job_group', 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (14, '管理员登录状态', 'admin_login_status', 1, 31, 31, '', NULL, '2022-09-16 15:26:01');
INSERT INTO `sys_dict_type` VALUES (15, '操作日志状态', 'sys_oper_log_status', 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (16, '任务策略', 'sys_job_policy', 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (17, '菜单状态', 'sys_show_hide', 1, 31, 0, '菜单状态', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (18, '系统开关', 'sys_normal_disable', 1, 31, 31, '系统开关', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (24, '系统内置', 'sys_yes_no', 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (25, '文章发布状态', 'cms_article_pub_type', 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (26, '文章附加状态', 'cms_article_attr', 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (27, '文章类型', 'cms_article_type', 1, 31, 0, '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (28, '文章栏目模型分类', 'cms_cate_models', 1, 1, 0, '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (29, '政务工作模型分类', 'gov_cate_models', 1, 2, 0, '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (30, '菜单模块类型', 'menu_module_type', 1, 2, 0, '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (31, '工作流程类型', 'flow_type', 1, 2, 0, '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (32, '工作流程审批状态', 'flow_status', 1, 31, 0, '工作流程审批状态', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (33, '博客分类类型', 'sys_blog_type', 1, 31, 31, '博客分类中的标志', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (34, '博客日志标志', 'sys_log_sign', 1, 31, 0, '博客日志管理中的标志数据字典', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (35, '工作流紧急状态', 'flow_level', 1, 31, 31, '', NULL, '2021-07-20 08:55:20');
INSERT INTO `sys_dict_type` VALUES (48, '插件商城折扣', 'plugin_store_discount', 1, 31, 0, '', '2021-08-14 11:59:26', '2021-08-14 11:59:26');
INSERT INTO `sys_dict_type` VALUES (49, 'CMS栏目导航位置', 'cms_nav_position', 1, 22, 0, '', '2021-08-31 15:37:04', '2021-08-31 15:37:04');
INSERT INTO `sys_dict_type` VALUES (50, '操作日志类型', 'sys_oper_log_type', 1, 31, 0, '', '2022-12-21 11:55:02', '2022-12-21 11:55:02');

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` tinyint NULL DEFAULT 0 COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '登录时间',
  `module` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录模块',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES (1, 'demo', '::1', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', '2023-01-19 10:17:18', '系统后台');
INSERT INTO `sys_login_log` VALUES (2, 'demo', '::1', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', '2024-03-06 01:28:50', '系统后台');
INSERT INTO `sys_login_log` VALUES (3, 'admin', '::1', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', '2024-03-06 01:48:00', '系统后台');
INSERT INTO `sys_login_log` VALUES (4, 'admin', '::1', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', '2024-03-06 03:09:12', '系统后台');
INSERT INTO `sys_login_log` VALUES (5, 'admin', '::1', '内网IP', 'Edge', 'Windows 10', 1, '登录成功', '2024-03-06 07:14:54', '系统后台');
INSERT INTO `sys_login_log` VALUES (6, 'admin', '::1', '内网IP', 'Edge', 'Windows 10', 1, '登录成功', '2024-03-06 07:37:18', '系统后台');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求参数',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dict/data/getDictData?dictType=sys_oper_log_type&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_oper_log_type\"}', '', '2023-01-19 10:10:49');
INSERT INTO `sys_oper_log` VALUES (2, '操作日志', 0, '/api/v1/system/operLog/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/operLog/list?pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '', '2023-01-19 10:10:49');
INSERT INTO `sys_oper_log` VALUES (3, '操作日志', 0, '/api/v1/system/operLog/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/operLog/list?pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '', '2023-01-19 10:11:04');
INSERT INTO `sys_oper_log` VALUES (4, '在线用户', 0, '/api/v1/system/online/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/online/list?ipaddr=&userName=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"ipaddr\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"userName\":\"\"}', '', '2023-01-19 10:16:55');
INSERT INTO `sys_oper_log` VALUES (5, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dict/data/getDictData?dictType=sys_oper_log_type&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_oper_log_type\"}', '', '2023-01-19 10:16:57');
INSERT INTO `sys_oper_log` VALUES (6, '操作日志', 0, '/api/v1/system/operLog/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/operLog/list?pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '', '2023-01-19 10:16:57');
INSERT INTO `sys_oper_log` VALUES (7, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dict/data/getDictData?dictType=admin_login_status&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"admin_login_status\"}', '', '2023-01-19 10:16:59');
INSERT INTO `sys_oper_log` VALUES (8, '登录日志', 0, '/api/v1/system/loginLog/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/loginLog/list?pageNum=1&pageSize=10&status=&ipaddr=&loginLocation=&userName=', '::1', '内网IP', '{\"ipaddr\":\"\",\"loginLocation\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\",\"userName\":\"\"}', '', '2023-01-19 10:16:59');
INSERT INTO `sys_oper_log` VALUES (9, '服务监控', 0, '/api/v1/system/monitor/server', 'GET', 1, 'demo', '财务部门', '/api/v1/system/monitor/server', '::1', '内网IP', '{}', '', '2023-01-19 10:17:01');
INSERT INTO `sys_oper_log` VALUES (10, '登录日志', 0, '/api/v1/system/loginLog/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/loginLog/list?pageNum=1&pageSize=10&status=&ipaddr=&loginLocation=&userName=', '::1', '内网IP', '{\"ipaddr\":\"\",\"loginLocation\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\",\"userName\":\"\"}', '', '2023-01-19 10:17:05');
INSERT INTO `sys_oper_log` VALUES (11, '登录日志', 0, '/api/v1/system/loginLog/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/loginLog/list?pageNum=1&pageSize=10&status=&ipaddr=&loginLocation=&userName=', '::1', '内网IP', '{\"ipaddr\":\"\",\"loginLocation\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\",\"userName\":\"\"}', '', '2023-01-19 10:17:07');
INSERT INTO `sys_oper_log` VALUES (12, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dict/data/getDictData?dictType=admin_login_status&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"admin_login_status\"}', '', '2023-01-19 10:17:20');
INSERT INTO `sys_oper_log` VALUES (13, '登录日志', 0, '/api/v1/system/loginLog/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/loginLog/list?pageNum=1&pageSize=10&status=&ipaddr=&loginLocation=&userName=', '::1', '内网IP', '{\"ipaddr\":\"\",\"loginLocation\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\",\"userName\":\"\"}', '', '2023-01-19 10:17:20');
INSERT INTO `sys_oper_log` VALUES (14, '登录日志', 0, '/api/v1/system/loginLog/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/loginLog/list?pageNum=1&pageSize=10&status=&ipaddr=&loginLocation=&userName=', '::1', '内网IP', '{\"ipaddr\":\"\",\"loginLocation\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\",\"userName\":\"\"}', '', '2023-01-19 10:17:22');
INSERT INTO `sys_oper_log` VALUES (15, '服务监控', 0, '/api/v1/system/monitor/server', 'GET', 1, 'demo', '财务部门', '/api/v1/system/monitor/server', '::1', '内网IP', '{}', '', '2023-01-19 10:17:25');
INSERT INTO `sys_oper_log` VALUES (16, '字典管理', 0, '/api/v1/system/dict/type/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dict/type/list?pageNum=1&pageSize=10&dictName=&dictType=&status=', '::1', '内网IP', '{\"dictName\":\"\",\"dictType\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2023-01-19 10:17:29');
INSERT INTO `sys_oper_log` VALUES (17, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dict/data/getDictData?dictType=sys_yes_no&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_yes_no\"}', '', '2023-01-19 10:17:31');
INSERT INTO `sys_oper_log` VALUES (18, '参数管理', 0, '/api/v1/system/config/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/config/list?pageNum=1&pageSize=10&configName=&configKey=&configType=', '::1', '内网IP', '{\"configKey\":\"\",\"configName\":\"\",\"configType\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '', '2023-01-19 10:17:31');
INSERT INTO `sys_oper_log` VALUES (19, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dict/data/getDictData?dictType=sys_job_status&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_job_status\"}', '', '2023-01-19 10:18:32');
INSERT INTO `sys_oper_log` VALUES (20, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dict/data/getDictData?dictType=sys_job_policy&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_job_policy\"}', '', '2023-01-19 10:18:32');
INSERT INTO `sys_oper_log` VALUES (21, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dict/data/getDictData?dictType=sys_job_group&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_job_group\"}', '', '2023-01-19 10:18:32');
INSERT INTO `sys_oper_log` VALUES (22, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2023-01-19 10:19:34');
INSERT INTO `sys_oper_log` VALUES (23, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2023-01-19 10:19:34');
INSERT INTO `sys_oper_log` VALUES (24, '删除菜单', 0, '/api/v1/system/menu/delete', 'DELETE', 1, 'demo', '财务部门', '/api/v1/system/menu/delete', '::1', '内网IP', '{\"ids\":[36]}', '', '2023-01-19 10:19:43');
INSERT INTO `sys_oper_log` VALUES (25, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'demo', '财务部门', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2023-01-19 10:19:44');
INSERT INTO `sys_oper_log` VALUES (26, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2023-01-19 10:19:44');
INSERT INTO `sys_oper_log` VALUES (27, '删除菜单', 0, '/api/v1/system/menu/delete', 'DELETE', 1, 'demo', '财务部门', '/api/v1/system/menu/delete', '::1', '内网IP', '{\"ids\":[53]}', '', '2023-01-19 10:19:48');
INSERT INTO `sys_oper_log` VALUES (28, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'demo', '财务部门', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2023-01-19 10:19:49');
INSERT INTO `sys_oper_log` VALUES (29, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2023-01-19 10:19:49');
INSERT INTO `sys_oper_log` VALUES (30, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2023-01-19 10:19:56');
INSERT INTO `sys_oper_log` VALUES (31, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2023-01-19 10:19:56');
INSERT INTO `sys_oper_log` VALUES (32, '服务监控', 0, '/api/v1/system/monitor/server', 'GET', 1, 'demo', '财务部门', '/api/v1/system/monitor/server', '::1', '内网IP', '{}', '', '2023-01-19 10:35:29');
INSERT INTO `sys_oper_log` VALUES (33, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dict/data/getDictData?dictType=admin_login_status&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"admin_login_status\"}', '', '2023-01-19 10:35:31');
INSERT INTO `sys_oper_log` VALUES (34, '登录日志', 0, '/api/v1/system/loginLog/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/loginLog/list?pageNum=1&pageSize=10&status=&ipaddr=&loginLocation=&userName=', '::1', '内网IP', '{\"ipaddr\":\"\",\"loginLocation\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\",\"userName\":\"\"}', '', '2023-01-19 10:35:31');
INSERT INTO `sys_oper_log` VALUES (35, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dict/data/getDictData?dictType=sys_oper_log_type&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_oper_log_type\"}', '', '2023-01-19 10:35:33');
INSERT INTO `sys_oper_log` VALUES (36, '操作日志', 0, '/api/v1/system/operLog/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/operLog/list?pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '', '2023-01-19 10:35:33');
INSERT INTO `sys_oper_log` VALUES (37, '在线用户', 0, '/api/v1/system/online/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/online/list?ipaddr=&userName=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"ipaddr\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"userName\":\"\"}', '', '2023-01-19 10:35:35');
INSERT INTO `sys_oper_log` VALUES (38, '', 0, '/api/v1/system/personal/getPersonalInfo', 'GET', 1, 'demo', '财务部门', '/api/v1/system/personal/getPersonalInfo', '::1', '内网IP', '{}', '', '2023-01-19 10:49:47');
INSERT INTO `sys_oper_log` VALUES (39, '字典管理', 0, '/api/v1/system/dict/type/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dict/type/list?pageNum=1&pageSize=10&dictName=&dictType=&status=', '::1', '内网IP', '{\"dictName\":\"\",\"dictType\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2023-01-19 11:01:02');
INSERT INTO `sys_oper_log` VALUES (40, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dict/data/getDictData?dictType=sys_yes_no&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_yes_no\"}', '', '2023-01-19 11:01:05');
INSERT INTO `sys_oper_log` VALUES (41, '参数管理', 0, '/api/v1/system/config/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/config/list?pageNum=1&pageSize=10&configName=&configKey=&configType=', '::1', '内网IP', '{\"configKey\":\"\",\"configName\":\"\",\"configType\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '', '2023-01-19 11:01:05');
INSERT INTO `sys_oper_log` VALUES (42, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2023-01-19 11:01:07');
INSERT INTO `sys_oper_log` VALUES (43, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2023-01-19 11:01:08');
INSERT INTO `sys_oper_log` VALUES (44, '角色管理', 0, '/api/v1/system/role/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/role/list?roleName=&roleStatus=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"roleName\":\"\",\"roleStatus\":\"\"}', '', '2023-01-19 11:01:11');
INSERT INTO `sys_oper_log` VALUES (45, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dept/list?pageNum=1&pageSize=10&deptName=&status=', '::1', '内网IP', '{\"deptName\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2023-01-19 11:01:14');
INSERT INTO `sys_oper_log` VALUES (46, '岗位管理', 0, '/api/v1/system/post/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/post/list?postName=&status=&postCode=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"postCode\":\"\",\"postName\":\"\",\"status\":\"\"}', '', '2023-01-19 11:01:19');
INSERT INTO `sys_oper_log` VALUES (47, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dict/data/getDictData?dictType=sys_user_sex&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_user_sex\"}', '', '2023-01-19 11:01:23');
INSERT INTO `sys_oper_log` VALUES (48, '', 0, '/api/v1/system/dept/treeSelect', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dept/treeSelect', '::1', '内网IP', '{}', '', '2023-01-19 11:01:23');
INSERT INTO `sys_oper_log` VALUES (49, '', 0, '/api/v1/system/user/params', 'GET', 1, 'demo', '财务部门', '/api/v1/system/user/params', '::1', '内网IP', '{}', '', '2023-01-19 11:01:23');
INSERT INTO `sys_oper_log` VALUES (50, '用户管理', 0, '/api/v1/system/user/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2023-01-19 11:01:23');
INSERT INTO `sys_oper_log` VALUES (51, '服务监控', 0, '/api/v1/system/monitor/server', 'GET', 1, 'demo', '财务部门', '/api/v1/system/monitor/server', '::1', '内网IP', '{}', '', '2023-01-19 11:01:30');
INSERT INTO `sys_oper_log` VALUES (52, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dict/data/getDictData?dictType=admin_login_status&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"admin_login_status\"}', '', '2023-01-19 11:01:32');
INSERT INTO `sys_oper_log` VALUES (53, '登录日志', 0, '/api/v1/system/loginLog/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/loginLog/list?pageNum=1&pageSize=10&status=&ipaddr=&loginLocation=&userName=', '::1', '内网IP', '{\"ipaddr\":\"\",\"loginLocation\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\",\"userName\":\"\"}', '', '2023-01-19 11:01:32');
INSERT INTO `sys_oper_log` VALUES (54, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'demo', '财务部门', '/api/v1/system/dict/data/getDictData?dictType=sys_oper_log_type&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_oper_log_type\"}', '', '2023-01-19 11:01:34');
INSERT INTO `sys_oper_log` VALUES (55, '操作日志', 0, '/api/v1/system/operLog/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/operLog/list?pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '', '2023-01-19 11:01:35');
INSERT INTO `sys_oper_log` VALUES (56, '在线用户', 0, '/api/v1/system/online/list', 'GET', 1, 'demo', '财务部门', '/api/v1/system/online/list?ipaddr=&userName=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"ipaddr\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"userName\":\"\"}', '', '2023-01-19 11:01:36');
INSERT INTO `sys_oper_log` VALUES (57, '字典管理', 0, '/api/v1/system/dict/type/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/type/list?pageNum=1&pageSize=10&dictName=&dictType=&status=', '::1', '内网IP', '{\"dictName\":\"\",\"dictType\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 01:50:19');
INSERT INTO `sys_oper_log` VALUES (58, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 02:17:30');
INSERT INTO `sys_oper_log` VALUES (59, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 02:17:30');
INSERT INTO `sys_oper_log` VALUES (60, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/get?id=29', '::1', '内网IP', '{\"id\":\"29\"}', '', '2024-03-06 02:17:34');
INSERT INTO `sys_oper_log` VALUES (61, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 02:17:34');
INSERT INTO `sys_oper_log` VALUES (62, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', '深圳总公司', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"system/dict/dataList\",\"icon\":\"iconfont icon-putong\",\"id\":29,\"isAffix\":0,\"isHide\":\"0\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"字典数据管理\",\"menuSort\":0,\"menuType\":\"1\",\"name\":\"api/v1/system/dict/dataList\",\"path\":\"/system/dict/data/list/:dictType\",\"pid\":27,\"redirect\":\"\",\"roles\":[1]}', '', '2024-03-06 02:17:37');
INSERT INTO `sys_oper_log` VALUES (63, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 02:17:37');
INSERT INTO `sys_oper_log` VALUES (64, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 02:17:37');
INSERT INTO `sys_oper_log` VALUES (65, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 02:17:50');
INSERT INTO `sys_oper_log` VALUES (66, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/get?id=17', '::1', '内网IP', '{\"id\":\"17\"}', '', '2024-03-06 02:17:50');
INSERT INTO `sys_oper_log` VALUES (67, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', '深圳总公司', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"layout/routerView/parent\",\"icon\":\"iconfont icon-zhongduancanshu\",\"id\":17,\"isAffix\":0,\"isHide\":\"1\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"外链测试\",\"menuSort\":20,\"menuType\":\"0\",\"name\":\"outLink\",\"path\":\"/demo/outLink\",\"pid\":0,\"redirect\":\"\",\"roles\":null}', '', '2024-03-06 02:17:52');
INSERT INTO `sys_oper_log` VALUES (68, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 02:17:52');
INSERT INTO `sys_oper_log` VALUES (69, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 02:17:52');
INSERT INTO `sys_oper_log` VALUES (70, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 02:17:56');
INSERT INTO `sys_oper_log` VALUES (71, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 02:17:56');
INSERT INTO `sys_oper_log` VALUES (72, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 02:19:49');
INSERT INTO `sys_oper_log` VALUES (73, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/get?id=17', '::1', '内网IP', '{\"id\":\"17\"}', '', '2024-03-06 02:19:49');
INSERT INTO `sys_oper_log` VALUES (74, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 02:21:29');
INSERT INTO `sys_oper_log` VALUES (75, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 02:21:29');
INSERT INTO `sys_oper_log` VALUES (76, '服务监控', 0, '/api/v1/system/monitor/server', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/monitor/server', '::1', '内网IP', '{}', '', '2024-03-06 02:21:34');
INSERT INTO `sys_oper_log` VALUES (77, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/data/getDictData?dictType=admin_login_status&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"admin_login_status\"}', '', '2024-03-06 02:21:35');
INSERT INTO `sys_oper_log` VALUES (78, '登录日志', 0, '/api/v1/system/loginLog/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/loginLog/list?pageNum=1&pageSize=10&status=&ipaddr=&loginLocation=&userName=', '::1', '内网IP', '{\"ipaddr\":\"\",\"loginLocation\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\",\"userName\":\"\"}', '', '2024-03-06 02:21:35');
INSERT INTO `sys_oper_log` VALUES (79, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 02:22:46');
INSERT INTO `sys_oper_log` VALUES (80, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 02:22:46');
INSERT INTO `sys_oper_log` VALUES (81, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 02:22:52');
INSERT INTO `sys_oper_log` VALUES (82, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/get?id=32', '::1', '内网IP', '{\"id\":\"32\"}', '', '2024-03-06 02:22:52');
INSERT INTO `sys_oper_log` VALUES (83, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', '深圳总公司', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"system/monitor/server/index\",\"icon\":\"iconfont icon-shuju\",\"id\":32,\"isAffix\":0,\"isHide\":\"0\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"服务监控\",\"menuSort\":0,\"menuType\":\"0\",\"name\":\"api/v1/system/monitor/server\",\"path\":\"/system/monitor/server\",\"pid\":31,\"redirect\":\"\",\"roles\":[2]}', '', '2024-03-06 02:23:09');
INSERT INTO `sys_oper_log` VALUES (84, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 02:23:09');
INSERT INTO `sys_oper_log` VALUES (85, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 02:23:09');
INSERT INTO `sys_oper_log` VALUES (86, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 02:23:11');
INSERT INTO `sys_oper_log` VALUES (87, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 02:23:11');
INSERT INTO `sys_oper_log` VALUES (88, '服务监控', 0, '/api/v1/system/monitor/server', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/monitor/server', '::1', '内网IP', '{}', '', '2024-03-06 02:23:19');
INSERT INTO `sys_oper_log` VALUES (89, '字典管理', 0, '/api/v1/system/dict/type/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/type/list?pageNum=1&pageSize=10&dictName=&dictType=&status=', '::1', '内网IP', '{\"dictName\":\"\",\"dictType\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 02:23:24');
INSERT INTO `sys_oper_log` VALUES (90, '字典管理', 0, '/api/v1/system/dict/type/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/type/list?pageNum=2&pageSize=10&dictName=&dictType=&status=', '::1', '内网IP', '{\"dictName\":\"\",\"dictType\":\"\",\"pageNum\":\"2\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 02:23:29');
INSERT INTO `sys_oper_log` VALUES (91, '字典管理', 0, '/api/v1/system/dict/type/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/type/list?pageNum=3&pageSize=10&dictName=&dictType=&status=', '::1', '内网IP', '{\"dictName\":\"\",\"dictType\":\"\",\"pageNum\":\"3\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 02:23:30');
INSERT INTO `sys_oper_log` VALUES (92, '', 0, '/api/v1/system/dict/data/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/data/list?pageNum=1&pageSize=10&dictLabel=&dictType=%3AdictType&status=', '::1', '内网IP', '{\"dictLabel\":\"\",\"dictType\":\":dictType\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 02:23:32');
INSERT INTO `sys_oper_log` VALUES (93, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 02:29:18');
INSERT INTO `sys_oper_log` VALUES (94, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 02:29:18');
INSERT INTO `sys_oper_log` VALUES (95, '在线用户', 0, '/api/v1/system/online/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/online/list?ipaddr=&userName=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"ipaddr\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"userName\":\"\"}', '', '2024-03-06 02:35:54');
INSERT INTO `sys_oper_log` VALUES (96, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/data/getDictData?dictType=sys_oper_log_type&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_oper_log_type\"}', '', '2024-03-06 02:35:58');
INSERT INTO `sys_oper_log` VALUES (97, '操作日志', 0, '/api/v1/system/operLog/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/operLog/list?pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '', '2024-03-06 02:35:58');
INSERT INTO `sys_oper_log` VALUES (98, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 02:37:18');
INSERT INTO `sys_oper_log` VALUES (99, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/get?id=2', '::1', '内网IP', '{\"id\":\"2\"}', '', '2024-03-06 02:37:18');
INSERT INTO `sys_oper_log` VALUES (100, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 03:09:19');
INSERT INTO `sys_oper_log` VALUES (101, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 03:09:19');
INSERT INTO `sys_oper_log` VALUES (102, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 03:09:23');
INSERT INTO `sys_oper_log` VALUES (103, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/get?id=35', '::1', '内网IP', '{\"id\":\"35\"}', '', '2024-03-06 03:09:23');
INSERT INTO `sys_oper_log` VALUES (104, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', '深圳总公司', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"layout/routerView/parent\",\"icon\":\"iconfont icon-zujian\",\"id\":35,\"isAffix\":0,\"isHide\":\"1\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"系统工具\",\"menuSort\":25,\"menuType\":\"0\",\"name\":\"api/v1/system/tools\",\"path\":\"/system/tools\",\"pid\":0,\"redirect\":\"\",\"roles\":[1]}', '', '2024-03-06 03:09:24');
INSERT INTO `sys_oper_log` VALUES (105, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 03:09:24');
INSERT INTO `sys_oper_log` VALUES (106, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 03:09:24');
INSERT INTO `sys_oper_log` VALUES (107, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 03:09:26');
INSERT INTO `sys_oper_log` VALUES (108, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 03:09:26');
INSERT INTO `sys_oper_log` VALUES (109, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/data/getDictData?dictType=sys_user_sex&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_user_sex\"}', '', '2024-03-06 03:09:31');
INSERT INTO `sys_oper_log` VALUES (110, '', 0, '/api/v1/system/dept/treeSelect', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dept/treeSelect', '::1', '内网IP', '{}', '', '2024-03-06 03:09:31');
INSERT INTO `sys_oper_log` VALUES (111, '', 0, '/api/v1/system/user/params', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/user/params', '::1', '内网IP', '{}', '', '2024-03-06 03:09:31');
INSERT INTO `sys_oper_log` VALUES (112, '用户管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 03:09:31');
INSERT INTO `sys_oper_log` VALUES (113, '字典管理', 0, '/api/v1/system/dict/type/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/type/list?pageNum=1&pageSize=10&dictName=&dictType=&status=', '::1', '内网IP', '{\"dictName\":\"\",\"dictType\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 03:09:33');
INSERT INTO `sys_oper_log` VALUES (114, '', 0, '/api/v1/system/dict/data/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/data/list?pageNum=1&pageSize=10&dictLabel=&dictType=%3AdictType&status=', '::1', '内网IP', '{\"dictLabel\":\"\",\"dictType\":\":dictType\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 03:09:34');
INSERT INTO `sys_oper_log` VALUES (115, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/data/getDictData?dictType=sys_yes_no&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_yes_no\"}', '', '2024-03-06 03:09:35');
INSERT INTO `sys_oper_log` VALUES (116, '参数管理', 0, '/api/v1/system/config/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/config/list?pageNum=1&pageSize=10&configName=&configKey=&configType=', '::1', '内网IP', '{\"configKey\":\"\",\"configName\":\"\",\"configType\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '', '2024-03-06 03:09:35');
INSERT INTO `sys_oper_log` VALUES (117, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 03:09:35');
INSERT INTO `sys_oper_log` VALUES (118, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 03:09:35');
INSERT INTO `sys_oper_log` VALUES (119, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 03:09:39');
INSERT INTO `sys_oper_log` VALUES (120, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/get?id=27', '::1', '内网IP', '{\"id\":\"27\"}', '', '2024-03-06 03:09:39');
INSERT INTO `sys_oper_log` VALUES (121, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', '深圳总公司', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"layout/routerView/parent\",\"icon\":\"iconfont icon-shuxingtu\",\"id\":27,\"isAffix\":0,\"isHide\":\"1\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"系统配置\",\"menuSort\":40,\"menuType\":\"0\",\"name\":\"api/v1/system/dict\",\"path\":\"/system/dict\",\"pid\":0,\"redirect\":\"654\",\"roles\":[1]}', '', '2024-03-06 03:09:41');
INSERT INTO `sys_oper_log` VALUES (122, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 03:09:41');
INSERT INTO `sys_oper_log` VALUES (123, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 03:09:41');
INSERT INTO `sys_oper_log` VALUES (124, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 03:09:43');
INSERT INTO `sys_oper_log` VALUES (125, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 03:09:43');
INSERT INTO `sys_oper_log` VALUES (126, '角色管理', 0, '/api/v1/system/role/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/role/list?roleName=&roleStatus=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"roleName\":\"\",\"roleStatus\":\"\"}', '', '2024-03-06 03:09:57');
INSERT INTO `sys_oper_log` VALUES (127, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dept/list?pageNum=1&pageSize=10&deptName=&status=', '::1', '内网IP', '{\"deptName\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 03:09:58');
INSERT INTO `sys_oper_log` VALUES (128, '岗位管理', 0, '/api/v1/system/post/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/post/list?postName=&status=&postCode=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"postCode\":\"\",\"postName\":\"\",\"status\":\"\"}', '', '2024-03-06 03:10:00');
INSERT INTO `sys_oper_log` VALUES (129, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/data/getDictData?dictType=sys_user_sex&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_user_sex\"}', '', '2024-03-06 03:10:00');
INSERT INTO `sys_oper_log` VALUES (130, '', 0, '/api/v1/system/dept/treeSelect', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dept/treeSelect', '::1', '内网IP', '{}', '', '2024-03-06 03:10:00');
INSERT INTO `sys_oper_log` VALUES (131, '', 0, '/api/v1/system/user/params', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/user/params', '::1', '内网IP', '{}', '', '2024-03-06 03:10:00');
INSERT INTO `sys_oper_log` VALUES (132, '用户管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 03:10:00');
INSERT INTO `sys_oper_log` VALUES (133, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 03:27:10');
INSERT INTO `sys_oper_log` VALUES (134, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 03:27:10');
INSERT INTO `sys_oper_log` VALUES (135, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 03:27:25');
INSERT INTO `sys_oper_log` VALUES (136, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/get?id=10', '::1', '内网IP', '{\"id\":\"10\"}', '', '2024-03-06 03:27:25');
INSERT INTO `sys_oper_log` VALUES (137, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', '深圳总公司', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"system/role/index\",\"icon\":\"iconfont icon-juxingkaobei\",\"id\":10,\"isAffix\":0,\"isHide\":\"0\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"角色管理\",\"menuSort\":0,\"menuType\":\"0\",\"name\":\"api/v1/system/role/list\",\"path\":\"/system/auth/roleList\",\"pid\":0,\"redirect\":\"\",\"roles\":[1]}', '', '2024-03-06 03:27:30');
INSERT INTO `sys_oper_log` VALUES (138, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 03:27:30');
INSERT INTO `sys_oper_log` VALUES (139, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 03:27:30');
INSERT INTO `sys_oper_log` VALUES (140, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 03:27:35');
INSERT INTO `sys_oper_log` VALUES (141, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 03:27:35');
INSERT INTO `sys_oper_log` VALUES (142, '角色管理', 0, '/api/v1/system/role/list', 'GET', 1, 'admin', '深圳总公司', '/api/v1/system/role/list?roleName=&roleStatus=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"roleName\":\"\",\"roleStatus\":\"\"}', '', '2024-03-06 03:27:37');
INSERT INTO `sys_oper_log` VALUES (143, '用户管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 07:15:02');
INSERT INTO `sys_oper_log` VALUES (144, '', 0, '/api/v1/system/user/params', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/params', '::1', '内网IP', '{}', '', '2024-03-06 07:15:02');
INSERT INTO `sys_oper_log` VALUES (145, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_user_sex&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_user_sex\"}', '', '2024-03-06 07:15:02');
INSERT INTO `sys_oper_log` VALUES (146, '', 0, '/api/v1/system/dept/treeSelect', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/treeSelect', '::1', '内网IP', '{}', '', '2024-03-06 07:15:02');
INSERT INTO `sys_oper_log` VALUES (147, '用户管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=103&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"103\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 07:15:12');
INSERT INTO `sys_oper_log` VALUES (148, '用户管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=104&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"104\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 07:15:13');
INSERT INTO `sys_oper_log` VALUES (149, '用户管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=105&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"105\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 07:15:14');
INSERT INTO `sys_oper_log` VALUES (150, '用户管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=105&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"105\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 07:15:14');
INSERT INTO `sys_oper_log` VALUES (151, '用户管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=106&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"106\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 07:15:14');
INSERT INTO `sys_oper_log` VALUES (152, '用户管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=202&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"202\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 07:15:34');
INSERT INTO `sys_oper_log` VALUES (153, '用户管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=202&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"202\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 07:15:35');
INSERT INTO `sys_oper_log` VALUES (154, '用户管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=203&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"203\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 07:15:35');
INSERT INTO `sys_oper_log` VALUES (155, '用户管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=202&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"202\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 07:15:36');
INSERT INTO `sys_oper_log` VALUES (156, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/list?pageNum=1&pageSize=10&deptName=&status=', '::1', '内网IP', '{\"deptName\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 07:15:38');
INSERT INTO `sys_oper_log` VALUES (157, '删除部门', 0, '/api/v1/system/dept/delete', 'DELETE', 1, 'admin', 'A分部', '/api/v1/system/dept/delete', '::1', '内网IP', '{\"id\":110}', '', '2024-03-06 07:15:46');
INSERT INTO `sys_oper_log` VALUES (158, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/list?pageNum=1&pageSize=10&deptName=&status=', '::1', '内网IP', '{\"deptName\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 07:15:46');
INSERT INTO `sys_oper_log` VALUES (159, '删除部门', 0, '/api/v1/system/dept/delete', 'DELETE', 1, 'admin', 'A分部', '/api/v1/system/dept/delete', '::1', '内网IP', '{\"id\":201}', '', '2024-03-06 07:15:50');
INSERT INTO `sys_oper_log` VALUES (160, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/list?pageNum=1&pageSize=10&deptName=&status=', '::1', '内网IP', '{\"deptName\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 07:15:50');
INSERT INTO `sys_oper_log` VALUES (161, '删除部门', 0, '/api/v1/system/dept/delete', 'DELETE', 1, 'admin', 'A分部', '/api/v1/system/dept/delete', '::1', '内网IP', '{\"id\":202}', '', '2024-03-06 07:15:53');
INSERT INTO `sys_oper_log` VALUES (162, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/list?pageNum=1&pageSize=10&deptName=&status=', '::1', '内网IP', '{\"deptName\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 07:15:53');
INSERT INTO `sys_oper_log` VALUES (163, '删除部门', 0, '/api/v1/system/dept/delete', 'DELETE', 1, 'admin', 'A分部', '/api/v1/system/dept/delete', '::1', '内网IP', '{\"id\":203}', '', '2024-03-06 07:15:55');
INSERT INTO `sys_oper_log` VALUES (164, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/list?pageNum=1&pageSize=10&deptName=&status=', '::1', '内网IP', '{\"deptName\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 07:15:55');
INSERT INTO `sys_oper_log` VALUES (165, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/list?pageNum=1&pageSize=10&deptName=&status=', '::1', '内网IP', '{\"deptName\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 07:16:01');
INSERT INTO `sys_oper_log` VALUES (166, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:10:39');
INSERT INTO `sys_oper_log` VALUES (167, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:10:39');
INSERT INTO `sys_oper_log` VALUES (168, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=2', '::1', '内网IP', '{\"id\":\"2\"}', '', '2024-03-06 08:10:51');
INSERT INTO `sys_oper_log` VALUES (169, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:10:51');
INSERT INTO `sys_oper_log` VALUES (170, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', 'A分部', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"system/menu/index\",\"icon\":\"ele-Calendar\",\"id\":2,\"isAffix\":0,\"isHide\":\"0\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"系统管理\",\"menuSort\":0,\"menuType\":\"0\",\"name\":\"api/v1/system/auth/menuList\",\"path\":\"/system/auth/menuList\",\"pid\":0,\"redirect\":\"\",\"roles\":[1]}', '', '2024-03-06 08:11:07');
INSERT INTO `sys_oper_log` VALUES (171, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 08:11:07');
INSERT INTO `sys_oper_log` VALUES (172, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:11:07');
INSERT INTO `sys_oper_log` VALUES (173, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:11:10');
INSERT INTO `sys_oper_log` VALUES (174, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:11:10');
INSERT INTO `sys_oper_log` VALUES (175, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:11:23');
INSERT INTO `sys_oper_log` VALUES (176, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=15', '::1', '内网IP', '{\"id\":\"15\"}', '', '2024-03-06 08:11:23');
INSERT INTO `sys_oper_log` VALUES (177, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', 'A分部', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"system/dept/index\",\"icon\":\"iconfont icon-siweidaotu\",\"id\":15,\"isAffix\":0,\"isHide\":\"0\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"部门管理\",\"menuSort\":0,\"menuType\":\"0\",\"name\":\"api/v1/system/dept/list\",\"path\":\"/system/auth/deptList\",\"pid\":0,\"redirect\":\"\",\"roles\":[1]}', '', '2024-03-06 08:11:28');
INSERT INTO `sys_oper_log` VALUES (178, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 08:11:28');
INSERT INTO `sys_oper_log` VALUES (179, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:11:28');
INSERT INTO `sys_oper_log` VALUES (180, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:11:35');
INSERT INTO `sys_oper_log` VALUES (181, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:11:35');
INSERT INTO `sys_oper_log` VALUES (182, '岗位管理', 0, '/api/v1/system/post/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/post/list?postName=&status=&postCode=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"postCode\":\"\",\"postName\":\"\",\"status\":\"\"}', '', '2024-03-06 08:12:13');
INSERT INTO `sys_oper_log` VALUES (183, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_user_sex&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_user_sex\"}', '', '2024-03-06 08:12:13');
INSERT INTO `sys_oper_log` VALUES (184, '', 0, '/api/v1/system/dept/treeSelect', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/treeSelect', '::1', '内网IP', '{}', '', '2024-03-06 08:12:13');
INSERT INTO `sys_oper_log` VALUES (185, '', 0, '/api/v1/system/user/params', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/params', '::1', '内网IP', '{}', '', '2024-03-06 08:12:13');
INSERT INTO `sys_oper_log` VALUES (186, '用户管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:12:13');
INSERT INTO `sys_oper_log` VALUES (187, '角色管理', 0, '/api/v1/system/role/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/role/list?roleName=&roleStatus=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"roleName\":\"\",\"roleStatus\":\"\"}', '', '2024-03-06 08:12:17');
INSERT INTO `sys_oper_log` VALUES (188, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_user_sex&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_user_sex\"}', '', '2024-03-06 08:12:35');
INSERT INTO `sys_oper_log` VALUES (189, '', 0, '/api/v1/system/dept/treeSelect', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/treeSelect', '::1', '内网IP', '{}', '', '2024-03-06 08:12:35');
INSERT INTO `sys_oper_log` VALUES (190, '', 0, '/api/v1/system/user/params', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/params', '::1', '内网IP', '{}', '', '2024-03-06 08:12:35');
INSERT INTO `sys_oper_log` VALUES (191, '用户管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:12:35');
INSERT INTO `sys_oper_log` VALUES (192, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_user_sex&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_user_sex\"}', '', '2024-03-06 08:12:40');
INSERT INTO `sys_oper_log` VALUES (193, '', 0, '/api/v1/system/dept/treeSelect', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/treeSelect', '::1', '内网IP', '{}', '', '2024-03-06 08:12:40');
INSERT INTO `sys_oper_log` VALUES (194, '', 0, '/api/v1/system/user/params', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/params', '::1', '内网IP', '{}', '', '2024-03-06 08:12:40');
INSERT INTO `sys_oper_log` VALUES (195, '用户管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:12:40');
INSERT INTO `sys_oper_log` VALUES (196, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:12:45');
INSERT INTO `sys_oper_log` VALUES (197, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:12:45');
INSERT INTO `sys_oper_log` VALUES (198, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_user_sex&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_user_sex\"}', '', '2024-03-06 08:13:03');
INSERT INTO `sys_oper_log` VALUES (199, '', 0, '/api/v1/system/dept/treeSelect', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/treeSelect', '::1', '内网IP', '{}', '', '2024-03-06 08:13:03');
INSERT INTO `sys_oper_log` VALUES (200, '', 0, '/api/v1/system/user/params', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/params', '::1', '内网IP', '{}', '', '2024-03-06 08:13:03');
INSERT INTO `sys_oper_log` VALUES (201, '用户管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:13:03');
INSERT INTO `sys_oper_log` VALUES (202, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:13:23');
INSERT INTO `sys_oper_log` VALUES (203, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=27', '::1', '内网IP', '{\"id\":\"27\"}', '', '2024-03-06 08:13:28');
INSERT INTO `sys_oper_log` VALUES (204, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:13:28');
INSERT INTO `sys_oper_log` VALUES (205, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:13:44');
INSERT INTO `sys_oper_log` VALUES (206, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=10', '::1', '内网IP', '{\"id\":\"10\"}', '', '2024-03-06 08:13:44');
INSERT INTO `sys_oper_log` VALUES (207, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_user_sex&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_user_sex\"}', '', '2024-03-06 08:14:02');
INSERT INTO `sys_oper_log` VALUES (208, '', 0, '/api/v1/system/user/params', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/params', '::1', '内网IP', '{}', '', '2024-03-06 08:14:02');
INSERT INTO `sys_oper_log` VALUES (209, '', 0, '/api/v1/system/dept/treeSelect', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/treeSelect', '::1', '内网IP', '{}', '', '2024-03-06 08:14:02');
INSERT INTO `sys_oper_log` VALUES (210, '用户管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:14:02');
INSERT INTO `sys_oper_log` VALUES (211, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:14:14');
INSERT INTO `sys_oper_log` VALUES (212, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=22', '::1', '内网IP', '{\"id\":\"22\"}', '', '2024-03-06 08:14:14');
INSERT INTO `sys_oper_log` VALUES (213, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', 'A分部', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"system/post/index\",\"icon\":\"iconfont icon-neiqianshujuchucun\",\"id\":22,\"isAffix\":0,\"isHide\":\"0\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"岗位管理\",\"menuSort\":0,\"menuType\":\"1\",\"name\":\"api/v1/system/post/list\",\"path\":\"/system/auth/postList\",\"pid\":10,\"redirect\":\"\",\"roles\":[1]}', '', '2024-03-06 08:14:23');
INSERT INTO `sys_oper_log` VALUES (214, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 08:14:23');
INSERT INTO `sys_oper_log` VALUES (215, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:14:23');
INSERT INTO `sys_oper_log` VALUES (216, '岗位管理', 0, '/api/v1/system/post/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/post/list?postName=&status=&postCode=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"postCode\":\"\",\"postName\":\"\",\"status\":\"\"}', '', '2024-03-06 08:14:28');
INSERT INTO `sys_oper_log` VALUES (217, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:14:38');
INSERT INTO `sys_oper_log` VALUES (218, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:14:38');
INSERT INTO `sys_oper_log` VALUES (219, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:14:58');
INSERT INTO `sys_oper_log` VALUES (220, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=22', '::1', '内网IP', '{\"id\":\"22\"}', '', '2024-03-06 08:15:19');
INSERT INTO `sys_oper_log` VALUES (221, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:15:19');
INSERT INTO `sys_oper_log` VALUES (222, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', 'A分部', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"system/post/index\",\"icon\":\"iconfont icon-neiqianshujuchucun\",\"id\":22,\"isAffix\":0,\"isHide\":\"0\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"岗位管理\",\"menuSort\":0,\"menuType\":\"1\",\"name\":\"api/v1/system/post/list\",\"path\":\"/system/auth/postList\",\"pid\":0,\"redirect\":\"\",\"roles\":[1]}', '', '2024-03-06 08:15:29');
INSERT INTO `sys_oper_log` VALUES (223, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 08:15:29');
INSERT INTO `sys_oper_log` VALUES (224, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:15:29');
INSERT INTO `sys_oper_log` VALUES (225, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:15:31');
INSERT INTO `sys_oper_log` VALUES (226, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:15:31');
INSERT INTO `sys_oper_log` VALUES (227, '角色管理', 0, '/api/v1/system/role/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/role/list?roleName=&roleStatus=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"roleName\":\"\",\"roleStatus\":\"\"}', '', '2024-03-06 08:15:33');
INSERT INTO `sys_oper_log` VALUES (228, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/list?pageNum=1&pageSize=10&deptName=&status=', '::1', '内网IP', '{\"deptName\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:15:34');
INSERT INTO `sys_oper_log` VALUES (229, '岗位管理', 0, '/api/v1/system/post/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/post/list?postName=&status=&postCode=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"postCode\":\"\",\"postName\":\"\",\"status\":\"\"}', '', '2024-03-06 08:15:35');
INSERT INTO `sys_oper_log` VALUES (230, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/list?pageNum=1&pageSize=10&deptName=&status=', '::1', '内网IP', '{\"deptName\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:15:37');
INSERT INTO `sys_oper_log` VALUES (231, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/list?pageNum=1&pageSize=10&deptName=&status=', '::1', '内网IP', '{\"deptName\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:15:40');
INSERT INTO `sys_oper_log` VALUES (232, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_user_sex&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_user_sex\"}', '', '2024-03-06 08:15:43');
INSERT INTO `sys_oper_log` VALUES (233, '', 0, '/api/v1/system/dept/treeSelect', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/treeSelect', '::1', '内网IP', '{}', '', '2024-03-06 08:15:43');
INSERT INTO `sys_oper_log` VALUES (234, '', 0, '/api/v1/system/user/params', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/params', '::1', '内网IP', '{}', '', '2024-03-06 08:15:43');
INSERT INTO `sys_oper_log` VALUES (235, '用户管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:15:43');
INSERT INTO `sys_oper_log` VALUES (236, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:15:55');
INSERT INTO `sys_oper_log` VALUES (237, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:15:55');
INSERT INTO `sys_oper_log` VALUES (238, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:16:02');
INSERT INTO `sys_oper_log` VALUES (239, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=26', '::1', '内网IP', '{\"id\":\"26\"}', '', '2024-03-06 08:16:02');
INSERT INTO `sys_oper_log` VALUES (240, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', 'A分部', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"system/user/index\",\"icon\":\"ele-User\",\"id\":26,\"isAffix\":0,\"isHide\":\"0\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"人员管理\",\"menuSort\":0,\"menuType\":\"0\",\"name\":\"api/v1/system/user/list\",\"path\":\"/system/auth/user/list\",\"pid\":0,\"redirect\":\"\",\"roles\":[1]}', '', '2024-03-06 08:16:12');
INSERT INTO `sys_oper_log` VALUES (241, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 08:16:12');
INSERT INTO `sys_oper_log` VALUES (242, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:16:12');
INSERT INTO `sys_oper_log` VALUES (243, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:16:16');
INSERT INTO `sys_oper_log` VALUES (244, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:16:16');
INSERT INTO `sys_oper_log` VALUES (245, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:16:25');
INSERT INTO `sys_oper_log` VALUES (246, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:16:25');
INSERT INTO `sys_oper_log` VALUES (247, '服务监控', 0, '/api/v1/system/monitor/server', 'GET', 1, 'admin', 'A分部', '/api/v1/system/monitor/server', '::1', '内网IP', '{}', '', '2024-03-06 08:16:27');
INSERT INTO `sys_oper_log` VALUES (248, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=admin_login_status&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"admin_login_status\"}', '', '2024-03-06 08:16:29');
INSERT INTO `sys_oper_log` VALUES (249, '登录日志', 0, '/api/v1/system/loginLog/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/loginLog/list?pageNum=1&pageSize=10&status=&ipaddr=&loginLocation=&userName=', '::1', '内网IP', '{\"ipaddr\":\"\",\"loginLocation\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\",\"userName\":\"\"}', '', '2024-03-06 08:16:29');
INSERT INTO `sys_oper_log` VALUES (250, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_oper_log_type&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_oper_log_type\"}', '', '2024-03-06 08:16:31');
INSERT INTO `sys_oper_log` VALUES (251, '操作日志', 0, '/api/v1/system/operLog/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/operLog/list?pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '', '2024-03-06 08:16:31');
INSERT INTO `sys_oper_log` VALUES (252, '角色管理', 0, '/api/v1/system/role/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/role/list?roleName=&roleStatus=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"roleName\":\"\",\"roleStatus\":\"\"}', '', '2024-03-06 08:16:34');
INSERT INTO `sys_oper_log` VALUES (253, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/list?pageNum=1&pageSize=10&deptName=&status=', '::1', '内网IP', '{\"deptName\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:16:36');
INSERT INTO `sys_oper_log` VALUES (254, '岗位管理', 0, '/api/v1/system/post/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/post/list?postName=&status=&postCode=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"postCode\":\"\",\"postName\":\"\",\"status\":\"\"}', '', '2024-03-06 08:16:39');
INSERT INTO `sys_oper_log` VALUES (255, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:17:01');
INSERT INTO `sys_oper_log` VALUES (256, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=1', '::1', '内网IP', '{\"id\":\"1\"}', '', '2024-03-06 08:17:01');
INSERT INTO `sys_oper_log` VALUES (257, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', 'A分部', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"layout/routerView/parent\",\"icon\":\"ele-Stamp\",\"id\":1,\"isAffix\":0,\"isHide\":\"0\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"岗位管理\",\"menuSort\":30,\"menuType\":\"0\",\"name\":\"api/v1/system/auth\",\"path\":\"/system/auth\",\"pid\":0,\"redirect\":\"0\",\"roles\":[1]}', '', '2024-03-06 08:17:15');
INSERT INTO `sys_oper_log` VALUES (258, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 08:17:15');
INSERT INTO `sys_oper_log` VALUES (259, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:17:15');
INSERT INTO `sys_oper_log` VALUES (260, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:17:23');
INSERT INTO `sys_oper_log` VALUES (261, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=10', '::1', '内网IP', '{\"id\":\"10\"}', '', '2024-03-06 08:17:23');
INSERT INTO `sys_oper_log` VALUES (262, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', 'A分部', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"system/role/index\",\"icon\":\"iconfont icon-juxingkaobei\",\"id\":10,\"isAffix\":0,\"isHide\":\"0\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"角色管理\",\"menuSort\":0,\"menuType\":\"1\",\"name\":\"api/v1/system/role/list\",\"path\":\"/system/auth/roleList\",\"pid\":22,\"redirect\":\"\",\"roles\":[1]}', '', '2024-03-06 08:17:35');
INSERT INTO `sys_oper_log` VALUES (263, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 08:17:35');
INSERT INTO `sys_oper_log` VALUES (264, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:17:35');
INSERT INTO `sys_oper_log` VALUES (265, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:17:38');
INSERT INTO `sys_oper_log` VALUES (266, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:17:38');
INSERT INTO `sys_oper_log` VALUES (267, '角色管理', 0, '/api/v1/system/role/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/role/list?roleName=&roleStatus=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"roleName\":\"\",\"roleStatus\":\"\"}', '', '2024-03-06 08:17:46');
INSERT INTO `sys_oper_log` VALUES (268, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:17:52');
INSERT INTO `sys_oper_log` VALUES (269, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:17:52');
INSERT INTO `sys_oper_log` VALUES (270, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:18:02');
INSERT INTO `sys_oper_log` VALUES (271, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=10', '::1', '内网IP', '{\"id\":\"10\"}', '', '2024-03-06 08:18:02');
INSERT INTO `sys_oper_log` VALUES (272, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', 'A分部', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"system/role/index\",\"icon\":\"iconfont icon-juxingkaobei\",\"id\":10,\"isAffix\":0,\"isHide\":\"0\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"角色管理\",\"menuSort\":0,\"menuType\":\"0\",\"name\":\"api/v1/system/role/list\",\"path\":\"/system/auth/roleList\",\"pid\":0,\"redirect\":\"\",\"roles\":[1]}', '', '2024-03-06 08:18:06');
INSERT INTO `sys_oper_log` VALUES (273, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 08:18:06');
INSERT INTO `sys_oper_log` VALUES (274, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:18:06');
INSERT INTO `sys_oper_log` VALUES (275, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:18:08');
INSERT INTO `sys_oper_log` VALUES (276, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:18:08');
INSERT INTO `sys_oper_log` VALUES (277, '角色管理', 0, '/api/v1/system/role/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/role/list?roleName=&roleStatus=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"roleName\":\"\",\"roleStatus\":\"\"}', '', '2024-03-06 08:18:10');
INSERT INTO `sys_oper_log` VALUES (278, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/list?pageNum=1&pageSize=10&deptName=&status=', '::1', '内网IP', '{\"deptName\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:18:11');
INSERT INTO `sys_oper_log` VALUES (279, '岗位管理', 0, '/api/v1/system/post/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/post/list?postName=&status=&postCode=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"postCode\":\"\",\"postName\":\"\",\"status\":\"\"}', '', '2024-03-06 08:18:12');
INSERT INTO `sys_oper_log` VALUES (280, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:18:20');
INSERT INTO `sys_oper_log` VALUES (281, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:18:20');
INSERT INTO `sys_oper_log` VALUES (282, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:18:22');
INSERT INTO `sys_oper_log` VALUES (283, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=1', '::1', '内网IP', '{\"id\":\"1\"}', '', '2024-03-06 08:18:22');
INSERT INTO `sys_oper_log` VALUES (284, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', 'A分部', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"layout/routerView/parent\",\"icon\":\"ele-Stamp\",\"id\":1,\"isAffix\":0,\"isHide\":\"0\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"岗位管理11111\",\"menuSort\":30,\"menuType\":\"0\",\"name\":\"api/v1/system/auth\",\"path\":\"/system/auth\",\"pid\":0,\"redirect\":\"0\",\"roles\":[1]}', '', '2024-03-06 08:18:25');
INSERT INTO `sys_oper_log` VALUES (285, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 08:18:25');
INSERT INTO `sys_oper_log` VALUES (286, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:18:25');
INSERT INTO `sys_oper_log` VALUES (287, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:18:27');
INSERT INTO `sys_oper_log` VALUES (288, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:18:27');
INSERT INTO `sys_oper_log` VALUES (289, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=22', '::1', '内网IP', '{\"id\":\"22\"}', '', '2024-03-06 08:18:36');
INSERT INTO `sys_oper_log` VALUES (290, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:18:36');
INSERT INTO `sys_oper_log` VALUES (291, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:18:44');
INSERT INTO `sys_oper_log` VALUES (292, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=10', '::1', '内网IP', '{\"id\":\"10\"}', '', '2024-03-06 08:18:44');
INSERT INTO `sys_oper_log` VALUES (293, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:18:47');
INSERT INTO `sys_oper_log` VALUES (294, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=22', '::1', '内网IP', '{\"id\":\"22\"}', '', '2024-03-06 08:18:47');
INSERT INTO `sys_oper_log` VALUES (295, '岗位管理', 0, '/api/v1/system/post/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/post/list?postName=&status=&postCode=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"postCode\":\"\",\"postName\":\"\",\"status\":\"\"}', '', '2024-03-06 08:18:50');
INSERT INTO `sys_oper_log` VALUES (296, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/list?pageNum=1&pageSize=10&deptName=&status=', '::1', '内网IP', '{\"deptName\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:18:51');
INSERT INTO `sys_oper_log` VALUES (297, '角色管理', 0, '/api/v1/system/role/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/role/list?roleName=&roleStatus=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"roleName\":\"\",\"roleStatus\":\"\"}', '', '2024-03-06 08:18:52');
INSERT INTO `sys_oper_log` VALUES (298, '服务监控', 0, '/api/v1/system/monitor/server', 'GET', 1, 'admin', 'A分部', '/api/v1/system/monitor/server', '::1', '内网IP', '{}', '', '2024-03-06 08:18:57');
INSERT INTO `sys_oper_log` VALUES (299, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=admin_login_status&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"admin_login_status\"}', '', '2024-03-06 08:18:57');
INSERT INTO `sys_oper_log` VALUES (300, '登录日志', 0, '/api/v1/system/loginLog/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/loginLog/list?pageNum=1&pageSize=10&status=&ipaddr=&loginLocation=&userName=', '::1', '内网IP', '{\"ipaddr\":\"\",\"loginLocation\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\",\"userName\":\"\"}', '', '2024-03-06 08:18:57');
INSERT INTO `sys_oper_log` VALUES (301, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:19:01');
INSERT INTO `sys_oper_log` VALUES (302, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:19:01');
INSERT INTO `sys_oper_log` VALUES (303, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:19:18');
INSERT INTO `sys_oper_log` VALUES (304, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=22', '::1', '内网IP', '{\"id\":\"22\"}', '', '2024-03-06 08:19:18');
INSERT INTO `sys_oper_log` VALUES (305, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', 'A分部', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"system/post/index\",\"icon\":\"iconfont icon-neiqianshujuchucun\",\"id\":22,\"isAffix\":0,\"isHide\":\"0\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"岗位管理\",\"menuSort\":0,\"menuType\":\"1\",\"name\":\"api/v1/system/post/list\",\"path\":\"/system/auth/postList\",\"pid\":1,\"redirect\":\"\",\"roles\":[1]}', '', '2024-03-06 08:19:25');
INSERT INTO `sys_oper_log` VALUES (306, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 08:19:25');
INSERT INTO `sys_oper_log` VALUES (307, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:19:25');
INSERT INTO `sys_oper_log` VALUES (308, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:19:29');
INSERT INTO `sys_oper_log` VALUES (309, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=10', '::1', '内网IP', '{\"id\":\"10\"}', '', '2024-03-06 08:19:29');
INSERT INTO `sys_oper_log` VALUES (310, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', 'A分部', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"system/role/index\",\"icon\":\"iconfont icon-juxingkaobei\",\"id\":10,\"isAffix\":0,\"isHide\":\"0\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"角色管理\",\"menuSort\":0,\"menuType\":\"1\",\"name\":\"api/v1/system/role/list\",\"path\":\"/system/auth/roleList\",\"pid\":1,\"redirect\":\"\",\"roles\":[1]}', '', '2024-03-06 08:19:34');
INSERT INTO `sys_oper_log` VALUES (311, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 08:19:34');
INSERT INTO `sys_oper_log` VALUES (312, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:19:34');
INSERT INTO `sys_oper_log` VALUES (313, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:19:36');
INSERT INTO `sys_oper_log` VALUES (314, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:19:36');
INSERT INTO `sys_oper_log` VALUES (315, '角色管理', 0, '/api/v1/system/role/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/role/list?roleName=&roleStatus=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"roleName\":\"\",\"roleStatus\":\"\"}', '', '2024-03-06 08:19:38');
INSERT INTO `sys_oper_log` VALUES (316, '岗位管理', 0, '/api/v1/system/post/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/post/list?postName=&status=&postCode=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"postCode\":\"\",\"postName\":\"\",\"status\":\"\"}', '', '2024-03-06 08:19:40');
INSERT INTO `sys_oper_log` VALUES (317, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_user_sex&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_user_sex\"}', '', '2024-03-06 08:19:52');
INSERT INTO `sys_oper_log` VALUES (318, '', 0, '/api/v1/system/dept/treeSelect', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/treeSelect', '::1', '内网IP', '{}', '', '2024-03-06 08:19:52');
INSERT INTO `sys_oper_log` VALUES (319, '', 0, '/api/v1/system/user/params', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/params', '::1', '内网IP', '{}', '', '2024-03-06 08:19:52');
INSERT INTO `sys_oper_log` VALUES (320, '人员管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:19:52');
INSERT INTO `sys_oper_log` VALUES (321, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:20:03');
INSERT INTO `sys_oper_log` VALUES (322, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:20:03');
INSERT INTO `sys_oper_log` VALUES (323, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=1', '::1', '内网IP', '{\"id\":\"1\"}', '', '2024-03-06 08:20:10');
INSERT INTO `sys_oper_log` VALUES (324, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:20:10');
INSERT INTO `sys_oper_log` VALUES (325, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', 'A分部', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"layout/routerView/parent\",\"icon\":\"ele-Stamp\",\"id\":1,\"isAffix\":0,\"isHide\":\"0\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"职务管理\",\"menuSort\":30,\"menuType\":\"0\",\"name\":\"api/v1/system/auth\",\"path\":\"/system/auth\",\"pid\":0,\"redirect\":\"0\",\"roles\":[1]}', '', '2024-03-06 08:20:32');
INSERT INTO `sys_oper_log` VALUES (326, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:20:32');
INSERT INTO `sys_oper_log` VALUES (327, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 08:20:32');
INSERT INTO `sys_oper_log` VALUES (328, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:20:35');
INSERT INTO `sys_oper_log` VALUES (329, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:20:35');
INSERT INTO `sys_oper_log` VALUES (330, '在线用户', 0, '/api/v1/system/online/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/online/list?ipaddr=&userName=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"ipaddr\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"userName\":\"\"}', '', '2024-03-06 08:20:54');
INSERT INTO `sys_oper_log` VALUES (331, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_oper_log_type&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_oper_log_type\"}', '', '2024-03-06 08:20:57');
INSERT INTO `sys_oper_log` VALUES (332, '操作日志', 0, '/api/v1/system/operLog/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/operLog/list?pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '', '2024-03-06 08:20:57');
INSERT INTO `sys_oper_log` VALUES (333, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=admin_login_status&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"admin_login_status\"}', '', '2024-03-06 08:21:00');
INSERT INTO `sys_oper_log` VALUES (334, '登录日志', 0, '/api/v1/system/loginLog/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/loginLog/list?pageNum=1&pageSize=10&status=&ipaddr=&loginLocation=&userName=', '::1', '内网IP', '{\"ipaddr\":\"\",\"loginLocation\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\",\"userName\":\"\"}', '', '2024-03-06 08:21:00');
INSERT INTO `sys_oper_log` VALUES (335, '服务监控', 0, '/api/v1/system/monitor/server', 'GET', 1, 'admin', 'A分部', '/api/v1/system/monitor/server', '::1', '内网IP', '{}', '', '2024-03-06 08:21:02');
INSERT INTO `sys_oper_log` VALUES (336, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/list?pageNum=1&pageSize=10&deptName=&status=', '::1', '内网IP', '{\"deptName\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:21:08');
INSERT INTO `sys_oper_log` VALUES (337, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_user_sex&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_user_sex\"}', '', '2024-03-06 08:21:09');
INSERT INTO `sys_oper_log` VALUES (338, '', 0, '/api/v1/system/dept/treeSelect', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/treeSelect', '::1', '内网IP', '{}', '', '2024-03-06 08:21:09');
INSERT INTO `sys_oper_log` VALUES (339, '', 0, '/api/v1/system/user/params', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/params', '::1', '内网IP', '{}', '', '2024-03-06 08:21:09');
INSERT INTO `sys_oper_log` VALUES (340, '人员管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:21:09');
INSERT INTO `sys_oper_log` VALUES (341, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:21:13');
INSERT INTO `sys_oper_log` VALUES (342, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:21:13');
INSERT INTO `sys_oper_log` VALUES (343, '角色管理', 0, '/api/v1/system/role/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/role/list?roleName=&roleStatus=&pageNum=1&pageSize=10', '::1', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\",\"roleName\":\"\",\"roleStatus\":\"\"}', '', '2024-03-06 08:21:26');
INSERT INTO `sys_oper_log` VALUES (344, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:23:31');
INSERT INTO `sys_oper_log` VALUES (345, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=28', '::1', '内网IP', '{\"id\":\"28\"}', '', '2024-03-06 08:23:31');
INSERT INTO `sys_oper_log` VALUES (346, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/list?pageNum=1&pageSize=10&deptName=&status=', '::1', '内网IP', '{\"deptName\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:26:58');
INSERT INTO `sys_oper_log` VALUES (347, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/list', '::1', '内网IP', '{}', '', '2024-03-06 08:27:12');
INSERT INTO `sys_oper_log` VALUES (348, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/list', '::1', '内网IP', '{}', '', '2024-03-06 08:29:04');
INSERT INTO `sys_oper_log` VALUES (349, '修改部门', 0, '/api/v1/system/dept/edit', 'PUT', 1, 'admin', 'A分部', '/api/v1/system/dept/edit', '::1', '内网IP', '{\"ancestors\":\"0,100,102\",\"createdAt\":\"2021-07-13 15:56:52\",\"createdBy\":0,\"deletedAt\":null,\"deptId\":109,\"deptName\":\"人事部门\",\"email\":\"ry@qq.com\",\"leader\":\"\",\"orderNum\":2,\"parentId\":102,\"phone\":\"15888888888\",\"status\":1,\"updatedAt\":\"2021-07-13 15:56:52\",\"updatedBy\":0}', '', '2024-03-06 08:29:12');
INSERT INTO `sys_oper_log` VALUES (350, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/list?pageNum=1&pageSize=10&deptName=&status=', '::1', '内网IP', '{\"deptName\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:29:12');
INSERT INTO `sys_oper_log` VALUES (351, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/list?pageNum=1&pageSize=10&deptName=&status=', '::1', '内网IP', '{\"deptName\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:29:59');
INSERT INTO `sys_oper_log` VALUES (352, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_user_sex&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_user_sex\"}', '', '2024-03-06 08:30:10');
INSERT INTO `sys_oper_log` VALUES (353, '', 0, '/api/v1/system/dept/treeSelect', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/treeSelect', '::1', '内网IP', '{}', '', '2024-03-06 08:30:10');
INSERT INTO `sys_oper_log` VALUES (354, '', 0, '/api/v1/system/user/params', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/params', '::1', '内网IP', '{}', '', '2024-03-06 08:30:10');
INSERT INTO `sys_oper_log` VALUES (355, '人员管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:30:10');
INSERT INTO `sys_oper_log` VALUES (356, '人员管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=103&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"103\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:30:11');
INSERT INTO `sys_oper_log` VALUES (357, '人员管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=104&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"104\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:30:12');
INSERT INTO `sys_oper_log` VALUES (358, '人员管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=105&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"105\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:30:12');
INSERT INTO `sys_oper_log` VALUES (359, '人员管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=105&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"105\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:30:12');
INSERT INTO `sys_oper_log` VALUES (360, '人员管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=106&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"106\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:30:12');
INSERT INTO `sys_oper_log` VALUES (361, '人员管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=107&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"107\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:30:13');
INSERT INTO `sys_oper_log` VALUES (362, '人员管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=108&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"108\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:30:13');
INSERT INTO `sys_oper_log` VALUES (363, '人员管理', 0, '/api/v1/system/user/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/list?pageNum=1&pageSize=10&deptId=109&mobile=&status=&keyWords=', '::1', '内网IP', '{\"deptId\":\"109\",\"keyWords\":\"\",\"mobile\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:30:14');
INSERT INTO `sys_oper_log` VALUES (364, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:30:15');
INSERT INTO `sys_oper_log` VALUES (365, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:30:15');
INSERT INTO `sys_oper_log` VALUES (366, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:30:58');
INSERT INTO `sys_oper_log` VALUES (367, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:30:58');
INSERT INTO `sys_oper_log` VALUES (368, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:31:10');
INSERT INTO `sys_oper_log` VALUES (369, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=16', '::1', '内网IP', '{\"id\":\"16\"}', '', '2024-03-06 08:31:10');
INSERT INTO `sys_oper_log` VALUES (370, '删除菜单', 0, '/api/v1/system/menu/delete', 'DELETE', 1, 'admin', 'A分部', '/api/v1/system/menu/delete', '::1', '内网IP', '{\"ids\":[17]}', '', '2024-03-06 08:45:33');
INSERT INTO `sys_oper_log` VALUES (371, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 08:45:33');
INSERT INTO `sys_oper_log` VALUES (372, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:45:33');
INSERT INTO `sys_oper_log` VALUES (373, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=33', '::1', '内网IP', '{\"id\":\"33\"}', '', '2024-03-06 08:45:55');
INSERT INTO `sys_oper_log` VALUES (374, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:45:55');
INSERT INTO `sys_oper_log` VALUES (375, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:46:02');
INSERT INTO `sys_oper_log` VALUES (376, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=35', '::1', '内网IP', '{\"id\":\"35\"}', '', '2024-03-06 08:46:02');
INSERT INTO `sys_oper_log` VALUES (377, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', 'A分部', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"layout/routerView/parent\",\"icon\":\"iconfont icon-zujian\",\"id\":35,\"isAffix\":0,\"isHide\":\"0\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"系统工具\",\"menuSort\":25,\"menuType\":\"0\",\"name\":\"api/v1/system/tools\",\"path\":\"/system/tools\",\"pid\":0,\"redirect\":\"\",\"roles\":[1]}', '', '2024-03-06 08:46:04');
INSERT INTO `sys_oper_log` VALUES (378, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 08:46:04');
INSERT INTO `sys_oper_log` VALUES (379, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:46:04');
INSERT INTO `sys_oper_log` VALUES (380, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:46:06');
INSERT INTO `sys_oper_log` VALUES (381, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:46:06');
INSERT INTO `sys_oper_log` VALUES (382, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:46:23');
INSERT INTO `sys_oper_log` VALUES (383, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:46:23');
INSERT INTO `sys_oper_log` VALUES (384, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:46:37');
INSERT INTO `sys_oper_log` VALUES (385, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=35', '::1', '内网IP', '{\"id\":\"35\"}', '', '2024-03-06 08:46:37');
INSERT INTO `sys_oper_log` VALUES (386, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', 'A分部', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"layout/routerView/parent\",\"icon\":\"iconfont icon-zujian\",\"id\":35,\"isAffix\":0,\"isHide\":\"0\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"api文档\",\"menuSort\":25,\"menuType\":\"0\",\"name\":\"api/v1/system/tools\",\"path\":\"/system/tools\",\"pid\":0,\"redirect\":\"\",\"roles\":[1]}', '', '2024-03-06 08:46:50');
INSERT INTO `sys_oper_log` VALUES (387, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 08:46:50');
INSERT INTO `sys_oper_log` VALUES (388, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:46:50');
INSERT INTO `sys_oper_log` VALUES (389, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:46:53');
INSERT INTO `sys_oper_log` VALUES (390, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:46:53');
INSERT INTO `sys_oper_log` VALUES (391, '', 0, '/api/v1/system/menu/getParams', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/getParams', '::1', '内网IP', '{}', '', '2024-03-06 08:59:09');
INSERT INTO `sys_oper_log` VALUES (392, '', 0, '/api/v1/system/menu/get', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/get?id=27', '::1', '内网IP', '{\"id\":\"27\"}', '', '2024-03-06 08:59:09');
INSERT INTO `sys_oper_log` VALUES (393, '修改菜单', 0, '/api/v1/system/menu/update', 'PUT', 1, 'admin', 'A分部', '/api/v1/system/menu/update', '::1', '内网IP', '{\"component\":\"layout/routerView/parent\",\"icon\":\"iconfont icon-shuxingtu\",\"id\":27,\"isAffix\":0,\"isHide\":\"0\",\"isIframe\":0,\"isKeepAlive\":1,\"isLink\":0,\"linkUrl\":\"\",\"menuName\":\"系统配置\",\"menuSort\":40,\"menuType\":\"0\",\"name\":\"api/v1/system/dict\",\"path\":\"/system/dict\",\"pid\":0,\"redirect\":\"654\",\"roles\":[1]}', '', '2024-03-06 08:59:14');
INSERT INTO `sys_oper_log` VALUES (394, '', 0, '/api/v1/system/user/getUserMenus', 'GET', 1, 'admin', 'A分部', '/api/v1/system/user/getUserMenus', '::1', '内网IP', '{}', '', '2024-03-06 08:59:14');
INSERT INTO `sys_oper_log` VALUES (395, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:59:14');
INSERT INTO `sys_oper_log` VALUES (396, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_show_hide&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_show_hide\"}', '', '2024-03-06 08:59:29');
INSERT INTO `sys_oper_log` VALUES (397, '', 0, '/api/v1/system/menu/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/menu/list?title=&component=', '::1', '内网IP', '{\"component\":\"\",\"title\":\"\"}', '', '2024-03-06 08:59:29');
INSERT INTO `sys_oper_log` VALUES (398, '部门管理', 0, '/api/v1/system/dept/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dept/list?pageNum=1&pageSize=10&deptName=&status=', '::1', '内网IP', '{\"deptName\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:59:32');
INSERT INTO `sys_oper_log` VALUES (399, '字典管理', 0, '/api/v1/system/dict/type/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/type/list?pageNum=1&pageSize=10&dictName=&dictType=&status=', '::1', '内网IP', '{\"dictName\":\"\",\"dictType\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:59:34');
INSERT INTO `sys_oper_log` VALUES (400, '', 0, '/api/v1/system/dict/data/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/list?pageNum=1&pageSize=10&dictLabel=&dictType=%3AdictType&status=', '::1', '内网IP', '{\"dictLabel\":\"\",\"dictType\":\":dictType\",\"pageNum\":\"1\",\"pageSize\":\"10\",\"status\":\"\"}', '', '2024-03-06 08:59:35');
INSERT INTO `sys_oper_log` VALUES (401, '', 0, '/api/v1/system/dict/data/getDictData', 'GET', 1, 'admin', 'A分部', '/api/v1/system/dict/data/getDictData?dictType=sys_yes_no&defaultValue=', '::1', '内网IP', '{\"defaultValue\":\"\",\"dictType\":\"sys_yes_no\"}', '', '2024-03-06 08:59:37');
INSERT INTO `sys_oper_log` VALUES (402, '参数管理', 0, '/api/v1/system/config/list', 'GET', 1, 'admin', 'A分部', '/api/v1/system/config/list?pageNum=1&pageSize=10&configName=&configKey=&configType=', '::1', '内网IP', '{\"configKey\":\"\",\"configName\":\"\",\"configType\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '', '2024-03-06 08:59:37');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态（0正常 1停用）',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `created_by` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建人',
  `updated_by` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '修改人',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, 1, '', 0, 0, '2021-07-11 11:32:58', NULL, NULL);
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, 1, '', 0, 0, '2021-07-12 11:01:26', NULL, NULL);
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, 1, '', 0, 31, '2021-07-12 11:01:30', '2022-09-16 16:48:18', NULL);
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, 0, '普通员工', 0, 31, '2021-07-12 11:01:33', '2022-04-08 15:32:23', NULL);
INSERT INTO `sys_post` VALUES (5, 'it', 'IT部', 5, 1, '信息部', 31, 31, '2021-07-12 11:09:42', '2022-04-09 12:59:12', NULL);
INSERT INTO `sys_post` VALUES (6, '1111', '1111', 0, 1, '11111', 31, 0, '2022-04-08 15:32:44', '2022-04-08 15:32:44', '2022-04-08 15:51:24');
INSERT INTO `sys_post` VALUES (7, '222', '2222', 0, 1, '22222', 31, 0, '2022-04-08 15:32:55', '2022-04-08 15:32:55', '2022-04-08 15:51:24');
INSERT INTO `sys_post` VALUES (8, '33333', '3333', 0, 0, '33333', 31, 0, '2022-04-08 15:33:01', '2022-04-08 15:33:01', '2022-04-08 15:51:40');
INSERT INTO `sys_post` VALUES (9, '222', '111', 0, 1, '2313213', 31, 0, '2022-04-08 15:52:53', '2022-04-08 15:52:53', '2022-04-08 15:52:56');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态;0:禁用;1:正常',
  `list_order` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `data_scope` tinyint UNSIGNED NOT NULL DEFAULT 3 COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 1, 0, '超级管理员', '备注', 3, '2022-04-01 11:38:39', '2022-04-28 10:00:15');
INSERT INTO `sys_role` VALUES (2, 1, 0, '普通管理员', '备注', 3, '2022-04-01 11:38:39', '2022-04-28 10:01:34');
INSERT INTO `sys_role` VALUES (3, 1, 0, '站点管理员', '站点管理人员', 3, '2022-04-01 11:38:39', '2022-04-01 11:38:39');
INSERT INTO `sys_role` VALUES (4, 1, 0, '初级管理员', '初级管理员', 3, '2022-04-01 11:38:39', '2022-04-01 11:38:39');
INSERT INTO `sys_role` VALUES (5, 1, 0, '高级管理员', '高级管理员', 2, '2022-04-01 11:38:39', '2022-04-01 11:38:39');
INSERT INTO `sys_role` VALUES (8, 1, 0, '区级管理员', '', 2, '2022-04-01 11:38:39', '2022-04-06 09:53:40');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (5, 103);
INSERT INTO `sys_role_dept` VALUES (5, 104);
INSERT INTO `sys_role_dept` VALUES (5, 105);
INSERT INTO `sys_role_dept` VALUES (8, 105);
INSERT INTO `sys_role_dept` VALUES (8, 106);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `birthday` int NOT NULL DEFAULT 0 COMMENT '生日',
  `user_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_salt` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '加密盐',
  `user_status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `sex` tinyint NOT NULL DEFAULT 0 COMMENT '性别;0:保密,1:男,2:女',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户头像',
  `dept_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '部门id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `is_admin` tinyint NOT NULL DEFAULT 1 COMMENT '是否后台管理员 1 是  0   否',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '联系地址',
  `describe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT ' 描述信息',
  `last_login_ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `last_login_time` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_login`(`user_name` ASC, `deleted_at` ASC) USING BTREE,
  UNIQUE INDEX `mobile`(`mobile` ASC, `deleted_at` ASC) USING BTREE,
  INDEX `user_nickname`(`user_nickname` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '13578342363', '超级管理员', 0, '6dd68eea81e0fca319add0bd58c3fdf6', '46PvWe1Sl7', 1, 'yxh669@qq.com', 1, 'https://yxh-1301841944.cos.ap-chongqing.myqcloud.com/gfast/2021-07-19/ccwpeuqz1i2s769hua.jpeg', 101, '', 1, 'asdasfdsaf大发放打发士大夫发按时', '描述信息', '::1', '2024-03-06 07:37:18', '2021-06-22 17:58:00', '2022-11-03 15:44:38', NULL);
INSERT INTO `sys_user` VALUES (2, 'yixiaohu', '13699885599', '奈斯', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, 'yxh@qq.com', 1, 'upload_file/2022-11-04/co3e5ljknns8jhlp8s.jpg', 102, '备注', 1, '', '', '::1', '2022-11-04 09:54:56', '2021-06-22 17:58:00', '2022-11-04 17:54:56', NULL);
INSERT INTO `sys_user` VALUES (3, 'zs', '16399669855', '张三', 0, '41e3778c20338f4d7d6cc886fd3b2a52', 'redoHIj524', 1, 'zs@qq.com', 0, 'https://yxh-1301841944.cos.ap-chongqing.myqcloud.com/gfast/2021-08-02/cd8nif79egjg9kbkgk.jpeg', 101, '', 1, '', '', '::1', '2022-04-28 10:01:47', '2021-06-22 17:58:00', '2022-04-28 10:01:47', NULL);
INSERT INTO `sys_user` VALUES (4, 'qlgl', '13758596696', '测试c', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, 'qlgl@qq.com', 0, '', 102, '', 1, '', '', '127.0.0.1', NULL, '2021-06-22 17:58:00', '2022-11-03 15:44:20', NULL);
INSERT INTO `sys_user` VALUES (5, 'test', '13845696696', '测试2', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '123@qq.com', 0, '', 101, '', 0, '', '', '::1', '2022-03-30 10:50:39', '2021-06-22 17:58:00', '2022-11-03 15:44:10', NULL);
INSERT INTO `sys_user` VALUES (6, '18999998889', '13755866654', '刘大大', 0, '5df78d20315a5af61f45d20f72c184fc', 'lC6OoXDCbM', 1, '1223@qq.com', 0, '', 103, '', 1, '', '', '[::1]', '2022-02-25 14:29:22', '2021-06-22 17:58:00', '2022-11-03 17:05:07', NULL);
INSERT INTO `sys_user` VALUES (7, 'zmm', '13788566696', '张明明', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '11123@qq.com', 0, '', 104, '', 1, '', '', '127.0.0.1', NULL, '2021-06-22 17:58:00', '2022-04-12 17:55:42', NULL);
INSERT INTO `sys_user` VALUES (8, 'lxx', '13756566696', '李小小', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '123333@qq.com', 0, '', 101, '', 1, '', '', '127.0.0.1', NULL, '2021-06-22 17:58:00', '2022-04-12 17:55:45', NULL);
INSERT INTO `sys_user` VALUES (10, 'xmm', '13588999969', '小秘密', 0, '2de2a8df703bfc634cfda2cb2f6a59be', 'Frz7LJY7SE', 1, '696@qq.com', 0, '', 101, '', 1, '', '', '[::1]', '2021-07-22 17:08:53', '2021-06-22 17:58:00', '2022-04-12 17:55:50', NULL);
INSERT INTO `sys_user` VALUES (14, 'cd_19', '13699888899', '说道理', 0, '1169d5fe4119fd4277a95f02d7036171', '7paigEoedh', 1, '', 0, '', 102, '', 1, '', '', '', NULL, '2021-06-22 17:58:00', '2022-04-12 18:13:22', NULL);
INSERT INTO `sys_user` VALUES (15, 'lmm', '13587754545', '刘敏敏', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, 'a@coc.com', 0, '', 201, '', 1, '', '', '127.0.0.1', NULL, '2021-06-22 17:58:00', '2022-04-12 17:56:23', NULL);
INSERT INTO `sys_user` VALUES (16, 'ldn', '13899658874', '李大牛', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, 'a@ll.con', 0, '', 102, '', 1, '', '', '127.0.0.1', NULL, '2021-06-22 17:58:00', '2022-04-12 17:56:27', NULL);
INSERT INTO `sys_user` VALUES (20, 'dbc', '13877555566', '大百词', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '', 0, '', 0, '', 1, '', '', '', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` VALUES (22, 'yxfmlbb', '15969423326', '大数据部门测试', 0, '66f89b40ee4a10aabaf70c15756429ea', 'mvd2OtUe8f', 1, 'yxh6691@qq.com', 0, 'https://yxh-1301841944.cos.ap-chongqing.myqcloud.com/gfast/2021-09-29/cem20k3fdciosy7nwo.jpeg', 200, '', 1, '2222233', '1222', '[::1]', '2021-10-28 11:36:07', '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` VALUES (23, 'wangming', '13699888855', '王明', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '', 0, '', 0, '', 1, '', '', '', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` VALUES (24, 'zhk', '13699885591', '综合科', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '', 0, '', 0, '', 1, '', '', '192.168.0.146', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` VALUES (28, 'demo3', '18699888855', '测试账号1', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '123132@qq.com', 0, '', 109, '', 1, '', '', '192.168.0.229', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` VALUES (31, 'demo', '15334455789', '李四', 0, '6dd68eea81e0fca319add0bd58c3fdf6', '46PvWe1Sl7', 1, '123@qq.com', 2, 'upload_file/2022-11-11/co9copop81co0gysbz.jpg', 109, '3', 1, '云南省曲靖市22223', '生活变的再糟糕，也不妨碍我变得更好', '::1', '2024-03-06 01:28:50', '2021-06-22 17:58:00', '2022-11-11 17:25:27', NULL);
INSERT INTO `sys_user` VALUES (32, 'demo100', '18699888859', '测试账号1', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '', 0, '', 0, '', 1, '', '', '[::1]', '2021-11-24 18:01:21', '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` VALUES (33, 'demo110', '18699888853', '测试账号1', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '', 0, '', 0, '', 1, '', '', '', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` VALUES (34, 'yxfmlbb2', '15969423327', '研发部门测试', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '1111@qqq.com', 1, '', 103, '', 0, '', '', '127.0.0.1', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` VALUES (35, 'wk666', '18888888888', 'wk', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '396861557@qq.com', 1, '', 100, '', 1, '', '', '[::1]', '2021-12-09 14:52:37', '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` VALUES (36, 'zxd', '13699885565', '张晓东', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, 'zxk@qq.com', 1, '', 201, '666', 1, '', '', '', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` VALUES (37, 'yxfmlbb3', '13513513511', '张三', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '111@qq.com', 0, '', 204, '', 1, '', '', '[::1]', '2021-07-26 14:49:25', '2021-06-22 17:58:00', '2021-07-26 14:49:18', NULL);
INSERT INTO `sys_user` VALUES (38, 'test_user', '18888888880', 'test', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '11@qq.com', 1, '', 200, '111', 0, '', '', '', NULL, '2021-06-22 17:58:00', '2021-07-12 22:05:29', NULL);
INSERT INTO `sys_user` VALUES (39, 'asan', '18687460555', '阿三', 0, '2354837137115700e2adf870ac113dcf', 'drdDvbtYZW', 1, '456654@qq.com', 1, '', 201, '666666', 1, '', '', '', NULL, '2021-07-12 17:21:43', '2021-07-12 21:13:31', '2021-07-12 22:00:44');
INSERT INTO `sys_user` VALUES (40, 'asi', '13655888888', '啊四', 0, 'fbb755b35d48759dad47bb1540249fd1', '9dfUstcxrz', 1, '5464@qq.com', 1, '', 201, 'adsaasd', 1, '', '', '', NULL, '2021-07-12 17:46:27', '2021-07-12 21:29:41', '2021-07-12 22:00:44');
INSERT INTO `sys_user` VALUES (41, 'awu', '13578556546', '阿五', 0, '3b36a96afa0dfd66aa915e0816e0e9f6', '9gHRa9ho4U', 0, '132321@qq.com', 1, '', 201, 'asdasdasd', 1, '', '', '', NULL, '2021-07-12 17:54:31', '2021-07-12 21:46:34', '2021-07-12 21:59:56');
INSERT INTO `sys_user` VALUES (42, 'demo01', '13699888556', '测试01222', 0, '048dc94116558fb40920f3553ecd5fe8', 'KiVrfzKJQx', 1, '456@qq.com', 2, '', 109, '测试用户', 1, '', '', '', NULL, '2022-04-12 16:15:23', '2022-04-12 17:54:49', NULL);

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` char(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT '用户标识',
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT '用户token',
  `create_time` datetime NULL DEFAULT NULL COMMENT '登录时间',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `ip` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录ip',
  `explorer` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '浏览器',
  `os` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作系统',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_token`(`token` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户在线状态表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES (15, 'f2d1992a5bff07f46a70490451a225e8', '7ZUSfVIf2HyYjcv86SKPPs29v003ECPEScsdYsYYqO1xEIcOpHEu9FS4ZmjQsf1GCmQAky2EuUzyGJF53YyQWvdOP3vC5KeHSmJ1BX0mSAnnw7CD4fNQF4wbtkE4I78lTUjvovXRSC5oDkWPMe79iQ==', '2023-01-13 14:09:51', 'demo', '::1', 'Chrome', 'Windows 10');
INSERT INTO `sys_user_online` VALUES (16, 'c0ce4001700ef589195c41ef073daa62', '7ZUSfVIf2HyYjcv86SKPPs29v003ECPEScsdYsYYqO0y3Gdni2HPIbjTYvAE1/8jYVxUh0VVfhtbUzIENCClH8vlzKtsEfway1I2p8fkF9NRP0ycB7htjT0UJLDmhMUpMaTXSYnL2PPorrqaf4roHg==', '2023-01-19 10:17:18', 'demo', '::1', 'Chrome', 'Windows 10');
INSERT INTO `sys_user_online` VALUES (17, '8d1da89828e914ed6bbe4759b3775cbf', '7ZUSfVIf2HyYjcv86SKPPs29v003ECPEScsdYsYYqO2vjUVochVFm/zhuy7Y6T7pG2xUnI5Ozygxuh/+9TL0c0Q+DLeO1tRnPDjsn6Ckd3Qq/nVH2sjGpG6CofGbLgSb/j+Vw+h05btNcaN0hWfB9A==', '2024-03-06 01:28:50', 'demo', '::1', 'Chrome', 'Windows 10');
INSERT INTO `sys_user_online` VALUES (18, '158bca0f99b03867865697254933fa7d', '5rrLCPtzPM4tnvlHq+0iav2BDmIrd9QCru7zhgXMkRdQG96w2LUruN9FMy9D9D2ShdCyAM5FizOoSP3cC46+wvdvojYy0lJ0pD1bbDFaVdMQwHHoOxR499xFJ3/XupubETujUu6A62m6UVWAmAXqEQ==', '2024-03-06 01:48:00', 'admin', '::1', 'Chrome', 'Windows 10');
INSERT INTO `sys_user_online` VALUES (19, '030afca104eefb170e792805318679f2', '5rrLCPtzPM4tnvlHq+0iav2BDmIrd9QCru7zhgXMkRdQG96w2LUruN9FMy9D9D2ShdCyAM5FizOoSP3cC46+wvHTq4Hscn3kCt+bl6qB8LsQvY2s6Ve/Y9Psky6LsH+9wlfZDefOSC8CxtbNPOdR3g==', '2024-03-06 03:09:12', 'admin', '::1', 'Chrome', 'Windows 10');
INSERT INTO `sys_user_online` VALUES (20, 'f4e56b32ac0cf45b0395b27478216f10', '5rrLCPtzPM4tnvlHq+0iav2BDmIrd9QCru7zhgXMkRdPp4xeDnmYM/neBH/6evZcxVtq/ZhUE7BkE6TavLVQJYuNM9gUPcL9aBjkmYBQSz98gB+cDpgBtLkRJjR02ZAqUN1Iw4RwfVvYYpOlIp1J3g==', '2024-03-06 07:14:55', 'admin', '::1', 'Edge', 'Windows 10');
INSERT INTO `sys_user_online` VALUES (21, '4e3c6e79a4aa8b6bc238fc657b7bf3bd', '5rrLCPtzPM4tnvlHq+0iav2BDmIrd9QCru7zhgXMkRdPp4xeDnmYM/neBH/6evZcxVtq/ZhUE7BkE6TavLVQJcRjVha076GjQ/gUSo037aZz8i4xcOBz158Ce074fHI69Ha/vDsVO+HGcv9Z0vAEqw==', '2024-03-06 07:37:18', 'admin', '::1', 'Edge', 'Windows 10');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 2);
INSERT INTO `sys_user_post` VALUES (1, 3);
INSERT INTO `sys_user_post` VALUES (2, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (3, 2);
INSERT INTO `sys_user_post` VALUES (4, 1);
INSERT INTO `sys_user_post` VALUES (5, 2);
INSERT INTO `sys_user_post` VALUES (10, 1);
INSERT INTO `sys_user_post` VALUES (10, 2);
INSERT INTO `sys_user_post` VALUES (10, 3);
INSERT INTO `sys_user_post` VALUES (10, 4);
INSERT INTO `sys_user_post` VALUES (10, 5);
INSERT INTO `sys_user_post` VALUES (14, 1);
INSERT INTO `sys_user_post` VALUES (15, 4);
INSERT INTO `sys_user_post` VALUES (16, 2);
INSERT INTO `sys_user_post` VALUES (22, 1);
INSERT INTO `sys_user_post` VALUES (22, 2);
INSERT INTO `sys_user_post` VALUES (31, 2);
INSERT INTO `sys_user_post` VALUES (34, 1);
INSERT INTO `sys_user_post` VALUES (35, 2);
INSERT INTO `sys_user_post` VALUES (35, 3);
INSERT INTO `sys_user_post` VALUES (36, 1);
INSERT INTO `sys_user_post` VALUES (37, 3);
INSERT INTO `sys_user_post` VALUES (38, 2);
INSERT INTO `sys_user_post` VALUES (38, 3);
INSERT INTO `sys_user_post` VALUES (42, 2);
INSERT INTO `sys_user_post` VALUES (42, 3);

SET FOREIGN_KEY_CHECKS = 1;
