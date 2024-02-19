/*
 Navicat Premium Data Transfer

 Source Server         : sgp-aws
 Source Server Type    : MySQL
 Source Server Version : 50743 (5.7.43-log)
 Source Host           : localhost:3306
 Source Schema         : oneapi

 Target Server Type    : MySQL
 Target Server Version : 50743 (5.7.43-log)
 File Encoding         : 65001

 Date: 19/02/2024 12:03:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for action
-- ----------------------------
DROP TABLE IF EXISTS `action`;
CREATE TABLE `action` (
  `id` bigint(255) NOT NULL,
  `user_id` bigint(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `describe` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of action
-- ----------------------------
BEGIN;
INSERT INTO `action` (`id`, `user_id`, `type`, `describe`, `ip`, `create_time`, `update_time`) VALUES (150198068615147520, 61833690208014336, 'login', '登录页面', '117.173.23.191', '2024-02-19 11:13:30', '2024-02-19 11:13:30');
INSERT INTO `action` (`id`, `user_id`, `type`, `describe`, `ip`, `create_time`, `update_time`) VALUES (150207341441150976, 61833690208014336, 'login', '登录页面', '117.173.23.191', '2024-02-19 11:50:20', '2024-02-19 11:50:20');
INSERT INTO `action` (`id`, `user_id`, `type`, `describe`, `ip`, `create_time`, `update_time`) VALUES (150207459372396544, 61833690208014336, 'chat', '对话(gpt-3.5-turbo)', '117.173.23.191', '2024-02-19 11:50:49', '2024-02-19 11:50:49');
INSERT INTO `action` (`id`, `user_id`, `type`, `describe`, `ip`, `create_time`, `update_time`) VALUES (150207528649715712, 61833690208014336, 'signin', '签到', '117.173.23.191', '2024-02-19 11:51:05', '2024-02-19 11:51:05');
COMMIT;

-- ----------------------------
-- Table structure for carmi
-- ----------------------------
DROP TABLE IF EXISTS `carmi`;
CREATE TABLE `carmi` (
  `id` bigint(255) unsigned NOT NULL,
  `ip` varchar(255) DEFAULT NULL COMMENT '使用时候的ip',
  `user_id` bigint(255) DEFAULT NULL COMMENT '使用者',
  `key` varchar(255) NOT NULL COMMENT '卡密',
  `value` varchar(255) NOT NULL COMMENT '积分',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0有效 1使用 2过期',
  `type` varchar(255) NOT NULL COMMENT '类型',
  `end_time` varchar(255) DEFAULT NULL COMMENT '截止时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `level` int(11) DEFAULT NULL COMMENT '卡密充值等级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of carmi
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(3000) DEFAULT '',
  `remarks` varchar(255) DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of config
-- ----------------------------
BEGIN;
INSERT INTO `config` (`id`, `name`, `value`, `remarks`, `create_time`, `update_time`) VALUES (1, 'signin_reward', '10', '签到奖励', '2023-05-19 16:21:12', '2024-02-19 11:53:10');
INSERT INTO `config` (`id`, `name`, `value`, `remarks`, `create_time`, `update_time`) VALUES (2, 'register_reward', '100', '注册奖励', '2023-05-19 16:21:49', '2023-05-26 21:49:49');
INSERT INTO `config` (`id`, `name`, `value`, `remarks`, `create_time`, `update_time`) VALUES (3, 'history_message_count', '10', '携带历史聊天数量', '2023-05-21 14:57:37', '2023-06-20 17:43:28');
INSERT INTO `config` (`id`, `name`, `value`, `remarks`, `create_time`, `update_time`) VALUES (4, 'ai3_ratio', '1', '3版本比例 每1积分等于多少token', '2023-05-25 16:40:18', '2023-06-20 17:43:15');
INSERT INTO `config` (`id`, `name`, `value`, `remarks`, `create_time`, `update_time`) VALUES (5, 'ai4_ratio', '50', '4版本比例 每1积分等于多少token', '2023-05-25 16:40:20', '2023-06-20 17:43:22');
INSERT INTO `config` (`id`, `name`, `value`, `remarks`, `create_time`, `update_time`) VALUES (6, 'draw_use_price', '[{\"size\":\"1024x1024\",\"integral\":10},{\"size\":\"1792x1024\",\"integral\":20},{\"size\":\"1024x1792\",\"integral\":20}]', '绘画价格 ', '2023-05-25 16:58:26', '2023-12-15 10:57:48');
INSERT INTO `config` (`id`, `name`, `value`, `remarks`, `create_time`, `update_time`) VALUES (7, 'shop_introduce', '', '商城介绍', '2023-05-29 11:51:39', '2023-05-29 17:33:15');
INSERT INTO `config` (`id`, `name`, `value`, `remarks`, `create_time`, `update_time`) VALUES (8, 'user_introduce', '', '用户中心介绍', '2023-05-29 11:52:07', '2023-05-29 17:33:16');
INSERT INTO `config` (`id`, `name`, `value`, `remarks`, `create_time`, `update_time`) VALUES (9, 'ai_models', '[{\"name\":\"默认3.5\",\"param\":\"gpt-3.5-turbo\",\"cost\":1,\"maxtokens\":2000},{\"name\":\"绘画dall\",\"param\":\"dall-e-3\",\"cost\":10,\"maxtokens\":2000}]', 'AI 模型', '2023-05-29 11:52:07', '2024-02-19 11:55:31');
INSERT INTO `config` (`id`, `name`, `value`, `remarks`, `create_time`, `update_time`) VALUES (10, 'cos_settings', '{\"imageHostingType\":\"tencent\",\"secretId\":\"SecretId\",\"secretKey\":\"SecretKey\",\"bucketName\":\"存储桶名称\",\"region\":\"所属地域\",\"accelerateDomain\":\"全球加速域名\"}', '存储设置', '2023-05-29 11:52:07', '2023-12-15 18:56:39');
COMMIT;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` bigint(255) unsigned NOT NULL,
  `user_id` bigint(255) DEFAULT NULL,
  `content` text,
  `role` varchar(255) DEFAULT NULL,
  `frequency_penalty` int(255) DEFAULT NULL,
  `max_tokens` int(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `presence_penalty` int(255) DEFAULT NULL,
  `temperature` int(255) DEFAULT NULL,
  `parent_message_id` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of message
-- ----------------------------
BEGIN;
INSERT INTO `message` (`id`, `user_id`, `content`, `role`, `frequency_penalty`, `max_tokens`, `model`, `presence_penalty`, `temperature`, `parent_message_id`, `status`, `create_time`, `update_time`) VALUES (150207439516471296, 61833690208014336, 'sora有什么应用场景', 'user', 0, 2000, 'gpt-3.5-turbo', 0, 0, 'f5e60b6c-65d6-472e-bb7e-f55d89ce05c7', 1, '2024-02-19 11:50:49', '2024-02-19 11:50:49');
INSERT INTO `message` (`id`, `user_id`, `content`, `role`, `frequency_penalty`, `max_tokens`, `model`, `presence_penalty`, `temperature`, `parent_message_id`, `status`, `create_time`, `update_time`) VALUES (150207439516475392, 61833690208014336, '1. 用于虚拟现实设备的开发：Sora可以用于开发虚拟现实设备的软件，通过其强大的实时信号处理能力，可以实现更加流畅和逼真的虚拟现实体验。\n\n2. 视频会议和远程沟通：Sora可以用于开发视频会议和远程沟通的应用程序，通过其高效的视频传输和处理能力，可以实现更加清晰和稳定的视频通话效果。\n\n3. 多媒体内容创作和编辑：Sora可以用于开发多媒体内容创作和编辑工具，通过其丰富的信号处理功能，可以实现更加精细和专业的多媒体内容制作。\n\n4. 交互式娱乐和游戏开发：Sora可以用于开发交互式娱乐和游戏应用程序，通过其实时信号处理和交互功能，可以实现更加生动和有趣的游戏体验。\n\n5. 医疗影像和医疗设备开发：Sora可以用于开发医疗影像和医疗设备的软件，通过其高效的信号处理和数据传输能力，可以实现更加准确和可靠的医疗诊断和治疗效果。', 'assistant', 0, 2000, 'gpt-3.5-turbo', 0, 0, 'f5e60b6c-65d6-472e-bb7e-f55d89ce05c7', 1, '2024-02-19 11:50:49', '2024-02-19 11:50:49');
COMMIT;

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `sort` int(11) DEFAULT '1',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53897947229720577 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of notification
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` bigint(255) NOT NULL,
  `trade_no` varchar(255) DEFAULT NULL COMMENT '支付方订单ID',
  `pay_type` varchar(255) DEFAULT NULL COMMENT '支付方式 wxpay alipay',
  `product_id` bigint(255) DEFAULT NULL COMMENT '商品产品id',
  `trade_status` varchar(255) DEFAULT NULL COMMENT '支付状态',
  `user_id` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `product_info` text COMMENT '商品信息快照',
  `channel` varchar(255) DEFAULT NULL COMMENT '渠道号',
  `payment_id` bigint(255) DEFAULT NULL COMMENT '支付产品ID',
  `payment_info` text COMMENT '支付产品信息',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `money` double DEFAULT NULL COMMENT '支付金额',
  `params` text COMMENT '拓展参数',
  `ip` varchar(255) DEFAULT NULL,
  `notify_info` text COMMENT '通知回来的全部信息',
  `pay_url` varchar(255) DEFAULT NULL COMMENT '支付URL',
  `product_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` bigint(255) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `channel` varchar(255) NOT NULL DEFAULT '' COMMENT '标识 支付宝 微信 易支付 码支付',
  `types` varchar(255) DEFAULT NULL COMMENT '[''ailipay'',''wxpay'']',
  `params` text COMMENT '支付所需参数',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1 正常 0异常',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of payment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` bigint(255) unsigned NOT NULL,
  `title` varchar(11) NOT NULL,
  `price` int(11) NOT NULL,
  `original_price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `badge` varchar(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1为正常',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(255) DEFAULT NULL COMMENT 'integral 或 day',
  `level` int(11) DEFAULT '1' COMMENT '会员级别 1 普通 2会员 3超级会员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for reward
-- ----------------------------
DROP TABLE IF EXISTS `reward`;
CREATE TABLE `reward` (
  `id` bigint(255) NOT NULL COMMENT '奖励表',
  `category` varchar(255) NOT NULL COMMENT '签到 ｜ 邀请',
  `value` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL COMMENT '天 ｜ 积分',
  `demand` varchar(255) NOT NULL COMMENT '要求 签到是连续 邀请是不连续',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1有效',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of reward
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for signin
-- ----------------------------
DROP TABLE IF EXISTS `signin`;
CREATE TABLE `signin` (
  `id` bigint(255) unsigned NOT NULL,
  `user_id` bigint(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `status` int(11) DEFAULT '1',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of signin
-- ----------------------------
BEGIN;
INSERT INTO `signin` (`id`, `user_id`, `ip`, `status`, `create_time`, `update_time`) VALUES (150207528649625600, 61833690208014336, '117.173.23.191', 1, '2024-02-19 11:51:05', '2024-02-19 11:51:05');
COMMIT;

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(255) unsigned NOT NULL,
  `key` varchar(255) NOT NULL DEFAULT '',
  `host` varchar(255) NOT NULL DEFAULT '',
  `remarks` varchar(255) DEFAULT NULL,
  `models` varchar(255) DEFAULT NULL COMMENT '可用模型',
  `limit` double DEFAULT '0' COMMENT '总限制',
  `usage` double DEFAULT '0' COMMENT '已经使用',
  `status` int(11) DEFAULT '1' COMMENT '1 正常 0异常',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of token
-- ----------------------------
BEGIN;
INSERT INTO `token` (`id`, `key`, `host`, `remarks`, `models`, `limit`, `usage`, `status`, `create_time`, `update_time`) VALUES (150198628223291392, 'sk-oL7gcHC6wcb2aewj2280E07a6470467bAfF354996854EfCb', 'https://aiproxy.sanrun.fun', NULL, 'gpt-3.5-turbo', 100, 0, 1, '2024-02-19 11:15:43', '2024-02-19 11:50:42');
COMMIT;

-- ----------------------------
-- Table structure for turnover
-- ----------------------------
DROP TABLE IF EXISTS `turnover`;
CREATE TABLE `turnover` (
  `id` bigint(255) unsigned NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT '用户',
  `describe` varchar(255) NOT NULL COMMENT '描述',
  `value` varchar(255) NOT NULL COMMENT '值',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of turnover
-- ----------------------------
BEGIN;
INSERT INTO `turnover` (`id`, `user_id`, `describe`, `value`, `create_time`, `update_time`) VALUES (150207459368112128, 61833690208014336, '对话(gpt-3.5-turbo)', '-0积分', '2024-02-19 11:50:49', '2024-02-19 11:50:49');
INSERT INTO `turnover` (`id`, `user_id`, `describe`, `value`, `create_time`, `update_time`) VALUES (150207528649625600, 61833690208014336, '签到奖励', '100积分', '2024-02-19 11:51:05', '2024-02-19 11:51:05');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(255) unsigned NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `integral` int(255) DEFAULT '0',
  `vip_expire_time` date NOT NULL COMMENT '会员时间',
  `svip_expire_time` date DEFAULT NULL COMMENT '超级会员时间',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1正常',
  `ip` varchar(255) DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `nickname`, `account`, `password`, `avatar`, `role`, `integral`, `vip_expire_time`, `svip_expire_time`, `status`, `ip`, `create_time`, `update_time`) VALUES (61833690208014336, '管理员', 'admin@ai.com', 'a66abb5684c45962d887564f08346e8d', ' ', 'administrator', 200, '2026-01-01', '2024-01-01', 1, '113.87.180.24', '2023-06-20 15:05:00', '2024-02-19 11:52:35');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
