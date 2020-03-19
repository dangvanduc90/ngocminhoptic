/*
 Navicat MySQL Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : 127.0.0.1:3306
 Source Schema         : ngo30129_ngocminh

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 19/03/2020 21:45:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banks
-- ----------------------------
DROP TABLE IF EXISTS `banks`;
CREATE TABLE `banks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `short_name` varchar(100) DEFAULT NULL COMMENT 'tên viết tắt: VietComBank,Techcombank,...',
  `site_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COMMENT='Danh sach ngan hang';

-- ----------------------------
-- Records of banks
-- ----------------------------
BEGIN;
INSERT INTO `banks` VALUES (1, 'Vietcombank - Ngân hàng TMCP Ngoại thương', 'Ngân hàng ngoại thương', 'uploads/banks/vietcombank.png', 1, 1, 'Vietcombank', 'https://www.vietcombank.com.vn/', '2016-05-25 08:24:24', '2019-10-31 17:32:03');
INSERT INTO `banks` VALUES (2, 'Vietinbank - Ngân hàng Công thương Việt Nam', 'Ngân hàng công thương', 'uploads/banks/vietinbank.png', 0, 1, 'Vietinbank', 'http://www.vietinbank.vn', '2017-02-28 02:41:31', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (3, 'DongA Bank - Ngân hàng Đông Á', '', 'uploads/banks/dongabank.png', 3, 1, 'DongA Bank', 'http://www.eab.com.vn/', '2017-02-27 04:30:57', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (4, 'VIB - Ngân hàng Quốc Tế', 'Ngân hàng quốc tế', 'uploads/banks/vibbank.png', 1, 1, 'VIB', 'https://www.vib4u.com.vn/', '2015-01-05 10:22:53', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (5, 'Ngân hàng Quân Đội (MB)', 'Ngân hàng quân đội', 'uploads/banks/mbbank.png', 1, 1, 'Military Bank', 'https://emb.mbbank.com.vn/corp/EstablishSession', '2018-04-13 09:29:32', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (6, 'Techcombank - Ngân hàng Kỹ thương Việt Nam', 'Techcombank', 'uploads/banks/techcombank.png', 2, 1, 'Techcombank', 'https://www.techcombank.com.vn/trang-chu', '2016-10-18 03:47:26', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (7, 'BIDV - Ngân hàng Đầu tư và Phát triển Việt Nam', 'Ngân hàng đầu tư và phát triển', 'uploads/banks/bidvbank.png', 0, 1, 'BIDV', 'http://www.bidv.com.vn', '2015-01-05 09:21:44', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (8, 'ACB - Ngân hàng Á Châu', 'Ngân hàng Á Châu', 'uploads/banks/acbbank.png', 1, 1, 'ACB', 'https://online.acb.com.vn', '2015-01-30 08:04:46', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (9, 'MSB - Ngân hàng Hàng Hải Việt Nam', 'Ngân hàng hàng hải', 'uploads/banks/maritimebank.png', 2, 1, 'Maritime Bank', 'https://www.msb.com.vn/', '2015-01-05 10:25:50', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (10, 'SeABank - Ngân hàng Đông Nam Á', 'Ngân hàng Đông Nam Á', 'uploads/banks/seabank.png', 1, 1, 'SeABank', 'http://www.seabank.com.vn/index.php', '2015-01-05 10:23:52', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (11, 'VPBank - Ngân hàng Việt Nam Thịnh Vượng', '', 'uploads/banks/vpbank.png', 1, 1, 'VPBank', 'http://www.vpb.com.vn/', '2015-03-13 10:05:11', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (12, 'SHB - Ngân hàng Sài Gòn- Hà Nội', '', 'uploads/banks/shbbank.png', 1, 1, 'SHB', 'http://www.shb.com.vn/', '2015-01-05 10:24:26', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (13, 'TienPhongBank - Ngân hàng Tiên  Phong', '', 'uploads/banks/tienphongbank.png', 1, 1, 'TienPhongBank', 'http://www.tpb.com.vn/vn/', '2015-01-05 10:24:40', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (14, 'Eximbank - Ngân hàng Xuất nhập khẩu', '', 'uploads/banks/eximbank.png', 1, 1, 'Eximbank', 'http://www.eximbank.com.vn/vn/', '2015-01-05 10:24:55', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (15, 'Sacombank - Ngân hàng Sài Gòn Thương Tín', '', 'uploads/banks/sacombank.png', 19, 1, 'Sacombank', 'http://www.sacombank.com.vn/Pages/default.aspx', '2016-05-25 08:25:17', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (16, 'BAOVIET Bank - Ngân hàng Bảo Việt', '', 'uploads/banks/baovietbank.png', 17, 1, 'BAOVIET Bank', 'http://www.baovietbank.vn/', '2015-01-05 10:28:46', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (17, 'PG Bank - Ngân Hàng TMCP Xăng Dầu', '', 'uploads/banks/pgbank.png', 45, 1, 'PGBank', 'https://home.pgbank.com.vn/Login.aspx', '2015-01-05 10:30:38', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (18, 'Agribank - Ngân hàng Nông nghiệp và Phát triển Nông thôn Việt Nam', '', 'uploads/banks/agribank.png', 35, 1, 'Agribank', 'http://www.agribank.com.vn/', '2016-05-25 08:25:35', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (19, 'HSBC  - Ngân hàng HSBC', '', '', 56, 1, 'HSBC', 'http://www.hsbc.com.vn/1/2/home', '2015-01-05 10:31:19', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (20, 'ShinhanBank - Ngân hàng TNHH MTV Shinhan Việt Nam', '', 'uploads/banks/116.png', 45, 1, 'ShinhanBank', 'https://www.anz.com/vietnam/vn/Personal/', '2018-01-02 03:17:30', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (21, 'Saigonbank - Ngân hàng Sài Gòn Công Thương', '', 'uploads/banks/saigonbank.png', 43, 1, 'Saigonbank', 'http://www.saigonbank.com.vn/', '2015-01-05 10:30:12', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (22, 'Ocean Bank - Ngân hàng Đại Dương', '', 'uploads/banks/Oceanbank.png', 112, 1, 'Ocean Bank', 'http://www.oceanbank.vn/', '2015-01-05 10:39:15', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (23, 'HDBank - Ngân hàng Phát triển nhà TPHCM', '', 'uploads/banks/hdbank.png', 142, 1, 'HDBank', 'http://www.hdbank.com.vn/', '2015-01-05 10:44:45', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (24, NULL, NULL, '', 113, 0, 'Southern Bank', 'http://www.southernbank.com.vn/View/Home.aspx', '2014-03-11 04:16:13', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (25, 'Ngân hàng TMCP Sài Gòn (SCB)', '', 'uploads/banks/SCB_Bank.jpg', 115, 1, 'SCB', 'http://www.scb.com.vn/', '2014-03-11 04:16:43', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (26, 'VietBank - Ngân hàng Việt Nam Thương Tín', '', '', 116, 1, 'VietBank', 'http://www.vietbank.com.vn/', '2015-01-05 10:42:01', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (27, 'TrustBank - Ngân hàng Xây Dựng Việt Nam', '', '', 117, 1, 'TrustBank', 'http://vncb.vn/', '2015-01-05 10:42:19', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (28, 'LienVietBank - Ngân hàng Liên Việt', '', 'uploads/banks/50x34-lienvietbank.png', 120, 1, 'LienVietBank', 'http://www.lienvietpostbank.com.vn/', '2015-01-05 10:42:39', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (29, 'Dai A Bank - Ngân hàng Đại Á', '', '', 132, 1, 'Dai A Bank', 'http://www.daiabank.com.vn/', '2015-01-05 10:44:03', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (30, 'ABBank - Ngân hàng An Bình', '', 'uploads/banks/abbank.png', 97, 1, 'ABBank', 'http://www.abbank.vn/vi/Home/', '2015-01-05 10:32:52', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (31, 'KienLongBank - Ngân hàng Kiên Long', '', 'uploads/banks/KienLong_Bank.jpg', 99, 1, 'KienLongBank', 'http://www.kienlongbank.com.vn/', '2015-12-21 08:47:34', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (32, 'GP Bank - Ngân hàng dầu khí Toàn Cầu', '', 'uploads/banks/gpbank.png', 126, 1, 'GPBank', 'http://www.g-bank.com.vn/', '2015-01-05 10:43:23', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (33, 'Nam A Bank - Ngân hàng Nam Á', '', 'uploads/banks/namabank.png', 130, 1, 'Nam A Bank', 'http://www.nab.com.vn/', '2015-01-05 10:43:47', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (34, 'NaviBank - Ngân hàng Nam Việt', '', 'uploads/banks/navibank.png', 132, 0, 'NaviBank', 'http://www.navibank.com.vn/', '2018-05-08 08:12:52', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (35, 'Vinaphone Telco', 'Nạp tiền điện thoại qua vinaphone', 'uploads/banks/3c7e58a7872691d0c1f616fc6c496564.jpg', 122, 0, 'Vinaphone Telco', 'http://www.baokim.vn', '2012-06-22 15:03:56', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (36, 'Mobifone Telco', 'Nạp thẻ điện thoại Mobifone', 'uploads/banks/67bbc9b6be2d05bcf2654e74862668f2.jpg', 123, 0, 'Mobifone Telco', 'https://baokim.vn', '2012-06-22 15:03:41', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (37, 'Thẻ tín dụng', 'Thẻ tín dụng', 'uploads/banks/visa-master-50x34.png', NULL, 1, 'Credit Card', 'http://baokim.vn', '2019-03-28 07:09:51', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (38, 'BACABank - Ngân hàng Bắc Á', '', 'uploads/banks/bac_a.jpg', 99, 1, 'BACA', 'http://www.baca-bank.vn/', '2015-01-05 10:33:51', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (39, 'OCB - Ngân hàng Phương Đông', 'Ngân hàng Phương Đông', 'uploads/banks/50x34-ocb.png', 3, 1, 'OCB', 'http://www.ocb.com.vn/', '2015-01-05 10:27:30', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (40, 'Ngân hàng Công thương Trung Quốc', 'NGÂN HÀNG CÔNG THƯƠNG TRUNG QUỐC', '', 165, 1, 'ICBC', 'http://www.icbc.com.cn', '2015-11-20 02:18:00', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (41, 'Ngân hàng Thương mại Cổ phần Quốc Dân NCB', 'Ngân hàng Thương mại Cổ phần Quốc Dân NCB', 'uploads/banks/NCB_Bank.jpg', 166, 1, 'NCB', 'http://www.ncb-bank.vn', '2015-12-21 08:31:26', '2020-03-19 14:03:11');
INSERT INTO `banks` VALUES (42, 'Ví MoMo', 'Ví điện tử MoMo', NULL, NULL, 1, 'MoMo', NULL, '2020-02-07 06:52:54', '2020-03-19 14:03:11');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
