
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mis_article
-- ----------------------------
DROP TABLE IF EXISTS `mis_article`;
CREATE TABLE `mis_article`  (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `article_summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '无摘要',
  `article_type` int(11) UNSIGNED NOT NULL,
  `article_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `article_read_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `article_author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `article_release_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `article_poster` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_status` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `article_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`) USING BTREE,
  INDEX `article_type`(`article_type`) USING BTREE,
  INDEX `article_author`(`article_author`) USING BTREE,
  INDEX `article_status`(`article_status`) USING BTREE,
  CONSTRAINT `mis_article_ibfk_1` FOREIGN KEY (`article_type`) REFERENCES `mis_article_type` (`article_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `mis_article_ibfk_2` FOREIGN KEY (`article_author`) REFERENCES `mis_user` (`user_login`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `mis_article_ibfk_3` FOREIGN KEY (`article_status`) REFERENCES `mis_article_status` (`article_status_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mis_article
-- ----------------------------
INSERT INTO `mis_article` VALUES (116, 'Hello TF-MIS！', '欢迎使用听风-博客系统，这是你的第一篇文章！', 1, '> 作者计划重构中，敬请期待...\r\n\r\n欢迎使用**听风-博客系统**，这是你的第一篇文章！\r\n', 10, 'admin', '2021-11-18 20:01:05', '', 2, '1592698292524');

-- ----------------------------
-- Table structure for mis_article_status
-- ----------------------------
DROP TABLE IF EXISTS `mis_article_status`;
CREATE TABLE `mis_article_status`  (
  `article_status_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_status_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`article_status_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mis_article_status
-- ----------------------------
INSERT INTO `mis_article_status` VALUES (1, '禁用');
INSERT INTO `mis_article_status` VALUES (2, '正常');

-- ----------------------------
-- Table structure for mis_article_type
-- ----------------------------
DROP TABLE IF EXISTS `mis_article_type`;
CREATE TABLE `mis_article_type`  (
  `article_type_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `article_type_count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`article_type_id`, `article_type_name`) USING BTREE,
  INDEX `article_type_id`(`article_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mis_article_type
-- ----------------------------
INSERT INTO `mis_article_type` VALUES (1, '班级风采', 0);
INSERT INTO `mis_article_type` VALUES (2, '系部动态', 1);
INSERT INTO `mis_article_type` VALUES (3, '院内活动', 0);
INSERT INTO `mis_article_type` VALUES (4, '校内公告', 0);

-- ----------------------------
-- Table structure for mis_comment
-- ----------------------------
DROP TABLE IF EXISTS `mis_comment`;
CREATE TABLE `mis_comment`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_article_id` int(11) NOT NULL,
  `comment_author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `comment_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment_author_web_site` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_author_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_parent_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_id`) USING BTREE,
  INDEX `comment_article_id`(`comment_article_id`) USING BTREE,
  CONSTRAINT `mis_comment_ibfk_1` FOREIGN KEY (`comment_article_id`) REFERENCES `mis_article` (`article_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mis_comment
-- ----------------------------
INSERT INTO `mis_comment` VALUES (1, 116, '小明', '2020-06-21 21:22:18', '你真厉害！', '', '', 0);
INSERT INTO `mis_comment` VALUES (2, 116, '小黄', '2020-06-21 21:22:32', '你好帅！', '', '', 0);
INSERT INTO `mis_comment` VALUES (3, 116, '小黑', '2020-06-21 21:23:18', '你好棒！', '', '', 0);

-- ----------------------------
-- Table structure for mis_user
-- ----------------------------
DROP TABLE IF EXISTS `mis_user`;
CREATE TABLE `mis_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_register_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `display_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Unnamed',
  `user_head_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'http://storage.lking.top/avatar.jpg',
  `user_role` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `user_role`(`user_role`) USING BTREE,
  INDEX `user_login`(`user_login`) USING BTREE,
  CONSTRAINT `mis_user_ibfk_1` FOREIGN KEY (`user_role`) REFERENCES `mis_user_type` (`user_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mis_user
-- ----------------------------
INSERT INTO `mis_user` VALUES (1, 'admin', '123', 'b84955189@vip.qq.com', '2021-11-18 19:51:02', 'Jason.', 'https://storage.lking.icu/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200203153135_1635416181918.jpg', 2);

-- ----------------------------
-- Table structure for mis_user_type
-- ----------------------------
DROP TABLE IF EXISTS `mis_user_type`;
CREATE TABLE `mis_user_type`  (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mis_user_type
-- ----------------------------
INSERT INTO `mis_user_type` VALUES (1, '普通用户');
INSERT INTO `mis_user_type` VALUES (2, '超级管理员');

-- ----------------------------
-- Triggers structure for table mis_article
-- ----------------------------
DROP TRIGGER IF EXISTS `insert_article`;
delimiter ;;
CREATE TRIGGER `insert_article` AFTER INSERT ON `mis_article` FOR EACH ROW UPDATE mis_article_type SET article_type_count=article_type_count+1 WHERE article_type_id=new.article_type
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table mis_article
-- ----------------------------
DROP TRIGGER IF EXISTS `delete_article`;
delimiter ;;
CREATE TRIGGER `delete_article` AFTER DELETE ON `mis_article` FOR EACH ROW UPDATE mis_article_type SET article_type_count=article_type_count-1 WHERE article_type_id=old.article_type
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
