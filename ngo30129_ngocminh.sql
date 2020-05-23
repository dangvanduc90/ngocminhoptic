-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th5 23, 2020 lúc 09:47 PM
-- Phiên bản máy phục vụ: 5.7.30-0ubuntu0.18.04.1
-- Phiên bản PHP: 7.2.24-0ubuntu0.18.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ngo30129_ngocminh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorization` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `username`, `fullname`, `phone`, `address`, `email`, `role`, `authorization`, `email_verified_at`, `password`, `age`, `gender`, `created_by`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Vũ Mạnh Hiệp', NULL, NULL, 'nm.dung.1991@gmail.com', 'admin', NULL, NULL, '$2y$10$TjFsIn3r.NNwdca9lqMZcuMSlOPKYcyhZ2FgggP31mhSSovi53tmi', NULL, NULL, NULL, 1, 'RHWcsDdzUuJ7mdhn8kHkCkhst5UQLuJWfSaeq6nGKcC4g1nkzEGd6rfvYQuA', NULL, NULL),
(2, 'admin', 'Vũ Mạnh Hiệp', NULL, NULL, 'admin@admin.com', 'super-admin', NULL, NULL, '$2y$10$Y/iEtVptMotor0HjW0u04ONyY.rTpaxZfEpchZmR09R3KKoU30YHu', NULL, NULL, NULL, 1, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `number_click` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_des` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `short_name` varchar(100) DEFAULT NULL COMMENT 'tên viết tắt: VietComBank,Techcombank,...',
  `site_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Danh sach ngan hang';

--
-- Đang đổ dữ liệu cho bảng `banks`
--

INSERT INTO `banks` (`id`, `name`, `description`, `logo`, `order_no`, `active`, `short_name`, `site_url`, `created_at`, `updated_at`) VALUES
(1, 'Vietcombank - Ngân hàng TMCP Ngoại thương', 'Ngân hàng ngoại thương', 'uploads/banks/vietcombank.png', 1, 1, 'Vietcombank', 'https://www.vietcombank.com.vn/', '2016-05-25 01:24:24', '2019-10-31 10:32:03'),
(2, 'Vietinbank - Ngân hàng Công thương Việt Nam', 'Ngân hàng công thương', 'uploads/banks/vietinbank.png', 0, 1, 'Vietinbank', 'http://www.vietinbank.vn', '2017-02-27 19:41:31', '2020-03-19 07:03:11'),
(3, 'DongA Bank - Ngân hàng Đông Á', '', 'uploads/banks/dongabank.png', 3, 1, 'DongA Bank', 'http://www.eab.com.vn/', '2017-02-26 21:30:57', '2020-03-19 07:03:11'),
(4, 'VIB - Ngân hàng Quốc Tế', 'Ngân hàng quốc tế', 'uploads/banks/vibbank.png', 1, 1, 'VIB', 'https://www.vib4u.com.vn/', '2015-01-05 03:22:53', '2020-03-19 07:03:11'),
(5, 'Ngân hàng Quân Đội (MB)', 'Ngân hàng quân đội', 'uploads/banks/mbbank.png', 1, 1, 'Military Bank', 'https://emb.mbbank.com.vn/corp/EstablishSession', '2018-04-13 02:29:32', '2020-03-19 07:03:11'),
(6, 'Techcombank - Ngân hàng Kỹ thương Việt Nam', 'Techcombank', 'uploads/banks/techcombank.png', 2, 1, 'Techcombank', 'https://www.techcombank.com.vn/trang-chu', '2016-10-17 20:47:26', '2020-03-19 07:03:11'),
(7, 'BIDV - Ngân hàng Đầu tư và Phát triển Việt Nam', 'Ngân hàng đầu tư và phát triển', 'uploads/banks/bidvbank.png', 0, 1, 'BIDV', 'http://www.bidv.com.vn', '2015-01-05 02:21:44', '2020-03-19 07:03:11'),
(8, 'ACB - Ngân hàng Á Châu', 'Ngân hàng Á Châu', 'uploads/banks/acbbank.png', 1, 1, 'ACB', 'https://online.acb.com.vn', '2015-01-30 01:04:46', '2020-03-19 07:03:11'),
(9, 'MSB - Ngân hàng Hàng Hải Việt Nam', 'Ngân hàng hàng hải', 'uploads/banks/maritimebank.png', 2, 1, 'Maritime Bank', 'https://www.msb.com.vn/', '2015-01-05 03:25:50', '2020-03-19 07:03:11'),
(10, 'SeABank - Ngân hàng Đông Nam Á', 'Ngân hàng Đông Nam Á', 'uploads/banks/seabank.png', 1, 1, 'SeABank', 'http://www.seabank.com.vn/index.php', '2015-01-05 03:23:52', '2020-03-19 07:03:11'),
(11, 'VPBank - Ngân hàng Việt Nam Thịnh Vượng', '', 'uploads/banks/vpbank.png', 1, 1, 'VPBank', 'http://www.vpb.com.vn/', '2015-03-13 03:05:11', '2020-03-19 07:03:11'),
(12, 'SHB - Ngân hàng Sài Gòn- Hà Nội', '', 'uploads/banks/shbbank.png', 1, 1, 'SHB', 'http://www.shb.com.vn/', '2015-01-05 03:24:26', '2020-03-19 07:03:11'),
(13, 'TienPhongBank - Ngân hàng Tiên  Phong', '', 'uploads/banks/tienphongbank.png', 1, 1, 'TienPhongBank', 'http://www.tpb.com.vn/vn/', '2015-01-05 03:24:40', '2020-03-19 07:03:11'),
(14, 'Eximbank - Ngân hàng Xuất nhập khẩu', '', 'uploads/banks/eximbank.png', 1, 1, 'Eximbank', 'http://www.eximbank.com.vn/vn/', '2015-01-05 03:24:55', '2020-03-19 07:03:11'),
(15, 'Sacombank - Ngân hàng Sài Gòn Thương Tín', '', 'uploads/banks/sacombank.png', 19, 1, 'Sacombank', 'http://www.sacombank.com.vn/Pages/default.aspx', '2016-05-25 01:25:17', '2020-03-19 07:03:11'),
(16, 'BAOVIET Bank - Ngân hàng Bảo Việt', '', 'uploads/banks/baovietbank.png', 17, 1, 'BAOVIET Bank', 'http://www.baovietbank.vn/', '2015-01-05 03:28:46', '2020-03-19 07:03:11'),
(17, 'PG Bank - Ngân Hàng TMCP Xăng Dầu', '', 'uploads/banks/pgbank.png', 45, 1, 'PGBank', 'https://home.pgbank.com.vn/Login.aspx', '2015-01-05 03:30:38', '2020-03-19 07:03:11'),
(18, 'Agribank - Ngân hàng Nông nghiệp và Phát triển Nông thôn Việt Nam', '', 'uploads/banks/agribank.png', 35, 1, 'Agribank', 'http://www.agribank.com.vn/', '2016-05-25 01:25:35', '2020-03-19 07:03:11'),
(19, 'HSBC  - Ngân hàng HSBC', '', '', 56, 1, 'HSBC', 'http://www.hsbc.com.vn/1/2/home', '2015-01-05 03:31:19', '2020-03-19 07:03:11'),
(20, 'ShinhanBank - Ngân hàng TNHH MTV Shinhan Việt Nam', '', 'uploads/banks/116.png', 45, 1, 'ShinhanBank', 'https://www.anz.com/vietnam/vn/Personal/', '2018-01-01 20:17:30', '2020-03-19 07:03:11'),
(21, 'Saigonbank - Ngân hàng Sài Gòn Công Thương', '', 'uploads/banks/saigonbank.png', 43, 1, 'Saigonbank', 'http://www.saigonbank.com.vn/', '2015-01-05 03:30:12', '2020-03-19 07:03:11'),
(22, 'Ocean Bank - Ngân hàng Đại Dương', '', 'uploads/banks/Oceanbank.png', 112, 1, 'Ocean Bank', 'http://www.oceanbank.vn/', '2015-01-05 03:39:15', '2020-03-19 07:03:11'),
(23, 'HDBank - Ngân hàng Phát triển nhà TPHCM', '', 'uploads/banks/hdbank.png', 142, 1, 'HDBank', 'http://www.hdbank.com.vn/', '2015-01-05 03:44:45', '2020-03-19 07:03:11'),
(24, NULL, NULL, '', 113, 0, 'Southern Bank', 'http://www.southernbank.com.vn/View/Home.aspx', '2014-03-10 21:16:13', '2020-03-19 07:03:11'),
(25, 'Ngân hàng TMCP Sài Gòn (SCB)', '', 'uploads/banks/SCB_Bank.jpg', 115, 1, 'SCB', 'http://www.scb.com.vn/', '2014-03-10 21:16:43', '2020-03-19 07:03:11'),
(26, 'VietBank - Ngân hàng Việt Nam Thương Tín', '', '', 116, 1, 'VietBank', 'http://www.vietbank.com.vn/', '2015-01-05 03:42:01', '2020-03-19 07:03:11'),
(27, 'TrustBank - Ngân hàng Xây Dựng Việt Nam', '', '', 117, 1, 'TrustBank', 'http://vncb.vn/', '2015-01-05 03:42:19', '2020-03-19 07:03:11'),
(28, 'LienVietBank - Ngân hàng Liên Việt', '', 'uploads/banks/50x34-lienvietbank.png', 120, 1, 'LienVietBank', 'http://www.lienvietpostbank.com.vn/', '2015-01-05 03:42:39', '2020-03-19 07:03:11'),
(29, 'Dai A Bank - Ngân hàng Đại Á', '', '', 132, 1, 'Dai A Bank', 'http://www.daiabank.com.vn/', '2015-01-05 03:44:03', '2020-03-19 07:03:11'),
(30, 'ABBank - Ngân hàng An Bình', '', 'uploads/banks/abbank.png', 97, 1, 'ABBank', 'http://www.abbank.vn/vi/Home/', '2015-01-05 03:32:52', '2020-03-19 07:03:11'),
(31, 'KienLongBank - Ngân hàng Kiên Long', '', 'uploads/banks/KienLong_Bank.jpg', 99, 1, 'KienLongBank', 'http://www.kienlongbank.com.vn/', '2015-12-21 01:47:34', '2020-03-19 07:03:11'),
(32, 'GP Bank - Ngân hàng dầu khí Toàn Cầu', '', 'uploads/banks/gpbank.png', 126, 1, 'GPBank', 'http://www.g-bank.com.vn/', '2015-01-05 03:43:23', '2020-03-19 07:03:11'),
(33, 'Nam A Bank - Ngân hàng Nam Á', '', 'uploads/banks/namabank.png', 130, 1, 'Nam A Bank', 'http://www.nab.com.vn/', '2015-01-05 03:43:47', '2020-03-19 07:03:11'),
(34, 'NaviBank - Ngân hàng Nam Việt', '', 'uploads/banks/navibank.png', 132, 0, 'NaviBank', 'http://www.navibank.com.vn/', '2018-05-08 01:12:52', '2020-03-19 07:03:11'),
(35, 'Vinaphone Telco', 'Nạp tiền điện thoại qua vinaphone', 'uploads/banks/3c7e58a7872691d0c1f616fc6c496564.jpg', 122, 0, 'Vinaphone Telco', 'http://www.baokim.vn', '2012-06-22 08:03:56', '2020-03-19 07:03:11'),
(36, 'Mobifone Telco', 'Nạp thẻ điện thoại Mobifone', 'uploads/banks/67bbc9b6be2d05bcf2654e74862668f2.jpg', 123, 0, 'Mobifone Telco', 'https://baokim.vn', '2012-06-22 08:03:41', '2020-03-19 07:03:11'),
(37, 'Thẻ tín dụng', 'Thẻ tín dụng', 'uploads/banks/visa-master-50x34.png', NULL, 1, 'Credit Card', 'http://baokim.vn', '2019-03-28 00:09:51', '2020-03-19 07:03:11'),
(38, 'BACABank - Ngân hàng Bắc Á', '', 'uploads/banks/bac_a.jpg', 99, 1, 'BACA', 'http://www.baca-bank.vn/', '2015-01-05 03:33:51', '2020-03-19 07:03:11'),
(39, 'OCB - Ngân hàng Phương Đông', 'Ngân hàng Phương Đông', 'uploads/banks/50x34-ocb.png', 3, 1, 'OCB', 'http://www.ocb.com.vn/', '2015-01-05 03:27:30', '2020-03-19 07:03:11'),
(40, 'Ngân hàng Công thương Trung Quốc', 'NGÂN HÀNG CÔNG THƯƠNG TRUNG QUỐC', '', 165, 1, 'ICBC', 'http://www.icbc.com.cn', '2015-11-19 19:18:00', '2020-03-19 07:03:11'),
(41, 'Ngân hàng Thương mại Cổ phần Quốc Dân NCB', 'Ngân hàng Thương mại Cổ phần Quốc Dân NCB', 'uploads/banks/NCB_Bank.jpg', 166, 1, 'NCB', 'http://www.ncb-bank.vn', '2015-12-21 01:31:26', '2020-03-19 07:03:11'),
(42, 'Ví MoMo', 'Ví điện tử MoMo', NULL, NULL, 1, 'MoMo', NULL, '2020-02-06 23:52:54', '2020-03-19 07:03:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` text COLLATE utf8mb4_unicode_ci,
  `page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `type` int(11) DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `image`, `title`, `link`, `map`, `page`, `content`, `content_en`, `type`, `note`, `status`, `created_at`, `updated_at`, `code`) VALUES
(2, 'FILES/source/Banner/ILoveNgocMinh.png', 'Banner trang chủ 2', '#', NULL, NULL, NULL, NULL, 1, NULL, 1, '2020-01-03 03:24:51', '2020-05-19 02:48:22', NULL),
(5, NULL, 'Cơ sở 1', '#', NULL, NULL, '<p><strong>Trụ sở ch&iacute;nh - Văn ph&ograve;ng&nbsp;miền bắc: </strong></p>\r\n\r\n<p>Số 83, Đường B&aacute;t Khối, Phường Long Bi&ecirc;n, Quận Long Bi&ecirc;n, TP. H&agrave; Nội.</p>\r\n\r\n<p><strong>Tổng kho H&agrave; Nội:</strong></p>\r\n\r\n<p>Số 5, Phố Ng&ocirc; Tất Tố, Văn Miếu, Đống Đa, H&agrave; Nội.</p>\r\n\r\n<p><strong>Chi nh&aacute;nh HCM:</strong></p>\r\n\r\n<p>Số 280, Nam Kỳ Khởi Nghĩa, Quận 1, Th&agrave;nh Phố Hồ Ch&iacute; Minh.</p>\r\n\r\n<p><strong>Chi nh&aacute;nh Đ&agrave; Nẵng:</strong></p>\r\n\r\n<p>Số 9, Phố Trần Qu&yacute; C&aacute;p, Thạch Thang, Hải Ch&acirc;u, Đ&agrave; Nẵng.</p>\r\n\r\n<p><strong>Chi nh&aacute;nh Nha Trang:</strong></p>\r\n\r\n<p>Số 9, Mai Xu&acirc;n Thưởng, Vĩnh Hải, Th&agrave;nh phố Nha Trang.</p>\r\n\r\n<p>-----------------------------------------------------------------------------------------</p>\r\n\r\n<p>Email: ngocminhoptic@gmail.com / Điện thoại:&nbsp;0243.205.5979</p>\r\n\r\n<p><strong>Li&ecirc;n hệ kh&aacute;m mắt v&agrave; b&aacute;n lẻ (16h30 - 22h c&aacute;c ng&agrave;y trong tuần):</strong></p>\r\n\r\n<p>Mss. Th&uacute;y -&nbsp;091.5959.980 (Zalo - Facebook - Viber)</p>\r\n\r\n<p><strong>Đặt h&agrave;ng&nbsp;b&aacute;n bu&ocirc;n (24/07):</strong></p>\r\n\r\n<p>Mr. Hiệp - 091.5441.113 - 098.8083.421 (Zalo - Viber)</p>', '<p><strong>Trụ sở ch&iacute;nh - Văn ph&ograve;ng&nbsp;miền bắc: </strong></p>\r\n\r\n<p>Số 83, Đường B&aacute;t Khối, Phường Long Bi&ecirc;n, Quận Long Bi&ecirc;n, TP. H&agrave; Nội.</p>\r\n\r\n<p><strong>Tổng kho H&agrave; Nội:</strong></p>\r\n\r\n<p>Số 5, Phố Ng&ocirc; Tất Tố, Văn Miếu, Đống Đa, H&agrave; Nội.</p>\r\n\r\n<p><strong>Chi nh&aacute;nh HCM:</strong></p>\r\n\r\n<p>Số 280, Nam Kỳ Khởi Nghĩa, Quận 1, Th&agrave;nh Phố Hồ Ch&iacute; Minh.</p>\r\n\r\n<p><strong>Chi nh&aacute;nh Đ&agrave; Nẵng:</strong></p>\r\n\r\n<p>Số 9, Phố Trần Qu&yacute; C&aacute;p, Thạch Thang, Hải Ch&acirc;u, Đ&agrave; Nẵng.</p>\r\n\r\n<p><strong>Chi nh&aacute;nh Nha Trang:</strong></p>\r\n\r\n<p>Số 9, Mai Xu&acirc;n Thưởng, Vĩnh Hải, Th&agrave;nh phố Nha Trang.</p>\r\n\r\n<p>-----------------------------------------------------------------------------------------</p>\r\n\r\n<p>Email: ngocminhoptic@gmail.com / Điện thoại:&nbsp;0243.205.5979</p>\r\n\r\n<p><strong>Li&ecirc;n hệ kh&aacute;m mắt v&agrave; b&aacute;n lẻ (16h30 - 22h c&aacute;c ng&agrave;y trong tuần):</strong></p>\r\n\r\n<p>Mss. Th&uacute;y -&nbsp;091.5959.980 (Zalo - Facebook - Viber)</p>\r\n\r\n<p><strong>Đặt h&agrave;ng&nbsp;b&aacute;n bu&ocirc;n (24/07):</strong></p>\r\n\r\n<p>Mr. Hiệp - 091.5441.113 - 098.8083.421 (Zalo - Viber)</p>', 4, NULL, 1, '2020-01-06 21:10:42', '2020-05-03 18:56:23', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.1747054803986!2d105.8822398144073!3d21.025694493260012!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135a95da3de1569%3A0x73246d55f38604b!2zODMgxJDGsOG7nW5nIELDoXQgS2jhu5FpLCBMb25nIEJpw6puLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1585819928533!5m2!1svi!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>'),
(7, 'FILES/source/Chemi.png', 'Chemi', '#', NULL, NULL, NULL, NULL, 2, NULL, 1, '2020-01-12 18:28:36', '2020-02-17 21:33:11', NULL),
(11, 'FILES/source/logo-images.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2020-01-12 18:39:55', '2020-01-12 18:39:55', NULL),
(15, 'FILES/source/InAo%20(1).png', 'Thông tin chân trang', '#', NULL, NULL, '<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"left\">\r\n			<p><strong>Trụ sở ch&iacute;nh - Văn ph&ograve;ng&nbsp;miền bắc: </strong></p>\r\n\r\n			<p>Số 83, Đường B&aacute;t Khối, Phường Long Bi&ecirc;n, Quận Long Bi&ecirc;n, TP. H&agrave; Nội.</p>\r\n\r\n			<p>Email: ngocminhoptic@gmail.com / Điện thoại:&nbsp;0243.205.5979</p>\r\n\r\n			<p><strong>Li&ecirc;n hệ kh&aacute;m mắt v&agrave; b&aacute;n lẻ (16h30 - 22h c&aacute;c ng&agrave;y trong tuần):</strong></p>\r\n\r\n			<p>Mss. Th&uacute;y -&nbsp;091.5959.980 (Zalo - Facebook - Viber)</p>\r\n\r\n			<p><strong>Đặt h&agrave;ng&nbsp;b&aacute;n bu&ocirc;n (24/07):</strong></p>\r\n\r\n			<p>Mr. Hiệp - 091.5441.113 - 098.8083.421 (Zalo - Viber)</p>\r\n			</td>\r\n			<td align=\"left\">\r\n			<p><strong>Tổng kho H&agrave; Nội:</strong></p>\r\n\r\n			<p>Số 5, Phố Ng&ocirc; Tất Tố, Văn Miếu, Đống Đa, H&agrave; Nội.</p>\r\n\r\n			<p><strong>Chi nh&aacute;nh HCM:</strong></p>\r\n\r\n			<p>Số 280, Nam Kỳ Khởi Nghĩa, Quận 1, Th&agrave;nh Phố Hồ Ch&iacute; Minh.</p>\r\n\r\n			<p><strong>Chi nh&aacute;nh Đ&agrave; Nẵng:</strong></p>\r\n\r\n			<p>Số 9, Phố Trần Qu&yacute; C&aacute;p, Thạch Thang, Hải Ch&acirc;u, Đ&agrave; Nẵng.</p>\r\n\r\n			<p><strong>Chi nh&aacute;nh Nha Trang:</strong></p>\r\n\r\n			<p>Số 9, Mai Xu&acirc;n Thưởng, Vĩnh Hải, Th&agrave;nh phố Nha Trang.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>&nbsp;</p>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>North Office:</p>\r\n\r\n			<p>No. 83, Bat Block Street, Long Bien Ward, Long Bien District, Hanoi, Vietnam.</p>\r\n\r\n			<p>Southern Office:</p>\r\n\r\n			<p>No. 280, Nam Ky Khoi Nghia, District 1, Ho Chi Minh City, Vietnam.</p>\r\n\r\n			<p>Email: ngocminhoptic@gmail.com.</p>\r\n\r\n			<p>Phone: 0243.205.5979</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Contact eye examination and retail:</strong></p>\r\n\r\n			<p>Mss. Thuy: 091.5959.980</p>\r\n\r\n			<p><strong>Wholesale contacts:</strong></p>\r\n\r\n			<p>Mr. Hiep 091.5441.113 - 098.8083.421</p>\r\n\r\n			<p>Zalo - Facebook - Viber</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', 5, NULL, 1, '2020-01-13 00:29:27', '2020-04-02 03:25:40', NULL),
(16, 'FILES/source/TriTueViet.png', 'Trí Tuệ Việt', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2020-02-17 21:32:40', '2020-02-17 21:33:32', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `benhans`
--

CREATE TABLE `benhans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `madon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hovaten` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngaykham` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngayhen` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diachi` text COLLATE utf8mb4_unicode_ci,
  `mp_ts` text COLLATE utf8mb4_unicode_ci,
  `mt_ts` text COLLATE utf8mb4_unicode_ci,
  `mp_thiluc` text COLLATE utf8mb4_unicode_ci,
  `mt_thiluc` text COLLATE utf8mb4_unicode_ci,
  `mp_ts_moi` text COLLATE utf8mb4_unicode_ci,
  `mt_ts_moi` text COLLATE utf8mb4_unicode_ci,
  `mp_tl_kich` text COLLATE utf8mb4_unicode_ci,
  `mt_tl_kich` text COLLATE utf8mb4_unicode_ci,
  `mp_nhanap` text COLLATE utf8mb4_unicode_ci,
  `mt_nhanap` text COLLATE utf8mb4_unicode_ci,
  `khieunai` float DEFAULT '0',
  `ghichu` text COLLATE utf8mb4_unicode_ci,
  `noidung` text COLLATE utf8mb4_unicode_ci,
  `datcoc` float DEFAULT '0',
  `congno` float DEFAULT '0',
  `tongtien` float DEFAULT '0',
  `tongthanhtien` float NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `benhans`
--

INSERT INTO `benhans` (`id`, `madon`, `hovaten`, `sdt`, `pd`, `ngaykham`, `ngayhen`, `diachi`, `mp_ts`, `mt_ts`, `mp_thiluc`, `mt_thiluc`, `mp_ts_moi`, `mt_ts_moi`, `mp_tl_kich`, `mt_tl_kich`, `mp_nhanap`, `mt_nhanap`, `khieunai`, `ghichu`, `noidung`, `datcoc`, `congno`, `tongtien`, `tongthanhtien`, `status`, `created_at`, `updated_at`) VALUES
(14, 'MDH_1587197654', 'Cấn Linh Đan', '0913512005', '62', '18/04/2020', '18/07/2020', '423, Minh Khai, Hà Nội', '-3.75/-0.75 x 180', '-2.75/-1.25 x 175', '20/30', '20/60', '-3.50/-0.75 x 180', '-3.00/-125 x 175', '20/30', '20/25', NULL, NULL, 50000, 'Số chị Nga: 0902101074', 'Con chị Nga bạn anh Phong', 0, 0, 1915000, 1965000, 0, '2020-04-18 01:22:31', '2020-05-10 06:18:22'),
(15, 'MDH_1587203456', 'Chu Khải Nguyên', '0961639625', '61', '18/04/2020', '18/07/2020', 'Cự Khối, Long Biên, Hà Nội', '-4.00/-1.25 x 180', '-3.75/-1.50 x 180', '20/70', '20/60', '-4.25/-0.75 x 180', '-4.25/-1.00 x 180', '20/30+2 (2M=20/25)', '20/30+2 (2M=20/25)', NULL, NULL, 0, NULL, '13 tuổi', 0, 0, 750000, 750000, 0, '2020-04-18 02:55:20', '2020-05-03 17:54:14'),
(16, 'MDH_1587204391', 'Chu Bảo An', '0961639625', '59', '18/04/2020', '18/07/2020', 'Cự Khối, Long Biên, Hà Nội', '-3.00/-1.00 x 180', '-3.25/-1.50 x 180', '20/60', '20/30', '-3.50/-1.25 x 10', '-3.25/-1.50 x 180', '20/30', '20/30', NULL, NULL, 0, NULL, '11 tuổi', 0, 0, 450000, 450000, 0, '2020-04-18 03:10:57', '2020-05-03 17:54:28'),
(17, 'MDH_1587211036', 'Văn Trọng Giang Minh', '0912800866', '59', '18/04/2020', '18/07/2020', 'Ngõ 2, Phố Ngô Xuân Quảng, Long Biên, Hà Nội', '-3.25/-1.25 x 169', '-3.00/-1.50 x 169', '20/70', '20/50', '-3.50/-1.25 x 180', '-3.50/-1.25 x 180', '20/30 (2M20/25-2)', '20/30 (2M20/25-2)', NULL, NULL, 0, 'Cháu bác bạn ông Tám', 'Con: 11 tuổi. Bố mẹ theo dõi con, nếu có chớp sáng phải soi đáy mắt cho con. 27/04/2020 liên hệ trước để qua viện soi đáy mắt.', 0, 0, 830000, 830000, 0, '2020-04-18 05:01:21', '2020-05-03 17:54:46'),
(18, 'MDH_1587213167', 'Phan Phương Linh', '0397210071', '61', '18/04/2020', '18/07/2020', 'Tư Đình, Long Biên, Hà Nội', NULL, NULL, 'DNT 3m', 'DNT 3m', '-5.00', '-5.25', '20/30', '20/30', NULL, NULL, 0, NULL, 'Tuổi 15', 0, 0, 800000, 800000, 0, '2020-04-18 05:37:43', '2020-05-03 17:55:02'),
(19, 'MDH_1587263347', 'Lê Hồng Phong', '0366043283', '57', '14/02/2020', '14/05/2020', 'Tổ 14 - Phố Trạm - Long Biên Hà Nội', NULL, NULL, NULL, NULL, '-2.5/-1.75', '-0.75/-2.00', '20/30', '20/30', NULL, NULL, 0, NULL, 'Con mẹ Mai', 0, 0, 440000, 440000, 0, '2020-04-18 19:33:33', '2020-05-03 17:55:22'),
(20, 'MDH_1587656985', 'Nguyễn Thanh Huyền', '0973625898', '58', '23/04/2020', '23/07/2020', 'Thạch Cầu, Long Biên, Hà Nội', '-0.75', '-0.50', '20/80', '20/100', '-2.00', '-1.50', '20/20-2 (2M = 20/20)', '20/20-2 (2M = 20/20)', NULL, NULL, 0, NULL, 'E Huyền con bác Xây', 0, 0, 800000, 800000, 0, '2020-04-23 08:57:34', '2020-05-03 17:55:37'),
(21, 'MDH_1587658768', 'Ngô Thị Thọ', '0942486556', '57', '23/04/2020', '23/07/2020', 'Techcombank Hoàng Quốc Việt', NULL, NULL, NULL, NULL, '-4.25/-1.00 x 180', '-2.75/-1.00 x 180', '20/30', '20/40', NULL, NULL, 750000, NULL, NULL, 0, 0, 1170000, 1920000, 0, '2020-04-23 09:26:01', '2020-05-03 17:55:57'),
(22, 'MDH_1587791002', 'Đinh Thúy Hiền', '0948672215', '60', '24/04/2020', '24/07/2020', 'Long Biên, Hà Nội', NULL, NULL, NULL, NULL, '+2.00', '+2.00', '20/30', '20/30', NULL, NULL, 10000, NULL, 'Chị Hạnh con dâu Bác Khuyên', 0, 0, 1070000, 1080000, 0, '2020-04-24 22:06:04', '2020-05-03 17:56:11'),
(23, 'MDH_1587791607', 'Lê Việt Anh', '0936018363', '63', '24/04/2020', '24/07/2020', 'Hàng Đường, Hoàn Kiếm, Hà Nội', '-2.5', '-2.00', '20/200', '20/100', '-2.00', '-1.25/0.50', '20/25 (2M = 20/20)', '20/25 (2M = 20/20)', NULL, NULL, 50000, NULL, '14 Tuổi, con chị Thúy. 2 mắt đang đeo kính quá số. Đã điều chỉnh. Hẹn khám lại sau 3 tháng.', 0, 0, 750000, 800000, 0, '2020-04-24 22:21:36', '2020-05-03 17:56:25'),
(24, 'MDH_1587792125', 'Vũ Đinh Kim Thúy', '0904528616', '56', '24/04/2020', '24/07/2020', 'Hàng Đường, Hoàn Kiếm, Hà Nội', '+2.50', '+2.50', NULL, NULL, '+3.50', '+3.50', '20/25', '20/25', NULL, NULL, 0, NULL, 'Thông số PD nhìn gần. Con Bác Khuyên', 0, 0, 1250000, 1250000, 0, '2020-04-24 22:27:58', '2020-05-03 17:56:39'),
(25, 'MDH_1587792516', 'Vũ Đinh Kim Thúy', '0904528616', '59', '24/04/2020', '24/07/2020', 'Hàng Đường, Hoàn Kiếm, Hà Nội', NULL, NULL, '20/200', '20/200', '+2.00', '+1.50', '20/25', '20/25', NULL, NULL, 0, NULL, 'Thông số PD nhìn xa. Con Bác Khuyên', 0, 0, 800000, 800000, 0, '2020-04-24 22:28:36', '2020-05-03 17:56:51'),
(26, 'MDH_1587989692', 'Đặng Anh Dũng', '0345691194', '69', '27/04/2020', '27/07/2020', 'Tư Đình, Long Biên, Hà Nội', NULL, NULL, '20/80', '20/70', '-0.75/-0.50 x 180', '-0.50/-0.50 x 170', '20/20-2', '20/25-2', NULL, NULL, 0, NULL, NULL, 0, 0, 120000, 120000, 0, '2020-04-27 05:17:58', '2020-05-03 17:57:03'),
(27, 'MDH_1588324007', 'Đỗ Bảo Châu', '0816081180', '61', '01/05/2020', '01/08/20', 'Thạch Bàn, Long Biên', NULL, NULL, '20/200', '20/200', '-2.00', '-2.00', '20/30', '20/30', NULL, NULL, 0, NULL, NULL, 0, 0, 1130000, 1130000, 0, '2020-05-01 02:11:00', '2020-05-03 17:57:15'),
(28, 'MDH_1588335043', 'Nguyễn Hoàng Mai', '0943672666', '59', '01/05/2020', '01/08/2020', 'Tư Đình, Long Biên, Hà Nội', '-5.00', '-5.00', '20/70', '20/70', '-5.50', '-5.50', '20/30-2', '20/30-2', NULL, NULL, 100000, NULL, NULL, 0, 0, 965000, 1065000, 0, '2020-05-01 05:14:33', '2020-05-03 17:53:20'),
(29, 'MDH_1588428304', 'Nguyễn Thành Thanh', '0398731896', '64', '02/05/2020', '02/08/2020', 'Ngõ 57 Tư Đình, Long Biên, Hà Nội', NULL, NULL, '20/100', '20/80', '-1.00', '-0.75', '20/20', '20/20', NULL, NULL, 0, NULL, NULL, 0, 0, 850000, 850000, 0, '2020-05-02 07:07:56', '2020-05-02 07:07:56'),
(30, 'MDH_1588602384', 'Nguyễn Thu Trang', '0973131943', '63', '04/05/2020', '04/08/2020', 'Tư Đình, Long Biên, Hà Nội', '-3.50', '-2.00', '20/100', '20/30', '-4.25', '-2.00', '20/25 (2M = 20/20-2)', '20/25 (2M = 20/20-2)', NULL, NULL, 10000, NULL, NULL, 0, 0, 800000, 810000, 0, '2020-05-04 07:29:29', '2020-05-04 07:29:29'),
(31, 'MDH_1588851953', 'Đỗ Yến Nhi', '0398607190', NULL, '01/05/2020', '01/08/2020', 'Tư Đình, Long Biên, Hà Nội', '-2.25', '-1.50', '20/40 (2M=20/30+2)', '20/40', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 165000, 165000, 0, '2020-05-07 04:51:59', '2020-05-07 04:51:59'),
(32, 'MDH_1588852338', 'Vũ Hương Quỳnh', NULL, NULL, '01/05/2020', '01/08/2020', 'Tư Đình, Long Biên, Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 330000, 330000, 0, '2020-05-07 04:53:28', '2020-05-07 04:53:28'),
(33, 'MDH_1588852414', 'Cháu Bà Dịch', NULL, NULL, '01/05/2020', '01/08/2020', 'Tư Đình, Long Biên, Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 330000, 330000, 0, '2020-05-07 04:56:32', '2020-05-07 04:56:32'),
(34, 'MDH_1588852596', 'Lê Quang Thanh', '0989397111', '60', '01/05/2020', '01/08/2020', 'Gia Thụy, Long Biên, Hà Nội', NULL, NULL, '20/100', '20/70', '+2.00', '+1.75', '20/30', '20/30', NULL, NULL, 0, NULL, 'A chồng chị bạn Thủy', 0, 0, 1700000, 1700000, 0, '2020-05-07 05:02:58', '2020-05-07 05:02:58'),
(35, 'MDH_1588853915', 'Nguyễn Hương Giang', '0866899069', '60', '01/05/2020', '01/08/2020', 'Tư Đình, Long Biên, Hà Nội', '-5.50', '-5.75', '20/25 (2M=20/20', '20/25', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Con chị Thu', 0, 0, 750000, 750000, 0, '2020-05-07 05:22:26', '2020-05-07 05:22:26'),
(36, 'MDH_1588854154', 'Nguyễn Huyền Linh', '0985005253', '56', '01/05/2020', '01/08/2020', 'Tư Đình, Long Biên, Hà Nội', '-0.50', '-0.50', '20/40', '20/40', '-0.75', '-0.75', '20/25', '20/25', NULL, NULL, 0, NULL, 'Con A Cương Vàng', 0, 0, 615000, 615000, 0, '2020-05-07 06:40:07', '2020-05-07 06:40:07'),
(37, 'MDH_1588859307', 'Nguyễn Thị Luyến', '0902106245', '62', '06/05/2020', '06/08/2020', 'Tư Đình, Long Biên, Hà Nội', NULL, NULL, '20/80', '20/40', '00/-1.00 x 25', '00/-0.50 x 120', '20/30', '20/20', NULL, NULL, 0, NULL, NULL, 0, 0, 800000, 800000, 0, '2020-05-07 06:50:36', '2020-05-07 06:50:36'),
(38, 'MDH_1588859468', 'Con Trai Chị Luyến', NULL, NULL, '07/05/2020', '06/05/2020', 'Tư Đình, Long Biên, Hà Nội', NULL, NULL, NULL, NULL, '00', '00', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 470000, 470000, 0, '2020-05-07 06:52:36', '2020-05-07 06:52:36'),
(39, 'MDH_1588938081', 'Nguyễn Minh Đức', '0989908586', '62', '02/05/2020', '02/08/2020', 'Thạch Cầu, Long Biên, Hà Nội', '00/-2.00 x 170', '00/-2.50 x 180', '20/30', '20/30', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Con trai e Minh rửa xe', 0, 0, 550000, 550000, 0, '2020-05-08 04:45:46', '2020-05-08 04:45:46'),
(40, 'MDH_1588938357', 'Nguyễn Thành Thanh', '0398731896', '64', '02/05/2020', '02/08/2020', 'Tư Đình, Long Biên, Hà Nội', NULL, NULL, '20/100', '20/80', '-1.00', '-0.75', '20/20', '20/20', NULL, NULL, 0, NULL, NULL, 0, 0, 850000, 850000, 0, '2020-05-08 04:49:28', '2020-05-08 04:49:28'),
(41, 'MDH_1588938585', 'Hoàng Văn Thành', NULL, '60', '03/05/2020', '03/08/2020', 'Thạch Cầu, Long Biên, Hà Nội', NULL, NULL, NULL, NULL, '+1.50', '+150', NULL, NULL, NULL, NULL, 0, NULL, 'Chú Thành( Bà Lựu)', 0, 0, 450000, 450000, 0, '2020-05-08 04:53:52', '2020-05-08 04:53:52'),
(42, 'MDH_1588991140', 'Cô Nga Thủy', '0987501968', '57', '02/05/2020', '02/08/2020', 'Thạch Cầu, Long Biên, Hà Nội', NULL, NULL, NULL, NULL, '+1.00', '+1.00', NULL, NULL, NULL, NULL, 0, NULL, 'Kình nhìn gần', 0, 0, 450000, 450000, 0, '2020-05-08 19:27:09', '2020-05-08 19:27:09'),
(43, 'MDH_1588992140', 'Đỗ Bảo Ngọc', '0816081180', '57', '03/05/2020', '03/08/2020', 'Thạch Bàn, Long biên, Hà Nội', NULL, NULL, '20/200', '20/200', '-375/-0.50 x 180', '-375/-0.50 x 180', '20/30', '20/30', NULL, NULL, 0, NULL, 'Cháu A Thanh Lái Xe', 0, 0, 800000, 800000, 0, '2020-05-08 19:45:21', '2020-05-08 19:45:21'),
(44, 'MDH_1588992329', 'Nguyễn Vũ Bình An', '0366319502', '63', '03/05/2020', '03/08/2020', 'Tư Đình, long Biên, Hà Nội', '-3.75/-0.75 x 177', '-2.75/-0.75 x 0', '20/70', '20/70', '-3.75/-1.00 x 175', '-3.00/-1.25 x 175', '20/25(2M=20/20-3)', '20/20', NULL, NULL, 0, NULL, 'con Trai Cậu Thắng', 0, 0, 450000, 450000, 0, '2020-05-08 19:49:50', '2020-05-08 19:49:50'),
(45, 'MDH_1588993082', 'Bác E Toàn', NULL, '60', '03/05/2020', '03/08/2020', 'Tư Đình, long Biên, Hà Nội', NULL, NULL, NULL, NULL, '+2.00', '+2.00', NULL, NULL, NULL, NULL, 20000, NULL, 'Kính nhì gần', 0, 0, 100000, 120000, 0, '2020-05-08 19:59:21', '2020-05-08 19:59:21'),
(46, 'MDH_1588993531', 'Đinh Minh Nhật', '0987636262', '60', '04/05/2020', '04/08/2020', 'Tư Đình, long Biên, Hà Nội', NULL, NULL, '20/100', '20/200', '-0.75', '-1.00/-0.50 x 175', '20/25+2(2M=20/20)', '20/25+2', NULL, NULL, 0, NULL, NULL, 0, 0, 935000, 935000, 0, '2020-05-08 20:08:30', '2020-05-08 20:08:30'),
(47, 'MDH_1588994546', 'Nguyễn Lan', '0857165087', '60', '04/05/2020', '04/08/2020', 'Long Biên, Hà Nội', NULL, NULL, NULL, NULL, '+2.00(Nhìn gần)', '+2.25(Nhìn gần)', NULL, NULL, NULL, NULL, 0, NULL, 'Bạn Mẹ Thuận', 0, 0, 500000, 500000, 0, '2020-05-08 20:25:10', '2020-05-08 20:25:10'),
(48, 'MDH_1588994723', 'Lê Đỗ Nhật Linh', NULL, '60', '0405/2020', '04/08/2020', 'Ngọc Thụy, Long Biên, Hà Nội', '-2.50', '-2.25', '20/100', '20/100', '-3.75', '-3.50', '20/30(2M=20/25)', '20/30', NULL, NULL, 0, NULL, 'Con Gái Chị Bạn Thủy', 0, 0, 450000, 450000, 0, '2020-05-08 20:29:43', '2020-05-08 20:29:43'),
(49, 'MDH_1588995332', 'Lưu Trung Hiếu', '0974026797', '62', '04/05/2020', '04/08/2020', 'Tư Đình, long Biên, Hà Nội', NULL, NULL, NULL, NULL, '-275/-3.00 x 160', '-2.00/-3.00 x 175', '20/25', '20/25', NULL, NULL, 50000, NULL, 'Con trai cô Nhan', 0, 0, 950000, 1000000, 0, '2020-05-08 21:14:35', '2020-05-08 21:14:35'),
(50, 'MDH_1588999436', 'Đinh Công Vụ', '0326149921', '67', '05/05/2020', '05/08/2020', 'Tư Đình, long Biên, Hà Nội', NULL, NULL, '20/200', NULL, '-1.75', NULL, '20/20', NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 120000, 120000, 0, '2020-05-08 21:45:08', '2020-05-08 21:45:08'),
(51, 'MDH_1589019344', 'Hà Thị Phượng', '0905422866', '60', '05/05/2020', '05/08/2020', 'Thạch Cầu, Long Biên, Hà Nội', NULL, NULL, NULL, NULL, '+1.50( Kính nhìn gần)', '+1.50', NULL, NULL, NULL, NULL, 70000, NULL, NULL, 0, 0, 1000000, 1070000, 0, '2020-05-09 03:18:50', '2020-05-09 03:18:50'),
(52, 'MDH_1589020400', 'Cô Sính', '0989908586', '56', '05/05/2020', '05/08/2020', 'Thạch Cầu, Long Biên, Hà Nội', NULL, NULL, '20/200', '20/20', '+1.25( Kính nhìn gần)', '+1.25', NULL, NULL, NULL, NULL, 80000, NULL, 'Con gái bà Vũ', 0, 0, 1300000, 1380000, 0, '2020-05-09 03:36:03', '2020-05-09 03:36:03'),
(53, 'MDH_1589021424', 'Nguyễn Minh Hiếu', NULL, '57', '06/05/2020', '06/08/2020', 'Tư Đình, long Biên, Hà Nội', NULL, NULL, '20/200', '20/25', '+0.75/-2.50 x 180', NULL, NULL, NULL, NULL, NULL, 100000, NULL, 'Con trai A Cương Vàng', 0, 0, 1300000, 1400000, 0, '2020-05-09 03:52:57', '2020-05-09 03:52:57'),
(54, 'MDH_1589022025', 'Đinh Ngọc Mai', '0981970546', '58', '06/05/2020', '06/08/2020', 'Tư Đình, long Biên, Hà Nội', NULL, NULL, '20/100', '20/50', '-1.50', '-0.75', '20/25(2M=20/20-3)', '20/25', NULL, NULL, 0, NULL, NULL, 0, 0, 800000, 800000, 0, '2020-05-09 04:02:27', '2020-05-09 04:02:27'),
(55, 'MDH_1589024079', 'Nguyễn Hương Ly', '0325775006', '57', '06/05/2020', '06/08/2020', 'Thạch Cầu, Long Biên, Hà Nội', '-1.75', '-1.25', '20/70-2', '20/70', '-2.50', '-2.25', '20/30+2(2M=20/25', '20/30+2', NULL, NULL, 0, NULL, NULL, 0, 0, 615000, 615000, 0, '2020-05-09 04:39:30', '2020-05-09 04:39:30'),
(56, 'MDH_1589024378', 'Đinh Tiến Khánh', '0987636262', '62', '06/05/2020', '06/08/2020', 'Tư Đình, long Biên, Hà Nội', '-2.50/-0.50 x 130', '-2.50/-1.00 x 165', '20/30-2', '20/50', '-2.75/-0.75 x 30', '-3.00/-1.00 x 165', '20/25(2M=20/20)', '20/25', NULL, NULL, 0, NULL, NULL, 0, 0, 450000, 450000, 0, '2020-05-09 04:43:37', '2020-05-09 04:43:37'),
(57, 'MDH_1589024822', 'Nguyễn Bảo Hân', '0366319502', '54', '07/05/2020', '07/08/2020', 'Tư Đình, long Biên, Hà Nội', '-3.25/-0.75 x 9', '-3.00/-1.00 x 170', '20/70', '20/70', '-3.50/-1.25 x 5', '-3.00/-1.50 x 160', '20/30+2', '20/30+2', NULL, NULL, 20000, NULL, 'Cháu cô Oanh bạn mẹ', 0, 0, 750000, 770000, 0, '2020-05-09 04:56:37', '2020-05-09 04:56:37'),
(58, 'MDH_1589025404', 'Tạ Hà My', '0369773788', '59', '07/05/2020', '07/08/2020', 'Tư Đình, long Biên, Hà Nội', '-1.25', '-2.25', '20/50', '20/50', '-1.75', '-2.75', '20/20', '20/20', NULL, NULL, 5000, NULL, 'Con gái e Dung', 0, 0, 280000, 285000, 0, '2020-05-09 05:00:18', '2020-05-09 05:00:18'),
(59, 'MDH_1589025624', 'Lê Hải Triều', '0706545236', '63', '08/05/2020', '08/08/2020', 'Thạch Cầu, Long Biên, Hà Nội', '-2.75', '-2.75', '20/20', '20/20', '-1.75', '-2.00', '20/20', '20/20', NULL, NULL, 10000, NULL, NULL, 0, 0, 800000, 810000, 0, '2020-05-09 05:19:34', '2020-05-09 05:19:34'),
(60, 'MDH_1589115903', 'Chu Hải Đăng', '0982187909', '62', '10/05/2020', '10/08/2020', 'Thạch Cầu, Long Biên, Hà Nội', '-0.75', '-2.75', '20/25', '20/40', NULL, '-3.00', NULL, '20/25', NULL, NULL, 0, NULL, 'Con trai C Bình trường đảng', 0, 0, 800000, 800000, 0, '2020-05-10 06:09:02', '2020-05-10 06:09:02'),
(61, 'MDH_1589116148', 'Chu Phương Linh', '0362559299', '56', '10/05/2020', '10/08/2020', 'Thạch Cầu, Long Biên, Hà Nội', '-5.75/-0.50 x 180', '-5.25/-0.75 x 130', '20/40', '20/40', '-6.00', '-5.75', '20/25', '20/30', NULL, NULL, 0, NULL, 'Con C Bình trường đảng', 0, 600000, 800000, 800000, 0, '2020-05-10 06:12:36', '2020-05-10 06:17:30'),
(62, 'MDH_1589117299', 'Nguyễn Thị Hà', '0976340000', '62', '10/05/2020', '10/08/2020', '626 Nguyễn Văn Cừ', NULL, NULL, '20/200', '20/100', '-1.25', '-0.75/-0.50 x 35', '20/25', '20/25', NULL, NULL, 150000, NULL, NULL, 0, 0, 1000000, 1150000, 0, '2020-05-10 06:32:06', '2020-05-10 06:32:06'),
(63, 'MDH_1589116732', 'Nguyễn Mạnh Thắng', '0869672705', '62', '10/05/2020', '10/08/2020', '138, Bồ Đề, Long Biên, Hà Nội', '-2.00/-0,50/0', '-1,50/0,5/170', '20/20', '20/40', '-2.00/-0,50/180', '-1,50/0,75/160', '20/20', '20/30 T2', NULL, NULL, 50000, NULL, NULL, 0, 0, 1120000, 1170000, 0, '2020-05-10 07:09:42', '2020-05-10 07:15:59'),
(64, 'MDH_1589201454', 'Nguyễn Thị Tố Uyên', '0977328692', '61', '11/05/2020', '11/08/2020', 'Cổ Bi, Gia Lâm, Hà Nội', '-4.25', '-4.25', '20/100', '20/100', '-5.50', '-5.50', '20/40-3(2M=20/30-2)', '20/40-3', NULL, NULL, 0, NULL, NULL, 0, 0, 800000, 800000, 0, '2020-05-11 05:55:24', '2020-05-11 05:55:24'),
(65, 'MDH_1589546313', 'Tạ Gia Long', '0902137724', '63', '15/05/2020', '08/15/2020', NULL, '-5,25', '-4,75', '20/200', '20/200', '-6.50/-1.75 x 180', '-6.25/-1.25 x 170', '20/30-2 (2M=20/30)', '20/30-2', NULL, NULL, 0, NULL, NULL, 0, 0, 800000, 800000, 0, '2020-05-15 05:44:27', '2020-05-15 05:44:27'),
(66, 'MDH_1589603264', 'Vũ Mạnh Hiệp', '0988083421', '61', '16/05/2020', '08/16/2020', 'Số 5, Ngô Tất Tố, Văn Miếu, Đống Đa, Hà Nội', '-2.00', '-4.00', '20/100', '20/100', '-2.75', '-4.25', '20/25', '20/25', NULL, NULL, 35000, NULL, 'Đo, khám kiểm tra thị lực 2 mắt', 0, 0, 800000, 835000, 0, '2020-05-15 21:32:24', '2020-05-15 21:32:24'),
(67, 'MDH_1589729190', 'Nguyễn Quốc Anh', '0943950094', '65', '17/05/2020', '17/08/2020', 'Số 11, ngõ 175, Bát Khối, Long Biên, Hà Nội', '-3.25', '-2.75', '20/60', '20/60', '-3.00/-0.50 x 90', '-3.00', '20/20', '20/20', NULL, NULL, 0, NULL, NULL, 0, 0, 800000, 800000, 0, '2020-05-17 08:29:57', '2020-05-17 08:29:57'),
(68, 'MDH_1589729505', 'Ngô Linh Chi', NULL, '64', '17/05/2020', '17/08/2020', 'Long Biên, Hà Nội', '-1.50', '-1.25', '20/100', '20/100', '-3.75', '-2.75', '20/25', '20/25', NULL, NULL, 200000, NULL, 'Con chị Nhung, 13 tuổi', 0, 0, 950000, 1150000, 0, '2020-05-17 08:35:30', '2020-05-17 08:35:30'),
(69, 'MDH_1589729863', 'Lê Đức Lợi', '0976340000', '68', '17/05/2020', '17/08/2020', 'Số 626, Nguyễn Văn Cừ, Long Biên, Hà Nội', '-3.25/-0.5 x 50', '-3.50', '20/100', '20/80', '-4.00/0.5 x 50', '-4.25', '20/20 - 2', '20/20', NULL, NULL, 0, NULL, 'Con chị Hà, 20 tuổi', 0, 0, 800000, 800000, 0, '2020-05-17 08:40:45', '2020-05-17 08:42:36'),
(70, 'MDH_1589730218', 'Lê Hà Linh', '0976340000', '61', '17/05/2020', '17/08/2020', 'Số 626, Nguyễn Văn Cừ, Long Biên, Hà Nội', '-2.25/-0.5 x 180', '-2.00/0.50 x 180', '20/80', '20/80', '-3.00/0.50 x 170', '-2.50/0.50 x 170', '20/20', '20/20', NULL, NULL, 0, NULL, 'Con chị Hà, 12 tuổi', 0, 0, 450000, 450000, 0, '2020-05-17 08:43:38', '2020-05-17 08:45:30'),
(71, 'MDH_1589730439', 'Đỗ Bùi Đức Hùng', '0972228888', '71', '17/05/2020', '17/08/2020', 'Nguyễn Chí Thanh, Hà Nội', '-2.25', '-1.75/-1.00 x 159', '20/20', '20/20', '-1.75', '-1.75/-1.00 x 165', '20/20', '20/20', NULL, NULL, 155000, NULL, 'Bạn anh Hiệp. Trước kia đeo kính quá số. Cần khám lại sau 3 tháng.', 0, 0, 1250000, 1405000, 0, '2020-05-17 08:53:15', '2020-05-17 08:53:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `name`, `name_en`, `code_color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Đỏ', 'Red', '#ff0000', 1, '2019-12-30 00:26:31', '2020-05-04 20:32:21'),
(2, 'Đen bóng', 'Shiny black', '#000000', 1, '2020-01-03 02:19:44', '2020-05-04 20:37:39'),
(3, 'Xanh dương', 'Blue', '#0000ff', 1, '2020-05-04 20:31:58', '2020-05-04 20:32:41'),
(4, 'Xanh lá', 'Green', '#00ff00', 1, '2020-05-04 20:33:14', '2020-05-04 20:33:14'),
(5, 'Trong suốt', 'Transparent', '#ffffff', 1, '2020-05-04 20:34:58', '2020-05-04 20:34:58'),
(6, 'Trắng', 'White', '#ffffff', 1, '2020-05-04 20:35:29', '2020-05-04 20:35:29'),
(7, 'Đen mờ', 'Matte black', '#000000', 1, '2020-05-04 20:38:48', '2020-05-04 20:38:48'),
(8, 'Vàng', 'Yellow', '#ffff00', 1, '2020-05-04 20:42:42', '2020-05-04 20:42:42'),
(9, 'Nâu', 'Brown', '#633232', 1, '2020-05-04 20:45:33', '2020-05-04 20:47:51'),
(10, 'Đồi Mồi', 'Turtle', '#633838', 1, '2020-05-04 20:46:21', '2020-05-04 20:46:21'),
(11, 'Hồng', 'Pink', '#ff69b4', 1, '2020-05-04 20:47:26', '2020-05-04 20:47:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `status`, `created_at`, `updated_at`) VALUES
(2, 'sadasda@gmil.com', 0, '2020-01-06 20:50:42', '2020-01-06 20:50:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des_s` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des_f` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `section_id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `co_sos`
--

CREATE TABLE `co_sos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `co_sos`
--

INSERT INTO `co_sos` (`id`, `name`, `address`, `created_at`, `updated_at`) VALUES
(2, 'Cơ sở 1 - Số 83, Đường Bát Khối, Long Biên, Long Biên, Hà Nội', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.1747054803986!2d105.8822398144073!3d21.025694493260012!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135a95da3de1569%3A0x73246d55f38604b!2zODMgxJDGsOG7nW5nIELDoXQgS2jhu5FpLCBMb25nIEJpw6puLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1585819928533!5m2!1svi!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', '2020-03-21 20:42:36', '2020-04-02 02:44:23'),
(3, 'Cơ sở 2 - Số 5, Phố Ngô Tất Tố, Văn Miếu, Đống Đa, Hà Nội', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.120624370535!2d105.83435031440736!3d21.027858993186097!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab9915b3ac6b%3A0xecd1d4552ed6af11!2zNSBQaOG7kSBOZ8O0IFThuqV0IFThu5EsIFbEg24gTWnhur91LCDEkOG7kW5nIMSQYSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1585820021471!5m2!1svi!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', '2020-03-21 20:50:53', '2020-04-02 02:33:56'),
(4, 'Cơ sở 3 - Số 280, Nam Kỳ Khởi Nghĩa, Quận 1, TP HCM', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.295361785868!2d106.6832601142871!3d10.78867526191882!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f2d1f51b9e5%3A0xa34873b7344e0f31!2zMjgwIE5hbSBL4buzIEto4bufaSBOZ2jEqWEsIFBoxrDhu51uZyA4LCBRdeG6rW4gMywgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1585820118985!5m2!1svi!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', '2020-04-02 02:35:29', '2020-04-02 02:44:49'),
(5, 'Cơ sở 4 - Số 9, Phố Trần Quý Cáp, Thạch Thang, Hải Châu, Đà Nẵng', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d958.423805046905!2d108.22116572916683!3d16.08129798793165!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142183c70704361%3A0x597b33b2bde8e7be!2zOSBUcuG6p24gUXXDvSBDw6FwLCBUaOG6oWNoIFRoYW5nLCBI4bqjaSBDaMOidSwgxJDDoCBO4bq1bmcgNTUwMDAwLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1585820297664!5m2!1svi!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', '2020-04-02 02:39:37', '2020-04-02 02:39:37'),
(6, 'Cơ sở 5 - Số 9, Mai Xuân Thưởng, Vĩnh Hải, Thành phố Nha Trang', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d974.6240780616513!2d109.19850882914835!3d12.282327309865709!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317067fb3aed2179%3A0x63b724521ebe1fcb!2zOSBNYWkgWHXDom4gVGjGsOG7n25nLCBWxKluaCBI4bqjaSwgVGjDoG5oIHBo4buRIE5oYSBUcmFuZywgS2jDoW5oIEjDsmEgNjUwMDAwLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1585820599964!5m2!1svi!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', '2020-04-02 02:43:27', '2020-04-02 02:43:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhangkhams`
--

CREATE TABLE `donhangkhams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `benhan_id` int(11) NOT NULL,
  `khambenh_id` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT '0',
  `gia` float DEFAULT '0',
  `thanhtien` float DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhangkhams`
--

INSERT INTO `donhangkhams` (`id`, `benhan_id`, `khambenh_id`, `soluong`, `gia`, `thanhtien`, `created_at`, `updated_at`) VALUES
(122, 29, 41, 1, 400000, 400000, '2020-05-02 07:07:56', '2020-05-02 07:07:56'),
(123, 29, 22, 2, 225000, 450000, '2020-05-02 07:07:56', '2020-05-02 07:07:56'),
(128, 28, 17, 1, 350000, 350000, '2020-05-03 17:53:20', '2020-05-03 17:53:20'),
(129, 28, 22, 2, 225000, 450000, '2020-05-03 17:53:20', '2020-05-03 17:53:20'),
(130, 28, 12, 1, 165000, 165000, '2020-05-03 17:53:20', '2020-05-03 17:53:20'),
(131, 28, 29, 1, 100000, 100000, '2020-05-03 17:53:20', '2020-05-03 17:53:20'),
(136, 15, 15, 1, 300000, 300000, '2020-05-03 17:54:14', '2020-05-03 17:54:14'),
(137, 15, 9, 2, 225000, 450000, '2020-05-03 17:54:14', '2020-05-03 17:54:14'),
(138, 16, 9, 2, 225000, 450000, '2020-05-03 17:54:28', '2020-05-03 17:54:28'),
(139, 17, 16, 1, 380000, 380000, '2020-05-03 17:54:46', '2020-05-03 17:54:46'),
(140, 17, 9, 2, 225000, 450000, '2020-05-03 17:54:46', '2020-05-03 17:54:46'),
(141, 18, 17, 1, 350000, 350000, '2020-05-03 17:55:02', '2020-05-03 17:55:02'),
(142, 18, 9, 2, 225000, 450000, '2020-05-03 17:55:02', '2020-05-03 17:55:02'),
(143, 19, 19, 1, 320000, 320000, '2020-05-03 17:55:22', '2020-05-03 17:55:22'),
(144, 19, 18, 2, 60000, 120000, '2020-05-03 17:55:22', '2020-05-03 17:55:22'),
(145, 20, 20, 1, 350000, 350000, '2020-05-03 17:55:37', '2020-05-03 17:55:37'),
(146, 20, 9, 2, 225000, 450000, '2020-05-03 17:55:37', '2020-05-03 17:55:37'),
(147, 21, 25, 1, 720000, 720000, '2020-05-03 17:55:57', '2020-05-03 17:55:57'),
(148, 21, 22, 2, 225000, 450000, '2020-05-03 17:55:57', '2020-05-03 17:55:57'),
(149, 21, 26, 1, 750000, 750000, '2020-05-03 17:55:57', '2020-05-03 17:55:57'),
(150, 22, 27, 1, 750000, 750000, '2020-05-03 17:56:12', '2020-05-03 17:56:12'),
(151, 22, 12, 2, 165000, 330000, '2020-05-03 17:56:12', '2020-05-03 17:56:12'),
(152, 23, 5, 1, 350000, 350000, '2020-05-03 17:56:25', '2020-05-03 17:56:25'),
(153, 23, 22, 2, 225000, 450000, '2020-05-03 17:56:25', '2020-05-03 17:56:25'),
(154, 24, 28, 1, 350000, 350000, '2020-05-03 17:56:39', '2020-05-03 17:56:39'),
(155, 24, 22, 4, 225000, 900000, '2020-05-03 17:56:39', '2020-05-03 17:56:39'),
(156, 25, 28, 1, 350000, 350000, '2020-05-03 17:56:51', '2020-05-03 17:56:51'),
(157, 25, 22, 2, 225000, 450000, '2020-05-03 17:56:51', '2020-05-03 17:56:51'),
(158, 26, 18, 2, 60000, 120000, '2020-05-03 17:57:03', '2020-05-03 17:57:03'),
(159, 27, 17, 1, 350000, 350000, '2020-05-03 17:57:15', '2020-05-03 17:57:15'),
(160, 27, 22, 2, 225000, 450000, '2020-05-03 17:57:15', '2020-05-03 17:57:15'),
(161, 27, 12, 2, 165000, 330000, '2020-05-03 17:57:15', '2020-05-03 17:57:15'),
(162, 30, 45, 1, 360000, 360000, '2020-05-04 07:29:29', '2020-05-04 07:29:29'),
(163, 30, 22, 2, 225000, 450000, '2020-05-04 07:29:29', '2020-05-04 07:29:29'),
(164, 31, 12, 1, 165000, 165000, '2020-05-07 04:51:59', '2020-05-07 04:51:59'),
(165, 32, 12, 2, 165000, 330000, '2020-05-07 04:53:28', '2020-05-07 04:53:28'),
(166, 33, 12, 2, 165000, 330000, '2020-05-07 04:56:32', '2020-05-07 04:56:32'),
(167, 34, 40, 1, 400000, 400000, '2020-05-07 05:02:58', '2020-05-07 05:02:58'),
(168, 34, 24, 2, 225000, 450000, '2020-05-07 05:02:58', '2020-05-07 05:02:58'),
(169, 34, 42, 1, 400000, 400000, '2020-05-07 05:02:58', '2020-05-07 05:02:58'),
(170, 34, 24, 2, 225000, 450000, '2020-05-07 05:02:58', '2020-05-07 05:02:58'),
(171, 35, 46, 1, 300000, 300000, '2020-05-07 05:22:26', '2020-05-07 05:22:26'),
(172, 35, 22, 2, 225000, 450000, '2020-05-07 05:22:26', '2020-05-07 05:22:26'),
(173, 36, 22, 2, 225000, 450000, '2020-05-07 06:40:07', '2020-05-07 06:40:07'),
(174, 36, 12, 1, 165000, 165000, '2020-05-07 06:40:07', '2020-05-07 06:40:07'),
(175, 37, 35, 1, 350000, 350000, '2020-05-07 06:50:36', '2020-05-07 06:50:36'),
(176, 37, 9, 2, 225000, 450000, '2020-05-07 06:50:36', '2020-05-07 06:50:36'),
(177, 38, 37, 1, 350000, 350000, '2020-05-07 06:52:36', '2020-05-07 06:52:36'),
(178, 38, 47, 2, 60000, 120000, '2020-05-07 06:52:36', '2020-05-07 06:52:36'),
(179, 39, 10, 1, 550000, 550000, '2020-05-08 04:45:46', '2020-05-08 04:45:46'),
(180, 40, 41, 1, 400000, 400000, '2020-05-08 04:49:28', '2020-05-08 04:49:28'),
(181, 40, 22, 2, 225000, 450000, '2020-05-08 04:49:28', '2020-05-08 04:49:28'),
(182, 41, 24, 2, 225000, 450000, '2020-05-08 04:53:52', '2020-05-08 04:53:52'),
(183, 42, 24, 2, 225000, 450000, '2020-05-08 19:27:09', '2020-05-08 19:27:09'),
(184, 43, 48, 1, 350000, 350000, '2020-05-08 19:45:21', '2020-05-08 19:45:21'),
(185, 43, 9, 2, 225000, 450000, '2020-05-08 19:45:21', '2020-05-08 19:45:21'),
(186, 44, 9, 2, 225000, 450000, '2020-05-08 19:49:50', '2020-05-08 19:49:50'),
(187, 45, 49, 2, 60000, 120000, '2020-05-08 19:59:21', '2020-05-08 19:59:21'),
(188, 46, 50, 1, 320000, 320000, '2020-05-08 20:08:30', '2020-05-08 20:08:30'),
(189, 46, 9, 2, 225000, 450000, '2020-05-08 20:08:30', '2020-05-08 20:08:30'),
(190, 46, 12, 1, 165000, 165000, '2020-05-08 20:08:30', '2020-05-08 20:08:30'),
(191, 47, 51, 1, 380000, 380000, '2020-05-08 20:25:10', '2020-05-08 20:25:10'),
(192, 47, 49, 2, 60000, 120000, '2020-05-08 20:25:10', '2020-05-08 20:25:10'),
(193, 48, 22, 2, 225000, 450000, '2020-05-08 20:29:43', '2020-05-08 20:29:43'),
(194, 49, 52, 1, 450000, 450000, '2020-05-08 21:14:35', '2020-05-08 21:14:35'),
(195, 49, 10, 1, 550000, 550000, '2020-05-08 21:14:35', '2020-05-08 21:14:35'),
(196, 50, 55, 2, 60000, 120000, '2020-05-08 21:45:08', '2020-05-08 21:45:08'),
(197, 51, 24, 2, 225000, 450000, '2020-05-09 03:18:50', '2020-05-09 03:18:50'),
(198, 51, 56, 1, 500000, 500000, '2020-05-09 03:18:50', '2020-05-09 03:18:50'),
(199, 51, 49, 2, 60000, 120000, '2020-05-09 03:18:50', '2020-05-09 03:18:50'),
(200, 52, 51, 1, 380000, 380000, '2020-05-09 03:36:03', '2020-05-09 03:36:03'),
(201, 52, 24, 2, 225000, 450000, '2020-05-09 03:36:03', '2020-05-09 03:36:03'),
(202, 52, 57, 1, 550000, 550000, '2020-05-09 03:36:03', '2020-05-09 03:36:03'),
(203, 53, 58, 2, 500000, 1000000, '2020-05-09 03:52:57', '2020-05-09 03:52:57'),
(204, 53, 41, 1, 400000, 400000, '2020-05-09 03:52:57', '2020-05-09 03:52:57'),
(205, 54, 22, 2, 225000, 450000, '2020-05-09 04:02:27', '2020-05-09 04:02:27'),
(206, 54, 59, 1, 350000, 350000, '2020-05-09 04:02:27', '2020-05-09 04:02:27'),
(207, 55, 22, 2, 225000, 450000, '2020-05-09 04:39:30', '2020-05-09 04:39:30'),
(208, 55, 12, 1, 165000, 165000, '2020-05-09 04:39:30', '2020-05-09 04:39:30'),
(209, 56, 9, 2, 225000, 450000, '2020-05-09 04:43:37', '2020-05-09 04:43:37'),
(210, 57, 60, 1, 320000, 320000, '2020-05-09 04:56:37', '2020-05-09 04:56:37'),
(211, 57, 9, 2, 225000, 450000, '2020-05-09 04:56:37', '2020-05-09 04:56:37'),
(212, 58, 55, 2, 60000, 120000, '2020-05-09 05:00:18', '2020-05-09 05:00:18'),
(213, 58, 12, 1, 165000, 165000, '2020-05-09 05:00:18', '2020-05-09 05:00:18'),
(214, 59, 45, 1, 360000, 360000, '2020-05-09 05:19:34', '2020-05-09 05:19:34'),
(215, 59, 22, 2, 225000, 450000, '2020-05-09 05:19:34', '2020-05-09 05:19:34'),
(216, 60, 43, 1, 350000, 350000, '2020-05-10 06:09:02', '2020-05-10 06:09:02'),
(217, 60, 22, 2, 225000, 450000, '2020-05-10 06:09:02', '2020-05-10 06:09:02'),
(220, 61, 43, 1, 350000, 350000, '2020-05-10 06:17:30', '2020-05-10 06:17:30'),
(221, 61, 22, 2, 225000, 450000, '2020-05-10 06:17:30', '2020-05-10 06:17:30'),
(222, 14, 13, 1, 550000, 550000, '2020-05-10 06:18:22', '2020-05-10 06:18:22'),
(223, 14, 14, 1, 350000, 350000, '2020-05-10 06:18:22', '2020-05-10 06:18:22'),
(224, 14, 9, 4, 225000, 900000, '2020-05-10 06:18:22', '2020-05-10 06:18:22'),
(225, 14, 12, 1, 165000, 165000, '2020-05-10 06:18:22', '2020-05-10 06:18:22'),
(226, 62, 26, 1, 700000, 700000, '2020-05-10 06:32:06', '2020-05-10 06:32:06'),
(227, 62, 9, 2, 225000, 450000, '2020-05-10 06:32:06', '2020-05-10 06:32:06'),
(230, 63, 9, 2, 225000, 450000, '2020-05-10 07:15:59', '2020-05-10 07:15:59'),
(231, 63, 25, 1, 720000, 720000, '2020-05-10 07:15:59', '2020-05-10 07:15:59'),
(232, 64, 14, 1, 350000, 350000, '2020-05-11 05:55:24', '2020-05-11 05:55:24'),
(233, 64, 22, 2, 225000, 450000, '2020-05-11 05:55:24', '2020-05-11 05:55:24'),
(234, 65, 44, 1, 350000, 350000, '2020-05-15 05:44:27', '2020-05-15 05:44:27'),
(235, 65, 9, 2, 225000, 450000, '2020-05-15 05:44:27', '2020-05-15 05:44:27'),
(236, 66, 38, 1, 350000, 350000, '2020-05-15 21:32:24', '2020-05-15 21:32:24'),
(237, 66, 22, 2, 225000, 450000, '2020-05-15 21:32:24', '2020-05-15 21:32:24'),
(238, 66, 32, 1, 20000, 20000, '2020-05-15 21:32:24', '2020-05-15 21:32:24'),
(239, 66, 61, 1, 15000, 15000, '2020-05-15 21:32:24', '2020-05-15 21:32:24'),
(240, 67, 33, 1, 350000, 350000, '2020-05-17 08:29:57', '2020-05-17 08:29:57'),
(241, 67, 22, 2, 225000, 450000, '2020-05-17 08:29:57', '2020-05-17 08:29:57'),
(242, 68, 26, 1, 700000, 700000, '2020-05-17 08:35:30', '2020-05-17 08:35:30'),
(243, 68, 22, 2, 225000, 450000, '2020-05-17 08:35:30', '2020-05-17 08:35:30'),
(245, 69, 9, 2, 225000, 450000, '2020-05-17 08:42:37', '2020-05-17 08:42:37'),
(246, 69, 92, 1, 350000, 350000, '2020-05-17 08:42:37', '2020-05-17 08:42:37'),
(249, 70, 9, 2, 225000, 450000, '2020-05-17 08:45:30', '2020-05-17 08:45:30'),
(250, 71, 5, 1, 350000, 350000, '2020-05-17 08:53:15', '2020-05-17 08:53:15'),
(251, 71, 9, 4, 225000, 900000, '2020-05-17 08:53:15', '2020-05-17 08:53:15'),
(252, 71, 29, 1, 100000, 100000, '2020-05-17 08:53:15', '2020-05-17 08:53:15'),
(253, 71, 32, 2, 20000, 40000, '2020-05-17 08:53:15', '2020-05-17 08:53:15'),
(254, 71, 61, 1, 15000, 15000, '2020-05-17 08:53:15', '2020-05-17 08:53:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhangs`
--

CREATE TABLE `donhangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stk` text COLLATE utf8mb4_unicode_ci,
  `bank_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhangs`
--

INSERT INTO `donhangs` (`id`, `name`, `address`, `phone`, `email`, `stk`, `bank_id`, `type`, `content`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Nguyễn Minh Dũng', 'Thanh Hóa', '0981304093', 'nm.dung.1991@gmail.com', NULL, NULL, 1, 'Mua kính', 0, '2020-01-03 21:51:36', '2020-01-03 21:51:36'),
(3, 'Nguyễn Minh Dũng', 'Thanh Hóa', '0981304093', 'admin@admin.com', NULL, NULL, 1, '1245678', 0, '2020-01-04 00:07:13', '2020-01-04 00:07:13'),
(4, 'Nguyễn Minh Dũng', 'Thanh Hóa', '0981304093', 'nm.dung.1991@gmail.com', NULL, NULL, 1, 'OK', 0, '2020-01-05 02:18:37', '2020-01-05 02:18:37'),
(5, 'aa', 'â', 'aaaa', 'aa@gmail.com', NULL, NULL, 2, 'aa', 0, '2020-01-05 02:21:54', '2020-01-05 02:21:54'),
(6, 'Nguyễn Minh Dũng', '21312', '01231223131', '0981304093@gmail.com', NULL, NULL, 1, 'sssssssssssss', 0, '2020-01-05 05:21:04', '2020-01-05 05:21:04'),
(7, 'Quỳnh', 'a', '00001', '1aa@gmail.com', NULL, NULL, 1, 'a', 0, '2020-01-06 19:10:35', '2020-01-06 19:10:35'),
(8, 'Nguyễn Minh Dũng', 'TH', '0981304093', 'admin@admin.com', NULL, NULL, 1, '222', 0, '2020-02-01 20:29:43', '2020-02-01 20:29:43'),
(9, 'Vũ Mạnh Hiệp', 'Số 83 Bát Khối, Long Biên, Hà Nội', '0915441113', 'hiepvm1@gmail.com', NULL, NULL, 1, '3 Đen, 2 Trắng', 0, '2020-02-21 18:54:33', '2020-02-21 18:54:33'),
(10, 'Vũ Mạnh Hiệp', 'Số 85 Bát Khối, Long Biên, Hà Nội', '0915441113', 'hiepvm1@gmail.com', NULL, NULL, 2, '3', 0, '2020-02-21 18:56:02', '2020-02-21 18:56:02'),
(11, 'Nguyen sy Manh', 'Pho Thanh Tan, Phuong Quang Thanh, Thanh Pho Thanh Hoa, Thanh Hoa', '1678740242', 'hamrongmedia@gmail.com', '3453454534', 19, 1, 'test', 0, '2020-03-20 21:41:14', '2020-03-20 21:41:14'),
(12, 'Dang van Duc', 'dinh cong', '09681123', 'dangvanduc0@gmail.com', '123123123123123', 13, 1, '123123', 0, '2020-03-23 01:49:44', '2020-03-23 01:49:44'),
(13, 'Vũ Mạnh Hiệp', 'Hà Đông - Hà Nội', '0919160287', 'ngocminhoptic@gmail.com', '19030337062013', 32, 1, 'abc', 0, '2020-05-15 02:59:11', '2020-05-15 02:59:11'),
(14, 'Vũ Mạnh Hiệp', 'Hà Đông - Hà Nội', '0919160287', 'ngocminhoptic@gmail.com', '19030337062013', 6, 1, 'abc', 0, '2020-05-15 02:59:54', '2020-05-15 02:59:54'),
(15, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', '123123123123123', 1, 1, 'qeqe', 0, '2020-05-20 00:12:15', '2020-05-20 00:12:15'),
(16, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', '123123123123123', 1, 1, 'qeqe', 0, '2020-05-20 00:12:38', '2020-05-20 00:12:38'),
(17, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', 'asdasd', 1, 1, 'asdasd', 0, '2020-05-20 00:14:52', '2020-05-20 00:14:52'),
(18, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', NULL, NULL, NULL, 'asd', 0, '2020-05-20 01:08:21', '2020-05-20 01:08:21'),
(19, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', NULL, NULL, NULL, 'asd', 0, '2020-05-20 01:10:44', '2020-05-20 01:10:44'),
(20, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', NULL, NULL, NULL, 'asd', 0, '2020-05-20 01:10:54', '2020-05-20 01:10:54'),
(21, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', NULL, NULL, NULL, 'asd', 0, '2020-05-20 01:17:38', '2020-05-20 01:17:38'),
(22, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', NULL, NULL, NULL, 'asd', 0, '2020-05-20 01:17:39', '2020-05-20 01:17:39'),
(23, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', NULL, NULL, NULL, '123', 0, '2020-05-20 01:17:57', '2020-05-20 01:17:57'),
(24, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', NULL, NULL, NULL, '123', 0, '2020-05-20 01:18:10', '2020-05-20 01:18:10'),
(25, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', NULL, NULL, NULL, 'fg', 0, '2020-05-20 01:20:42', '2020-05-20 01:20:42'),
(26, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', NULL, NULL, NULL, 'dd', 0, '2020-05-20 01:22:05', '2020-05-20 01:22:05'),
(27, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', NULL, NULL, NULL, 'dd', 0, '2020-05-20 01:23:29', '2020-05-20 01:23:29'),
(28, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', NULL, NULL, NULL, 'dd', 0, '2020-05-20 01:23:38', '2020-05-20 01:23:38'),
(29, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', NULL, NULL, NULL, 'dd', 0, '2020-05-20 01:24:50', '2020-05-20 01:24:50'),
(30, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', NULL, NULL, NULL, '123', 0, '2020-05-20 01:29:30', '2020-05-20 01:29:30'),
(31, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', NULL, NULL, NULL, '123', 0, '2020-05-20 01:29:47', '2020-05-20 01:29:47'),
(32, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', NULL, NULL, NULL, '123', 0, '2020-05-20 01:30:15', '2020-05-20 01:30:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohangs`
--

CREATE TABLE `giohangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `donhang_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` float DEFAULT '0',
  `sum` float DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giohangs`
--

INSERT INTO `giohangs` (`id`, `donhang_id`, `product_id`, `amount`, `price`, `sum`, `created_at`, `updated_at`, `color_id`) VALUES
(1, 2, 0, 1, 5250000, 5250000, '2020-01-03 21:51:36', '2020-01-03 21:51:36', 0),
(2, 3, 0, 1, 5250000, 5250000, '2020-01-04 00:07:13', '2020-01-04 00:07:13', 0),
(3, 3, 0, 1, 5250000, 5250000, '2020-01-04 00:07:13', '2020-01-04 00:07:13', 0),
(4, 4, 0, 1, 5250000, 5250000, '2020-01-05 02:18:37', '2020-01-05 02:18:37', 0),
(5, 5, 0, 3, 5250000, 15750000, '2020-01-05 02:21:54', '2020-01-05 02:21:54', 0),
(6, 6, 0, 1, 5250000, 5250000, '2020-01-05 05:21:04', '2020-01-05 05:21:04', 0),
(7, 6, 0, 3, 5250000, 15750000, '2020-01-05 05:21:04', '2020-01-05 05:21:04', 0),
(8, 7, 0, 1, 5250000, 5250000, '2020-01-06 19:10:35', '2020-01-06 19:10:35', 0),
(9, 8, 0, 1, 5250000, 5250000, '2020-02-01 20:29:43', '2020-02-01 20:29:43', 0),
(10, 9, 0, 8, 5250000, 42000000, '2020-02-21 18:54:33', '2020-02-21 18:54:33', 0),
(11, 10, 0, 1, 5250000, 5250000, '2020-02-21 18:56:02', '2020-02-21 18:56:02', 0),
(12, 11, 0, 1, 5250000, 5250000, '2020-03-20 21:41:14', '2020-03-20 21:41:14', 0),
(13, 12, 0, 1, 5250000, 5250000, '2020-03-23 01:49:44', '2020-03-23 01:49:44', 0),
(14, 16, 0, 1, 700000, 700000, '2020-05-20 00:12:38', '2020-05-20 00:12:38', 0),
(15, 16, 0, 1, 700000, 700000, '2020-05-20 00:12:38', '2020-05-20 00:12:38', 0),
(16, 17, 0, 1, 700000, 700000, '2020-05-20 00:14:52', '2020-05-20 00:14:52', 0),
(17, 24, 0, 1, 750000, 750000, '2020-05-20 01:18:10', '2020-05-20 01:18:10', 4),
(18, 25, 0, 1, 700000, 700000, '2020-05-20 01:20:42', '2020-05-20 01:20:42', 5),
(19, 26, 0, 1, 800000, 800000, '2020-05-20 01:22:05', '2020-05-20 01:22:05', 1),
(20, 27, 0, 1, 800000, 800000, '2020-05-20 01:23:29', '2020-05-20 01:23:29', 1),
(21, 28, 0, 1, 800000, 800000, '2020-05-20 01:23:38', '2020-05-20 01:23:38', 1),
(22, 29, 0, 1, 800000, 800000, '2020-05-20 01:24:50', '2020-05-20 01:24:50', 1),
(23, 32, 6, 1, 800000, 800000, '2020-05-20 01:30:15', '2020-05-20 01:30:15', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `icons`
--

CREATE TABLE `icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `type` int(11) DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `type` int(11) DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_products`
--

CREATE TABLE `image_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `product_image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `image_products`
--

INSERT INTO `image_products` (`id`, `product_id`, `is_default`, `product_image`, `title`, `alt`, `created_at`, `updated_at`) VALUES
(239, 3, 1, '/FILES/source/products/2020-05-14/68006TR90B_Font.png', '68006TR90B_Font.png', '68006TR90B_Font.png', '2020-05-14 01:07:47', '2020-05-14 01:07:47'),
(240, 5, 1, '/FILES/source/products/2020-05-08/8023TitaniumG_Font.png', '8023TitaniumG_Font.png', '8023TitaniumG_Font.png', '2020-05-14 01:08:56', '2020-05-14 01:08:56'),
(241, 5, 0, '/FILES/source/products/2020-05-08/8023TitaniumG_45.png', '8023TitaniumG_45.png', '8023TitaniumG_45.png', '2020-05-14 01:08:56', '2020-05-14 01:08:56'),
(242, 5, 0, '/FILES/source/products/2020-05-08/8023TitaniumS_Font.png', '8023TitaniumS_Font.png', '8023TitaniumS_Font.png', '2020-05-14 01:08:56', '2020-05-14 01:08:56'),
(243, 5, 0, '/FILES/source/products/2020-05-08/8023TitaniumS_45.png', '8023TitaniumS_45.png', '8023TitaniumS_45.png', '2020-05-14 01:08:56', '2020-05-14 01:08:56'),
(244, 6, 1, '/FILES/source/products/2020-05-08/8039TitaniumG_Font.png', '8039TitaniumG_Font.png', '8039TitaniumG_Font.png', '2020-05-14 01:10:29', '2020-05-14 01:10:29'),
(245, 6, 0, '/FILES/source/products/2020-05-08/8039TitaniumG_45.png', '8039TitaniumG_45.png', '8039TitaniumG_45.png', '2020-05-14 01:10:29', '2020-05-14 01:10:29'),
(246, 6, 0, '/FILES/source/products/2020-05-08/8039TitaniumS_Font.png', '8039TitaniumS_Font.png', '8039TitaniumS_Font.png', '2020-05-14 01:10:29', '2020-05-14 01:10:29'),
(247, 6, 0, '/FILES/source/products/2020-05-08/8039TitaniumS_45.png', '8039TitaniumS_45.png', '8039TitaniumS_45.png', '2020-05-14 01:10:29', '2020-05-14 01:10:29'),
(275, 7, 1, '/FILES/source/products/2020-05-14/2212UltemTitaniumT_Font.png', '2212UltemTitaniumT_Font.png', '2212UltemTitaniumT_Font.png', '2020-05-14 02:03:54', '2020-05-14 02:03:54'),
(276, 7, 0, '/FILES/source/products/2020-05-14/2212UltemTitaniumB_Font.png', '2212UltemTitaniumB_Font.png', '2212UltemTitaniumB_Font.png', '2020-05-14 02:03:54', '2020-05-14 02:03:54'),
(277, 7, 0, '/FILES/source/products/2020-05-14/2212UltemTitaniumBrown_Font.png', '2212UltemTitaniumBrown_Font.png', '2212UltemTitaniumBrown_Font.png', '2020-05-14 02:03:54', '2020-05-14 02:03:54'),
(278, 8, 1, '/FILES/source/products/2020-05-14/2215UltemTitaniumTB_Font.png', '2215UltemTitaniumTB_Font.png', '2215UltemTitaniumTB_Font.png', '2020-05-14 02:05:08', '2020-05-14 02:05:08'),
(279, 8, 0, '/FILES/source/products/2020-05-14/2215UltemTitaniumB_Font.png', '2215UltemTitaniumB_Font.png', '2215UltemTitaniumB_Font.png', '2020-05-14 02:05:08', '2020-05-14 02:05:08'),
(283, 9, 1, '/FILES/source/products/2020-05-14/1149UltemTitaniumB_Font.png', '1149UltemTitaniumB_Font.png', '1149UltemTitaniumB_Font.png', '2020-05-14 02:08:12', '2020-05-14 02:08:12'),
(284, 9, 0, '/FILES/source/products/2020-05-14/1149UltemTitaniumBB_After.png', '1149UltemTitaniumBB_After.png', '1149UltemTitaniumBB_After.png', '2020-05-14 02:08:12', '2020-05-14 02:08:12'),
(285, 9, 0, '/FILES/source/products/2020-05-14/1149UltemTitaniumTB_Font.png', '1149UltemTitaniumTB_Font.png', '1149UltemTitaniumTB_Font.png', '2020-05-14 02:08:12', '2020-05-14 02:08:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khambenhs`
--

CREATE TABLE `khambenhs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(30,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khambenhs`
--

INSERT INTO `khambenhs` (`id`, `name`, `masp`, `price`, `status`, `created_at`, `updated_at`) VALUES
(5, 'GOL68009 - Gọng kính nhựa God of Light TR90 (55-17-142)', 'GOL68009', 350000.00, 1, '2020-03-26 19:52:32', '2020-03-26 19:55:18'),
(6, 'GOL1149 - Gọng kính nhựa God of Light Ultem (54-16-139)', 'GOL1149', 550000.00, 1, '2020-03-26 19:53:34', '2020-05-19 06:50:23'),
(7, 'R3188 - Gọng kính Roxana, TR90 (50-19-140)', 'R3188', 320000.00, 1, '2020-03-26 19:54:49', '2020-05-03 18:05:21'),
(8, 'TK1192 - Gọng kính nhựa TK POP TR90 (48-18)', 'TK1192', 320000.00, 1, '2020-03-26 19:56:59', '2020-03-26 19:56:59'),
(9, 'ChemiU2LU2 - Tròng kính Chemi 1.60, chất liệu MR8 (Loạn dưới 2)', 'ChemiU2LU2', 225000.00, 1, '2020-03-26 19:59:35', '2020-04-23 09:07:43'),
(10, 'ChemiU2LO2 - Tròng kính Chemi 1.60, chất liệu MR8 (Loạn trên 2)', 'ChemiU2LO2', 550000.00, 1, '2020-03-26 20:01:14', '2020-04-23 09:08:20'),
(12, 'Mytropine USP 0.01% W/V', 'Mytropine', 165000.00, 1, '2020-04-18 01:07:54', '2020-04-18 01:07:54'),
(13, 'GX-IN9942 - Gọng kính GOL, chất liệu B-Ultem (52-18-140)', 'GX-IN9942', 550000.00, 1, '2020-04-18 01:09:56', '2020-04-18 01:09:56'),
(14, 'GOL68001 - Gọng kính GOL, TR90 (51-18-142)', 'GOL68001', 350000.00, 1, '2020-04-18 01:11:01', '2020-04-30 01:31:44'),
(15, 'GOL3235 - Gọng kính nhựa, chất liệu TR90 (49-17-137)', 'GOL3235', 300000.00, 1, '2020-04-18 02:50:22', '2020-04-18 02:50:22'),
(16, 'R3313 - Gọng kính nhựa, chất liệu TR90 (52-18-138)', 'R3313', 380000.00, 1, '2020-04-18 04:57:06', '2020-04-18 04:57:06'),
(17, 'GOL68017 - Gọng kính GOL, TR90 (50-17-140)', 'GOL68017', 350000.00, 1, '2020-04-18 05:32:34', '2020-04-30 01:32:50'),
(18, 'Ecovis156LU2 - Tròng kính Ecovis 1.56, chất liệu CR39 (Loạn dưới 2)', 'Ecovis156LU2', 60000.00, 1, '2020-04-18 19:26:15', '2020-04-18 19:26:15'),
(19, 'TK1245 - Gọng kính nhựa, chất liệu TR90 ()', 'TK1245', 320000.00, 1, '2020-04-18 19:28:59', '2020-04-18 19:28:59'),
(20, 'R3332 - Gọng kính Roxana TR90 (47-18-130)', 'R3332', 350000.00, 1, '2020-04-23 03:45:22', '2020-05-03 18:05:39'),
(22, 'ChemiU2CU10 - Tròng kính Chemi 1.60, MR8 (Cận dưới 10)', 'ChemiU2CU10', 225000.00, 1, '2020-04-23 09:10:36', '2020-04-23 09:10:36'),
(24, 'ChemiU2VU10 - Tròng kính Chemi 1.60, MR8 (Viễn dưới 10)', 'ChemiU2VU10', 225000.00, 1, '2020-04-23 09:13:17', '2020-04-23 09:13:17'),
(26, 'GOL2212 - Gọng kính GOL, Ultem - Titanium (51-18-136)', 'GOL2212', 700000.00, 1, '2020-04-23 09:18:28', '2020-04-30 01:20:58'),
(27, 'GOL2215 - Gọng kính GOL, Ultem - Titanium (53-18-138)', 'GOL2215', 750000.00, 1, '2020-04-24 22:01:50', '2020-04-30 01:22:28'),
(28, 'R3171 - Gọng kính nhựa, chất liệu TR90 (50-16-140)', 'R3171', 350000.00, 1, '2020-04-24 22:12:52', '2020-04-24 22:12:52'),
(29, 'DTLKTM - Đo thị lực & Kiểm tra mắt', 'DTLKTM', 100000.00, 1, '2020-04-26 03:39:15', '2020-04-26 03:41:42'),
(30, 'GOL8039 - Gọng kính GOL nửa khung, siêu nhẹ, Titanium (52-17-145)', 'GOL8039', 750000.00, 1, '2020-04-30 01:23:38', '2020-04-30 01:23:38'),
(31, 'GOL8039 - Gọng kính GOL siêu nhẹ, Titanium (55-17-142)', 'GOL8039', 750000.00, 1, '2020-04-30 01:24:24', '2020-04-30 01:24:24'),
(32, 'Silicon - Phụ kiện đôi Silicon giữ khung kính', 'Silicon', 20000.00, 1, '2020-04-30 01:25:24', '2020-04-30 01:25:24'),
(33, 'GOL9107 - Gọng kính GOL, TR90 (53-17-142)', 'GOL9107', 350000.00, 1, '2020-04-30 01:27:00', '2020-04-30 01:27:00'),
(34, 'GOL68007 - Gọng kính GOL, TR90 (50-17-142)', 'GOL68007', 350000.00, 1, '2020-04-30 01:28:18', '2020-04-30 01:28:18'),
(35, 'GOL68006 - Gọng kính GOL, TR90 (53-17-142)', 'GOL68006', 350000.00, 1, '2020-04-30 01:29:05', '2020-04-30 01:29:05'),
(36, 'GOL68003 - Gọng kính GOL, TR90 (51-18-142)', 'GOL68003', 350000.00, 1, '2020-04-30 01:30:05', '2020-04-30 01:30:05'),
(37, 'GOL98001 - Gọng kính GOL, TR90 (51-18-142)', 'GOL98001', 350000.00, 1, '2020-04-30 01:33:41', '2020-04-30 01:33:41'),
(38, 'GOL98002 - Gọng kính GOL, TR90 (52-18-142)', 'GOL98002', 350000.00, 1, '2020-04-30 01:34:30', '2020-04-30 01:34:30'),
(39, 'GOL98003 - Gọng kính GOL, TR90 (51-18-142)', 'GOL98003', 350000.00, 1, '2020-04-30 01:35:03', '2020-04-30 01:35:03'),
(40, 'GOL1707 - Gọng kính GOL, Ultem (52-17-142)', 'GOL1707', 400000.00, 1, '2020-04-30 01:35:52', '2020-04-30 01:35:52'),
(41, 'GOL1716 - Gọng kính GOL, Ultem (49-17-142)', 'GOL1716', 400000.00, 1, '2020-04-30 01:36:30', '2020-04-30 01:36:30'),
(42, 'GOL1715 - Gọng kính GOL, Ultem (53-18-142)', 'GOL1715', 400000.00, 1, '2020-04-30 01:37:04', '2020-04-30 01:37:04'),
(43, 'GOL8008 - Gọng kính GOL, Ultem (50-17-142)', 'GOL8008', 350000.00, 1, '2020-04-30 01:37:58', '2020-05-01 05:45:04'),
(44, 'GOL8007 - Gọng kính GOL, Ultem (53-17-142)', 'GOL8007', 350000.00, 1, '2020-04-30 01:38:25', '2020-05-01 05:45:23'),
(45, 'FF0214 - Gọng kính Fendi, TR90 (50-18-142)', 'FF0214', 360000.00, 1, '2020-05-04 07:26:18', '2020-05-04 07:26:18'),
(46, 'GOL3147 - Gọng kính nhựa trong (53-17-140)', 'GOL3147', 300000.00, 1, '2020-05-07 05:12:55', '2020-05-07 05:18:31'),
(47, 'Ecovis156PLANO  - Tròng kính Ecovis 1.56, chất liệu CR39 (Không Số)', 'Ecovis156PLANO', 60000.00, 1, '2020-05-07 06:48:24', '2020-05-08 21:25:56'),
(48, 'R3201- Gọng kính Roxana TR90 (51-17-144)', 'R3201', 350000.00, 1, '2020-05-08 19:42:15', '2020-05-08 19:42:15'),
(49, 'Ecovis156VU10 - Tròng kính Ecovis 1.56, chất liệu CR39 (viễn dưới 10)', 'Ecovis156VU10', 60000.00, 1, '2020-05-08 19:57:55', '2020-05-08 21:36:21'),
(50, 'K1244 - Gọng kính nhựa, chất liệu TR90 (52-17)', 'K1244', 320000.00, 1, '2020-05-08 20:05:27', '2020-05-09 04:45:29'),
(51, 'R3303 - Gọng kính nhựa, chất liệu TR90 (50-18-138)', 'R3303', 380000.00, 1, '2020-05-08 20:21:47', '2020-05-08 20:21:47'),
(52, 'Gọng Thể Thao', 'Gọng Thể Thao', 450000.00, 1, '2020-05-08 20:33:49', '2020-05-08 20:33:49'),
(53, 'ChemiU2PLANO - Tròng kính Chemi 1.60, MR8 (Không Số)', 'ChemiU2PLANO', 225000.00, 1, '2020-05-08 21:22:04', '2020-05-08 21:22:04'),
(54, 'Ecovis156CO10 - Tròng kính Ecovis 1.56, chất liệu CR39 (cận trên 10)', 'Ecovis156CO10', 100000.00, 1, '2020-05-08 21:24:51', '2020-05-08 21:35:12'),
(55, 'Ecovis156CU10 - Tròng kính Ecovis 1.56, chất liệu CR39 (cận dưới 10)', 'Ecovis156CU10', 60000.00, 1, '2020-05-08 21:43:51', '2020-05-08 21:43:51'),
(56, 'GOL6231 - Gọng kính GOL, TR90 (49-18-143)', 'GOL6231', 500000.00, 1, '2020-05-09 03:15:39', '2020-05-09 03:15:39'),
(57, 'GOLTT - Kính Thời Trang Beeberty', 'GOLTT', 550000.00, 1, '2020-05-09 03:29:37', '2020-05-09 03:29:37'),
(58, 'ChemiU2LO2 - Tròng kính Chemi 1.67, chất liệu MR8 (Loạn trên 2)', 'ChemiU2LO2', 500000.00, 1, '2020-05-09 03:50:10', '2020-05-09 03:50:10'),
(59, 'GOL96030 - Gọng kính GOL, TR90 (50-19-141)', 'GOL96030', 350000.00, 1, '2020-05-09 04:00:08', '2020-05-09 04:00:08'),
(60, 'K1212 - Gọng kính nhựa, chất liệu TR90 (46-17)', 'K1212', 320000.00, 1, '2020-05-09 04:46:57', '2020-05-09 04:46:57'),
(61, 'WaterClear - Nước rửa kính', 'WaterClear', 15000.00, 1, '2020-05-11 05:59:23', '2020-05-11 05:59:23'),
(62, 'GOL8023 - Gọng kính GOL, Titanium (55-17-142)', 'GOL8023', 800000.00, 1, '2020-05-14 01:19:17', '2020-05-14 01:19:17'),
(63, 'GOL8039 - Gọng kính nửa khung GOL, Titanium (52-17-145)', 'GOL8039', 800000.00, 1, '2020-05-14 01:19:41', '2020-05-14 01:19:41'),
(64, 'DVMLK - Dịch vụ mài lắp kính', 'DVMLK', 50000.00, 1, '2020-05-14 05:22:40', '2020-05-14 05:22:40'),
(65, 'R6034 - Gọng kính Roxana, Ultem ( 54-18-140)', 'R6034', 700000.00, 1, '2020-05-14 05:23:40', '2020-05-14 05:23:40'),
(66, 'R6037 - Gọng kính Roxana, Ultem ( 51-18-140)', 'R6037', 700000.00, 1, '2020-05-14 05:24:35', '2020-05-14 05:24:35'),
(67, 'R6038 - Gọng kính Roxana, Ultem ( 52-18-140)', 'R6038', 700000.00, 1, '2020-05-14 05:25:17', '2020-05-14 05:25:17'),
(68, 'R3155 - Gọng kính Roxana, Tr90 ( 52-18-138)', 'R3155', 350000.00, 1, '2020-05-14 05:26:13', '2020-05-14 05:26:13'),
(69, 'R3101 - Gọng kính Roxana, Tr90 ( 53-18-138)', 'R3101', 350000.00, 1, '2020-05-14 05:27:24', '2020-05-14 05:27:24'),
(70, 'R3149 - Gọng kính Roxana, Tr90 ( 49-18-138)', 'R3149', 350000.00, 1, '2020-05-14 05:28:05', '2020-05-14 05:28:05'),
(71, 'R3203 - Gọng kính Roxana, Tr90 ( 52-17-145)', 'R3203', 420000.00, 1, '2020-05-14 05:29:09', '2020-05-14 05:29:09'),
(72, 'K1159 - Gọng kính T-KPOP, Tr90 (51-19-138)', 'K1159', 420000.00, 1, '2020-05-14 05:30:18', '2020-05-14 05:30:18'),
(73, 'K1163 - Gọng kính T-KPOP, Tr90 (51-18-138)', 'K1163', 420000.00, 1, '2020-05-14 05:31:01', '2020-05-14 05:31:01'),
(74, 'K115C - Gọng kính T-KPOP, Tr90 (51-18-137)', 'K115C', 320000.00, 1, '2020-05-14 05:32:14', '2020-05-14 05:32:14'),
(75, 'K1235 - Gọng kính T-KPOP, Tr90 (52-18-138)', 'K1235', 320000.00, 1, '2020-05-14 05:33:10', '2020-05-14 05:33:10'),
(76, 'K3067 - Gọng kính T-KPOP, Tr90 (51-19-149)', 'K3067', 420000.00, 1, '2020-05-14 05:34:11', '2020-05-14 05:34:11'),
(77, 'K118C - Gọng kính T-KPOP, Tr90 (52-18-146)', 'K118C', 420000.00, 1, '2020-05-14 05:34:50', '2020-05-14 05:34:50'),
(78, 'R3319 - Gọng kính Roxana, Tr90 ( 52-17-138)', 'R3319', 350000.00, 1, '2020-05-14 05:35:44', '2020-05-14 05:35:44'),
(79, 'R3314 - Gọng kính Roxana, Tr90 ( 51-18-138)', 'R3314', 380000.00, 1, '2020-05-14 05:36:24', '2020-05-14 05:36:24'),
(80, 'R3180 - Gọng kính Roxana, Tr90 ( 51-16-140)', 'R3180', 350000.00, 1, '2020-05-14 05:37:49', '2020-05-14 05:37:49'),
(81, 'R3188 - Gọng kính Roxana, Tr90 ( 50-19-140)', 'R3188', 350000.00, 1, '2020-05-14 05:48:46', '2020-05-14 05:48:46'),
(82, 'R3306 - Gọng kính Roxana, Tr90 (52-18-138)', 'R3306', 380000.00, 1, '2020-05-14 05:50:01', '2020-05-14 05:50:01'),
(83, 'R3305 - Gọng kính Roxana, Tr90 (51-18-138)', 'R3305', 380000.00, 1, '2020-05-14 05:50:38', '2020-05-14 05:50:38'),
(84, 'K1160 - Gọng kính T-KPOP, Tr90 (50-21137)', 'K1160', 420000.00, 1, '2020-05-14 05:51:18', '2020-05-14 05:51:18'),
(85, 'R3081 - Gọng kính Roxana, Tr90 (48-17-138)', 'R3081', 350000.00, 1, '2020-05-14 05:52:29', '2020-05-14 05:52:29'),
(86, 'K1138 - Gọng kính T-KPOP, Tr90 (48-16-137)', 'K1138', 420000.00, 1, '2020-05-14 06:10:36', '2020-05-14 06:10:36'),
(87, 'R3085 - Gọng kính Roxana, Tr90 (48-17-138)', 'R3085', 350000.00, 1, '2020-05-14 06:11:18', '2020-05-14 06:11:18'),
(88, 'K1214 - Gọng kính T-KPOP, Tr90 (46-17-137)', 'K1214', 320000.00, 1, '2020-05-14 06:12:22', '2020-05-14 06:12:22'),
(89, 'K1140 - Gọng kính T-KPOP, Tr90 (48-18-137)', 'K1140', 420000.00, 1, '2020-05-14 06:13:01', '2020-05-14 06:13:01'),
(90, 'R3073 - Gọng kính Roxana, Tr90 (45-18-138)', 'R3073', 350000.00, 1, '2020-05-14 06:13:38', '2020-05-14 06:13:38'),
(91, 'K1213 - Gọng kính T-KPOP, Tr90 (48-17-137)', 'K1213', 320000.00, 1, '2020-05-14 06:14:22', '2020-05-14 06:14:22'),
(92, 'GOLD37 - Gọng kính GOL, TR90 (56-16-143)', 'GOLD37', 350000.00, 1, '2020-05-17 08:42:05', '2020-05-17 08:42:05'),
(107, 'B19012 - Gọng kính Blino, Titanium (51-19-143)', 'B19012', 7200001.00, 1, '2020-05-23 07:45:45', '2020-05-23 07:45:45'),
(108, 'ChemiU2CO10 - Tròng kính Chemi 1.60, MR8 (Cận trên 10)', 'ChemiU2CO10', 2750001.00, 1, '2020-05-23 07:45:45', '2020-05-23 07:45:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_hes`
--

CREATE TABLE `lien_hes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_16_150955_create_webinfos_table', 1),
(4, '2019_07_16_164609_create_pages_table', 1),
(5, '2019_07_17_012951_create_banners_table', 1),
(6, '2019_07_17_023731_create_seos_table', 1),
(7, '2019_07_17_025524_create_images_table', 1),
(8, '2019_07_17_032406_create_icons_table', 1),
(9, '2019_07_17_033903_create_tags_table', 1),
(10, '2019_07_17_034949_create_categories_table', 1),
(11, '2019_07_17_035809_create_posts_table', 1),
(12, '2019_07_17_071036_create_albums_table', 1),
(13, '2019_07_18_015156_create_sections_table', 1),
(14, '2019_07_18_025101_create_contents_table', 1),
(15, '2019_12_30_012621_create_admins_table', 2),
(16, '2019_12_30_040141_create_products_table', 3),
(17, '2019_12_30_064750_create_colors_table', 4),
(18, '2020_01_04_005704_create_contacts_table', 5),
(19, '2020_01_04_014534_create_lien_hes_table', 6),
(20, '2020_01_04_020959_create_orders_table', 7),
(21, '2020_01_04_043035_create_giohangs_table', 8),
(22, '2020_01_04_043334_create_donhangs_table', 9),
(23, '2020_01_05_034226_create_khambenhs_table', 10),
(24, '2020_01_05_035703_create_benhans_table', 11),
(25, '2020_01_05_040545_create_donhangkhams_table', 12),
(26, '2020_01_06_072947_create_types_table', 13),
(27, '2020_03_19_093044_add_description_to_products_table', 14),
(28, '2020_03_19_134354_create_banks_table', 14),
(29, '2020_03_19_140812_add_stk_to_donhang_table', 14),
(30, '2020_03_21_142408_create_co_sos_table', 15),
(31, '2020_03_22_044517_add_quantity_to_colors', 15),
(32, '2020_03_25_093847_add_masanpham_to_sanphamkham_table', 16),
(33, '2020_04_05_104916_add_tongtien_to_benhans_table', 17),
(34, '2020_04_27_132235_create_image_products_table', 18),
(35, '2020_04_29_145158_change_colors_table', 19),
(36, '2020_05_01_163118_add_tongthanhtien_to_benhans_table', 20),
(38, '2020_05_20_082727_add_product_id_to_giohangs_table', 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coso` int(11) DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gio` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `name`, `coso`, `phone`, `email`, `gio`, `ngay`, `address`, `content`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Hoàng Thị Phương Thúy', 2, '0915959980', 'thuyhtp83@gmail.com', '18:00', '03/04/2020', 'Số 8, nghách 114/56, Thạch Cầu, Long Biên, Hà Nội', 'Nhìn mờ, đọc khoảng cách gần không thấy chữ', 0, '2020-04-02 02:53:47', '2020-04-02 02:53:47'),
(3, 'Nguyễn Tùng Linh', 2, '0919160287', 'linhth@tanhoangminh.com.vn', '18:30', '23/04/2020', 'Hà Đông - Hà Nội', 'Khám cận', 0, '2020-04-22 20:45:37', '2020-04-22 20:45:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `is_display` int(11) NOT NULL DEFAULT '1',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des_s` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `des_s_en` text COLLATE utf8mb4_unicode_ci,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_des` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `slug`, `name`, `type`, `is_display`, `image`, `des_s`, `content`, `content_en`, `des_s_en`, `name_en`, `meta_des`, `meta_key`, `meta_title`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(2, 've-chung-toi', 'VỀ CHÚNG TÔI', 2, 1, 'FILES/source/logo-images.jpg', 'VỀ CHÚNG TÔI', '<p><strong>Tổng quan</strong></p>\r\n\r\n<p style=\"text-align:justify\"><strong>&nbsp; &nbsp; &nbsp;K&iacute;nh mắt Ngọc Minh - NgocMinh Optic&nbsp;</strong>l&agrave; một chuỗi&nbsp;hệ thống Ph&ograve;ng kh&aacute;m mắt <strong>cận, loạn, viễn</strong>&nbsp;kết hợp với&nbsp;Showroom k&iacute;nh thuốc&nbsp;ch&iacute;nh h&atilde;ng H&agrave;n Quốc như God Of Light - GOL eyewear, Myung&nbsp;eyewear, L&amp;M&nbsp;eyewear, Chemi... Với nhiều năm kinh nghiệm &amp;&nbsp;uy t&iacute;n Ngọc Minh đ&atilde; c&oacute; c&aacute;c chi nh&aacute;nh tại c&aacute;c th&agrave;nh phố lớn như:&nbsp;H&agrave; Nội, S&agrave;i G&ograve;n, Đ&agrave; Nẵng, Nha&nbsp;Trang.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp;Ở Việt Nam c&aacute;c Ph&ograve;ng kh&aacute;m chuy&ecirc;n khoa mắt&nbsp;chỉ đầu tư v&agrave;o chuy&ecirc;n m&ocirc;n v&agrave; coi kh&aacute;ch h&agrave;ng l&agrave; bệnh nh&acirc;n v&igrave; vậy&nbsp;chưa ch&uacute; trọng đến việc đầu tư về&nbsp;c&ocirc;ng nghệ&nbsp;ch&iacute;nh x&aacute;c trong kỹ thuật m&agrave;i lắp k&iacute;nh,&nbsp;quy tr&igrave;nh dịch vụ;&nbsp;C&ograve;n c&aacute;c Showroom k&iacute;nh mắt&nbsp;ri&ecirc;ng lẻ&nbsp;kh&ocirc;ng c&oacute;&nbsp;đội ngũ&nbsp;chuy&ecirc;n khoa mắt, phụ thuộc to&agrave;n bộ v&agrave;o m&aacute;y m&oacute;c hoặc&nbsp;chỉ ch&uacute; trọng v&agrave;o mặt h&agrave;ng k&iacute;nh&nbsp;thời trang.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp;Trong bối cảnh đ&oacute; với triết l&yacute; v&agrave; tầm nh&igrave;n s&aacute;ng tạo, ch&uacute;ng t&ocirc;i x&acirc;y dựng&nbsp;chuỗi m&ocirc; h&igrave;nh <strong>k&iacute;nh thuốc&nbsp;Ngọc Minh</strong> với t&ocirc;n chỉ&nbsp;&quot;<strong>Thương hiệu từ tr&aacute;i tim</strong>&quot; l&agrave; sự kết hợp giữa kinh nghiệm của c&aacute;c y, b&aacute;c sĩ đầu ng&agrave;nh trong chuy&ecirc;n khoa mắt&nbsp;tại Việt Nam&nbsp;v&agrave; kỹ thuật m&agrave;i lắp k&iacute;nh thuốc&nbsp;theo c&ocirc;ng nghệ hiện đại của H&agrave;n Quốc kết hợp với Hoa Kỳ mang lại sự tiện nghi, an t&acirc;m, thoải m&aacute;i đảm bảo tốt nhất về chất lượng chuy&ecirc;n m&ocirc;n, lẫn dịch vụ chăm s&oacute;c&nbsp;cho qu&yacute;&nbsp;kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><strong>Tầm nh&igrave;n</strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp;Đ&ocirc;i mắt l&agrave; hạt ngọc, K&iacute;nh mắt Ngọc Minh mong muốn mang lại nguồn s&aacute;ng, sự r&otilde; n&eacute;t, tinh tường cho đ&ocirc;i mắt của qu&yacute; kh&aacute;ch h&agrave;ng khi &aacute;p dụng c&aacute;c c&ocirc;ng nghệ ti&ecirc;n tiến tr&ecirc;n thế giới kết hợp với kinh nghiệm v&agrave;ng của c&aacute;c chuy&ecirc;n gia đầu ng&agrave;nh về thị lực&nbsp;thu hẹp khoảng c&aacute;ch ứng dụng c&ocirc;ng nghệ v&agrave;o&nbsp;y học của Việt Nam so với thế giới.</p>\r\n\r\n<p><strong>Sứ mệnh</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Li&ecirc;n tục ph&aacute;t triển kh&ocirc;ng ngừng, ứng dụng&nbsp;c&ocirc;ng nghệ ti&ecirc;n tiến c&oacute; độ ch&iacute;nh x&aacute;c cao&nbsp;v&agrave; ph&aacute;t triển c&aacute;c sản phẩm tối ưu cho mắt.</p>\r\n\r\n<p><strong>Lịch sử ph&aacute;t triển</strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp;K&iacute;nh mắt Ngọc Minh&nbsp;hiện tại vẫn thuộc sự điều h&agrave;nh v&agrave; kiểm so&aacute;t bởi c&aacute;c cổ đ&ocirc;ng s&aacute;ng lập, vốn l&agrave; những người bạn th&acirc;n cho đến hiện nay.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>Trụ sở ch&iacute;nh - Văn ph&ograve;ng&nbsp;miền bắc:</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Số 83, Đường B&aacute;t Khối, Phường Long Bi&ecirc;n, Quận Long Bi&ecirc;n, TP. H&agrave; Nội.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>Tổng kho H&agrave; Nội:</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Số 5, Phố Ng&ocirc; Tất Tố, Văn Miếu, Đống Đa, H&agrave; Nội.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>Chi nh&aacute;nh HCM:</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Số 280, Nam Kỳ Khởi Nghĩa, Quận 1, Th&agrave;nh Phố Hồ Ch&iacute; Minh.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>Chi nh&aacute;nh Đ&agrave; Nẵng:</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Số 9, Phố Trần Qu&yacute; C&aacute;p, Thạch Thang, Hải Ch&acirc;u, Đ&agrave; Nẵng.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>Chi nh&aacute;nh Nha Trang:</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Số 9, Mai Xu&acirc;n Thưởng, Vĩnh Hải, Th&agrave;nh phố Nha Trang.</p>\r\n\r\n<p><strong>8 ĐIỀU ĐẶC BIỆT CHỈ C&Oacute; TẠI K&Iacute;NH MẮT NGỌC MINH</strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp;&nbsp;<strong>1. Về chuy&ecirc;n m&ocirc;n:&nbsp;</strong>đội ngũ tư vấn l&agrave; c&aacute;c chuy&ecirc;n gia đầu ng&agrave;nh trong chuy&ecirc;n khoa mắt được đ&agrave;o tạo tại Bệnh viện Mắt TW đảm bảo chất lượng đo kh&aacute;m thị lực chuẩn x&aacute;c nhất.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp;&nbsp; &nbsp;<strong>2. Về sản phẩm:</strong>&nbsp;ti&ecirc;n phong trong việc cung cấp c&aacute;c sản phẩm gọng k&iacute;nh, tr&ograve;ng k&iacute;nh ch&iacute;nh h&atilde;ng H&agrave;n Quốc c&oacute;&nbsp;chất lượng tốt nhất cho thị lực&nbsp;tr&ecirc;n thị trường hiện nay.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp;<strong>3. Về ch&iacute;nh s&aacute;ch bảo h&agrave;nh:</strong>&nbsp;nhờ kiểm định chặt chẽ chất lượng sản phẩm (gọng k&iacute;nh v&agrave; tr&ograve;ng&nbsp;k&iacute;nh), ch&uacute;ng t&ocirc;i &aacute;p dụng ch&iacute;nh s&aacute;ch 1 đổi 1 sản phẩm trong v&ograve;ng 7 ng&agrave;y đầu sử dụng&nbsp;v&agrave; bảo h&agrave;nh 06 th&aacute;ng&nbsp;với mọi lỗi sản xuất.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp;<strong>4. Về chăm s&oacute;c hậu m&atilde;i:</strong>&nbsp;ch&uacute;ng t&ocirc;i hỗ trợ sửa chữa kh&ocirc;ng t&iacute;nh ph&iacute;&nbsp;(thay ốc, thay đệm mũi, nắn chỉnh c&agrave;ng k&iacute;nh,&hellip;) v&agrave; vệ sinh đ&aacute;nh b&oacute;ng trọn đời sản phẩm, hỗ trợ gi&aacute; l&ecirc;n tới 30% gi&aacute; trị sản phẩm gọng k&iacute;nh nếu bị g&atilde;y do kh&ocirc;ng cố &yacute;.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp;<strong>5. Về trải nghiệm dịch vụ</strong>:&nbsp;kh&ocirc;ng gian showroom được thiết kế hợp l&yacute;, phục vụ đồ uống khi chờ đợi, nh&acirc;n vi&ecirc;n tư vấn được đ&agrave;o tạo v&agrave; quản l&yacute; chặt chẽ.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp;<strong>6. Minh bạch tuyệt đối:</strong>&nbsp;c&ocirc;ng khai to&agrave;n bộ gi&aacute; v&agrave; th&ocirc;ng tin về sản phẩm,&nbsp;kh&aacute;ch h&agrave;ng được gi&aacute;m s&aacute;t to&agrave;n bộ qu&aacute; tr&igrave;nh m&agrave;i lắp k&iacute;nh.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp;<strong>7. Kết quả kh&aacute;m:</strong>&nbsp;kết quả kh&aacute;m, kiểm tra thị lực&nbsp;của qu&yacute; kh&aacute;ch h&agrave;ng sẽ được Ngọc Minh&nbsp;gửi điện tử đến Email, Zalo, Viber theo y&ecirc;u cầu của qu&yacute; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp;<strong>8. Quy tr&igrave;nh kỹ thuật m&agrave;i lắp:</strong>&nbsp;sản phẩm sau khi m&agrave;i lắp phải trải qua chuỗi&nbsp;quy tr&igrave;nh&nbsp;thực hiện 11 bước l&agrave; phương ph&aacute;p kỹ thuật cao kết hợp giữa c&ocirc;ng nghệ của H&agrave;n Quốc v&agrave; Hoa Kỳ.</p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n&nbsp; &nbsp; &nbsp;<strong>Kh&ocirc;ng chỉ đơn thuần l&agrave; một địa chỉ uy t&iacute;n&nbsp;cung cấp c&aacute;c sản phẩm về gọng k&iacute;nh, tr&ograve;ng k&iacute;nh ch&iacute;nh h&atilde;ng của H&agrave;n Quốc v&agrave; hệ thống&nbsp;b&aacute;n bu&ocirc;n, b&aacute;n lẻ gi&aacute; cả hợp l&yacute;.&nbsp;K&iacute;nh Mắt Ngọc Minh mong muốn trở th&agrave;nh nơi m&agrave; mọi kh&aacute;ch h&agrave;ng c&oacute; thể đặt trọn niềm tin v&agrave; trao gửi đ&ocirc;i mắt qu&yacute; gi&aacute; của m&igrave;nh để được chăm s&oacute;c v&agrave; bảo vệ.</strong></p>', '<p><strong>Overview</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;NgocMinh Optic eyewear is a chain of near-sight, chaos and tele-clinic system combined with genuine Korean prescription glasses showroom such as God Of Light - GOL eyewear, Myung eyewear, L&amp;M eyewear, Chemi ... With many years of experience &amp; reputation Ngoc Minh has branches in major cities such as Hanoi, Saigon, Da Nang and Nha Trang.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;In Vietnam, ophthalmological clinics only invest in expertise and treat customers as patients, so they have not focused on investing in precision technology in glazing techniques and service processes; The individual eyewear showrooms do not have a team of eye specialists, depending entirely on machinery or only focusing on fashion glasses.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;In this context, with the philosophy and creative vision, we build a chain of models of Ngoc Minh prescription glasses with the principle &quot;Brand from the heart&quot; is a combination of experience of leading medical doctors. Ophthalmology in Vietnam and the technology of using prescription glass-glazing technology of South Korea combined with the United States bring comfort, peace of mind and comfort to ensure the best in professional quality, and service. take care of customers.</p>\r\n\r\n<p><strong>Vision</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;The eyes are pearl beads, Ngoc Minh Eyeglasses wishes to bring the light source, clarity and sophistication to customers&#39; eyes when applying advanced technologies in the world combined with the golden experience of professionals. Leading in the field of vision to narrow the gap of application of technology into medicine of Vietnam compared to the world.</p>\r\n\r\n<p><strong>Mission</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Continually developing, applying advanced technology with high accuracy and developing optimal products for the eyes.</p>\r\n\r\n<p><strong>Development history</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Ngoc Minh Optic currently still controlled and controlled by the founding shareholders, who are close friends to this day.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<strong>Head office - Northern Office:</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;No. 83, Bat Block Street, Long Bien Ward, Long Bien District, Hanoi.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<strong>Hanoi Warehouse:</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;No. 5, Ngo Tat To Street, Van Mieu Ward, Dong Da District, Hanoi.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<strong>HCM Branch:</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;No. 280, Nam Ky Khoi Nghia, District 1, Ho Chi Minh City.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<strong>Da Nang branch:</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;No. 9, Pho Tran Quy Cap, Thach Thang, Hai Chau, Da Nang.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<strong>Nha Trang Branch:</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;No. 9, Mai Xuan Thuong, Vinh Hai, Nha Trang City.</p>\r\n\r\n<p><strong>8 SPECIAL THINGS ONLY AVAILABLE IN NGOC MINH EYES</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;<strong>1. Professionally:</strong> The consultant team is the leading experts in ophthalmology trained at Central Eye Hospital to ensure the most accurate vision examination quality.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;<strong>2. Regarding products:</strong> pioneering in providing products of frames and genuine Korean lenses with the best quality for eyesight in the market today.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;<strong>3. Regarding warranty policy:</strong> thanks to strict inspection of product quality (frames and lenses), we apply the 1-to-1 policy within the first 7 days of use and a 06-month warranty on all products. manufacturing error.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;<strong>4. About after-sales care:</strong> we support no-charge repairs (replacing screws, changing the nose pads, adjusting the glass, ...) and polishing the whole product, supporting the price up to 30% of the price. treat eyeglass frames if broken unintentionally.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;<strong>5. About service experience:</strong> showroom space is reasonably designed, serving drinks while waiting, counselors are trained and managed closely.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;<strong>6. Absolute transparency:</strong> publicizing all prices and product information, customers are supervised the whole process of grinding and glazing.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;<strong>7. Exam results:</strong> The results of the examination and vision test of customers will be sent to Email, Zalo, Viber by Ngoc Minh at the request of customers.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;<strong>8. Technical process of grinding and grinding:</strong> After grinding, the product must go through an 11-step sequence of high-tech methods combining Korean and American technologies.</p>\r\n\r\n<p><br />\r\n<strong>Not just a reputable address providing products about frames, genuine Korean lenses and wholesale and retail systems at reasonable prices. Ngoc Minh Eyeglasses wishes to become a place where all customers can put their trust and give their precious eyes to care and protection.</strong></p>', 'ABOUT US', NULL, NULL, NULL, NULL, 1, 1, 1, '2020-01-06 20:33:50', '2020-05-13 19:52:07'),
(4, 'chat-lieu-cua-gong-kinh-la-gi', 'CHẤT LIỆU CỦA GỌNG KÍNH LÀ GÌ?', 1, 1, 'FILES/source/Calogue/04-GOL2212/2212UltemTitaniumT_Font.png', 'Hầu hết mọi người khi chọn gọng kính đều quan tâm đến giá cả, phong cách và gu thời trang hiện tại. Nhưng đối với gọng kính thuốc còn những yếu tố khác mà nhất định bạn phải cân nhắc, chẳng hạn như khung bền nhẹ, linh hoạt và chống ăn mòn như thế nào, điều này phụ thuộc phần lớn vào chất liệu của gọng kính. Gọng kính thường có 2 chất liệu chính, được làm từ nhựa và kim loại. Mỗi loại chất liệu sẽ có những đặc trưng nổi bật khác nhau.', '<p>&nbsp; &nbsp; &nbsp;Hầu hết mọi người khi chọn gọng k&iacute;nh đều quan t&acirc;m đến gi&aacute; cả, phong c&aacute;ch v&agrave; gu thời trang hiện tại. Nhưng đối với gọng k&iacute;nh thuốc c&ograve;n những yếu tố kh&aacute;c m&agrave; nhất định bạn phải c&acirc;n nhắc, chẳng hạn như khung bền nhẹ, linh hoạt v&agrave; chống ăn m&ograve;n như thế n&agrave;o, điều n&agrave;y phụ thuộc phần lớn v&agrave;o chất liệu của gọng k&iacute;nh. Gọng k&iacute;nh thường c&oacute; 2 chất liệu ch&iacute;nh, được l&agrave;m từ nhựa v&agrave; kim loại. Mỗi loại chất liệu sẽ c&oacute; những đặc trưng nổi bật kh&aacute;c nhau.</p>\r\n\r\n<h3><strong>1.Chất liệu gọng k&iacute;nh nhựa</strong></h3>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Gọng nhựa l&agrave; sự lựa chọn phổ biến nhất ở mọi lứa tuổi, bởi v&igrave; ch&uacute;ng thường rẻ, trọng lượng nhẹ, nhiều m&agrave;u sắc v&agrave; kiểu d&aacute;ng đa dạng. Gọng nhựa bao gồm: TR90, Ultem, Injection, Acetate v&agrave; Otyl</p>\r\n\r\n<p><img alt=\"Gọng kính nhựa TR90\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/13-GOL68006/68006TR90B_Font.png\" style=\"width:500px\" /></p>\r\n\r\n<p><em>Gọng k&iacute;nh TR90 GOL</em></p>\r\n\r\n<ul>\r\n	<li><strong>TR90(N&ecirc;n chọn):</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;TR90 được sản xuất th&ocirc;ng qua c&ocirc;ng nghệ Thụy Sĩ như l&agrave; một vật liệu nhựa nhiệt dẻo cực kỳ bền, linh hoạt v&agrave; rất nhẹ, một loại chất liệu m&agrave; bạn chắc chắn sẽ y&ecirc;u th&iacute;ch, do ch&uacute;ng mềm dẻo, n&ecirc;n c&oacute; thể uốn cong để ph&ugrave; hợp tuyệt đối với khu&ocirc;n mặt của bạn. Sự linh hoạt n&agrave;y cũng l&agrave;m cho k&iacute;nh TR90 c&oacute; t&iacute;nh đ&agrave;n hồi cao. Bởi v&igrave; vật liệu mềm dẻo n&ecirc;n ch&uacute;ng &iacute;t c&oacute; khả năng bị vỡ hoặc uốn cong do va chạm. Nếu bạn l&agrave; &ldquo;chuy&ecirc;n gia&rdquo; rơi k&iacute;nh th&igrave; gọng nhựa TR90 l&agrave; sự lựa chọn tuyệt vời Cuối c&ugrave;ng, điều đ&aacute;ng ngạc nhi&ecirc;n nhất ch&iacute;nh l&agrave; k&iacute;nh TR90 v&ocirc; c&ugrave;ng nhẹ. Ngay cả với những kiểu to bản nhất bạn cũng sẽ kh&ocirc;ng cảm thấy sự nặng nề khi đeo k&iacute;nh trong thời gian d&agrave;i.</p>\r\n\r\n<p><img alt=\"Nhựa TR90\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/12Special_TR90.png\" style=\"width:500px\" /></p>\r\n\r\n<ul>\r\n	<li><strong>ULTEM(Khuy&ecirc;n d&ugrave;ng):</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Ultem l&agrave; vật liệu polyetherimide nhiệt dẻo v&ocirc; định h&igrave;nh (PEI) c&oacute; t&iacute;nh chất đặc biệt ho&agrave;n hảo cho c&aacute;c gọng k&iacute;nh. Hầu hết c&aacute;c gọng l&agrave;m từ chất liệu Ultem đều nhẹ, mỏng v&agrave; c&oacute; thiết kế rất sang so với c&aacute;c loại gọng nhựa kh&aacute;c. Tuy nhi&ecirc;n, điểm hạn chế duy nhất ở loại gọng n&agrave;y đ&oacute; l&agrave; dễ g&atilde;y, v&igrave; thế nếu đ&atilde; ưng gọng Ultem th&igrave; bạn n&ecirc;n cẩn thận với ch&uacute;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/04-GOL2212/2212UltemTitaniumT_Font.png\" style=\"height:306px; width:500px\" /></p>\r\n\r\n<ul>\r\n	<li><strong>INJECTION:</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Đ&acirc;y l&agrave; một loại vật liệu kh&aacute; mới với ưu điểm c&oacute; trọng lượng kh&aacute; nhẹ v&agrave; m&agrave;u sắc tươi s&aacute;ng, tuy nhi&ecirc;n v&igrave; gi&aacute; th&agrave;nh kh&aacute; rẻ n&ecirc;n loại gọng nhựa n&agrave;y cũng c&oacute; nhược điểm. L&agrave; loại nhựa đổ khu&ocirc;n, kh&ocirc;ng c&oacute; l&otilde;i kim loại khiến cho gọng kh&aacute; d&ograve;n v&agrave; dễ g&atilde;y, ngo&agrave;i ra loại gọng n&agrave;y c&oacute; h&igrave;nh d&aacute;ng cố định n&ecirc;n kh&ocirc;ng thể chỉnh sửa để ph&ugrave; hợp với từng gương mặt.</p>\r\n\r\n<ul>\r\n	<li><strong>ACETATE</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Với nhiều đặc trưng nổi bật, gọng Acetate được sử dụng ở hầu hết c&aacute;c thương hiệu mắt k&iacute;nh nổi tiếng. Được đệm lớp kim loại b&ecirc;n trong c&agrave;ng k&iacute;nh, gọng Acetate được biết đến với độ bền rất cao, dễ d&agrave;ng chỉnh sửa v&agrave; kh&ocirc;ng hề g&acirc;y dị ứng. Hơn nữa, gọng k&iacute;nh được l&agrave;m từ nhụa Acetate cũng được biến tấu với nhiều kiểu d&aacute;ng v&agrave; m&agrave;u sắc hợp thời trang.</p>\r\n\r\n<ul>\r\n	<li><strong>OPTYL</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Vật liệu n&agrave;y c&oacute; trọng lượng nhẹ hơn cả Acetate. Tuy nhi&ecirc;n, gọng được tạo bằng optyl kh&oacute; điều chỉnh hơn v&igrave; vật liệu kh&aacute; gi&ograve;n v&agrave; kh&ocirc;ng c&oacute; l&otilde;i kim loại. Gọng Optyl được ứng dụng v&agrave;o c&aacute;c mẫu k&iacute;nh cao cấp như Dior, Gucci&hellip;</p>\r\n\r\n<h3><strong>2.Chất liệu gọng k&iacute;nh kim loại</strong></h3>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Kim loại l&agrave; vật liệu phổ biến cho khung k&iacute;nh, đặc biệt l&agrave; cho c&aacute;c kiểu k&iacute;nh kh&ocirc;ng gọng v&agrave; nửa gọng. C&oacute; nhiều h&igrave;nh dạng, m&agrave;u sắc v&agrave; phong c&aacute;ch đa dạng từ trẻ trung đến sang trọng. Khung kim loại l&agrave; một ti&ecirc;u chuẩn cổ điển v&agrave; ph&ugrave; hợp cho mọi lối sống, từ ng&agrave;nh nghề s&aacute;ng tạo đến nh&acirc;n vi&ecirc;n văn ph&ograve;ng. Đ&acirc;y cũng l&agrave; lựa chọn tuyệt vời cho mọi lứa tuổi v&agrave; giới t&iacute;nh.</p>\r\n\r\n<p><img alt=\"Gọng kính kim loại\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/02-GOL8023/8023TitaniumG_Font.png\" style=\"width:500px\" /></p>\r\n\r\n<p>Gọng k&iacute;nh kim loại</p>\r\n\r\n<ul>\r\n	<li><strong>ALUMINUM</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Đặc t&iacute;nh của nh&ocirc;m l&agrave; rất nhẹ, độ mềm dẻo cao m&agrave; lại rất chắc chắn v&agrave; kh&ocirc;ng bị biến dạng n&ecirc;n dễ chế tạo những kiểu d&aacute;ng độc đ&aacute;o, b&ecirc;n cạnh đ&oacute; th&igrave; c&aacute;c sản phẩm từ nh&ocirc;m khi ho&agrave;n thiện rất đẹp. Do vậy nh&ocirc;m thường được những nh&agrave; thiết kế nổi tiếng ưa d&ugrave;ng. Nh&ocirc;m thường được trộn th&ecirc;m một số lượng nhỏ Silicon v&agrave; Sắt để tạo th&ecirc;m độ cứng c&aacute;p v&agrave; độ bền.</p>\r\n\r\n<ul>\r\n	<li><strong>STAINLESS STEEL</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Stainess Steel hay c&ograve;n gọi l&agrave; th&eacute;p kh&ocirc;ng gỉ, chủ yếu l&agrave; sắt pha trộn một hỗn hợp của niken, mangan v&agrave; cr&ocirc;m. Th&eacute;p kh&ocirc;ng gỉ l&agrave; rất b&oacute;ng, dễ c&aacute;ng mỏng v&agrave; chắc chắn với khả năng chống ăn m&ograve;n mạnh. Đặc trưng của gọng th&eacute;p kh&ocirc;ng gỉ l&agrave; trọng lượng nhẹ, kh&ocirc;ng g&acirc;y dị ứng v&agrave; dễ d&agrave;ng uốn cong. Hầu hết kh&ocirc;ng gỉ th&eacute;p c&oacute; chứa từ 10 đến 30% cr&ocirc;m, đ&aacute;p ứng tuyệt vời khả năng chống ăn m&ograve;n, m&agrave;i m&ograve;n v&agrave; chịu được nhiệt độ cao.</p>\r\n\r\n<ul>\r\n	<li><strong>TITANIUM</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Titanium l&agrave; một vật liệu khung kim loại phổ biến. N&oacute; l&agrave; vật liệu cao cấp được biết đến với độ bền, đ&agrave;n hồ v&agrave; cực nhẹ. Bao gồm 3 loại: Titanium, Titanium Z v&agrave; Excellence Titan. Đặc biệt, Titanium c&ograve;n c&oacute; đặc t&iacute;nh kh&ocirc;ng bị gỉ khiến n&oacute; trở th&agrave;nh vật liệu rất phổ biến cho gọng k&iacute;nh. Tuy nhi&ecirc;n, cũng v&igrave; những phẩm chất tuyệt vời đ&oacute; m&agrave; Titanium thường c&oacute; gi&aacute; đắt hơn c&aacute;c kim loại kh&aacute;c v&agrave; bị hạn chế trong phạm vi m&agrave;u sắc của n&oacute;. Khung gọng k&iacute;nh bằng titanium tuyệt đối kh&ocirc;ng g&acirc;y dị ứng. Rất nhiều nh&agrave; thiết kế c&aacute;c thương hiệu nổi tiếng đ&atilde; sử dụng titanium l&agrave;m gọng k&iacute;nh đặc trưng của họ, như Charmant Z (sử dụng Titanium Z), Line Art (sử dụng Excellence Titan)&hellip;</p>\r\n\r\n<p><img alt=\"Kính Charmant - Lineart\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/03-GOL8039/8039TitaniumS_Font.png\" style=\"width:500px\" /></p>\r\n\r\n<p style=\"text-align: right;\"><strong>Nguồn NgocMinh Optic</strong></p>', '<p>&nbsp; &nbsp; &nbsp;Hầu hết mọi người khi chọn gọng k&iacute;nh đều quan t&acirc;m đến gi&aacute; cả, phong c&aacute;ch v&agrave; gu thời trang hiện tại. Nhưng đối với gọng k&iacute;nh thuốc c&ograve;n những yếu tố kh&aacute;c m&agrave; nhất định bạn phải c&acirc;n nhắc, chẳng hạn như khung bền nhẹ, linh hoạt v&agrave; chống ăn m&ograve;n như thế n&agrave;o, điều n&agrave;y phụ thuộc phần lớn v&agrave;o chất liệu của gọng k&iacute;nh. Gọng k&iacute;nh thường c&oacute; 2 chất liệu ch&iacute;nh, được l&agrave;m từ nhựa v&agrave; kim loại. Mỗi loại chất liệu sẽ c&oacute; những đặc trưng nổi bật kh&aacute;c nhau.</p>\r\n\r\n<h3><strong>1.Chất liệu gọng k&iacute;nh nhựa</strong></h3>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Gọng nhựa l&agrave; sự lựa chọn phổ biến nhất ở mọi lứa tuổi, bởi v&igrave; ch&uacute;ng thường rẻ, trọng lượng nhẹ, nhiều m&agrave;u sắc v&agrave; kiểu d&aacute;ng đa dạng. Gọng nhựa bao gồm: TR90, Ultem, Injection, Acetate v&agrave; Otyl</p>\r\n\r\n<p><img alt=\"Gọng kính nhựa TR90\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/13-GOL68006/68006TR90B_Font.png\" style=\"width:500px\" /></p>\r\n\r\n<p><em>Gọng k&iacute;nh TR90 GOL</em></p>\r\n\r\n<ul>\r\n	<li><strong>TR90(N&ecirc;n chọn):</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;TR90 được sản xuất th&ocirc;ng qua c&ocirc;ng nghệ Thụy Sĩ như l&agrave; một vật liệu nhựa nhiệt dẻo cực kỳ bền, linh hoạt v&agrave; rất nhẹ, một loại chất liệu m&agrave; bạn chắc chắn sẽ y&ecirc;u th&iacute;ch, do ch&uacute;ng mềm dẻo, n&ecirc;n c&oacute; thể uốn cong để ph&ugrave; hợp tuyệt đối với khu&ocirc;n mặt của bạn. Sự linh hoạt n&agrave;y cũng l&agrave;m cho k&iacute;nh TR90 c&oacute; t&iacute;nh đ&agrave;n hồi cao. Bởi v&igrave; vật liệu mềm dẻo n&ecirc;n ch&uacute;ng &iacute;t c&oacute; khả năng bị vỡ hoặc uốn cong do va chạm. Nếu bạn l&agrave; &ldquo;chuy&ecirc;n gia&rdquo; rơi k&iacute;nh th&igrave; gọng nhựa TR90 l&agrave; sự lựa chọn tuyệt vời Cuối c&ugrave;ng, điều đ&aacute;ng ngạc nhi&ecirc;n nhất ch&iacute;nh l&agrave; k&iacute;nh TR90 v&ocirc; c&ugrave;ng nhẹ. Ngay cả với những kiểu to bản nhất bạn cũng sẽ kh&ocirc;ng cảm thấy sự nặng nề khi đeo k&iacute;nh trong thời gian d&agrave;i.</p>\r\n\r\n<p><img alt=\"Nhựa TR90\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/12Special_TR90.png\" style=\"width:500px\" /></p>\r\n\r\n<ul>\r\n	<li><strong>ULTEM(Khuy&ecirc;n d&ugrave;ng):</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Ultem l&agrave; vật liệu polyetherimide nhiệt dẻo v&ocirc; định h&igrave;nh (PEI) c&oacute; t&iacute;nh chất đặc biệt ho&agrave;n hảo cho c&aacute;c gọng k&iacute;nh. Hầu hết c&aacute;c gọng l&agrave;m từ chất liệu Ultem đều nhẹ, mỏng v&agrave; c&oacute; thiết kế rất sang so với c&aacute;c loại gọng nhựa kh&aacute;c. Tuy nhi&ecirc;n, điểm hạn chế duy nhất ở loại gọng n&agrave;y đ&oacute; l&agrave; dễ g&atilde;y, v&igrave; thế nếu đ&atilde; ưng gọng Ultem th&igrave; bạn n&ecirc;n cẩn thận với ch&uacute;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/04-GOL2212/2212UltemTitaniumT_Font.png\" style=\"height:306px; width:500px\" /></p>\r\n\r\n<ul>\r\n	<li><strong>INJECTION:</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Đ&acirc;y l&agrave; một loại vật liệu kh&aacute; mới với ưu điểm c&oacute; trọng lượng kh&aacute; nhẹ v&agrave; m&agrave;u sắc tươi s&aacute;ng, tuy nhi&ecirc;n v&igrave; gi&aacute; th&agrave;nh kh&aacute; rẻ n&ecirc;n loại gọng nhựa n&agrave;y cũng c&oacute; nhược điểm. L&agrave; loại nhựa đổ khu&ocirc;n, kh&ocirc;ng c&oacute; l&otilde;i kim loại khiến cho gọng kh&aacute; d&ograve;n v&agrave; dễ g&atilde;y, ngo&agrave;i ra loại gọng n&agrave;y c&oacute; h&igrave;nh d&aacute;ng cố định n&ecirc;n kh&ocirc;ng thể chỉnh sửa để ph&ugrave; hợp với từng gương mặt.</p>\r\n\r\n<ul>\r\n	<li><strong>ACETATE</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Với nhiều đặc trưng nổi bật, gọng Acetate được sử dụng ở hầu hết c&aacute;c thương hiệu mắt k&iacute;nh nổi tiếng. Được đệm lớp kim loại b&ecirc;n trong c&agrave;ng k&iacute;nh, gọng Acetate được biết đến với độ bền rất cao, dễ d&agrave;ng chỉnh sửa v&agrave; kh&ocirc;ng hề g&acirc;y dị ứng. Hơn nữa, gọng k&iacute;nh được l&agrave;m từ nhụa Acetate cũng được biến tấu với nhiều kiểu d&aacute;ng v&agrave; m&agrave;u sắc hợp thời trang.</p>\r\n\r\n<ul>\r\n	<li><strong>OPTYL</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Vật liệu n&agrave;y c&oacute; trọng lượng nhẹ hơn cả Acetate. Tuy nhi&ecirc;n, gọng được tạo bằng optyl kh&oacute; điều chỉnh hơn v&igrave; vật liệu kh&aacute; gi&ograve;n v&agrave; kh&ocirc;ng c&oacute; l&otilde;i kim loại. Gọng Optyl được ứng dụng v&agrave;o c&aacute;c mẫu k&iacute;nh cao cấp như Dior, Gucci&hellip;</p>\r\n\r\n<h3><strong>2.Chất liệu gọng k&iacute;nh kim loại</strong></h3>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Kim loại l&agrave; vật liệu phổ biến cho khung k&iacute;nh, đặc biệt l&agrave; cho c&aacute;c kiểu k&iacute;nh kh&ocirc;ng gọng v&agrave; nửa gọng. C&oacute; nhiều h&igrave;nh dạng, m&agrave;u sắc v&agrave; phong c&aacute;ch đa dạng từ trẻ trung đến sang trọng. Khung kim loại l&agrave; một ti&ecirc;u chuẩn cổ điển v&agrave; ph&ugrave; hợp cho mọi lối sống, từ ng&agrave;nh nghề s&aacute;ng tạo đến nh&acirc;n vi&ecirc;n văn ph&ograve;ng. Đ&acirc;y cũng l&agrave; lựa chọn tuyệt vời cho mọi lứa tuổi v&agrave; giới t&iacute;nh.</p>\r\n\r\n<p><img alt=\"Gọng kính kim loại\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/02-GOL8023/8023TitaniumG_Font.png\" style=\"width:500px\" /></p>\r\n\r\n<p>Gọng k&iacute;nh kim loại</p>\r\n\r\n<ul>\r\n	<li><strong>ALUMINUM</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Đặc t&iacute;nh của nh&ocirc;m l&agrave; rất nhẹ, độ mềm dẻo cao m&agrave; lại rất chắc chắn v&agrave; kh&ocirc;ng bị biến dạng n&ecirc;n dễ chế tạo những kiểu d&aacute;ng độc đ&aacute;o, b&ecirc;n cạnh đ&oacute; th&igrave; c&aacute;c sản phẩm từ nh&ocirc;m khi ho&agrave;n thiện rất đẹp. Do vậy nh&ocirc;m thường được những nh&agrave; thiết kế nổi tiếng ưa d&ugrave;ng. Nh&ocirc;m thường được trộn th&ecirc;m một số lượng nhỏ Silicon v&agrave; Sắt để tạo th&ecirc;m độ cứng c&aacute;p v&agrave; độ bền.</p>\r\n\r\n<ul>\r\n	<li><strong>STAINLESS STEEL</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Stainess Steel hay c&ograve;n gọi l&agrave; th&eacute;p kh&ocirc;ng gỉ, chủ yếu l&agrave; sắt pha trộn một hỗn hợp của niken, mangan v&agrave; cr&ocirc;m. Th&eacute;p kh&ocirc;ng gỉ l&agrave; rất b&oacute;ng, dễ c&aacute;ng mỏng v&agrave; chắc chắn với khả năng chống ăn m&ograve;n mạnh. Đặc trưng của gọng th&eacute;p kh&ocirc;ng gỉ l&agrave; trọng lượng nhẹ, kh&ocirc;ng g&acirc;y dị ứng v&agrave; dễ d&agrave;ng uốn cong. Hầu hết kh&ocirc;ng gỉ th&eacute;p c&oacute; chứa từ 10 đến 30% cr&ocirc;m, đ&aacute;p ứng tuyệt vời khả năng chống ăn m&ograve;n, m&agrave;i m&ograve;n v&agrave; chịu được nhiệt độ cao.</p>\r\n\r\n<ul>\r\n	<li><strong>TITANIUM</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Titanium l&agrave; một vật liệu khung kim loại phổ biến. N&oacute; l&agrave; vật liệu cao cấp được biết đến với độ bền, đ&agrave;n hồ v&agrave; cực nhẹ. Bao gồm 3 loại: Titanium, Titanium Z v&agrave; Excellence Titan. Đặc biệt, Titanium c&ograve;n c&oacute; đặc t&iacute;nh kh&ocirc;ng bị gỉ khiến n&oacute; trở th&agrave;nh vật liệu rất phổ biến cho gọng k&iacute;nh. Tuy nhi&ecirc;n, cũng v&igrave; những phẩm chất tuyệt vời đ&oacute; m&agrave; Titanium thường c&oacute; gi&aacute; đắt hơn c&aacute;c kim loại kh&aacute;c v&agrave; bị hạn chế trong phạm vi m&agrave;u sắc của n&oacute;. Khung gọng k&iacute;nh bằng titanium tuyệt đối kh&ocirc;ng g&acirc;y dị ứng. Rất nhiều nh&agrave; thiết kế c&aacute;c thương hiệu nổi tiếng đ&atilde; sử dụng titanium l&agrave;m gọng k&iacute;nh đặc trưng của họ, như Charmant Z (sử dụng Titanium Z), Line Art (sử dụng Excellence Titan)&hellip;</p>\r\n\r\n<p><img alt=\"Kính Charmant - Lineart\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/03-GOL8039/8039TitaniumS_Font.png\" style=\"width:500px\" /></p>\r\n\r\n<p style=\"text-align:right\"><strong>Nguồn NgocMinh Optic</strong></p>', 'Most people who choose frames are concerned about current prices, styles and fashions. But for prescription frames there are other factors that you must consider, such as how durable, flexible and corrosion-resistant the frame is, depending largely on the material of the frame. Frames usually have 2 main materials, made from plastic and metal. Each type of material will have different striking characteristics.', NULL, NULL, NULL, NULL, 1, 1, 1, '2020-05-05 01:58:24', '2020-05-16 08:45:51');
INSERT INTO `posts` (`id`, `slug`, `name`, `type`, `is_display`, `image`, `des_s`, `content`, `content_en`, `des_s_en`, `name_en`, `meta_des`, `meta_key`, `meta_title`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(5, 'cac-tat-khuc-xa-o-mat-giai-phap-cai-thien', 'CÁC TẬT KHÚC XẠ & GIẢI PHÁP CẢI THIỆN Ở MẮT', 1, 1, 'FILES/source/News/01-TatKhucXa/TatKhucXa11024.gif', 'Cận thị, loạn thị, viễn thị, lão thị là một trong các dạng của tật khúc xạ. Mắt bình thường có cấu tạo hài hòa giữa chiều dài trước sau của nhãn cầu và công suất hội tụ của mắt, khi đó ảnh của một vật ở vô cực sẽ hội tụ đúng trên võng mạc, nghĩa là tiêu điểm sau trùng với võng mạc và khi đó ta sẽ nhìn thấy rõ nét hình ảnh.', '<p>Mắt l&agrave; một trong những bộ phận quan trọng nhất của cơ thể, mắt gi&uacute;p ch&uacute;ng ta nh&igrave;n r&otilde; mọi vật xung quanh. Ở mắt b&igrave;nh thường &aacute;nh s&aacute;ng sau khi đi qua gi&aacute;c mạc v&agrave; thủy tinh thể, sẽ hội tụ đ&uacute;ng một điểm tr&ecirc;n v&otilde;ng mạc;&nbsp;Mắt bình thường có c&acirc;́u tạo hài hòa giữa chi&ecirc;̀u dài trước sau của nhãn c&acirc;̀u và c&ocirc;ng su&acirc;́t h&ocirc;̣i tụ của mắt, khi đó ảnh của m&ocirc;̣t v&acirc;̣t ở v&ocirc; cực sẽ h&ocirc;̣i tụ đúng tr&ecirc;n võng mạc, nghĩa là ti&ecirc;u đi&ecirc;̉m sau trùng với võng mạc và khi đó ta sẽ nhìn th&acirc;́y rõ nét hình ảnh. Nếu h&igrave;nh ảnh hội tụ trước v&otilde;ng mạc (cận thị), sau v&otilde;ng mạc (viễn thị), hay nhiều điểm tr&ecirc;n v&otilde;ng mạc (loạn thị) th&igrave; mắt đ&atilde; bị tật kh&uacute;c xạ.</p>\r\n\r\n<p>C&aacute;c tật kh&uacute;c xạ (<strong>c&acirc;̣n thị, loạn thị, vi&ecirc;̃n thị, l&atilde;o thị</strong>) l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y suy giảm thị lực h&agrave;ng đầu thế giới hiện nay. Theo thống k&ecirc; của Tổ chức Y tế Thế giới WHO (năm 2010), c&oacute; khoảng 153 triệu tr&ecirc;n thế giới người mắc tật kh&uacute;c xạ v&agrave; 30% trong số đ&oacute; c&oacute; nguy cơ m&ugrave; l&ograve;a. Kiến thức tổng quan về c&aacute;c loại tật kh&uacute;c xạ trong b&agrave;i viết n&agrave;y sẽ gi&uacute;p bạn hiểu hơn về tật kh&uacute;c xạ để c&oacute; phương ph&aacute;p bảo vệ mắt hợp l&yacute;.</p>\r\n\r\n<h4><strong>I. Cận thị &amp; Viễn Thị</strong></h4>\r\n\r\n<p><img src=\"http://ngocminhoptic.com/FILES/source/News/01-TatKhucXa/TatKhucXa11024.gif\" style=\"width:690px\" /></p>\r\n\r\n<p><u><strong>1. Cận thị:</strong></u></p>\r\n\r\n<p>Ở mắt cận thị, do một nguy&ecirc;n nh&acirc;n n&agrave;o đ&oacute; khiến độ hội tụ ngắn hơn với chiều d&agrave;i của mắt, khiến c&aacute;c tia s&aacute;ng hội tụ trước v&otilde;ng mạc. Đặc điểm của mắt cận thị l&agrave; kh&oacute; thấy vật ở xa, nhưng c&oacute; thể nh&igrave;n r&otilde; vật ở gần.</p>\r\n\r\n<p>C&acirc;̣n thị là mắt có c&ocirc;ng su&acirc;́t khúc xạ quá mạnh so với chi&ecirc;̀u dài nhãn c&acirc;̀u, vì th&ecirc;́ các tia sáng song song vào mắt sẽ h&ocirc;̣i tụ trước võng mạc. Nói cách khác, mắt c&acirc;̣n có ti&ecirc;u đi&ecirc;̉m trước võng mạc. Do đó&nbsp;người bị c&acirc;̣n thị chỉ có th&ecirc;̉ nhìn rõ ở cự ly g&acirc;̀n còn ở cự ly xa thì nhìn kh&ocirc;ng rõ n&ecirc;́u như mắt kh&ocirc;ng đi&ecirc;̀u ti&ecirc;́t.</p>\r\n\r\n<p><strong>*Nguy&ecirc;n nh&acirc;n cận thị:</strong></p>\r\n\r\n<p>Nguy&ecirc;n ng&acirc;n ch&iacute;nh của cận thị do nh&igrave;n vật qu&aacute; nhiều ở khoảng c&aacute;ch gần, ngo&agrave;i ra cũng c&oacute; những trường hợp cận thị do di truyền. Cận thị do di truyền thường thấy nhất ở trẻ độ tuổi từ 8-12 tuổi. Trong giai đoạn ph&aacute;t triển từ 10-20 tuổi, do mắt phải l&agrave;m việc, hoạt động nhiều n&ecirc;n độ cận thị sẽ c&oacute; xu hướng gia tăng. Từ 20 đến 40 tuổi, độ cận thị sẽ &iacute;t thay đổi.</p>\r\n\r\n<p>Khi học tập, l&agrave;m việc khoảng c&aacute;ch th&iacute;ch hợp từ mắt đến m&agrave;n h&igrave;nh vi t&iacute;nh hoặc s&aacute;ch vở l&agrave; khoảng 35-40 cm. Nếu phải l&agrave;m việc trong điều kiện thiếu &aacute;nh s&aacute;ng v&agrave; trong khoảng c&aacute;ch gần li&ecirc;n tục, thủy tinh thể lu&ocirc;n phải căng l&ecirc;n để điều tiết. Nếu mắt kh&ocirc;ng được nghỉ ngơi v&agrave; chăm s&oacute;c đ&uacute;ng c&aacute;ch, thủy tinh thể sẽ kh&ocirc;ng thể xẹp xuống được nữa, g&acirc;y ra tật cận thị.</p>\r\n\r\n<p>Người bị cận thị ngo&agrave;i việc gặp kh&oacute; khăn trong cuộc sống h&agrave;ng ng&agrave;y c&ograve;n c&oacute; nguy cơ gặp c&aacute;c biến chứng như vẩn đục dịch k&iacute;nh (hiện tượng thấy vật lơ lửng trước mắt) hoặc bong v&otilde;ng mạc. V&igrave; thế người bị cận thị n&ecirc;n thường xuy&ecirc;n đi kh&aacute;m định kỳ để kiểm tra sức khỏe mắt. Thời gian theo d&otilde;i theo tần suất tối thiểu <strong>3 th&aacute;ng/lần</strong>.</p>\r\n\r\n<p><em><strong>*Các loại c&acirc;̣n thị:</strong></em><em><strong>&nbsp;</strong></em>C&acirc;̣n thị được chia thành 2 loại.</p>\r\n\r\n<p><strong>C&acirc;̣n thị trục:</strong> c&acirc;̣n thị đơn thu&acirc;̀n&nbsp;là sự m&acirc;́t bình qu&acirc;n giữa chi&ecirc;̀u dài của mắt và lực khúc xạ của nó, nhưng hai chỉ s&ocirc;́ này v&acirc;̃n nằm trong giới hạn bình thường. Đ&acirc;y là loại c&acirc;̣n thị thường gặp, bắt đ&acirc;̀u ở lứa tu&ocirc;̉i đi học và nhỏ hơn 6 diop, kh&ocirc;ng có những t&ocirc;̉n thương thực th&ecirc;̉ ở mắt.</p>\r\n\r\n<p><strong>C&acirc;̣n thị b&ecirc;̣nh lý:</strong> chi&ecirc;̀u dài của mắt quá giới hạn bình thường. Đ&ocirc;̣ c&acirc;̣n thường cao, c&acirc;̣n tr&ecirc;n 6 diop, có th&ecirc;̉ l&ecirc;n đ&ecirc;́n 20-30 diop, có những t&ocirc;̉n thương ở mắt, có tính di truy&ecirc;̀n.</p>\r\n\r\n<p><u><strong>2. Viễn thị:</strong></u></p>\r\n\r\n<p>Mắt viễn&nbsp;thị l&agrave; mắt c&oacute; c&ocirc;ng suất kh&uacute;c xạ k&eacute;m so với chiều d&agrave;i của mắt, v&igrave; thế c&aacute;c tia s&aacute;ng, điểm ảnh&nbsp;v&agrave;o mắt sẽ hội tụ sau v&otilde;ng mạc. Nghĩa l&agrave; ti&ecirc;u điểm sau nằm sau v&otilde;ng mạc. Triệu chứng của mắt viễn thị l&agrave; nh&igrave;n r&otilde; c&aacute;c vật ở xa, kh&oacute; nh&igrave;n c&aacute;c vật ở gần.</p>\r\n\r\n<p><strong>*Nguy&ecirc;n nh&acirc;n viễn&nbsp;thị:</strong></p>\r\n\r\n<p>Nguy&ecirc;n nh&acirc;n phổ biến của viễn thị l&agrave; trục nh&atilde;n cầu ngắn. Ở trẻ em mới sinh thường c&oacute; một độ viễn thị nhẹ từ 2 &ndash; 3 độ. Trong qu&aacute; tr&igrave;nh ph&aacute;t triển, c&ugrave;ng với sự trưởng th&agrave;nh của cơ thể, nh&atilde;n cầu cũng d&agrave;i th&ecirc;m ra, mắt sẽ trở th&agrave;nh mắt bình thường, nhưng n&ecirc;́u sự phát tri&ecirc;̉n này kh&ocirc;ng trọn vẹn thì trẻ sẽ bị vi&ecirc;̃n thị.</p>\r\n\r\n<p>Do sinh hoạt thường xuy&ecirc;n nh&igrave;n vật ở xa khiến thủy tinh thể lu&ocirc;n gi&atilde;n ra, l&acirc;u dần thủy tinh thể sẽ kh&ocirc;ng thể co lại được, g&acirc;y viễn thị.</p>\r\n\r\n<p>Do l&atilde;o h&oacute;a, thủy tinh thể mất đi t&iacute;nh đ&agrave;n hồi tự nhi&ecirc;n.</p>\r\n\r\n<p><em><strong>*Các loại vi&ecirc;̃n thị:&nbsp;</strong></em>Vi&ecirc;̃n thị cũng được chia thành 2 loại.</p>\r\n\r\n<p><strong>Vi&ecirc;̃n thị trục:</strong> do trục nhãn c&acirc;̀u ngắn hơn bình thường.</p>\r\n\r\n<p><strong>Vi&ecirc;̃n thị do khúc xạ:</strong> Giác mạc hoặc thủy tinh th&ecirc;̉ dẹt quá, do đó giảm c&ocirc;ng su&acirc;́t h&ocirc;̣i tụ.</p>\r\n\r\n<h4><strong>II. Loạn&nbsp;thị &amp; L&atilde;o&nbsp;Thị</strong></h4>\r\n\r\n<p><img src=\"http://ngocminhoptic.com/FILES/source/News/01-TatKhucXa/TaKhucXa21024.gif\" style=\"width:690px\" /></p>\r\n\r\n<p><u><strong>1. Loạn&nbsp;thị:</strong></u></p>\r\n\r\n<p>Loạn thị l&agrave; một tật li&ecirc;n quan đến kh&uacute;c xạ. Người b&igrave;nh thường, &aacute;nh s&aacute;ng đi qua gi&aacute;c mạc, sẽ được kh&uacute;c xạ trong dịch thủy tinh thể v&agrave; hội tụ lại một điểm tr&ecirc;n v&otilde;ng mạc. Người bị loạn thị, &aacute;nh s&aacute;ng kh&ocirc;ng hội tụ th&agrave;nh một m&agrave; hội tụ th&agrave;nh nhiều điểm tr&ecirc;n v&otilde;ng mạc, khiến h&igrave;nh ảnh bị nh&ograve;e, kh&ocirc;ng rõ b&acirc;́t k&ecirc;̉ g&acirc;̀n hay xa. Mắt loạn thị có th&ecirc;̉ bị&nbsp;cùng c&acirc;̣n thị và vi&ecirc;̃n thị, vì th&ecirc;́ vi&ecirc;̣c đi&ecirc;̀u chỉnh kính cho người loạn thị cũng sẽ khó hơn.&nbsp;C&oacute; nhiều loại loạn thị t&ugrave;y thuộc v&agrave;o phối hợp của loạn thị với cận thị v&agrave; viễn thị, c&oacute; loạn cận đơn thuần, loạn cận k&eacute;p, loạn viễn đơn thuần, loạn viễn k&eacute;p v&agrave; loạn thị hỗn hợp. Đối với trẻ em được chẩn đo&aacute;n loạn thị cần đeo k&iacute;nh thường xuy&ecirc;n để tr&aacute;nh nhược thị.</p>\r\n\r\n<p><strong>*Nguy&ecirc;n nh&acirc;n loạn&nbsp;thị:</strong></p>\r\n\r\n<p>Loạn thị l&agrave; t&igrave;nh trạng gi&aacute;c mạc v&agrave; thủy tinh thể c&oacute; h&igrave;nh dạng bất thường, ảnh hưởng đến khả năng hội tụ tia s&aacute;ng, khi&ecirc;́n khả năng t&acirc;̣p trung ánh sáng&nbsp; của giác mạc bị giảm đi. Người bị loạn thị cũng c&oacute; thể bị cận thị hay viễn thị. Kh&aacute;c với cận thị v&agrave; viễn thị, loạn thị th&ocirc;ng thường do bẩm sinh.</p>\r\n\r\n<p>Một số nguy&ecirc;n nh&acirc;n kh&aacute;c của loạn thị l&agrave; chấn thương mắt, bị mắc một số bệnh hay sau phẫu thuật.&nbsp;Tuy nhi&ecirc;n gần đ&acirc;y, tỉ lệ loạn thị tăng cả về số lượng cũng như số độ do việc nằm nghi&ecirc;ng xem điện thoại hay tivi.</p>\r\n\r\n<p><em><strong>*Các loại loạn&nbsp;thị: </strong>C&oacute; 2 loại loạn thị.</em></p>\r\n\r\n<p>Loạn thị thị giác.</p>\r\n\r\n<p>Loạn thị th&acirc;́u kính.</p>\r\n\r\n<p>Loạn thị tuy xảy ra kh&ocirc;ng phổ biến như cận thị nhưng n&oacute; cũng l&agrave; một dạng tật kh&uacute;c xạ nguy hiểm, đ&aacute;ng buồn thay hiện nay c&ograve;n kh&aacute; nhiều người kh&ocirc;ng hiểu biết về căn bệnh n&agrave;y dẫn đến việc ph&ograve;ng tr&aacute;nh v&agrave; điều trị sai c&aacute;ch.</p>\r\n\r\n<p><u><strong>2. L&atilde;o&nbsp;thị:</strong></u></p>\r\n\r\n<p>Ngo&agrave;i c&aacute;c tật kh&uacute;c xạ ở tr&ecirc;n, y khoa c&ograve;n một hiện tượng nữa l&agrave; l&atilde;o thị. L&atilde;o thị l&agrave; hiện tượng mắt gần mất khả năng nh&igrave;n gần. Đ&acirc;y l&agrave; hiện tượng mắt bị l&atilde;o h&oacute;a do tuổi t&aacute;c. T&igrave;nh trạng n&agrave;y bắt đầu xuất hiện ở tuổi 30, 40 v&agrave; sẽ tăng dần cho đến 65 tuổi.</p>\r\n\r\n<p><strong>*Nguy&ecirc;n nh&acirc;n l&atilde;o&nbsp;thị:</strong></p>\r\n\r\n<p>Do tuổi ng&agrave;y c&agrave;ng cao, thủy tinh thể bị l&atilde;o h&oacute;a, sẽ cứng dần dẫn đến mất khả năng đ&agrave;n hồi. Thủy tinh thể k&eacute;m linh hoạt sẽ kh&ocirc;ng thể co lại khi nh&igrave;n vật ở gần, dẫn đến t&igrave;nh trạng nh&igrave;n gần giảm.</p>\r\n\r\n<h4><strong>III. Giải ph&aacute;p cải thiện tật kh&uacute;c xạ</strong></h4>\r\n\r\n<p><u><strong>1. Đeo k&iacute;nh (khuy&ecirc;n d&ugrave;ng):</strong></u></p>\r\n\r\n<p>Phương ph&aacute;p chữa tật kh&uacute;c xạ đơn giản nhất l&agrave; đeo k&iacute;nh thuốc. Bệnh nh&acirc;n sau khi kh&aacute;m mắt sẽ được x&aacute;c định loại tật kh&uacute;c xạ&nbsp;v&agrave; độ cận, viễn, loạn. Thời gian gần đ&acirc;y, nhiều bạn trẻ lựa chọn k&iacute;nh &aacute;p tr&ograve;ng thay cho k&iacute;nh truyền thống. Tuy nhi&ecirc;n nếu đeo &aacute;p tr&ograve;ng nhiều v&agrave; kh&ocirc;ng đ&uacute;ng c&aacute;ch sẽ dẫn đến hiện tượng xước gi&aacute;c mạc rất kh&oacute; chịu. Đặc điểm k&iacute;nh &aacute;p tr&ograve;ng&nbsp;gi&uacute;p tăng t&iacute;nh thẩm mỹ, tuy nhi&ecirc;n lưu &yacute; khi đeo k&iacute;nh &aacute;p tr&ograve;ng, cần kiểm tra định kỳ 3 th&aacute;ng 1 lần tại c&aacute;c bệnh viện mắt uy t&iacute;n. Trong trường hợp đeo k&iacute;nh c&oacute; cảm gi&aacute;c cộm, đỏ, nhức hay ngứa mắt cần ngưng đeo ngay v&agrave; đi kh&aacute;m mắt.</p>\r\n\r\n<p><u><strong>2. Phẫu thuật:</strong></u></p>\r\n\r\n<p>Phương ph&aacute;p điều trị tật kh&uacute;c xạ hiện đại nhất hiện nay l&agrave; phẫu thuật. Hiện tại, c&oacute; 3 phương ph&aacute;p phẫu thuật ch&iacute;nh được sử dụng trong điều trị tật kh&uacute;c xạ l&agrave; Laser in Situ Keratomileusis (LASIK),&nbsp;Femtosecond Lasik v&agrave; Relex Smile (Refractive Lenticule Extraction, small Incision Lenticule Extraction).&nbsp;</p>\r\n\r\n<p>&ndash; <strong>Relex Smile</strong> l&agrave; phương ph&aacute;p phẫu thuật kh&ocirc;ng lật vạt gi&aacute;c mạc, kh&ocirc;ng sử dụng dao vi phẫu cơ học, được &aacute;p dụng cho tất cả c&aacute;c bệnh nh&acirc;n từ cận nặng (10 đi-ốp) đến nhẹ (0,5 đi-ốp).&nbsp;</p>\r\n\r\n<p>&ndash; <strong>Femtosecond Lasik</strong> l&agrave; phương ph&aacute;p phẫu thuật kh&uacute;c xạ kết hợp c&ocirc;ng nghệ Laser Femto v&agrave; Laser Excimer, Sử dụng tia Laser Femto thay cho dao cắt gi&aacute;c mạc đ&atilde; gi&uacute;p loại bỏ ho&agrave;n to&agrave;n biến chứng sau phẫu thuật, khiến đ&acirc;y trở th&agrave;nh phương ph&aacute;p an to&agrave;n tuyệt đối, được rất nhiều bạn trẻ lựa chọn.</p>\r\n\r\n<p>&ndash; <strong>LASIK</strong>&nbsp;l&agrave; phương ph&aacute;p phẫu thuật ra đời sớm nhất. T&iacute;nh đến thời điểm hiện tại, phương ph&aacute;p n&agrave;y vẫn được rất nhiều bạn trẻ lựa chọn để chữa trị tật kh&uacute;c xạ.</p>\r\n\r\n<p><u><strong>3. Tạo lập lối sống khoa học &amp; an to&agrave;n cho Mắt:</strong></u>&nbsp;</p>\r\n\r\n<p>Một lối sống khoa học kh&ocirc;ng chỉ gi&uacute;p bảo vệ đ&ocirc;i mắt m&agrave; c&ograve;n tốt cho sức khỏe tổng qu&aacute;t to&agrave;n cơ thể:</p>\r\n\r\n<p>&ndash; Nơi l&agrave;m việc, học tập cần đầy đủ &aacute;nh s&aacute;ng, n&ecirc;n chọn kh&ocirc;ng gian c&oacute; &aacute;nh s&aacute;ng tự nhi&ecirc;n, hạn chế &aacute;nh s&aacute;ng nh&acirc;n tạo.</p>\r\n\r\n<p>&ndash; K&iacute;ch thước b&agrave;n ghế, khoảng c&aacute;ch mắt đến m&aacute;y vi t&iacute;nh, điện thoại, tivi&nbsp;phải đ&uacute;ng.</p>\r\n\r\n<p>&ndash; Kh&ocirc;ng n&ecirc;n để mắt phải tập trung qu&aacute; l&acirc;u, cứ 20 ph&uacute;t l&agrave;m việc h&atilde;y cho mắt nghĩ ngơi trong khoảng 20s.</p>\r\n\r\n<p>&ndash; Kh&ocirc;ng đọc s&aacute;ch, xem laptop, điện thoại khi đang di chuyển, tr&ecirc;n t&agrave;u, xe, m&aacute;y bay,&hellip;</p>\r\n\r\n<p>&ndash; D&ugrave;ng nước muối sinh l&yacute; vệ sinh mắt h&agrave;ng ng&agrave;y.</p>\r\n\r\n<p>&ndash; Bổ sung đầy đủ c&aacute;c chất dinh dưỡng tốt cho mắt.</p>\r\n\r\n<p><strong>Lưu &yacute; những ai thường xuy&ecirc;n phải tiếp x&uacute;c với m&aacute;y vi t&iacute;nh n&ecirc;n tu&acirc;n thủ những quy tắc dưới đ&acirc;y:</strong></p>\r\n\r\n<p>&bull; Mắt c&aacute;ch trung t&acirc;m m&agrave;n h&igrave;nh khoảng 50 &ndash; 65cm.</p>\r\n\r\n<p>&bull; Nơi l&agrave;m việc phải đủ &aacute;nh s&aacute;ng, tr&aacute;nh &aacute;nh s&aacute;ng chiếu trực tiếp l&ecirc;n m&agrave;n h&igrave;nh g&acirc;y l&oacute;a, nh&ograve;e chữ.</p>\r\n\r\n<p>&bull; Thường xuy&ecirc;n chớp mắt v&agrave; d&ugrave;ng th&ecirc;m nước muối sinh l&yacute; để giữ ẩm cho mắt.</p>\r\n\r\n<p>&bull; Kh&ocirc;ng sử dụng điện thoại, m&aacute;y t&iacute;nh qu&aacute; khuya, cho mắt thời gian nghỉ ngơi hợp l&yacute;.</p>\r\n\r\n<p style=\"text-align:right\"><strong>Nguồn NgocMinh Optic</strong></p>', '<p>Mắt l&agrave; một trong những bộ phận quan trọng nhất của cơ thể, mắt gi&uacute;p ch&uacute;ng ta nh&igrave;n r&otilde; mọi vật xung quanh. Ở mắt b&igrave;nh thường &aacute;nh s&aacute;ng sau khi đi qua gi&aacute;c mạc v&agrave; thủy tinh thể, sẽ hội tụ đ&uacute;ng một điểm tr&ecirc;n v&otilde;ng mạc;&nbsp;Mắt bình thường có c&acirc;́u tạo hài hòa giữa chi&ecirc;̀u dài trước sau của nhãn c&acirc;̀u và c&ocirc;ng su&acirc;́t h&ocirc;̣i tụ của mắt, khi đó ảnh của m&ocirc;̣t v&acirc;̣t ở v&ocirc; cực sẽ h&ocirc;̣i tụ đúng tr&ecirc;n võng mạc, nghĩa là ti&ecirc;u đi&ecirc;̉m sau trùng với võng mạc và khi đó ta sẽ nhìn th&acirc;́y rõ nét hình ảnh. Nếu h&igrave;nh ảnh hội tụ trước v&otilde;ng mạc (cận thị), sau v&otilde;ng mạc (viễn thị), hay nhiều điểm tr&ecirc;n v&otilde;ng mạc (loạn thị) th&igrave; mắt đ&atilde; bị tật kh&uacute;c xạ.</p>\r\n\r\n<p>C&aacute;c tật kh&uacute;c xạ (<strong>c&acirc;̣n thị, loạn thị, vi&ecirc;̃n thị, l&atilde;o thị</strong>) l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y suy giảm thị lực h&agrave;ng đầu thế giới hiện nay. Theo thống k&ecirc; của Tổ chức Y tế Thế giới WHO (năm 2010), c&oacute; khoảng 153 triệu tr&ecirc;n thế giới người mắc tật kh&uacute;c xạ v&agrave; 30% trong số đ&oacute; c&oacute; nguy cơ m&ugrave; l&ograve;a. Kiến thức tổng quan về c&aacute;c loại tật kh&uacute;c xạ trong b&agrave;i viết n&agrave;y sẽ gi&uacute;p bạn hiểu hơn về tật kh&uacute;c xạ để c&oacute; phương ph&aacute;p bảo vệ mắt hợp l&yacute;.</p>\r\n\r\n<h4><strong>I. Cận thị &amp; Viễn Thị</strong></h4>\r\n\r\n<p><img src=\"http://ngocminhoptic.com/FILES/source/News/01-TatKhucXa/TatKhucXa11024.gif\" style=\"width:690px\" /></p>\r\n\r\n<p><u><strong>1. Cận thị:</strong></u></p>\r\n\r\n<p>Ở mắt cận thị, do một nguy&ecirc;n nh&acirc;n n&agrave;o đ&oacute; khiến độ hội tụ ngắn hơn với chiều d&agrave;i của mắt, khiến c&aacute;c tia s&aacute;ng hội tụ trước v&otilde;ng mạc. Đặc điểm của mắt cận thị l&agrave; kh&oacute; thấy vật ở xa, nhưng c&oacute; thể nh&igrave;n r&otilde; vật ở gần.</p>\r\n\r\n<p>C&acirc;̣n thị là mắt có c&ocirc;ng su&acirc;́t khúc xạ quá mạnh so với chi&ecirc;̀u dài nhãn c&acirc;̀u, vì th&ecirc;́ các tia sáng song song vào mắt sẽ h&ocirc;̣i tụ trước võng mạc. Nói cách khác, mắt c&acirc;̣n có ti&ecirc;u đi&ecirc;̉m trước võng mạc. Do đó&nbsp;người bị c&acirc;̣n thị chỉ có th&ecirc;̉ nhìn rõ ở cự ly g&acirc;̀n còn ở cự ly xa thì nhìn kh&ocirc;ng rõ n&ecirc;́u như mắt kh&ocirc;ng đi&ecirc;̀u ti&ecirc;́t.</p>\r\n\r\n<p><strong>*Nguy&ecirc;n nh&acirc;n cận thị:</strong></p>\r\n\r\n<p>Nguy&ecirc;n ng&acirc;n ch&iacute;nh của cận thị do nh&igrave;n vật qu&aacute; nhiều ở khoảng c&aacute;ch gần, ngo&agrave;i ra cũng c&oacute; những trường hợp cận thị do di truyền. Cận thị do di truyền thường thấy nhất ở trẻ độ tuổi từ 8-12 tuổi. Trong giai đoạn ph&aacute;t triển từ 10-20 tuổi, do mắt phải l&agrave;m việc, hoạt động nhiều n&ecirc;n độ cận thị sẽ c&oacute; xu hướng gia tăng. Từ 20 đến 40 tuổi, độ cận thị sẽ &iacute;t thay đổi.</p>\r\n\r\n<p>Khi học tập, l&agrave;m việc khoảng c&aacute;ch th&iacute;ch hợp từ mắt đến m&agrave;n h&igrave;nh vi t&iacute;nh hoặc s&aacute;ch vở l&agrave; khoảng 35-40 cm. Nếu phải l&agrave;m việc trong điều kiện thiếu &aacute;nh s&aacute;ng v&agrave; trong khoảng c&aacute;ch gần li&ecirc;n tục, thủy tinh thể lu&ocirc;n phải căng l&ecirc;n để điều tiết. Nếu mắt kh&ocirc;ng được nghỉ ngơi v&agrave; chăm s&oacute;c đ&uacute;ng c&aacute;ch, thủy tinh thể sẽ kh&ocirc;ng thể xẹp xuống được nữa, g&acirc;y ra tật cận thị.</p>\r\n\r\n<p>Người bị cận thị ngo&agrave;i việc gặp kh&oacute; khăn trong cuộc sống h&agrave;ng ng&agrave;y c&ograve;n c&oacute; nguy cơ gặp c&aacute;c biến chứng như vẩn đục dịch k&iacute;nh (hiện tượng thấy vật lơ lửng trước mắt) hoặc bong v&otilde;ng mạc. V&igrave; thế người bị cận thị n&ecirc;n thường xuy&ecirc;n đi kh&aacute;m định kỳ để kiểm tra sức khỏe mắt. Thời gian theo d&otilde;i theo tần suất tối thiểu <strong>3 th&aacute;ng/lần</strong>.</p>\r\n\r\n<p><em><strong>*Các loại c&acirc;̣n thị:</strong></em><em><strong>&nbsp;</strong></em>C&acirc;̣n thị được chia thành 2 loại.</p>\r\n\r\n<p><strong>C&acirc;̣n thị trục:</strong> c&acirc;̣n thị đơn thu&acirc;̀n&nbsp;là sự m&acirc;́t bình qu&acirc;n giữa chi&ecirc;̀u dài của mắt và lực khúc xạ của nó, nhưng hai chỉ s&ocirc;́ này v&acirc;̃n nằm trong giới hạn bình thường. Đ&acirc;y là loại c&acirc;̣n thị thường gặp, bắt đ&acirc;̀u ở lứa tu&ocirc;̉i đi học và nhỏ hơn 6 diop, kh&ocirc;ng có những t&ocirc;̉n thương thực th&ecirc;̉ ở mắt.</p>\r\n\r\n<p><strong>C&acirc;̣n thị b&ecirc;̣nh lý:</strong> chi&ecirc;̀u dài của mắt quá giới hạn bình thường. Đ&ocirc;̣ c&acirc;̣n thường cao, c&acirc;̣n tr&ecirc;n 6 diop, có th&ecirc;̉ l&ecirc;n đ&ecirc;́n 20-30 diop, có những t&ocirc;̉n thương ở mắt, có tính di truy&ecirc;̀n.</p>\r\n\r\n<p><u><strong>2. Viễn thị:</strong></u></p>\r\n\r\n<p>Mắt viễn&nbsp;thị l&agrave; mắt c&oacute; c&ocirc;ng suất kh&uacute;c xạ k&eacute;m so với chiều d&agrave;i của mắt, v&igrave; thế c&aacute;c tia s&aacute;ng, điểm ảnh&nbsp;v&agrave;o mắt sẽ hội tụ sau v&otilde;ng mạc. Nghĩa l&agrave; ti&ecirc;u điểm sau nằm sau v&otilde;ng mạc. Triệu chứng của mắt viễn thị l&agrave; nh&igrave;n r&otilde; c&aacute;c vật ở xa, kh&oacute; nh&igrave;n c&aacute;c vật ở gần.</p>\r\n\r\n<p><strong>*Nguy&ecirc;n nh&acirc;n viễn&nbsp;thị:</strong></p>\r\n\r\n<p>Nguy&ecirc;n nh&acirc;n phổ biến của viễn thị l&agrave; trục nh&atilde;n cầu ngắn. Ở trẻ em mới sinh thường c&oacute; một độ viễn thị nhẹ từ 2 &ndash; 3 độ. Trong qu&aacute; tr&igrave;nh ph&aacute;t triển, c&ugrave;ng với sự trưởng th&agrave;nh của cơ thể, nh&atilde;n cầu cũng d&agrave;i th&ecirc;m ra, mắt sẽ trở th&agrave;nh mắt bình thường, nhưng n&ecirc;́u sự phát tri&ecirc;̉n này kh&ocirc;ng trọn vẹn thì trẻ sẽ bị vi&ecirc;̃n thị.</p>\r\n\r\n<p>Do sinh hoạt thường xuy&ecirc;n nh&igrave;n vật ở xa khiến thủy tinh thể lu&ocirc;n gi&atilde;n ra, l&acirc;u dần thủy tinh thể sẽ kh&ocirc;ng thể co lại được, g&acirc;y viễn thị.</p>\r\n\r\n<p>Do l&atilde;o h&oacute;a, thủy tinh thể mất đi t&iacute;nh đ&agrave;n hồi tự nhi&ecirc;n.</p>\r\n\r\n<p><em><strong>*Các loại vi&ecirc;̃n thị:&nbsp;</strong></em>Vi&ecirc;̃n thị cũng được chia thành 2 loại.</p>\r\n\r\n<p><strong>Vi&ecirc;̃n thị trục:</strong> do trục nhãn c&acirc;̀u ngắn hơn bình thường.</p>\r\n\r\n<p><strong>Vi&ecirc;̃n thị do khúc xạ:</strong> Giác mạc hoặc thủy tinh th&ecirc;̉ dẹt quá, do đó giảm c&ocirc;ng su&acirc;́t h&ocirc;̣i tụ.</p>\r\n\r\n<h4><strong>II. Loạn&nbsp;thị &amp; L&atilde;o&nbsp;Thị</strong></h4>\r\n\r\n<p><img src=\"http://ngocminhoptic.com/FILES/source/News/01-TatKhucXa/TaKhucXa21024.gif\" style=\"width:690px\" /></p>\r\n\r\n<p><u><strong>1. Loạn&nbsp;thị:</strong></u></p>\r\n\r\n<p>Loạn thị l&agrave; một tật li&ecirc;n quan đến kh&uacute;c xạ. Người b&igrave;nh thường, &aacute;nh s&aacute;ng đi qua gi&aacute;c mạc, sẽ được kh&uacute;c xạ trong dịch thủy tinh thể v&agrave; hội tụ lại một điểm tr&ecirc;n v&otilde;ng mạc. Người bị loạn thị, &aacute;nh s&aacute;ng kh&ocirc;ng hội tụ th&agrave;nh một m&agrave; hội tụ th&agrave;nh nhiều điểm tr&ecirc;n v&otilde;ng mạc, khiến h&igrave;nh ảnh bị nh&ograve;e, kh&ocirc;ng rõ b&acirc;́t k&ecirc;̉ g&acirc;̀n hay xa. Mắt loạn thị có th&ecirc;̉ bị&nbsp;cùng c&acirc;̣n thị và vi&ecirc;̃n thị, vì th&ecirc;́ vi&ecirc;̣c đi&ecirc;̀u chỉnh kính cho người loạn thị cũng sẽ khó hơn.&nbsp;C&oacute; nhiều loại loạn thị t&ugrave;y thuộc v&agrave;o phối hợp của loạn thị với cận thị v&agrave; viễn thị, c&oacute; loạn cận đơn thuần, loạn cận k&eacute;p, loạn viễn đơn thuần, loạn viễn k&eacute;p v&agrave; loạn thị hỗn hợp. Đối với trẻ em được chẩn đo&aacute;n loạn thị cần đeo k&iacute;nh thường xuy&ecirc;n để tr&aacute;nh nhược thị.</p>\r\n\r\n<p><strong>*Nguy&ecirc;n nh&acirc;n loạn&nbsp;thị:</strong></p>\r\n\r\n<p>Loạn thị l&agrave; t&igrave;nh trạng gi&aacute;c mạc v&agrave; thủy tinh thể c&oacute; h&igrave;nh dạng bất thường, ảnh hưởng đến khả năng hội tụ tia s&aacute;ng, khi&ecirc;́n khả năng t&acirc;̣p trung ánh sáng&nbsp; của giác mạc bị giảm đi. Người bị loạn thị cũng c&oacute; thể bị cận thị hay viễn thị. Kh&aacute;c với cận thị v&agrave; viễn thị, loạn thị th&ocirc;ng thường do bẩm sinh.</p>\r\n\r\n<p>Một số nguy&ecirc;n nh&acirc;n kh&aacute;c của loạn thị l&agrave; chấn thương mắt, bị mắc một số bệnh hay sau phẫu thuật.&nbsp;Tuy nhi&ecirc;n gần đ&acirc;y, tỉ lệ loạn thị tăng cả về số lượng cũng như số độ do việc nằm nghi&ecirc;ng xem điện thoại hay tivi.</p>\r\n\r\n<p><em><strong>*Các loại loạn&nbsp;thị: </strong>C&oacute; 2 loại loạn thị.</em></p>\r\n\r\n<p>Loạn thị thị giác.</p>\r\n\r\n<p>Loạn thị th&acirc;́u kính.</p>\r\n\r\n<p>Loạn thị tuy xảy ra kh&ocirc;ng phổ biến như cận thị nhưng n&oacute; cũng l&agrave; một dạng tật kh&uacute;c xạ nguy hiểm, đ&aacute;ng buồn thay hiện nay c&ograve;n kh&aacute; nhiều người kh&ocirc;ng hiểu biết về căn bệnh n&agrave;y dẫn đến việc ph&ograve;ng tr&aacute;nh v&agrave; điều trị sai c&aacute;ch.</p>\r\n\r\n<p><u><strong>2. L&atilde;o&nbsp;thị:</strong></u></p>\r\n\r\n<p>Ngo&agrave;i c&aacute;c tật kh&uacute;c xạ ở tr&ecirc;n, y khoa c&ograve;n một hiện tượng nữa l&agrave; l&atilde;o thị. L&atilde;o thị l&agrave; hiện tượng mắt gần mất khả năng nh&igrave;n gần. Đ&acirc;y l&agrave; hiện tượng mắt bị l&atilde;o h&oacute;a do tuổi t&aacute;c. T&igrave;nh trạng n&agrave;y bắt đầu xuất hiện ở tuổi 30, 40 v&agrave; sẽ tăng dần cho đến 65 tuổi.</p>\r\n\r\n<p><strong>*Nguy&ecirc;n nh&acirc;n l&atilde;o&nbsp;thị:</strong></p>\r\n\r\n<p>Do tuổi ng&agrave;y c&agrave;ng cao, thủy tinh thể bị l&atilde;o h&oacute;a, sẽ cứng dần dẫn đến mất khả năng đ&agrave;n hồi. Thủy tinh thể k&eacute;m linh hoạt sẽ kh&ocirc;ng thể co lại khi nh&igrave;n vật ở gần, dẫn đến t&igrave;nh trạng nh&igrave;n gần giảm.</p>\r\n\r\n<h4><strong>III. Giải ph&aacute;p cải thiện tật kh&uacute;c xạ</strong></h4>\r\n\r\n<p><u><strong>1. Đeo k&iacute;nh (khuy&ecirc;n d&ugrave;ng):</strong></u></p>\r\n\r\n<p>Phương ph&aacute;p chữa tật kh&uacute;c xạ đơn giản nhất l&agrave; đeo k&iacute;nh thuốc. Bệnh nh&acirc;n sau khi kh&aacute;m mắt sẽ được x&aacute;c định loại tật kh&uacute;c xạ&nbsp;v&agrave; độ cận, viễn, loạn. Thời gian gần đ&acirc;y, nhiều bạn trẻ lựa chọn k&iacute;nh &aacute;p tr&ograve;ng thay cho k&iacute;nh truyền thống. Tuy nhi&ecirc;n nếu đeo &aacute;p tr&ograve;ng nhiều v&agrave; kh&ocirc;ng đ&uacute;ng c&aacute;ch sẽ dẫn đến hiện tượng xước gi&aacute;c mạc rất kh&oacute; chịu. Đặc điểm k&iacute;nh &aacute;p tr&ograve;ng&nbsp;gi&uacute;p tăng t&iacute;nh thẩm mỹ, tuy nhi&ecirc;n lưu &yacute; khi đeo k&iacute;nh &aacute;p tr&ograve;ng, cần kiểm tra định kỳ 3 th&aacute;ng 1 lần tại c&aacute;c bệnh viện mắt uy t&iacute;n. Trong trường hợp đeo k&iacute;nh c&oacute; cảm gi&aacute;c cộm, đỏ, nhức hay ngứa mắt cần ngưng đeo ngay v&agrave; đi kh&aacute;m mắt.</p>\r\n\r\n<p><u><strong>2. Phẫu thuật:</strong></u></p>\r\n\r\n<p>Phương ph&aacute;p điều trị tật kh&uacute;c xạ hiện đại nhất hiện nay l&agrave; phẫu thuật. Hiện tại, c&oacute; 3 phương ph&aacute;p phẫu thuật ch&iacute;nh được sử dụng trong điều trị tật kh&uacute;c xạ l&agrave; Laser in Situ Keratomileusis (LASIK),&nbsp;Femtosecond Lasik v&agrave; Relex Smile (Refractive Lenticule Extraction, small Incision Lenticule Extraction).&nbsp;</p>\r\n\r\n<p>&ndash; <strong>Relex Smile</strong> l&agrave; phương ph&aacute;p phẫu thuật kh&ocirc;ng lật vạt gi&aacute;c mạc, kh&ocirc;ng sử dụng dao vi phẫu cơ học, được &aacute;p dụng cho tất cả c&aacute;c bệnh nh&acirc;n từ cận nặng (10 đi-ốp) đến nhẹ (0,5 đi-ốp).&nbsp;</p>\r\n\r\n<p>&ndash; <strong>Femtosecond Lasik</strong> l&agrave; phương ph&aacute;p phẫu thuật kh&uacute;c xạ kết hợp c&ocirc;ng nghệ Laser Femto v&agrave; Laser Excimer, Sử dụng tia Laser Femto thay cho dao cắt gi&aacute;c mạc đ&atilde; gi&uacute;p loại bỏ ho&agrave;n to&agrave;n biến chứng sau phẫu thuật, khiến đ&acirc;y trở th&agrave;nh phương ph&aacute;p an to&agrave;n tuyệt đối, được rất nhiều bạn trẻ lựa chọn.</p>\r\n\r\n<p>&ndash; <strong>LASIK</strong>&nbsp;l&agrave; phương ph&aacute;p phẫu thuật ra đời sớm nhất. T&iacute;nh đến thời điểm hiện tại, phương ph&aacute;p n&agrave;y vẫn được rất nhiều bạn trẻ lựa chọn để chữa trị tật kh&uacute;c xạ.</p>\r\n\r\n<p><u><strong>3. Tạo lập lối sống khoa học &amp; an to&agrave;n cho Mắt:</strong></u>&nbsp;</p>\r\n\r\n<p>Một lối sống khoa học kh&ocirc;ng chỉ gi&uacute;p bảo vệ đ&ocirc;i mắt m&agrave; c&ograve;n tốt cho sức khỏe tổng qu&aacute;t to&agrave;n cơ thể:</p>\r\n\r\n<p>&ndash; Nơi l&agrave;m việc, học tập cần đầy đủ &aacute;nh s&aacute;ng, n&ecirc;n chọn kh&ocirc;ng gian c&oacute; &aacute;nh s&aacute;ng tự nhi&ecirc;n, hạn chế &aacute;nh s&aacute;ng nh&acirc;n tạo.</p>\r\n\r\n<p>&ndash; K&iacute;ch thước b&agrave;n ghế, khoảng c&aacute;ch mắt đến m&aacute;y vi t&iacute;nh, điện thoại, tivi&nbsp;phải đ&uacute;ng.</p>\r\n\r\n<p>&ndash; Kh&ocirc;ng n&ecirc;n để mắt phải tập trung qu&aacute; l&acirc;u, cứ 20 ph&uacute;t l&agrave;m việc h&atilde;y cho mắt nghĩ ngơi trong khoảng 20s.</p>\r\n\r\n<p>&ndash; Kh&ocirc;ng đọc s&aacute;ch, xem laptop, điện thoại khi đang di chuyển, tr&ecirc;n t&agrave;u, xe, m&aacute;y bay,&hellip;</p>\r\n\r\n<p>&ndash; D&ugrave;ng nước muối sinh l&yacute; vệ sinh mắt h&agrave;ng ng&agrave;y.</p>\r\n\r\n<p>&ndash; Bổ sung đầy đủ c&aacute;c chất dinh dưỡng tốt cho mắt.</p>\r\n\r\n<p><strong>Lưu &yacute; những ai thường xuy&ecirc;n phải tiếp x&uacute;c với m&aacute;y vi t&iacute;nh n&ecirc;n tu&acirc;n thủ những quy tắc dưới đ&acirc;y:</strong></p>\r\n\r\n<p>&bull; Mắt c&aacute;ch trung t&acirc;m m&agrave;n h&igrave;nh khoảng 50 &ndash; 65cm.</p>\r\n\r\n<p>&bull; Nơi l&agrave;m việc phải đủ &aacute;nh s&aacute;ng, tr&aacute;nh &aacute;nh s&aacute;ng chiếu trực tiếp l&ecirc;n m&agrave;n h&igrave;nh g&acirc;y l&oacute;a, nh&ograve;e chữ.</p>\r\n\r\n<p>&bull; Thường xuy&ecirc;n chớp mắt v&agrave; d&ugrave;ng th&ecirc;m nước muối sinh l&yacute; để giữ ẩm cho mắt.</p>\r\n\r\n<p>&bull; Kh&ocirc;ng sử dụng điện thoại, m&aacute;y t&iacute;nh qu&aacute; khuya, cho mắt thời gian nghỉ ngơi hợp l&yacute;.</p>\r\n\r\n<p style=\"text-align:right\"><strong>Nguồn NgocMinh Optic</strong></p>', 'Cận thị, loạn thị, viễn thị, lão thị là một trong các dạng của tật khúc xạ. Mắt bình thường có cấu tạo hài hòa giữa chiều dài trước sau của nhãn cầu và công suất hội tụ của mắt, khi đó ảnh của một vật ở vô cực sẽ hội tụ đúng trên võng mạc, nghĩa là tiêu điểm sau trùng với võng mạc và khi đó ta sẽ nhìn thấy rõ nét hình ảnh.', NULL, NULL, NULL, NULL, 1, 1, 1, '2020-05-16 07:42:07', '2020-05-16 08:48:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `is_display` int(11) NOT NULL DEFAULT '1',
  `price` int(11) DEFAULT NULL,
  `saleoff` int(11) DEFAULT NULL,
  `chatlieu` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `description_en` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chatlieu_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `note_en` text COLLATE utf8mb4_unicode_ci,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_des` text COLLATE utf8mb4_unicode_ci,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `sku`, `slug`, `name`, `type_id`, `is_display`, `price`, `saleoff`, `chatlieu`, `description`, `description_en`, `content`, `note`, `name_en`, `chatlieu_en`, `content_en`, `note_en`, `meta_title`, `meta_des`, `meta_key`, `status`, `created_at`, `updated_at`) VALUES
(3, 'GOL68006', 'gol68006-gong-kinh-gol-tr90-53-17-142', 'GOL68006 - Gọng kính GOL, TR90 (53-17-142)', 9, 1, 350000, NULL, 'TR90', '<ul>\r\n	<li><strong>Khuyến Mại</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng hộp k&iacute;nh v&agrave; khăn lau ch&iacute;nh h&atilde;ng của K&iacute;nh mắt Ngọc Minh.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng 01 bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao trị gi&aacute; 20.000 đồng</p>\r\n\r\n<ul>\r\n	<li><strong>Bảo h&agrave;nh</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Sản phẩm được bảo h&agrave;nh <strong>06 th&aacute;ng</strong> cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng, <strong>1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu ti&ecirc;n</strong>&nbsp;sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>', '<ul>\r\n	<li><strong>Khuyến Mại</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng hộp k&iacute;nh v&agrave; khăn lau ch&iacute;nh h&atilde;ng của K&iacute;nh mắt Ngọc Minh.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng 01 bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao trị gi&aacute; 20.000 đồng</p>\r\n\r\n<ul>\r\n	<li><strong>Bảo h&agrave;nh</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Sản phẩm được bảo h&agrave;nh <strong>06 th&aacute;ng</strong> cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng, <strong>1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu ti&ecirc;n</strong>&nbsp;sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>', '<h4><strong>Th&ocirc;ng số kỹ thuật: Gọng k&iacute;nh GOL68006</strong></h4>\r\n\r\n<p><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/09Note_TV.png\" style=\"height:200px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"3\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>KT Mặt khung</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/01WFont.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>143</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>KT Tr&ograve;ng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Độ rộng tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/02WLenes.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">53</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>Chiều cao tr&ograve;ng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Chiều cao tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/03HLenes.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>35</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>Cầu k&iacute;nh</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Khoảng cách cầu kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/04WBridge.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>17</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>KT C&agrave;ng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Độ dài càng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/05WEar.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>142</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>C&acirc;ng nặng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Cân nặng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/06Weight.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>11</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>gram</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>Giới t&iacute;nh</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Giới tính sử dụng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/07Sex.png\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td colspan=\"2\" style=\"vertical-align:middle\">\r\n			<div>Nam &amp; Nữ</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Tổng Quan</strong></li>\r\n</ul>\r\n\r\n<p>Gọng k&iacute;nh <strong>cận, viễn, loạn GOL68006</strong> l&agrave; d&ograve;ng k&iacute;nh thuốc kết hợp thời trang ch&iacute;nh h&atilde;ng của H&agrave;n quốc, sang trọng v&agrave; lịch l&atilde;m, ph&ugrave; hợp cho c&aacute;c bạn nam v&agrave; nữ, được giới trẻ H&agrave;n cũng như Việt rất ưa chuộng:</p>\r\n\r\n<p>- Khung k&iacute;nh được đ&uacute;c nguy&ecirc;n khối với chất liệu TR90 cao cấp si&ecirc;u dẻo, nhẹ nh&agrave;ng, bền bỉ v&agrave; giữ tr&ograve;ng rất tốt tạo cảm gi&aacute;c thoải m&aacute;i cho người sử dụng.</p>\r\n\r\n<p>- Tai k&iacute;nh hay c&agrave;ng k&iacute;nh cũng được đ&uacute;c nguy&ecirc;n khối l&agrave;m từ&nbsp;nhựa dẻo TR90 gi&uacute;p mang k&iacute;nh trong thời gian d&agrave;i cũng kh&ocirc;ng g&acirc;y kh&oacute; chịu hay&nbsp;đau&nbsp;ở v&agrave;nh tai.</p>\r\n\r\n<p>- Cầu k&iacute;nh hay đệm mũi nguy&ecirc;n khối được cải tiến nhiều năm ph&ugrave; hợp với khu&ocirc;n mặt v&agrave; sống mũi của người Ch&acirc;u &Aacute; khi đeo sẽ hạn chế rất nhiều việc tuột k&iacute;nh.</p>\r\n\r\n<p>- Chốt k&iacute;nh sử dụng chất liệu hợp kim pha trộn với Inox 304 ph&ugrave; hợp với kh&iacute; hậu nhiệt đới kh&ocirc;ng g&acirc;y rỉ s&eacute;t gi&uacute;p giữ tốt v&agrave; định h&igrave;nh form k&iacute;nh.</p>\r\n\r\n<p>- Gọng k&iacute;nh c&oacute; thể lắp mắt cận, viễn, loạn hoặc tr&ograve;ng 0 độ giả cận chống bụi.</p>\r\n\r\n<p>- Sản phẩm được tặng k&egrave;m hộp, khăn lau ch&iacute;nh h&atilde;ng v&agrave; bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao hoặc l&agrave;m việc hay phải c&uacute;i l&ecirc;n c&uacute;i xuống trị gi&aacute; 20.000 đồng.</p>\r\n\r\n<ul>\r\n	<li><strong>H&igrave;nh ảnh thực tế của sản phẩm GOL68006</strong></li>\r\n</ul>\r\n\r\n<p><img src=\"http://ngocminhoptic.com/FILES/source/Calogue/13-GOL68006/68006TR90B.png\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh, bảo tr&iacute; v&agrave; hỗ trợ sản phẩm: </strong></li>\r\n</ul>\r\n\r\n<p>- Sản phẩm được bảo h&agrave;nh 06 th&aacute;ng cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- 1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>\r\n\r\n<p>- Vệ sinh k&iacute;nh định kỳ trọn đời kh&ocirc;ng t&iacute;nh ph&iacute;;</p>\r\n\r\n<p>- Hỗ trợ chi ph&iacute; l&ecirc;n tới 30% gi&aacute; trị sản phẩm gọng k&iacute;nh mới nếu nguy&ecirc;n nh&acirc;n bị g&atilde;y do kh&aacute;ch h&agrave;ng kh&ocirc;ng cố &yacute;.;</p>\r\n\r\n<p>- Sau 1 thời gian sử dụng, nếu k&iacute;nh bị rộng, c&ocirc;ng v&ecirc;nh, m&oacute;p m&eacute;o do v&ocirc; &yacute;, K&iacute;nh mắt Ngọc Minh sẽ tinh chỉnh miễn ph&iacute; cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- Bảo h&agrave;nh v&agrave; thay mới kh&ocirc;ng t&iacute;nh ph&iacute; đối với đệm mũi, ốc v&iacute;t nếu bị rỉ s&eacute;t (kh&ocirc;ng &aacute;p dụng cho c&aacute;c sản phẩm nguy&ecirc;n khối);</p>\r\n\r\n<p>- Kh&ocirc;ng bảo h&agrave;nh đối với c&aacute;c sản phẩm đ&atilde; bị trầy, xước, ch&aacute;y, nổ, bong sơn, l&atilde;o h&oacute;a, thay đổi h&igrave;nh d&aacute;ng sản phầm... trong qu&aacute; tr&igrave;nh sử dụng;</p>\r\n\r\n<p>- Bảo tr&igrave; trọn đời sản phẩm tr&ecirc;n tất cả c&aacute;c chi nh&aacute;nh của NgocMinh Optic.</p>\r\n\r\n<ul>\r\n	<li><strong>Hướng dẫn bảo quản:</strong></li>\r\n</ul>\r\n\r\n<p>- N&ecirc;n d&ugrave;ng cả hai tay khi đeo k&iacute;nh v&agrave; th&aacute;o k&iacute;nh;</p>\r\n\r\n<p>- Tr&aacute;nh cầm v&agrave;o tr&ograve;ng k&iacute;nh, mắt k&iacute;nh;</p>\r\n\r\n<p>- Thường xuy&ecirc;n vệ sinh v&agrave; lau ch&ugrave;i k&iacute;nh bằng nước rửa, khăn lau chuy&ecirc;n dụng được tặng k&egrave;m gọng k&iacute;nh;</p>\r\n\r\n<p>- Để k&iacute;nh v&agrave;o hộp khi kh&ocirc;ng sử dụng.</p>', '<p>- Qu&yacute; kh&aacute;ch thanh to&aacute;n qua ng&acirc;n h&agrave;ng, vui l&ograve;ng chuyển tiền đến t&agrave;i khoản của K&iacute;nh mắt Ngọc Minh được mở tại một trong c&aacute;c ng&acirc;n h&agrave;ng dưới đ&acirc;y:</p>\r\n\r\n<p><span style=\"color:#3498db\"><strong>Ng&acirc;n H&agrave;ng Techcombank (khuy&ecirc;n d&ugrave;ng): </strong></span></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 19030337062013</p>\r\n\r\n<p>Chi nhanh : Hội sở</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng BIDV:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 12010007229226</p>\r\n\r\n<p>Chi nh&aacute;nh : Sở giao dịch 1</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng SHB:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 1013011470</p>\r\n\r\n<p>Chi nh&aacute;nh : CN H&agrave;n Thuy&ecirc;n</p>', 'GOL68006 Frames, TR90 (53-17-142)', 'TR90', '<h4><strong>Th&ocirc;ng số kỹ thuật: Gọng k&iacute;nh GOL68006</strong></h4>\r\n\r\n<p><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/09Note_TV.png\" style=\"height:200px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"3\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>KT Mặt khung</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/01WFont.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>143</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>KT Tr&ograve;ng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Độ rộng tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/02WLenes.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">53</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>Chiều cao tr&ograve;ng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Chiều cao tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/03HLenes.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>35</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>Cầu k&iacute;nh</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Khoảng cách cầu kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/04WBridge.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>17</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>KT C&agrave;ng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Độ dài càng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/05WEar.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>142</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>C&acirc;ng nặng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Cân nặng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/06Weight.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>11</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>gram</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>Giới t&iacute;nh</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Giới tính sử dụng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/07Sex.png\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td colspan=\"2\" style=\"vertical-align:middle\">\r\n			<div>Nam &amp; Nữ</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Tổng Quan</strong></li>\r\n</ul>\r\n\r\n<p>Gọng k&iacute;nh <strong>cận, viễn, loạn GOL68006</strong> l&agrave; d&ograve;ng k&iacute;nh thuốc kết hợp thời trang ch&iacute;nh h&atilde;ng của H&agrave;n quốc, sang trọng v&agrave; lịch l&atilde;m, ph&ugrave; hợp cho c&aacute;c bạn nam v&agrave; nữ, được giới trẻ H&agrave;n cũng như Việt rất ưa chuộng:</p>\r\n\r\n<p>- Khung k&iacute;nh được đ&uacute;c nguy&ecirc;n khối với chất liệu TR90 cao cấp si&ecirc;u dẻo, nhẹ nh&agrave;ng, bền bỉ v&agrave; giữ tr&ograve;ng rất tốt tạo cảm gi&aacute;c thoải m&aacute;i cho người sử dụng.</p>\r\n\r\n<p>- Tai k&iacute;nh hay c&agrave;ng k&iacute;nh cũng được đ&uacute;c nguy&ecirc;n khối l&agrave;m từ&nbsp;nhựa dẻo TR90 gi&uacute;p mang k&iacute;nh trong thời gian d&agrave;i cũng kh&ocirc;ng g&acirc;y kh&oacute; chịu hay&nbsp;đau&nbsp;ở v&agrave;nh tai.</p>\r\n\r\n<p>- Cầu k&iacute;nh hay đệm mũi nguy&ecirc;n khối được cải tiến nhiều năm ph&ugrave; hợp với khu&ocirc;n mặt v&agrave; sống mũi của người Ch&acirc;u &Aacute; khi đeo sẽ hạn chế rất nhiều việc tuột k&iacute;nh.</p>\r\n\r\n<p>- Chốt k&iacute;nh sử dụng chất liệu hợp kim pha trộn với Inox 304 ph&ugrave; hợp với kh&iacute; hậu nhiệt đới kh&ocirc;ng g&acirc;y rỉ s&eacute;t gi&uacute;p giữ tốt v&agrave; định h&igrave;nh form k&iacute;nh.</p>\r\n\r\n<p>- Gọng k&iacute;nh c&oacute; thể lắp mắt cận, viễn, loạn hoặc tr&ograve;ng 0 độ giả cận chống bụi.</p>\r\n\r\n<p>- Sản phẩm được tặng k&egrave;m hộp, khăn lau ch&iacute;nh h&atilde;ng v&agrave; bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao hoặc l&agrave;m việc hay phải c&uacute;i l&ecirc;n c&uacute;i xuống trị gi&aacute; 20.000 đồng.</p>\r\n\r\n<ul>\r\n	<li><strong>H&igrave;nh ảnh thực tế của sản phẩm GOL68006</strong></li>\r\n</ul>\r\n\r\n<p><img src=\"http://ngocminhoptic.com/FILES/source/Calogue/13-GOL68006/68006TR90B.png\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh, bảo tr&iacute; v&agrave; hỗ trợ sản phẩm: </strong></li>\r\n</ul>\r\n\r\n<p>- Sản phẩm được bảo h&agrave;nh 06 th&aacute;ng cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- 1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>\r\n\r\n<p>- Vệ sinh k&iacute;nh định kỳ trọn đời kh&ocirc;ng t&iacute;nh ph&iacute;;</p>\r\n\r\n<p>- Hỗ trợ chi ph&iacute; l&ecirc;n tới 30% gi&aacute; trị sản phẩm gọng k&iacute;nh mới nếu nguy&ecirc;n nh&acirc;n bị g&atilde;y do kh&aacute;ch h&agrave;ng kh&ocirc;ng cố &yacute;.;</p>\r\n\r\n<p>- Sau 1 thời gian sử dụng, nếu k&iacute;nh bị rộng, c&ocirc;ng v&ecirc;nh, m&oacute;p m&eacute;o do v&ocirc; &yacute;, K&iacute;nh mắt Ngọc Minh sẽ tinh chỉnh miễn ph&iacute; cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- Bảo h&agrave;nh v&agrave; thay mới kh&ocirc;ng t&iacute;nh ph&iacute; đối với đệm mũi, ốc v&iacute;t nếu bị rỉ s&eacute;t (kh&ocirc;ng &aacute;p dụng cho c&aacute;c sản phẩm nguy&ecirc;n khối);</p>\r\n\r\n<p>- Kh&ocirc;ng bảo h&agrave;nh đối với c&aacute;c sản phẩm đ&atilde; bị trầy, xước, ch&aacute;y, nổ, bong sơn, l&atilde;o h&oacute;a, thay đổi h&igrave;nh d&aacute;ng sản phầm... trong qu&aacute; tr&igrave;nh sử dụng;</p>\r\n\r\n<p>- Bảo tr&igrave; trọn đời sản phẩm tr&ecirc;n tất cả c&aacute;c chi nh&aacute;nh của NgocMinh Optic.</p>\r\n\r\n<ul>\r\n	<li><strong>Hướng dẫn bảo quản:</strong></li>\r\n</ul>\r\n\r\n<p>- N&ecirc;n d&ugrave;ng cả hai tay khi đeo k&iacute;nh v&agrave; th&aacute;o k&iacute;nh;</p>\r\n\r\n<p>- Tr&aacute;nh cầm v&agrave;o tr&ograve;ng k&iacute;nh, mắt k&iacute;nh;</p>\r\n\r\n<p>- Thường xuy&ecirc;n vệ sinh v&agrave; lau ch&ugrave;i k&iacute;nh bằng nước rửa, khăn lau chuy&ecirc;n dụng được tặng k&egrave;m gọng k&iacute;nh;</p>\r\n\r\n<p>- Để k&iacute;nh v&agrave;o hộp khi kh&ocirc;ng sử dụng.</p>', '<p>- Qu&yacute; kh&aacute;ch thanh to&aacute;n qua ng&acirc;n h&agrave;ng, vui l&ograve;ng chuyển tiền đến t&agrave;i khoản của K&iacute;nh mắt Ngọc Minh được mở tại một trong c&aacute;c ng&acirc;n h&agrave;ng dưới đ&acirc;y:</p>\r\n\r\n<p><span style=\"color:#3498db\"><strong>Ng&acirc;n H&agrave;ng Techcombank (khuy&ecirc;n d&ugrave;ng): </strong></span></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 19030337062013</p>\r\n\r\n<p>Chi nhanh : Hội sở</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng BIDV:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 12010007229226</p>\r\n\r\n<p>Chi nh&aacute;nh : Sở giao dịch 1</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng SHB:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 1013011470</p>\r\n\r\n<p>Chi nh&aacute;nh : CN H&agrave;n Thuy&ecirc;n</p>', NULL, NULL, NULL, 1, '2020-04-20 01:52:11', '2020-05-14 01:07:47'),
(5, 'GOL8023', 'gol8023-gong-kinh-gol-titanium-55-17-142', 'GOL8023 - Gọng kính GOL, Titanium (55-17-142)', 9, 1, 800000, NULL, 'Titanium', '<ul>\r\n	<li><strong>Khuyến Mại</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng hộp k&iacute;nh v&agrave; khăn lau ch&iacute;nh h&atilde;ng của K&iacute;nh mắt Ngọc Minh.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng 01 bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao trị gi&aacute; 20.000 đồng</p>\r\n\r\n<ul>\r\n	<li><strong>Bảo h&agrave;nh</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Sản phẩm được bảo h&agrave;nh <strong>06 th&aacute;ng</strong> cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng, <strong>1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu ti&ecirc;n</strong>&nbsp;sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>', '<ul>\r\n	<li><strong>Khuyến Mại</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng hộp k&iacute;nh v&agrave; khăn lau ch&iacute;nh h&atilde;ng của K&iacute;nh mắt Ngọc Minh.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng 01 bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao trị gi&aacute; 20.000 đồng</p>\r\n\r\n<ul>\r\n	<li><strong>Bảo h&agrave;nh</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Sản phẩm được bảo h&agrave;nh <strong>06 th&aacute;ng</strong> cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng, <strong>1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu ti&ecirc;n</strong>&nbsp;sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>', '<h4><strong>Th&ocirc;ng số kỹ thuật: Gọng k&iacute;nh GOL8023</strong></h4>\r\n\r\n<p><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/09Note_TV.png\" style=\"height:200px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"3\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>KT Mặt khung</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/01WFont.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>138</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>KT Tr&ograve;ng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Độ rộng tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/02WLenes.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>55</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>Chiều cao tr&ograve;ng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Chiều cao tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/03HLenes.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>34</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>Cầu k&iacute;nh</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Khoảng cách cầu kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/04WBridge.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>17</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>KT C&agrave;ng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Độ dài càng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/05WEar.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>142</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>C&acirc;ng nặng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Cân nặng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/06Weight.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>11</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>gram</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>Giới t&iacute;nh</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Giới tính sử dụng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/07Sex.png\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td colspan=\"2\" style=\"vertical-align:middle\">\r\n			<div>Nam</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<ul>\r\n	<li><strong>Tổng Quan</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Gọng k&iacute;nh <strong>cận, viễn, loạn GOL8023</strong> l&agrave; d&ograve;ng k&iacute;nh thuốc kết hợp thời trang ch&iacute;nh h&atilde;ng của H&agrave;n quốc, sang trọng v&agrave; lịch l&atilde;m, ph&ugrave; hợp cho c&aacute;c bạn nam v&agrave; nữ, được giới trẻ H&agrave;n cũng như Việt rất ưa chuộng:</p>\r\n\r\n<p>- Khung k&iacute;nh được đ&uacute;c nguy&ecirc;n khối với chất liệu Titanium cao cấp si&ecirc;u nhẹ, bền bỉ v&agrave; giữ tr&ograve;ng rất tốt tạo cảm gi&aacute;c thoải m&aacute;i cho người sử dụng.</p>\r\n\r\n<p>- Tai k&iacute;nh hay c&agrave;ng k&iacute;nh cũng được đ&uacute;c nguy&ecirc;n khối l&agrave;m từ&nbsp;Titanium gi&uacute;p mang k&iacute;nh trong thời gian d&agrave;i cũng kh&ocirc;ng g&acirc;y kh&oacute; chịu hay&nbsp;đau&nbsp;ở v&agrave;nh tai.</p>\r\n\r\n<p>- Đệm mũi được cải tiến nhiều năm ph&ugrave; hợp với khu&ocirc;n mặt v&agrave; sống mũi của người Ch&acirc;u &Aacute; khi đeo sẽ hạn chế rất nhiều việc tuột k&iacute;nh.</p>\r\n\r\n<p>- Chốt k&iacute;nh sử dụng chất liệu hợp kim pha trộn với Inox 304 ph&ugrave; hợp với kh&iacute; hậu nhiệt đới kh&ocirc;ng g&acirc;y rỉ s&eacute;t gi&uacute;p giữ tốt v&agrave; định h&igrave;nh form k&iacute;nh.</p>\r\n\r\n<p>- Gọng k&iacute;nh c&oacute; thể lắp mắt cận, viễn, loạn hoặc tr&ograve;ng 0 độ giả cận chống bụi.</p>\r\n\r\n<p>- Sản phẩm được tặng k&egrave;m hộp, khăn lau ch&iacute;nh h&atilde;ng v&agrave; bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao hoặc l&agrave;m việc hay phải c&uacute;i l&ecirc;n c&uacute;i xuống trị gi&aacute; 20.000 đồng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>H&igrave;nh ảnh thực tế của sản phẩm GOL8023</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"GOL68006\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/02-GOL8023/8023TitaniumG.png\" style=\"width:690px\" /></p>\r\n\r\n<p><img alt=\"GOL68006\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/02-GOL8023/8023TitaniumS.png\" style=\"width:690px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh, bảo tr&iacute; v&agrave; hỗ trợ sản phẩm: </strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Sản phẩm được bảo h&agrave;nh 06 th&aacute;ng cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- 1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>\r\n\r\n<p>- Vệ sinh k&iacute;nh định kỳ trọn đời kh&ocirc;ng t&iacute;nh ph&iacute;;</p>\r\n\r\n<p>- Hỗ trợ chi ph&iacute; l&ecirc;n tới 30% gi&aacute; trị sản phẩm gọng k&iacute;nh mới nếu nguy&ecirc;n nh&acirc;n bị g&atilde;y do kh&aacute;ch h&agrave;ng kh&ocirc;ng cố &yacute;.;</p>\r\n\r\n<p>- Sau 1 thời gian sử dụng, nếu k&iacute;nh bị rộng, c&ocirc;ng v&ecirc;nh, m&oacute;p m&eacute;o do v&ocirc; &yacute;, K&iacute;nh mắt Ngọc Minh sẽ tinh chỉnh miễn ph&iacute; cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- Bảo h&agrave;nh v&agrave; thay mới kh&ocirc;ng t&iacute;nh ph&iacute; đối với đệm mũi, ốc v&iacute;t nếu bị rỉ s&eacute;t (kh&ocirc;ng &aacute;p dụng cho c&aacute;c sản phẩm nguy&ecirc;n khối);</p>\r\n\r\n<p>- Kh&ocirc;ng bảo h&agrave;nh đối với c&aacute;c sản phẩm đ&atilde; bị trầy, xước, ch&aacute;y, nổ, bong sơn, l&atilde;o h&oacute;a, thay đổi h&igrave;nh d&aacute;ng sản phầm... trong qu&aacute; tr&igrave;nh sử dụng;</p>\r\n\r\n<p>- Bảo tr&igrave; trọn đời sản phẩm tr&ecirc;n tất cả c&aacute;c chi nh&aacute;nh của NgocMinh Optic.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Hướng dẫn bảo quản:</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- N&ecirc;n d&ugrave;ng cả hai tay khi đeo k&iacute;nh v&agrave; th&aacute;o k&iacute;nh;</p>\r\n\r\n<p>- Tr&aacute;nh cầm v&agrave;o tr&ograve;ng k&iacute;nh, mắt k&iacute;nh;</p>\r\n\r\n<p>- Thường xuy&ecirc;n vệ sinh v&agrave; lau ch&ugrave;i k&iacute;nh bằng nước rửa, khăn lau chuy&ecirc;n dụng được tặng k&egrave;m gọng k&iacute;nh;</p>\r\n\r\n<p>- Để k&iacute;nh v&agrave;o hộp khi kh&ocirc;ng sử dụng.</p>', '<p>- Qu&yacute; kh&aacute;ch thanh to&aacute;n qua ng&acirc;n h&agrave;ng, vui l&ograve;ng chuyển tiền đến t&agrave;i khoản của K&iacute;nh mắt Ngọc Minh được mở tại một trong c&aacute;c ng&acirc;n h&agrave;ng dưới đ&acirc;y:</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng Techcombank (khuy&ecirc;n d&ugrave;ng): </strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 19030337062013</p>\r\n\r\n<p>Chi nhanh : Hội sở</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng BIDV:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 12010007229226</p>\r\n\r\n<p>Chi nh&aacute;nh : Sở giao dịch 1</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng SHB:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 1013011470</p>\r\n\r\n<p>Chi nh&aacute;nh : CN H&agrave;n Thuy&ecirc;n</p>\r\n\r\n<p>&nbsp;</p>', 'GOL8023 - GOL Frame, Titanium (55-17-142)', 'Titanium', '<h4><strong>Th&ocirc;ng số kỹ thuật: Gọng k&iacute;nh GOL8023</strong></h4>\r\n\r\n<p><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/09Note_TV.png\" style=\"height:200px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"3\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>KT Mặt khung</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/01WFont.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>138</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>KT Tr&ograve;ng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Độ rộng tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/02WLenes.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>55</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>Chiều cao tr&ograve;ng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Chiều cao tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/03HLenes.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>34</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>Cầu k&iacute;nh</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Khoảng cách cầu kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/04WBridge.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>17</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>KT C&agrave;ng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Độ dài càng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/05WEar.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>142</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>C&acirc;ng nặng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Cân nặng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/06Weight.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>11</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>gram</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>Giới t&iacute;nh</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Giới tính sử dụng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/07Sex.png\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td colspan=\"2\" style=\"vertical-align:middle\">\r\n			<div>Nam</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<ul>\r\n	<li><strong>Tổng Quan</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Gọng k&iacute;nh <strong>cận, viễn, loạn GOL8023</strong> l&agrave; d&ograve;ng k&iacute;nh thuốc kết hợp thời trang ch&iacute;nh h&atilde;ng của H&agrave;n quốc, sang trọng v&agrave; lịch l&atilde;m, ph&ugrave; hợp cho c&aacute;c bạn nam v&agrave; nữ, được giới trẻ H&agrave;n cũng như Việt rất ưa chuộng:</p>\r\n\r\n<p>- Khung k&iacute;nh được đ&uacute;c nguy&ecirc;n khối với chất liệu Titanium cao cấp si&ecirc;u nhẹ, bền bỉ v&agrave; giữ tr&ograve;ng rất tốt tạo cảm gi&aacute;c thoải m&aacute;i cho người sử dụng.</p>\r\n\r\n<p>- Tai k&iacute;nh hay c&agrave;ng k&iacute;nh cũng được đ&uacute;c nguy&ecirc;n khối l&agrave;m từ&nbsp;Titanium gi&uacute;p mang k&iacute;nh trong thời gian d&agrave;i cũng kh&ocirc;ng g&acirc;y kh&oacute; chịu hay&nbsp;đau&nbsp;ở v&agrave;nh tai.</p>\r\n\r\n<p>- Đệm mũi được cải tiến nhiều năm ph&ugrave; hợp với khu&ocirc;n mặt v&agrave; sống mũi của người Ch&acirc;u &Aacute; khi đeo sẽ hạn chế rất nhiều việc tuột k&iacute;nh.</p>\r\n\r\n<p>- Chốt k&iacute;nh sử dụng chất liệu hợp kim pha trộn với Inox 304 ph&ugrave; hợp với kh&iacute; hậu nhiệt đới kh&ocirc;ng g&acirc;y rỉ s&eacute;t gi&uacute;p giữ tốt v&agrave; định h&igrave;nh form k&iacute;nh.</p>\r\n\r\n<p>- Gọng k&iacute;nh c&oacute; thể lắp mắt cận, viễn, loạn hoặc tr&ograve;ng 0 độ giả cận chống bụi.</p>\r\n\r\n<p>- Sản phẩm được tặng k&egrave;m hộp, khăn lau ch&iacute;nh h&atilde;ng v&agrave; bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao hoặc l&agrave;m việc hay phải c&uacute;i l&ecirc;n c&uacute;i xuống trị gi&aacute; 20.000 đồng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>H&igrave;nh ảnh thực tế của sản phẩm GOL8023</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"GOL68006\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/02-GOL8023/8023TitaniumG.png\" style=\"width:690px\" /></p>\r\n\r\n<p><img alt=\"GOL68006\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/02-GOL8023/8023TitaniumS.png\" style=\"width:690px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh, bảo tr&iacute; v&agrave; hỗ trợ sản phẩm: </strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Sản phẩm được bảo h&agrave;nh 06 th&aacute;ng cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- 1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>\r\n\r\n<p>- Vệ sinh k&iacute;nh định kỳ trọn đời kh&ocirc;ng t&iacute;nh ph&iacute;;</p>\r\n\r\n<p>- Hỗ trợ chi ph&iacute; l&ecirc;n tới 30% gi&aacute; trị sản phẩm gọng k&iacute;nh mới nếu nguy&ecirc;n nh&acirc;n bị g&atilde;y do kh&aacute;ch h&agrave;ng kh&ocirc;ng cố &yacute;.;</p>\r\n\r\n<p>- Sau 1 thời gian sử dụng, nếu k&iacute;nh bị rộng, c&ocirc;ng v&ecirc;nh, m&oacute;p m&eacute;o do v&ocirc; &yacute;, K&iacute;nh mắt Ngọc Minh sẽ tinh chỉnh miễn ph&iacute; cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- Bảo h&agrave;nh v&agrave; thay mới kh&ocirc;ng t&iacute;nh ph&iacute; đối với đệm mũi, ốc v&iacute;t nếu bị rỉ s&eacute;t (kh&ocirc;ng &aacute;p dụng cho c&aacute;c sản phẩm nguy&ecirc;n khối);</p>\r\n\r\n<p>- Kh&ocirc;ng bảo h&agrave;nh đối với c&aacute;c sản phẩm đ&atilde; bị trầy, xước, ch&aacute;y, nổ, bong sơn, l&atilde;o h&oacute;a, thay đổi h&igrave;nh d&aacute;ng sản phầm... trong qu&aacute; tr&igrave;nh sử dụng;</p>\r\n\r\n<p>- Bảo tr&igrave; trọn đời sản phẩm tr&ecirc;n tất cả c&aacute;c chi nh&aacute;nh của NgocMinh Optic.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Hướng dẫn bảo quản:</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- N&ecirc;n d&ugrave;ng cả hai tay khi đeo k&iacute;nh v&agrave; th&aacute;o k&iacute;nh;</p>\r\n\r\n<p>- Tr&aacute;nh cầm v&agrave;o tr&ograve;ng k&iacute;nh, mắt k&iacute;nh;</p>\r\n\r\n<p>- Thường xuy&ecirc;n vệ sinh v&agrave; lau ch&ugrave;i k&iacute;nh bằng nước rửa, khăn lau chuy&ecirc;n dụng được tặng k&egrave;m gọng k&iacute;nh;</p>\r\n\r\n<p>- Để k&iacute;nh v&agrave;o hộp khi kh&ocirc;ng sử dụng.</p>', '<p>- Qu&yacute; kh&aacute;ch thanh to&aacute;n qua ng&acirc;n h&agrave;ng, vui l&ograve;ng chuyển tiền đến t&agrave;i khoản của K&iacute;nh mắt Ngọc Minh được mở tại một trong c&aacute;c ng&acirc;n h&agrave;ng dưới đ&acirc;y:</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng Techcombank (khuy&ecirc;n d&ugrave;ng): </strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 19030337062013</p>\r\n\r\n<p>Chi nhanh : Hội sở</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng BIDV:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 12010007229226</p>\r\n\r\n<p>Chi nh&aacute;nh : Sở giao dịch 1</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng SHB:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 1013011470</p>\r\n\r\n<p>Chi nh&aacute;nh : CN H&agrave;n Thuy&ecirc;n</p>\r\n\r\n<p>&nbsp;</p>', 'Titanium', 'Titanium', 'Titanium', 1, '2020-05-08 02:05:49', '2020-05-14 01:08:56');
INSERT INTO `products` (`id`, `sku`, `slug`, `name`, `type_id`, `is_display`, `price`, `saleoff`, `chatlieu`, `description`, `description_en`, `content`, `note`, `name_en`, `chatlieu_en`, `content_en`, `note_en`, `meta_title`, `meta_des`, `meta_key`, `status`, `created_at`, `updated_at`) VALUES
(6, 'GOL8039', 'gol8039-gong-kinh-nua-khung-gol-titanium-52-17-145', 'GOL8039 - Gọng kính nửa khung GOL, Titanium (52-17-145)', 9, 1, 800000, NULL, 'Titanium', '<ul>\r\n	<li><strong>Khuyến Mại</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng hộp k&iacute;nh v&agrave; khăn lau ch&iacute;nh h&atilde;ng của K&iacute;nh mắt Ngọc Minh.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng 01 bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao trị gi&aacute; 20.000 đồng</p>\r\n\r\n<ul>\r\n	<li><strong>Bảo h&agrave;nh</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Sản phẩm được bảo h&agrave;nh <strong>06 th&aacute;ng</strong> cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng, <strong>1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu ti&ecirc;n</strong>&nbsp;sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>', '<ul>\r\n	<li><strong>Khuyến Mại</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng hộp k&iacute;nh v&agrave; khăn lau ch&iacute;nh h&atilde;ng của K&iacute;nh mắt Ngọc Minh.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng 01 bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao trị gi&aacute; 20.000 đồng</p>\r\n\r\n<ul>\r\n	<li><strong>Bảo h&agrave;nh</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Sản phẩm được bảo h&agrave;nh <strong>06 th&aacute;ng</strong> cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng, <strong>1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu ti&ecirc;n</strong>&nbsp;sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>', '<h4><strong>Th&ocirc;ng số kỹ thuật: Gọng k&iacute;nh GOL8039</strong></h4>\r\n\r\n<p><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/09Note_TV.png\" style=\"height:200px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"3\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>KT Mặt khung</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/01WFont.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>141</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>KT Tr&ograve;ng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Độ rộng tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/02WLenes.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">52</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>Chiều cao tr&ograve;ng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Chiều cao tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/03HLenes.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>32</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>Cầu k&iacute;nh</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Khoảng cách cầu kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/04WBridge.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>17</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>KT C&agrave;ng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Độ dài càng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/05WEar.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>145</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>C&acirc;ng nặng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Cân nặng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/06Weight.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>11</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>gram</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>Giới t&iacute;nh</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Giới tính sử dụng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/07Sex.png\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td colspan=\"2\" style=\"vertical-align:middle\">\r\n			<div>Nam/Nữ</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<ul>\r\n	<li><strong>Tổng Quan</strong></li>\r\n</ul>\r\n\r\n<p>Gọng k&iacute;nh <strong>cận, viễn, loạn GOL8039</strong> l&agrave; d&ograve;ng k&iacute;nh thuốc nửa khung&nbsp;kết hợp thời trang ch&iacute;nh h&atilde;ng của H&agrave;n quốc, sang trọng v&agrave; lịch l&atilde;m, ph&ugrave; hợp cho c&aacute;c bạn nam v&agrave; nữ, được giới trẻ H&agrave;n cũng như Việt rất ưa chuộng:</p>\r\n\r\n<p>- Khung k&iacute;nh được kết hợp&nbsp;đ&uacute;c nguy&ecirc;n khối với chất liệu Titanium cao cấp si&ecirc;u nhẹ v&agrave; cước Otamoko&nbsp;bền bỉ giữ tr&ograve;ng rất tốt tạo cảm gi&aacute;c thoải m&aacute;i cho người sử dụng.</p>\r\n\r\n<p>- Tai k&iacute;nh hay c&agrave;ng k&iacute;nh cũng được đ&uacute;c nguy&ecirc;n khối l&agrave;m từ&nbsp;Titanium gi&uacute;p mang k&iacute;nh trong thời gian d&agrave;i cũng kh&ocirc;ng g&acirc;y kh&oacute; chịu hay&nbsp;đau&nbsp;ở v&agrave;nh tai.</p>\r\n\r\n<p>- Đệm mũi được cải tiến nhiều năm ph&ugrave; hợp với khu&ocirc;n mặt v&agrave; sống mũi của người Ch&acirc;u &Aacute; khi đeo sẽ hạn chế rất nhiều việc tuột k&iacute;nh.</p>\r\n\r\n<p>- Chốt k&iacute;nh sử dụng chất liệu hợp kim pha trộn với Inox 304 ph&ugrave; hợp với kh&iacute; hậu nhiệt đới kh&ocirc;ng g&acirc;y rỉ s&eacute;t gi&uacute;p giữ tốt v&agrave; định h&igrave;nh form k&iacute;nh.</p>\r\n\r\n<p>- Gọng k&iacute;nh c&oacute; thể lắp mắt cận, viễn, loạn hoặc tr&ograve;ng 0 độ giả cận chống bụi.</p>\r\n\r\n<p>- Sản phẩm được tặng k&egrave;m hộp, khăn lau ch&iacute;nh h&atilde;ng v&agrave; bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao hoặc l&agrave;m việc hay phải c&uacute;i l&ecirc;n c&uacute;i xuống trị gi&aacute; 20.000 đồng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>H&igrave;nh ảnh thực tế của sản phẩm GOL8039</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"http://ngocminhoptic.com/FILES/source/Calogue/03-GOL8039/8039TitaniumG.png\" /></p>\r\n\r\n<p><img src=\"http://ngocminhoptic.com/FILES/source/Calogue/03-GOL8039/8039TitaniumS.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh, bảo tr&iacute; v&agrave; hỗ trợ sản phẩm: </strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Sản phẩm được bảo h&agrave;nh 06 th&aacute;ng cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- 1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>\r\n\r\n<p>- Vệ sinh k&iacute;nh định kỳ trọn đời kh&ocirc;ng t&iacute;nh ph&iacute;;</p>\r\n\r\n<p>- Hỗ trợ chi ph&iacute; l&ecirc;n tới 30% gi&aacute; trị sản phẩm gọng k&iacute;nh mới nếu nguy&ecirc;n nh&acirc;n bị g&atilde;y do kh&aacute;ch h&agrave;ng kh&ocirc;ng cố &yacute;.;</p>\r\n\r\n<p>- Sau 1 thời gian sử dụng, nếu k&iacute;nh bị rộng, c&ocirc;ng v&ecirc;nh, m&oacute;p m&eacute;o do v&ocirc; &yacute;, K&iacute;nh mắt Ngọc Minh sẽ tinh chỉnh miễn ph&iacute; cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- Bảo h&agrave;nh v&agrave; thay mới kh&ocirc;ng t&iacute;nh ph&iacute; đối với đệm mũi, ốc v&iacute;t nếu bị rỉ s&eacute;t (kh&ocirc;ng &aacute;p dụng cho c&aacute;c sản phẩm nguy&ecirc;n khối);</p>\r\n\r\n<p>- Kh&ocirc;ng bảo h&agrave;nh đối với c&aacute;c sản phẩm đ&atilde; bị trầy, xước, ch&aacute;y, nổ, bong sơn, l&atilde;o h&oacute;a, thay đổi h&igrave;nh d&aacute;ng sản phầm... trong qu&aacute; tr&igrave;nh sử dụng;</p>\r\n\r\n<p>- Bảo tr&igrave; trọn đời sản phẩm tr&ecirc;n tất cả c&aacute;c chi nh&aacute;nh của NgocMinh Optic.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Hướng dẫn bảo quản:</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- N&ecirc;n d&ugrave;ng cả hai tay khi đeo k&iacute;nh v&agrave; th&aacute;o k&iacute;nh;</p>\r\n\r\n<p>- Tr&aacute;nh cầm v&agrave;o tr&ograve;ng k&iacute;nh, mắt k&iacute;nh;</p>\r\n\r\n<p>- Thường xuy&ecirc;n vệ sinh v&agrave; lau ch&ugrave;i k&iacute;nh bằng nước rửa, khăn lau chuy&ecirc;n dụng được tặng k&egrave;m gọng k&iacute;nh;</p>\r\n\r\n<p>- Để k&iacute;nh v&agrave;o hộp khi kh&ocirc;ng sử dụng.</p>', '<p>- Qu&yacute; kh&aacute;ch thanh to&aacute;n qua ng&acirc;n h&agrave;ng, vui l&ograve;ng chuyển tiền đến t&agrave;i khoản của K&iacute;nh mắt Ngọc Minh được mở tại một trong c&aacute;c ng&acirc;n h&agrave;ng dưới đ&acirc;y:</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng Techcombank (khuy&ecirc;n d&ugrave;ng): </strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 19030337062013</p>\r\n\r\n<p>Chi nhanh : Hội sở</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng BIDV:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 12010007229226</p>\r\n\r\n<p>Chi nh&aacute;nh : Sở giao dịch 1</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng SHB:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 1013011470</p>\r\n\r\n<p>Chi nh&aacute;nh : CN H&agrave;n Thuy&ecirc;n</p>\r\n\r\n<p>&nbsp;</p>', 'GOL8039 - GOL Half Frame, Titanium (52-17-145)', 'Titanium', '<h4><strong>Th&ocirc;ng số kỹ thuật: Gọng k&iacute;nh GOL8039</strong></h4>\r\n\r\n<p><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/09Note_TV.png\" style=\"height:200px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"3\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>KT Mặt khung</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/01WFont.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>141</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>KT Tr&ograve;ng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Độ rộng tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/02WLenes.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">52</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>Chiều cao tr&ograve;ng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Chiều cao tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/03HLenes.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>32</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>Cầu k&iacute;nh</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Khoảng cách cầu kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/04WBridge.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>17</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>KT C&agrave;ng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Độ dài càng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/05WEar.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>145</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>mm</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>C&acirc;ng nặng</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Cân nặng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/06Weight.gif\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>11</div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>gram</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:middle\">\r\n			<div><strong>Giới t&iacute;nh</strong></div>\r\n			</td>\r\n			<td style=\"vertical-align:middle\">\r\n			<div>\r\n			<div><img alt=\"Giới tính sử dụng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/07Sex.png\" style=\"height:30px\" /></div>\r\n			</div>\r\n			</td>\r\n			<td colspan=\"2\" style=\"vertical-align:middle\">\r\n			<div>Nam/Nữ</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"vertical-align:middle\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<ul>\r\n	<li><strong>Tổng Quan</strong></li>\r\n</ul>\r\n\r\n<p>Gọng k&iacute;nh <strong>cận, viễn, loạn GOL8039</strong> l&agrave; d&ograve;ng k&iacute;nh thuốc nửa khung&nbsp;kết hợp thời trang ch&iacute;nh h&atilde;ng của H&agrave;n quốc, sang trọng v&agrave; lịch l&atilde;m, ph&ugrave; hợp cho c&aacute;c bạn nam v&agrave; nữ, được giới trẻ H&agrave;n cũng như Việt rất ưa chuộng:</p>\r\n\r\n<p>- Khung k&iacute;nh được kết hợp&nbsp;đ&uacute;c nguy&ecirc;n khối với chất liệu Titanium cao cấp si&ecirc;u nhẹ v&agrave; cước Otamoko&nbsp;bền bỉ giữ tr&ograve;ng rất tốt tạo cảm gi&aacute;c thoải m&aacute;i cho người sử dụng.</p>\r\n\r\n<p>- Tai k&iacute;nh hay c&agrave;ng k&iacute;nh cũng được đ&uacute;c nguy&ecirc;n khối l&agrave;m từ&nbsp;Titanium gi&uacute;p mang k&iacute;nh trong thời gian d&agrave;i cũng kh&ocirc;ng g&acirc;y kh&oacute; chịu hay&nbsp;đau&nbsp;ở v&agrave;nh tai.</p>\r\n\r\n<p>- Đệm mũi được cải tiến nhiều năm ph&ugrave; hợp với khu&ocirc;n mặt v&agrave; sống mũi của người Ch&acirc;u &Aacute; khi đeo sẽ hạn chế rất nhiều việc tuột k&iacute;nh.</p>\r\n\r\n<p>- Chốt k&iacute;nh sử dụng chất liệu hợp kim pha trộn với Inox 304 ph&ugrave; hợp với kh&iacute; hậu nhiệt đới kh&ocirc;ng g&acirc;y rỉ s&eacute;t gi&uacute;p giữ tốt v&agrave; định h&igrave;nh form k&iacute;nh.</p>\r\n\r\n<p>- Gọng k&iacute;nh c&oacute; thể lắp mắt cận, viễn, loạn hoặc tr&ograve;ng 0 độ giả cận chống bụi.</p>\r\n\r\n<p>- Sản phẩm được tặng k&egrave;m hộp, khăn lau ch&iacute;nh h&atilde;ng v&agrave; bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao hoặc l&agrave;m việc hay phải c&uacute;i l&ecirc;n c&uacute;i xuống trị gi&aacute; 20.000 đồng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>H&igrave;nh ảnh thực tế của sản phẩm GOL8039</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"http://ngocminhoptic.com/FILES/source/Calogue/03-GOL8039/8039TitaniumG.png\" /></p>\r\n\r\n<p><img src=\"http://ngocminhoptic.com/FILES/source/Calogue/03-GOL8039/8039TitaniumS.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh, bảo tr&iacute; v&agrave; hỗ trợ sản phẩm: </strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Sản phẩm được bảo h&agrave;nh 06 th&aacute;ng cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- 1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>\r\n\r\n<p>- Vệ sinh k&iacute;nh định kỳ trọn đời kh&ocirc;ng t&iacute;nh ph&iacute;;</p>\r\n\r\n<p>- Hỗ trợ chi ph&iacute; l&ecirc;n tới 30% gi&aacute; trị sản phẩm gọng k&iacute;nh mới nếu nguy&ecirc;n nh&acirc;n bị g&atilde;y do kh&aacute;ch h&agrave;ng kh&ocirc;ng cố &yacute;.;</p>\r\n\r\n<p>- Sau 1 thời gian sử dụng, nếu k&iacute;nh bị rộng, c&ocirc;ng v&ecirc;nh, m&oacute;p m&eacute;o do v&ocirc; &yacute;, K&iacute;nh mắt Ngọc Minh sẽ tinh chỉnh miễn ph&iacute; cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- Bảo h&agrave;nh v&agrave; thay mới kh&ocirc;ng t&iacute;nh ph&iacute; đối với đệm mũi, ốc v&iacute;t nếu bị rỉ s&eacute;t (kh&ocirc;ng &aacute;p dụng cho c&aacute;c sản phẩm nguy&ecirc;n khối);</p>\r\n\r\n<p>- Kh&ocirc;ng bảo h&agrave;nh đối với c&aacute;c sản phẩm đ&atilde; bị trầy, xước, ch&aacute;y, nổ, bong sơn, l&atilde;o h&oacute;a, thay đổi h&igrave;nh d&aacute;ng sản phầm... trong qu&aacute; tr&igrave;nh sử dụng;</p>\r\n\r\n<p>- Bảo tr&igrave; trọn đời sản phẩm tr&ecirc;n tất cả c&aacute;c chi nh&aacute;nh của NgocMinh Optic.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Hướng dẫn bảo quản:</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- N&ecirc;n d&ugrave;ng cả hai tay khi đeo k&iacute;nh v&agrave; th&aacute;o k&iacute;nh;</p>\r\n\r\n<p>- Tr&aacute;nh cầm v&agrave;o tr&ograve;ng k&iacute;nh, mắt k&iacute;nh;</p>\r\n\r\n<p>- Thường xuy&ecirc;n vệ sinh v&agrave; lau ch&ugrave;i k&iacute;nh bằng nước rửa, khăn lau chuy&ecirc;n dụng được tặng k&egrave;m gọng k&iacute;nh;</p>\r\n\r\n<p>- Để k&iacute;nh v&agrave;o hộp khi kh&ocirc;ng sử dụng.</p>', '<p>- Qu&yacute; kh&aacute;ch thanh to&aacute;n qua ng&acirc;n h&agrave;ng, vui l&ograve;ng chuyển tiền đến t&agrave;i khoản của K&iacute;nh mắt Ngọc Minh được mở tại một trong c&aacute;c ng&acirc;n h&agrave;ng dưới đ&acirc;y:</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng Techcombank (khuy&ecirc;n d&ugrave;ng): </strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 19030337062013</p>\r\n\r\n<p>Chi nhanh : Hội sở</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng BIDV:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 12010007229226</p>\r\n\r\n<p>Chi nh&aacute;nh : Sở giao dịch 1</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng SHB:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 1013011470</p>\r\n\r\n<p>Chi nh&aacute;nh : CN H&agrave;n Thuy&ecirc;n</p>\r\n\r\n<p>&nbsp;</p>', 'Titanium', 'Titanium', 'Titanium', 1, '2020-05-08 03:13:33', '2020-05-14 01:10:29'),
(7, 'GOL2212', 'gol2212-gong-kinh-gol-ultem-titanium-51-18-135', 'GOL2212 - Gọng kính GOL, Ultem - Titanium (51-18-135)', 1, 1, 700000, NULL, 'Ultem - Titanium', '<ul>\r\n	<li><strong>Khuyến Mại</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng hộp k&iacute;nh v&agrave; khăn lau ch&iacute;nh h&atilde;ng của K&iacute;nh mắt Ngọc Minh.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng 01 bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao trị gi&aacute; 20.000 đồng</p>\r\n\r\n<ul>\r\n	<li><strong>Bảo h&agrave;nh</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Sản phẩm được bảo h&agrave;nh <strong>06 th&aacute;ng</strong> cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng, <strong>1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu ti&ecirc;n</strong>&nbsp;sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>', '<ul>\r\n	<li><strong>Khuyến Mại</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng hộp k&iacute;nh v&agrave; khăn lau ch&iacute;nh h&atilde;ng của K&iacute;nh mắt Ngọc Minh.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng 01 bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao trị gi&aacute; 20.000 đồng</p>\r\n\r\n<ul>\r\n	<li><strong>Bảo h&agrave;nh</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Sản phẩm được bảo h&agrave;nh <strong>06 th&aacute;ng</strong> cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng, <strong>1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu ti&ecirc;n</strong>&nbsp;sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>', '<h4><strong>Th&ocirc;ng số kỹ thuật: Gọng k&iacute;nh GOL2212</strong></h4>\r\n\r\n<p><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/09Note_TV.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"3\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>KT Mặt khung</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/01WFont.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>136</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>KT Tr&ograve;ng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Độ rộng tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/02WLenes.gif\" /></p>\r\n			</td>\r\n			<td>51</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Chiều cao tr&ograve;ng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Chiều cao tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/03HLenes.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>44</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Cầu k&iacute;nh</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Khoảng cách cầu kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/04WBridge.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>18</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>KT C&agrave;ng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Độ dài càng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/05WEar.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>135</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>C&acirc;ng nặng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Cân nặng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/06Weight.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>12</p>\r\n			</td>\r\n			<td>\r\n			<p>gram</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Giới t&iacute;nh</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Giới tính sử dụng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/07Sex.png\" /></p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>Nữ</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Tổng Quan</strong></li>\r\n</ul>\r\n\r\n<p>Gọng k&iacute;nh <strong>cận, viễn, loạn GOL2212</strong> l&agrave; d&ograve;ng k&iacute;nh thuốc kết hợp thời trang ch&iacute;nh h&atilde;ng của H&agrave;n quốc, sang trọng v&agrave; lịch l&atilde;m, ph&ugrave; hợp cho c&aacute;c bạn nam v&agrave; nữ, được giới trẻ H&agrave;n cũng như Việt rất ưa chuộng:</p>\r\n\r\n<p>- Khung k&iacute;nh được đ&uacute;c nguy&ecirc;n khối với chất liệu Ultem cao cấp si&ecirc;u dẻo, nhẹ nh&agrave;ng, bền bỉ v&agrave; giữ tr&ograve;ng rất tốt tạo cảm gi&aacute;c thoải m&aacute;i cho người sử dụng.</p>\r\n\r\n<p>- Tai k&iacute;nh hay c&agrave;ng k&iacute;nh cũng được cấu tạo từ Titanium kết hợp với Silicon&nbsp;gi&uacute;p mang k&iacute;nh trong thời gian d&agrave;i cũng kh&ocirc;ng g&acirc;y kh&oacute; chịu hay&nbsp;đau&nbsp;ở v&agrave;nh tai.</p>\r\n\r\n<p>- Cầu k&iacute;nh hay đệm mũi nguy&ecirc;n khối được cải tiến nhiều năm ph&ugrave; hợp với khu&ocirc;n mặt v&agrave; sống mũi của người Ch&acirc;u &Aacute; khi đeo sẽ hạn chế rất nhiều việc tuột k&iacute;nh.</p>\r\n\r\n<p>- Chốt k&iacute;nh sử dụng chất liệu hợp kim pha trộn với Inox 304 ph&ugrave; hợp với kh&iacute; hậu nhiệt đới kh&ocirc;ng g&acirc;y rỉ s&eacute;t gi&uacute;p giữ tốt v&agrave; định h&igrave;nh form k&iacute;nh.</p>\r\n\r\n<p>- Gọng k&iacute;nh c&oacute; thể lắp mắt cận, viễn, loạn hoặc tr&ograve;ng 0 độ giả cận chống bụi.</p>\r\n\r\n<p>- Sản phẩm được tặng k&egrave;m hộp, khăn lau ch&iacute;nh h&atilde;ng v&agrave; bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao hoặc l&agrave;m việc hay phải c&uacute;i l&ecirc;n c&uacute;i xuống trị gi&aacute; 20.000 đồng.</p>\r\n\r\n<ul>\r\n	<li><strong>H&igrave;nh ảnh thực tế của sản phẩm GOL2212</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"http://ngocminhoptic.com/FILES/source/Calogue/04-GOL2212/2212UltemTitaniumT.png\" style=\"width:690px\" /></p>\r\n\r\n<p><img src=\"http://ngocminhoptic.com/FILES/source/Calogue/04-GOL2212/2212UltemTitaniumB.png\" style=\"width:690px\" /></p>\r\n\r\n<p><img src=\"http://ngocminhoptic.com/FILES/source/Calogue/04-GOL2212/2212UltemTitaniumBrown.png\" style=\"width:690px\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh, bảo tr&iacute; v&agrave; hỗ trợ sản phẩm: </strong></li>\r\n</ul>\r\n\r\n<p>- Sản phẩm được bảo h&agrave;nh 06 th&aacute;ng cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- 1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>\r\n\r\n<p>- Vệ sinh k&iacute;nh định kỳ trọn đời kh&ocirc;ng t&iacute;nh ph&iacute;;</p>\r\n\r\n<p>- Hỗ trợ chi ph&iacute; l&ecirc;n tới 30% gi&aacute; trị sản phẩm gọng k&iacute;nh mới nếu nguy&ecirc;n nh&acirc;n bị g&atilde;y do kh&aacute;ch h&agrave;ng kh&ocirc;ng cố &yacute;.;</p>\r\n\r\n<p>- Sau 1 thời gian sử dụng, nếu k&iacute;nh bị rộng, c&ocirc;ng v&ecirc;nh, m&oacute;p m&eacute;o do v&ocirc; &yacute;, K&iacute;nh mắt Ngọc Minh sẽ tinh chỉnh miễn ph&iacute; cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- Bảo h&agrave;nh v&agrave; thay mới kh&ocirc;ng t&iacute;nh ph&iacute; đối với đệm mũi, ốc v&iacute;t nếu bị rỉ s&eacute;t (kh&ocirc;ng &aacute;p dụng cho c&aacute;c sản phẩm nguy&ecirc;n khối);</p>\r\n\r\n<p>- Kh&ocirc;ng bảo h&agrave;nh đối với c&aacute;c sản phẩm đ&atilde; bị trầy, xước, ch&aacute;y, nổ, bong sơn, l&atilde;o h&oacute;a, thay đổi h&igrave;nh d&aacute;ng sản phầm... trong qu&aacute; tr&igrave;nh sử dụng;</p>\r\n\r\n<p>- Bảo tr&igrave; trọn đời sản phẩm tr&ecirc;n tất cả c&aacute;c chi nh&aacute;nh của NgocMinh Optic.</p>\r\n\r\n<ul>\r\n	<li><strong>Hướng dẫn bảo quản:</strong></li>\r\n</ul>\r\n\r\n<p>- N&ecirc;n d&ugrave;ng cả hai tay khi đeo k&iacute;nh v&agrave; th&aacute;o k&iacute;nh;</p>\r\n\r\n<p>- Tr&aacute;nh cầm v&agrave;o tr&ograve;ng k&iacute;nh, mắt k&iacute;nh;</p>\r\n\r\n<p>- Thường xuy&ecirc;n vệ sinh v&agrave; lau ch&ugrave;i k&iacute;nh bằng nước rửa, khăn lau chuy&ecirc;n dụng được tặng k&egrave;m gọng k&iacute;nh;</p>\r\n\r\n<p>- Để k&iacute;nh v&agrave;o hộp khi kh&ocirc;ng sử dụng.</p>', '<p>- Qu&yacute; kh&aacute;ch thanh to&aacute;n qua ng&acirc;n h&agrave;ng, vui l&ograve;ng chuyển tiền đến t&agrave;i khoản của K&iacute;nh mắt Ngọc Minh được mở tại một trong c&aacute;c ng&acirc;n h&agrave;ng dưới đ&acirc;y:</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng Techcombank (khuy&ecirc;n d&ugrave;ng): </strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 19030337062013</p>\r\n\r\n<p>Chi nhanh : Hội sở</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng BIDV:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 12010007229226</p>\r\n\r\n<p>Chi nh&aacute;nh : Sở giao dịch 1</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng SHB:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 1013011470</p>\r\n\r\n<p>Chi nh&aacute;nh : CN H&agrave;n Thuy&ecirc;n</p>', 'GOL2212 - GOL Frames, Ultem - Titanium (51-18-135)', 'Ultem - Titanium', '<h4><strong>Th&ocirc;ng số kỹ thuật: Gọng k&iacute;nh GOL2212</strong></h4>\r\n\r\n<p><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/09Note_TV.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"3\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>KT Mặt khung</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/01WFont.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>136</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>KT Tr&ograve;ng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Độ rộng tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/02WLenes.gif\" /></p>\r\n			</td>\r\n			<td>51</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Chiều cao tr&ograve;ng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Chiều cao tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/03HLenes.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>44</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Cầu k&iacute;nh</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Khoảng cách cầu kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/04WBridge.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>18</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>KT C&agrave;ng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Độ dài càng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/05WEar.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>135</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>C&acirc;ng nặng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Cân nặng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/06Weight.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>12</p>\r\n			</td>\r\n			<td>\r\n			<p>gram</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Giới t&iacute;nh</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Giới tính sử dụng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/07Sex.png\" /></p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>Nữ</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Tổng Quan</strong></li>\r\n</ul>\r\n\r\n<p>Gọng k&iacute;nh <strong>cận, viễn, loạn GOL2212</strong> l&agrave; d&ograve;ng k&iacute;nh thuốc kết hợp thời trang ch&iacute;nh h&atilde;ng của H&agrave;n quốc, sang trọng v&agrave; lịch l&atilde;m, ph&ugrave; hợp cho c&aacute;c bạn nam v&agrave; nữ, được giới trẻ H&agrave;n cũng như Việt rất ưa chuộng:</p>\r\n\r\n<p>- Khung k&iacute;nh được đ&uacute;c nguy&ecirc;n khối với chất liệu Ultem cao cấp si&ecirc;u dẻo, nhẹ nh&agrave;ng, bền bỉ v&agrave; giữ tr&ograve;ng rất tốt tạo cảm gi&aacute;c thoải m&aacute;i cho người sử dụng.</p>\r\n\r\n<p>- Tai k&iacute;nh hay c&agrave;ng k&iacute;nh cũng được cấu tạo từ Titanium kết hợp với Silicon&nbsp;gi&uacute;p mang k&iacute;nh trong thời gian d&agrave;i cũng kh&ocirc;ng g&acirc;y kh&oacute; chịu hay&nbsp;đau&nbsp;ở v&agrave;nh tai.</p>\r\n\r\n<p>- Cầu k&iacute;nh hay đệm mũi nguy&ecirc;n khối được cải tiến nhiều năm ph&ugrave; hợp với khu&ocirc;n mặt v&agrave; sống mũi của người Ch&acirc;u &Aacute; khi đeo sẽ hạn chế rất nhiều việc tuột k&iacute;nh.</p>\r\n\r\n<p>- Chốt k&iacute;nh sử dụng chất liệu hợp kim pha trộn với Inox 304 ph&ugrave; hợp với kh&iacute; hậu nhiệt đới kh&ocirc;ng g&acirc;y rỉ s&eacute;t gi&uacute;p giữ tốt v&agrave; định h&igrave;nh form k&iacute;nh.</p>\r\n\r\n<p>- Gọng k&iacute;nh c&oacute; thể lắp mắt cận, viễn, loạn hoặc tr&ograve;ng 0 độ giả cận chống bụi.</p>\r\n\r\n<p>- Sản phẩm được tặng k&egrave;m hộp, khăn lau ch&iacute;nh h&atilde;ng v&agrave; bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao hoặc l&agrave;m việc hay phải c&uacute;i l&ecirc;n c&uacute;i xuống trị gi&aacute; 20.000 đồng.</p>\r\n\r\n<ul>\r\n	<li><strong>H&igrave;nh ảnh thực tế của sản phẩm GOL2212</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"http://ngocminhoptic.com/FILES/source/Calogue/04-GOL2212/2212UltemTitaniumT.png\" style=\"width:690px\" /></p>\r\n\r\n<p><img src=\"http://ngocminhoptic.com/FILES/source/Calogue/04-GOL2212/2212UltemTitaniumB.png\" style=\"width:690px\" /></p>\r\n\r\n<p><img src=\"http://ngocminhoptic.com/FILES/source/Calogue/04-GOL2212/2212UltemTitaniumBrown.png\" style=\"width:690px\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh, bảo tr&iacute; v&agrave; hỗ trợ sản phẩm: </strong></li>\r\n</ul>\r\n\r\n<p>- Sản phẩm được bảo h&agrave;nh 06 th&aacute;ng cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- 1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>\r\n\r\n<p>- Vệ sinh k&iacute;nh định kỳ trọn đời kh&ocirc;ng t&iacute;nh ph&iacute;;</p>\r\n\r\n<p>- Hỗ trợ chi ph&iacute; l&ecirc;n tới 30% gi&aacute; trị sản phẩm gọng k&iacute;nh mới nếu nguy&ecirc;n nh&acirc;n bị g&atilde;y do kh&aacute;ch h&agrave;ng kh&ocirc;ng cố &yacute;.;</p>\r\n\r\n<p>- Sau 1 thời gian sử dụng, nếu k&iacute;nh bị rộng, c&ocirc;ng v&ecirc;nh, m&oacute;p m&eacute;o do v&ocirc; &yacute;, K&iacute;nh mắt Ngọc Minh sẽ tinh chỉnh miễn ph&iacute; cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- Bảo h&agrave;nh v&agrave; thay mới kh&ocirc;ng t&iacute;nh ph&iacute; đối với đệm mũi, ốc v&iacute;t nếu bị rỉ s&eacute;t (kh&ocirc;ng &aacute;p dụng cho c&aacute;c sản phẩm nguy&ecirc;n khối);</p>\r\n\r\n<p>- Kh&ocirc;ng bảo h&agrave;nh đối với c&aacute;c sản phẩm đ&atilde; bị trầy, xước, ch&aacute;y, nổ, bong sơn, l&atilde;o h&oacute;a, thay đổi h&igrave;nh d&aacute;ng sản phầm... trong qu&aacute; tr&igrave;nh sử dụng;</p>\r\n\r\n<p>- Bảo tr&igrave; trọn đời sản phẩm tr&ecirc;n tất cả c&aacute;c chi nh&aacute;nh của NgocMinh Optic.</p>\r\n\r\n<ul>\r\n	<li><strong>Hướng dẫn bảo quản:</strong></li>\r\n</ul>\r\n\r\n<p>- N&ecirc;n d&ugrave;ng cả hai tay khi đeo k&iacute;nh v&agrave; th&aacute;o k&iacute;nh;</p>\r\n\r\n<p>- Tr&aacute;nh cầm v&agrave;o tr&ograve;ng k&iacute;nh, mắt k&iacute;nh;</p>\r\n\r\n<p>- Thường xuy&ecirc;n vệ sinh v&agrave; lau ch&ugrave;i k&iacute;nh bằng nước rửa, khăn lau chuy&ecirc;n dụng được tặng k&egrave;m gọng k&iacute;nh;</p>\r\n\r\n<p>- Để k&iacute;nh v&agrave;o hộp khi kh&ocirc;ng sử dụng.</p>', '<p>- Qu&yacute; kh&aacute;ch thanh to&aacute;n qua ng&acirc;n h&agrave;ng, vui l&ograve;ng chuyển tiền đến t&agrave;i khoản của K&iacute;nh mắt Ngọc Minh được mở tại một trong c&aacute;c ng&acirc;n h&agrave;ng dưới đ&acirc;y:</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng Techcombank (khuy&ecirc;n d&ugrave;ng): </strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 19030337062013</p>\r\n\r\n<p>Chi nhanh : Hội sở</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng BIDV:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 12010007229226</p>\r\n\r\n<p>Chi nh&aacute;nh : Sở giao dịch 1</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng SHB:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 1013011470</p>\r\n\r\n<p>Chi nh&aacute;nh : CN H&agrave;n Thuy&ecirc;n</p>', 'Ultem - Titanium', 'Ultem - Titanium', 'Ultem - Titanium', 1, '2020-05-14 00:40:30', '2020-05-14 01:12:19');
INSERT INTO `products` (`id`, `sku`, `slug`, `name`, `type_id`, `is_display`, `price`, `saleoff`, `chatlieu`, `description`, `description_en`, `content`, `note`, `name_en`, `chatlieu_en`, `content_en`, `note_en`, `meta_title`, `meta_des`, `meta_key`, `status`, `created_at`, `updated_at`) VALUES
(8, 'GOL2215', 'gol2215-gong-kinh-gol-ultem-titanium-53-18-135', 'GOL2215 - Gọng kính GOL, Ultem - Titanium (53-18-135)', 1, 1, 750000, NULL, 'Ultem - Titanium', '<ul>\r\n	<li><strong>Khuyến Mại</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng hộp k&iacute;nh v&agrave; khăn lau ch&iacute;nh h&atilde;ng của K&iacute;nh mắt Ngọc Minh.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng 01 bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao trị gi&aacute; 20.000 đồng</p>\r\n\r\n<ul>\r\n	<li><strong>Bảo h&agrave;nh</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Sản phẩm được bảo h&agrave;nh <strong>06 th&aacute;ng</strong> cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng, <strong>1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu ti&ecirc;n</strong>&nbsp;sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>', '<ul>\r\n	<li><strong>Khuyến Mại</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng hộp k&iacute;nh v&agrave; khăn lau ch&iacute;nh h&atilde;ng của K&iacute;nh mắt Ngọc Minh.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng 01 bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao trị gi&aacute; 20.000 đồng</p>\r\n\r\n<ul>\r\n	<li><strong>Bảo h&agrave;nh</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Sản phẩm được bảo h&agrave;nh <strong>06 th&aacute;ng</strong> cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng, <strong>1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu ti&ecirc;n</strong>&nbsp;sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>', '<h4><strong>Th&ocirc;ng số kỹ thuật: Gọng k&iacute;nh GOL2215</strong></h4>\r\n\r\n<p><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/09Note_TV.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"3\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>KT Mặt khung</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/01WFont.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>138</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>KT Tr&ograve;ng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Độ rộng tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/02WLenes.gif\" /></p>\r\n			</td>\r\n			<td>53</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Chiều cao tr&ograve;ng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Chiều cao tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/03HLenes.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>40</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Cầu k&iacute;nh</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Khoảng cách cầu kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/04WBridge.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>18</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>KT C&agrave;ng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Độ dài càng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/05WEar.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>135</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>C&acirc;ng nặng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Cân nặng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/06Weight.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>7</p>\r\n			</td>\r\n			<td>\r\n			<p>gram</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Giới t&iacute;nh</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Giới tính sử dụng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/07Sex.png\" /></p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>Nữ</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Tổng Quan</strong></li>\r\n</ul>\r\n\r\n<p>Gọng k&iacute;nh <strong>cận, viễn, loạn GOL2215</strong> l&agrave; d&ograve;ng k&iacute;nh thuốc kết hợp thời trang ch&iacute;nh h&atilde;ng của H&agrave;n quốc, sang trọng v&agrave; lịch l&atilde;m, ph&ugrave; hợp cho c&aacute;c bạn nam v&agrave; nữ, được giới trẻ H&agrave;n cũng như Việt rất ưa chuộng:</p>\r\n\r\n<p>- Khung k&iacute;nh được đ&uacute;c nguy&ecirc;n khối với chất liệu Ultem cao cấp si&ecirc;u dẻo, nhẹ nh&agrave;ng, bền bỉ v&agrave; giữ tr&ograve;ng rất tốt tạo cảm gi&aacute;c thoải m&aacute;i cho người sử dụng.</p>\r\n\r\n<p>- Tai k&iacute;nh hay c&agrave;ng k&iacute;nh cũng được cấu tạo từ Titanium kết hợp với Silicon&nbsp;gi&uacute;p mang k&iacute;nh trong thời gian d&agrave;i cũng kh&ocirc;ng g&acirc;y kh&oacute; chịu hay&nbsp;đau&nbsp;ở v&agrave;nh tai.</p>\r\n\r\n<p>- Cầu k&iacute;nh hay đệm mũi nguy&ecirc;n khối được cải tiến nhiều năm ph&ugrave; hợp với khu&ocirc;n mặt v&agrave; sống mũi của người Ch&acirc;u &Aacute; khi đeo sẽ hạn chế rất nhiều việc tuột k&iacute;nh.</p>\r\n\r\n<p>- Chốt k&iacute;nh sử dụng chất liệu hợp kim pha trộn với Inox 304 ph&ugrave; hợp với kh&iacute; hậu nhiệt đới kh&ocirc;ng g&acirc;y rỉ s&eacute;t gi&uacute;p giữ tốt v&agrave; định h&igrave;nh form k&iacute;nh.</p>\r\n\r\n<p>- Gọng k&iacute;nh c&oacute; thể lắp mắt cận, viễn, loạn hoặc tr&ograve;ng 0 độ giả cận chống bụi.</p>\r\n\r\n<p>- Sản phẩm được tặng k&egrave;m hộp, khăn lau ch&iacute;nh h&atilde;ng v&agrave; bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao hoặc l&agrave;m việc hay phải c&uacute;i l&ecirc;n c&uacute;i xuống trị gi&aacute; 20.000 đồng.</p>\r\n\r\n<ul>\r\n	<li><strong>H&igrave;nh ảnh thực tế của sản phẩm GOL2215</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"GOL2215\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/05-GOL2215/2215UltemTitaniumTB.png\" /></p>\r\n\r\n<p><img alt=\"GOL2215\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/05-GOL2215/2215UltemTitaniumB.png\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh, bảo tr&iacute; v&agrave; hỗ trợ sản phẩm: </strong></li>\r\n</ul>\r\n\r\n<p>- Sản phẩm được bảo h&agrave;nh 06 th&aacute;ng cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- 1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>\r\n\r\n<p>- Vệ sinh k&iacute;nh định kỳ trọn đời kh&ocirc;ng t&iacute;nh ph&iacute;;</p>\r\n\r\n<p>- Hỗ trợ chi ph&iacute; l&ecirc;n tới 30% gi&aacute; trị sản phẩm gọng k&iacute;nh mới nếu nguy&ecirc;n nh&acirc;n bị g&atilde;y do kh&aacute;ch h&agrave;ng kh&ocirc;ng cố &yacute;.;</p>\r\n\r\n<p>- Sau 1 thời gian sử dụng, nếu k&iacute;nh bị rộng, c&ocirc;ng v&ecirc;nh, m&oacute;p m&eacute;o do v&ocirc; &yacute;, K&iacute;nh mắt Ngọc Minh sẽ tinh chỉnh miễn ph&iacute; cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- Bảo h&agrave;nh v&agrave; thay mới kh&ocirc;ng t&iacute;nh ph&iacute; đối với đệm mũi, ốc v&iacute;t nếu bị rỉ s&eacute;t (kh&ocirc;ng &aacute;p dụng cho c&aacute;c sản phẩm nguy&ecirc;n khối);</p>\r\n\r\n<p>- Kh&ocirc;ng bảo h&agrave;nh đối với c&aacute;c sản phẩm đ&atilde; bị trầy, xước, ch&aacute;y, nổ, bong sơn, l&atilde;o h&oacute;a, thay đổi h&igrave;nh d&aacute;ng sản phầm... trong qu&aacute; tr&igrave;nh sử dụng;</p>\r\n\r\n<p>- Bảo tr&igrave; trọn đời sản phẩm tr&ecirc;n tất cả c&aacute;c chi nh&aacute;nh của NgocMinh Optic.</p>\r\n\r\n<ul>\r\n	<li><strong>Hướng dẫn bảo quản:</strong></li>\r\n</ul>\r\n\r\n<p>- N&ecirc;n d&ugrave;ng cả hai tay khi đeo k&iacute;nh v&agrave; th&aacute;o k&iacute;nh;</p>\r\n\r\n<p>- Tr&aacute;nh cầm v&agrave;o tr&ograve;ng k&iacute;nh, mắt k&iacute;nh;</p>\r\n\r\n<p>- Thường xuy&ecirc;n vệ sinh v&agrave; lau ch&ugrave;i k&iacute;nh bằng nước rửa, khăn lau chuy&ecirc;n dụng được tặng k&egrave;m gọng k&iacute;nh;</p>\r\n\r\n<p>- Để k&iacute;nh v&agrave;o hộp khi kh&ocirc;ng sử dụng.</p>', '<p>- Qu&yacute; kh&aacute;ch thanh to&aacute;n qua ng&acirc;n h&agrave;ng, vui l&ograve;ng chuyển tiền đến t&agrave;i khoản của K&iacute;nh mắt Ngọc Minh được mở tại một trong c&aacute;c ng&acirc;n h&agrave;ng dưới đ&acirc;y:</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng Techcombank (khuy&ecirc;n d&ugrave;ng): </strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 19030337062013</p>\r\n\r\n<p>Chi nhanh : Hội sở</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng BIDV:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 12010007229226</p>\r\n\r\n<p>Chi nh&aacute;nh : Sở giao dịch 1</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng SHB:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 1013011470</p>\r\n\r\n<p>Chi nh&aacute;nh : CN H&agrave;n Thuy&ecirc;n</p>', 'GOL2215 - GOL Frames, Ultem - Titanium (53-18-135)', 'Ultem - Titanium', '<h4><strong>Th&ocirc;ng số kỹ thuật: Gọng k&iacute;nh GOL2215</strong></h4>\r\n\r\n<p><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/09Note_TV.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"3\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>KT Mặt khung</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/01WFont.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>138</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>KT Tr&ograve;ng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Độ rộng tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/02WLenes.gif\" /></p>\r\n			</td>\r\n			<td>53</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Chiều cao tr&ograve;ng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Chiều cao tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/03HLenes.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>40</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Cầu k&iacute;nh</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Khoảng cách cầu kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/04WBridge.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>18</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>KT C&agrave;ng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Độ dài càng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/05WEar.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>135</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>C&acirc;ng nặng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Cân nặng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/06Weight.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>7</p>\r\n			</td>\r\n			<td>\r\n			<p>gram</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Giới t&iacute;nh</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Giới tính sử dụng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/07Sex.png\" /></p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>Nữ</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Tổng Quan</strong></li>\r\n</ul>\r\n\r\n<p>Gọng k&iacute;nh <strong>cận, viễn, loạn GOL2215</strong> l&agrave; d&ograve;ng k&iacute;nh thuốc kết hợp thời trang ch&iacute;nh h&atilde;ng của H&agrave;n quốc, sang trọng v&agrave; lịch l&atilde;m, ph&ugrave; hợp cho c&aacute;c bạn nam v&agrave; nữ, được giới trẻ H&agrave;n cũng như Việt rất ưa chuộng:</p>\r\n\r\n<p>- Khung k&iacute;nh được đ&uacute;c nguy&ecirc;n khối với chất liệu Ultem cao cấp si&ecirc;u dẻo, nhẹ nh&agrave;ng, bền bỉ v&agrave; giữ tr&ograve;ng rất tốt tạo cảm gi&aacute;c thoải m&aacute;i cho người sử dụng.</p>\r\n\r\n<p>- Tai k&iacute;nh hay c&agrave;ng k&iacute;nh cũng được cấu tạo từ Titanium kết hợp với Silicon&nbsp;gi&uacute;p mang k&iacute;nh trong thời gian d&agrave;i cũng kh&ocirc;ng g&acirc;y kh&oacute; chịu hay&nbsp;đau&nbsp;ở v&agrave;nh tai.</p>\r\n\r\n<p>- Cầu k&iacute;nh hay đệm mũi nguy&ecirc;n khối được cải tiến nhiều năm ph&ugrave; hợp với khu&ocirc;n mặt v&agrave; sống mũi của người Ch&acirc;u &Aacute; khi đeo sẽ hạn chế rất nhiều việc tuột k&iacute;nh.</p>\r\n\r\n<p>- Chốt k&iacute;nh sử dụng chất liệu hợp kim pha trộn với Inox 304 ph&ugrave; hợp với kh&iacute; hậu nhiệt đới kh&ocirc;ng g&acirc;y rỉ s&eacute;t gi&uacute;p giữ tốt v&agrave; định h&igrave;nh form k&iacute;nh.</p>\r\n\r\n<p>- Gọng k&iacute;nh c&oacute; thể lắp mắt cận, viễn, loạn hoặc tr&ograve;ng 0 độ giả cận chống bụi.</p>\r\n\r\n<p>- Sản phẩm được tặng k&egrave;m hộp, khăn lau ch&iacute;nh h&atilde;ng v&agrave; bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao hoặc l&agrave;m việc hay phải c&uacute;i l&ecirc;n c&uacute;i xuống trị gi&aacute; 20.000 đồng.</p>\r\n\r\n<ul>\r\n	<li><strong>H&igrave;nh ảnh thực tế của sản phẩm GOL2215</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"GOL2215\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/05-GOL2215/2215UltemTitaniumTB.png\" /></p>\r\n\r\n<p><img alt=\"GOL2215\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/05-GOL2215/2215UltemTitaniumB.png\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh, bảo tr&iacute; v&agrave; hỗ trợ sản phẩm: </strong></li>\r\n</ul>\r\n\r\n<p>- Sản phẩm được bảo h&agrave;nh 06 th&aacute;ng cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- 1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>\r\n\r\n<p>- Vệ sinh k&iacute;nh định kỳ trọn đời kh&ocirc;ng t&iacute;nh ph&iacute;;</p>\r\n\r\n<p>- Hỗ trợ chi ph&iacute; l&ecirc;n tới 30% gi&aacute; trị sản phẩm gọng k&iacute;nh mới nếu nguy&ecirc;n nh&acirc;n bị g&atilde;y do kh&aacute;ch h&agrave;ng kh&ocirc;ng cố &yacute;.;</p>\r\n\r\n<p>- Sau 1 thời gian sử dụng, nếu k&iacute;nh bị rộng, c&ocirc;ng v&ecirc;nh, m&oacute;p m&eacute;o do v&ocirc; &yacute;, K&iacute;nh mắt Ngọc Minh sẽ tinh chỉnh miễn ph&iacute; cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- Bảo h&agrave;nh v&agrave; thay mới kh&ocirc;ng t&iacute;nh ph&iacute; đối với đệm mũi, ốc v&iacute;t nếu bị rỉ s&eacute;t (kh&ocirc;ng &aacute;p dụng cho c&aacute;c sản phẩm nguy&ecirc;n khối);</p>\r\n\r\n<p>- Kh&ocirc;ng bảo h&agrave;nh đối với c&aacute;c sản phẩm đ&atilde; bị trầy, xước, ch&aacute;y, nổ, bong sơn, l&atilde;o h&oacute;a, thay đổi h&igrave;nh d&aacute;ng sản phầm... trong qu&aacute; tr&igrave;nh sử dụng;</p>\r\n\r\n<p>- Bảo tr&igrave; trọn đời sản phẩm tr&ecirc;n tất cả c&aacute;c chi nh&aacute;nh của NgocMinh Optic.</p>\r\n\r\n<ul>\r\n	<li><strong>Hướng dẫn bảo quản:</strong></li>\r\n</ul>\r\n\r\n<p>- N&ecirc;n d&ugrave;ng cả hai tay khi đeo k&iacute;nh v&agrave; th&aacute;o k&iacute;nh;</p>\r\n\r\n<p>- Tr&aacute;nh cầm v&agrave;o tr&ograve;ng k&iacute;nh, mắt k&iacute;nh;</p>\r\n\r\n<p>- Thường xuy&ecirc;n vệ sinh v&agrave; lau ch&ugrave;i k&iacute;nh bằng nước rửa, khăn lau chuy&ecirc;n dụng được tặng k&egrave;m gọng k&iacute;nh;</p>\r\n\r\n<p>- Để k&iacute;nh v&agrave;o hộp khi kh&ocirc;ng sử dụng.</p>', '<p>- Qu&yacute; kh&aacute;ch thanh to&aacute;n qua ng&acirc;n h&agrave;ng, vui l&ograve;ng chuyển tiền đến t&agrave;i khoản của K&iacute;nh mắt Ngọc Minh được mở tại một trong c&aacute;c ng&acirc;n h&agrave;ng dưới đ&acirc;y:</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng Techcombank (khuy&ecirc;n d&ugrave;ng): </strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 19030337062013</p>\r\n\r\n<p>Chi nhanh : Hội sở</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng BIDV:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 12010007229226</p>\r\n\r\n<p>Chi nh&aacute;nh : Sở giao dịch 1</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng SHB:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 1013011470</p>\r\n\r\n<p>Chi nh&aacute;nh : CN H&agrave;n Thuy&ecirc;n</p>', 'Ultem - Titanium', 'Ultem - Titanium', 'Ultem - Titanium', 1, '2020-05-14 01:04:48', '2020-05-14 01:16:13'),
(9, 'GOL1149', 'gol1149-gong-kinh-gol-ultem-titanium-54-16-139', 'GOL1149 - Gọng kính GOL, Ultem - Titanium (54-16-139)', 9, 1, 750000, NULL, 'Ultem - Titanium', '<ul>\r\n	<li><strong>Khuyến Mại</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng hộp k&iacute;nh v&agrave; khăn lau ch&iacute;nh h&atilde;ng của K&iacute;nh mắt Ngọc Minh.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng 01 bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao trị gi&aacute; 20.000 đồng</p>\r\n\r\n<ul>\r\n	<li><strong>Bảo h&agrave;nh</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Sản phẩm được bảo h&agrave;nh <strong>06 th&aacute;ng</strong> cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng, <strong>1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu ti&ecirc;n</strong>&nbsp;sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>', '<ul>\r\n	<li><strong>Khuyến Mại</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng hộp k&iacute;nh v&agrave; khăn lau ch&iacute;nh h&atilde;ng của K&iacute;nh mắt Ngọc Minh.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Tặng 01 bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao trị gi&aacute; 20.000 đồng</p>\r\n\r\n<ul>\r\n	<li><strong>Bảo h&agrave;nh</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Sản phẩm được bảo h&agrave;nh <strong>06 th&aacute;ng</strong> cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng, <strong>1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu ti&ecirc;n</strong>&nbsp;sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>', '<h4><strong>Th&ocirc;ng số kỹ thuật: Gọng k&iacute;nh GOL1149</strong></h4>\r\n\r\n<p><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/09Note_TV.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"3\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>KT Mặt khung</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/01WFont.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>133</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>KT Tr&ograve;ng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Độ rộng tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/02WLenes.gif\" /></p>\r\n			</td>\r\n			<td>54</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Chiều cao tr&ograve;ng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Chiều cao tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/03HLenes.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>36</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Cầu k&iacute;nh</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Khoảng cách cầu kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/04WBridge.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>16</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>KT C&agrave;ng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Độ dài càng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/05WEar.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>139</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>C&acirc;ng nặng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Cân nặng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/06Weight.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>7.8</p>\r\n			</td>\r\n			<td>\r\n			<p>gram</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Giới t&iacute;nh</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Giới tính sử dụng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/07Sex.png\" /></p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>Nam/Nữ</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Tổng Quan</strong></li>\r\n</ul>\r\n\r\n<p>Gọng k&iacute;nh <strong>cận, viễn, loạn GOL1149</strong> l&agrave; d&ograve;ng k&iacute;nh thuốc kết hợp thời trang ch&iacute;nh h&atilde;ng của H&agrave;n quốc, sang trọng v&agrave; lịch l&atilde;m, ph&ugrave; hợp cho c&aacute;c bạn nam v&agrave; nữ, được giới trẻ H&agrave;n cũng như Việt rất ưa chuộng:</p>\r\n\r\n<p>- Khung k&iacute;nh được đ&uacute;c nguy&ecirc;n khối với chất liệu Ultem cao cấp si&ecirc;u dẻo, nhẹ nh&agrave;ng, bền bỉ v&agrave; giữ tr&ograve;ng rất tốt tạo cảm gi&aacute;c thoải m&aacute;i cho người sử dụng.</p>\r\n\r\n<p>- Tai k&iacute;nh hay c&agrave;ng k&iacute;nh cũng được cấu tạo từ Titanium kết hợp với Silicon&nbsp;gi&uacute;p mang k&iacute;nh trong thời gian d&agrave;i cũng kh&ocirc;ng g&acirc;y kh&oacute; chịu hay&nbsp;đau&nbsp;ở v&agrave;nh tai.</p>\r\n\r\n<p>- Cầu k&iacute;nh hay đệm mũi nguy&ecirc;n khối được cải tiến nhiều năm ph&ugrave; hợp với khu&ocirc;n mặt v&agrave; sống mũi của người Ch&acirc;u &Aacute; khi đeo sẽ hạn chế rất nhiều việc tuột k&iacute;nh.</p>\r\n\r\n<p>- Chốt k&iacute;nh sử dụng chất liệu hợp kim pha trộn với Inox 304 ph&ugrave; hợp với kh&iacute; hậu nhiệt đới kh&ocirc;ng g&acirc;y rỉ s&eacute;t gi&uacute;p giữ tốt v&agrave; định h&igrave;nh form k&iacute;nh.</p>\r\n\r\n<p>- Gọng k&iacute;nh c&oacute; thể lắp mắt cận, viễn, loạn hoặc tr&ograve;ng 0 độ giả cận chống bụi.</p>\r\n\r\n<p>- Sản phẩm được tặng k&egrave;m hộp, khăn lau ch&iacute;nh h&atilde;ng v&agrave; bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao hoặc l&agrave;m việc hay phải c&uacute;i l&ecirc;n c&uacute;i xuống trị gi&aacute; 20.000 đồng.</p>\r\n\r\n<ul>\r\n	<li><strong>H&igrave;nh ảnh thực tế của sản phẩm GOL1149</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"GOL2215\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/05-GOL2215/2215UltemTitaniumTB.png\" /></p>\r\n\r\n<p><img alt=\"GOL2215\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/05-GOL2215/2215UltemTitaniumB.png\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh, bảo tr&iacute; v&agrave; hỗ trợ sản phẩm: </strong></li>\r\n</ul>\r\n\r\n<p>- Sản phẩm được bảo h&agrave;nh 06 th&aacute;ng cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- 1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>\r\n\r\n<p>- Vệ sinh k&iacute;nh định kỳ trọn đời kh&ocirc;ng t&iacute;nh ph&iacute;;</p>\r\n\r\n<p>- Hỗ trợ chi ph&iacute; l&ecirc;n tới 30% gi&aacute; trị sản phẩm gọng k&iacute;nh mới nếu nguy&ecirc;n nh&acirc;n bị g&atilde;y do kh&aacute;ch h&agrave;ng kh&ocirc;ng cố &yacute;.;</p>\r\n\r\n<p>- Sau 1 thời gian sử dụng, nếu k&iacute;nh bị rộng, c&ocirc;ng v&ecirc;nh, m&oacute;p m&eacute;o do v&ocirc; &yacute;, K&iacute;nh mắt Ngọc Minh sẽ tinh chỉnh miễn ph&iacute; cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- Bảo h&agrave;nh v&agrave; thay mới kh&ocirc;ng t&iacute;nh ph&iacute; đối với đệm mũi, ốc v&iacute;t nếu bị rỉ s&eacute;t (kh&ocirc;ng &aacute;p dụng cho c&aacute;c sản phẩm nguy&ecirc;n khối);</p>\r\n\r\n<p>- Kh&ocirc;ng bảo h&agrave;nh đối với c&aacute;c sản phẩm đ&atilde; bị trầy, xước, ch&aacute;y, nổ, bong sơn, l&atilde;o h&oacute;a, thay đổi h&igrave;nh d&aacute;ng sản phầm... trong qu&aacute; tr&igrave;nh sử dụng;</p>\r\n\r\n<p>- Bảo tr&igrave; trọn đời sản phẩm tr&ecirc;n tất cả c&aacute;c chi nh&aacute;nh của NgocMinh Optic.</p>\r\n\r\n<ul>\r\n	<li><strong>Hướng dẫn bảo quản:</strong></li>\r\n</ul>\r\n\r\n<p>- N&ecirc;n d&ugrave;ng cả hai tay khi đeo k&iacute;nh v&agrave; th&aacute;o k&iacute;nh;</p>\r\n\r\n<p>- Tr&aacute;nh cầm v&agrave;o tr&ograve;ng k&iacute;nh, mắt k&iacute;nh;</p>\r\n\r\n<p>- Thường xuy&ecirc;n vệ sinh v&agrave; lau ch&ugrave;i k&iacute;nh bằng nước rửa, khăn lau chuy&ecirc;n dụng được tặng k&egrave;m gọng k&iacute;nh;</p>\r\n\r\n<p>- Để k&iacute;nh v&agrave;o hộp khi kh&ocirc;ng sử dụng.</p>', '<p>- Qu&yacute; kh&aacute;ch thanh to&aacute;n qua ng&acirc;n h&agrave;ng, vui l&ograve;ng chuyển tiền đến t&agrave;i khoản của K&iacute;nh mắt Ngọc Minh được mở tại một trong c&aacute;c ng&acirc;n h&agrave;ng dưới đ&acirc;y:</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng Techcombank (khuy&ecirc;n d&ugrave;ng): </strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 19030337062013</p>\r\n\r\n<p>Chi nhanh : Hội sở</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng BIDV:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 12010007229226</p>\r\n\r\n<p>Chi nh&aacute;nh : Sở giao dịch 1</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng SHB:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 1013011470</p>\r\n\r\n<p>Chi nh&aacute;nh : CN H&agrave;n Thuy&ecirc;n</p>', 'GOL1149 - GOL Frame, Ultem - Titanium (54-16-139)', 'Ultem - Titanium', '<h4><strong>Th&ocirc;ng số kỹ thuật: Gọng k&iacute;nh GOL1149</strong></h4>\r\n\r\n<p><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/09Note_TV.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"3\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>KT Mặt khung</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Độ rộng khung Kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/01WFont.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>133</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>KT Tr&ograve;ng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Độ rộng tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/02WLenes.gif\" /></p>\r\n			</td>\r\n			<td>54</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Chiều cao tr&ograve;ng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Chiều cao tròng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/03HLenes.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>36</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Cầu k&iacute;nh</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Khoảng cách cầu kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/04WBridge.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>16</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>KT C&agrave;ng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Độ dài càng kính\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/05WEar.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>139</p>\r\n			</td>\r\n			<td>\r\n			<p>mm</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>C&acirc;ng nặng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Cân nặng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/06Weight.gif\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>7.8</p>\r\n			</td>\r\n			<td>\r\n			<p>gram</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Giới t&iacute;nh</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Giới tính sử dụng\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/01-InfoTech/07Sex.png\" /></p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>Nam/Nữ</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<hr /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Tổng Quan</strong></li>\r\n</ul>\r\n\r\n<p>Gọng k&iacute;nh <strong>cận, viễn, loạn GOL1149</strong> l&agrave; d&ograve;ng k&iacute;nh thuốc kết hợp thời trang ch&iacute;nh h&atilde;ng của H&agrave;n quốc, sang trọng v&agrave; lịch l&atilde;m, ph&ugrave; hợp cho c&aacute;c bạn nam v&agrave; nữ, được giới trẻ H&agrave;n cũng như Việt rất ưa chuộng:</p>\r\n\r\n<p>- Khung k&iacute;nh được đ&uacute;c nguy&ecirc;n khối với chất liệu Ultem cao cấp si&ecirc;u dẻo, nhẹ nh&agrave;ng, bền bỉ v&agrave; giữ tr&ograve;ng rất tốt tạo cảm gi&aacute;c thoải m&aacute;i cho người sử dụng.</p>\r\n\r\n<p>- Tai k&iacute;nh hay c&agrave;ng k&iacute;nh cũng được cấu tạo từ Titanium kết hợp với Silicon&nbsp;gi&uacute;p mang k&iacute;nh trong thời gian d&agrave;i cũng kh&ocirc;ng g&acirc;y kh&oacute; chịu hay&nbsp;đau&nbsp;ở v&agrave;nh tai.</p>\r\n\r\n<p>- Cầu k&iacute;nh hay đệm mũi nguy&ecirc;n khối được cải tiến nhiều năm ph&ugrave; hợp với khu&ocirc;n mặt v&agrave; sống mũi của người Ch&acirc;u &Aacute; khi đeo sẽ hạn chế rất nhiều việc tuột k&iacute;nh.</p>\r\n\r\n<p>- Chốt k&iacute;nh sử dụng chất liệu hợp kim pha trộn với Inox 304 ph&ugrave; hợp với kh&iacute; hậu nhiệt đới kh&ocirc;ng g&acirc;y rỉ s&eacute;t gi&uacute;p giữ tốt v&agrave; định h&igrave;nh form k&iacute;nh.</p>\r\n\r\n<p>- Gọng k&iacute;nh c&oacute; thể lắp mắt cận, viễn, loạn hoặc tr&ograve;ng 0 độ giả cận chống bụi.</p>\r\n\r\n<p>- Sản phẩm được tặng k&egrave;m hộp, khăn lau ch&iacute;nh h&atilde;ng v&agrave; bộ silicon giữ k&iacute;nh d&ugrave;ng để chơi thể thao hoặc l&agrave;m việc hay phải c&uacute;i l&ecirc;n c&uacute;i xuống trị gi&aacute; 20.000 đồng.</p>\r\n\r\n<ul>\r\n	<li><strong>H&igrave;nh ảnh thực tế của sản phẩm GOL1149</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"GOL2215\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/05-GOL2215/2215UltemTitaniumTB.png\" /></p>\r\n\r\n<p><img alt=\"GOL2215\" src=\"http://ngocminhoptic.com/FILES/source/Calogue/05-GOL2215/2215UltemTitaniumB.png\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh, bảo tr&iacute; v&agrave; hỗ trợ sản phẩm: </strong></li>\r\n</ul>\r\n\r\n<p>- Sản phẩm được bảo h&agrave;nh 06 th&aacute;ng cho c&aacute;c lỗi của nh&agrave; sản xuất g&acirc;y ra cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- 1 đổi 1 trong v&ograve;ng 7 ng&agrave;y đầu sử dụng nếu sản phẩm c&oacute; lỗi từ nh&agrave; sản xuất;</p>\r\n\r\n<p>- Vệ sinh k&iacute;nh định kỳ trọn đời kh&ocirc;ng t&iacute;nh ph&iacute;;</p>\r\n\r\n<p>- Hỗ trợ chi ph&iacute; l&ecirc;n tới 30% gi&aacute; trị sản phẩm gọng k&iacute;nh mới nếu nguy&ecirc;n nh&acirc;n bị g&atilde;y do kh&aacute;ch h&agrave;ng kh&ocirc;ng cố &yacute;.;</p>\r\n\r\n<p>- Sau 1 thời gian sử dụng, nếu k&iacute;nh bị rộng, c&ocirc;ng v&ecirc;nh, m&oacute;p m&eacute;o do v&ocirc; &yacute;, K&iacute;nh mắt Ngọc Minh sẽ tinh chỉnh miễn ph&iacute; cho kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>- Bảo h&agrave;nh v&agrave; thay mới kh&ocirc;ng t&iacute;nh ph&iacute; đối với đệm mũi, ốc v&iacute;t nếu bị rỉ s&eacute;t (kh&ocirc;ng &aacute;p dụng cho c&aacute;c sản phẩm nguy&ecirc;n khối);</p>\r\n\r\n<p>- Kh&ocirc;ng bảo h&agrave;nh đối với c&aacute;c sản phẩm đ&atilde; bị trầy, xước, ch&aacute;y, nổ, bong sơn, l&atilde;o h&oacute;a, thay đổi h&igrave;nh d&aacute;ng sản phầm... trong qu&aacute; tr&igrave;nh sử dụng;</p>\r\n\r\n<p>- Bảo tr&igrave; trọn đời sản phẩm tr&ecirc;n tất cả c&aacute;c chi nh&aacute;nh của NgocMinh Optic.</p>\r\n\r\n<ul>\r\n	<li><strong>Hướng dẫn bảo quản:</strong></li>\r\n</ul>\r\n\r\n<p>- N&ecirc;n d&ugrave;ng cả hai tay khi đeo k&iacute;nh v&agrave; th&aacute;o k&iacute;nh;</p>\r\n\r\n<p>- Tr&aacute;nh cầm v&agrave;o tr&ograve;ng k&iacute;nh, mắt k&iacute;nh;</p>\r\n\r\n<p>- Thường xuy&ecirc;n vệ sinh v&agrave; lau ch&ugrave;i k&iacute;nh bằng nước rửa, khăn lau chuy&ecirc;n dụng được tặng k&egrave;m gọng k&iacute;nh;</p>\r\n\r\n<p>- Để k&iacute;nh v&agrave;o hộp khi kh&ocirc;ng sử dụng.</p>', '<p>- Qu&yacute; kh&aacute;ch thanh to&aacute;n qua ng&acirc;n h&agrave;ng, vui l&ograve;ng chuyển tiền đến t&agrave;i khoản của K&iacute;nh mắt Ngọc Minh được mở tại một trong c&aacute;c ng&acirc;n h&agrave;ng dưới đ&acirc;y:</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng Techcombank (khuy&ecirc;n d&ugrave;ng): </strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 19030337062013</p>\r\n\r\n<p>Chi nhanh : Hội sở</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng BIDV:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 12010007229226</p>\r\n\r\n<p>Chi nh&aacute;nh : Sở giao dịch 1</p>\r\n\r\n<p><strong>Ng&acirc;n H&agrave;ng SHB:</strong></p>\r\n\r\n<p>T&ecirc;n t&agrave;i khoản : VU MANH HIEP</p>\r\n\r\n<p>Số T&agrave;i khoản : 1013011470</p>\r\n\r\n<p>Chi nh&aacute;nh : CN H&agrave;n Thuy&ecirc;n</p>', 'Ultem - Titanium', 'Ultem - Titanium', 'Ultem - Titanium', 1, '2020-05-14 01:28:27', '2020-05-14 01:32:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des_s` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des_f` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_des` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `types`
--

INSERT INTO `types` (`id`, `slug`, `name`, `name_en`, `meta_des`, `meta_key`, `meta_title`, `status`, `created_at`, `updated_at`) VALUES
(1, '1-trong-kinh-han-quoc', '1-Tròng kính Hàn Quốc', 'Korean Lenses', 'Tròng kính Hàn Quốc chính hãng', 'Tròng kính Hàn Quốc chính hãng', 'Tròng kính Hàn Quốc chính hãng', 1, '2020-01-06 00:43:26', '2020-04-22 21:10:25'),
(2, '8-gong-kinh-gol', '8-Gọng kính GOL', 'GOL Frames', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 0, '2020-01-06 00:43:51', '2020-04-22 21:04:42'),
(3, '7-gong-kinh-tkpop', '7-Gọng kính TKPOP', 'TKPop Frames', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 0, '2020-01-13 05:14:45', '2020-04-22 21:01:16'),
(4, '6-gong-kinh-roxana', '6-Gọng kính Roxana', 'Roxana Frames', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 0, '2020-04-20 01:40:06', '2020-04-22 21:01:26'),
(5, 'gong-kinh-myung', '4-Gọng kính Myung', 'Myung Frames', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 0, '2020-04-20 01:40:46', '2020-04-22 21:01:38'),
(6, '5-gong-kinh-lm', '5-Gọng kính L&M', 'L&M Frames', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 0, '2020-04-20 01:41:11', '2020-04-22 21:01:49'),
(7, 'phu-kien', '3-Phụ kiện', 'Accessories', 'Phụ kiện mắt kính, gọng kính, công cụ dụng cụ chuyên ngành mắt chính hãng', 'Phụ kiện mắt kính, gọng kính, công cụ dụng cụ chuyên ngành mắt chính hãng', 'Phụ kiện mắt kính, gọng kính, công cụ dụng cụ chuyên ngành mắt chính hãng', 1, '2020-04-20 01:42:32', '2020-04-22 21:10:41'),
(8, '9-trong-kinh-nhat-ban', '9-Tròng kính Nhật Bản', 'Japan Lenses', 'Tròng kính Nhật Bản chính hãng', 'Tròng kính Nhật Bản chính hãng', 'Tròng kính Nhật Bản chính hãng', 0, '2020-04-22 20:50:20', '2020-04-22 21:05:00'),
(9, 'gong-kinh-han-quoc', '2-Gọng kính Hàn Quốc', 'Korea Frames', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 1, '2020-04-22 20:59:52', '2020-04-22 21:10:54'),
(10, '10-gong-kinh-nhat-ban', '10-Gọng kính Nhật Bản', 'Japan Frames', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 'Gọng kính chính hãng Hàn Quốc, Nhật Bản', 0, '2020-04-22 21:05:52', '2020-04-22 21:05:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorization` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `address`, `email`, `role`, `authorization`, `email_verified_at`, `password`, `age`, `gender`, `created_by`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '0915959980', 'Số 83, Bát Khối, Long Biên, Hà Nội', 'admin@admin.com', 'super-admin', NULL, NULL, '$2y$10$s9SQXij43FYvXvD0fnbe6OAL3YSLn2s2EwmwvU6MYvzY6/OmwvBRu', 37, 0, NULL, 1, NULL, NULL, '2020-04-17 21:31:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `webinfos`
--

CREATE TABLE `webinfos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `webinfos`
--

INSERT INTO `webinfos` (`id`, `code`, `name`, `image`, `link`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'slogan_home', 'Solgan 1', NULL, NULL, 'Thương hiệu từ trái tim', 1, '2020-01-03 03:29:36', '2020-02-21 18:32:58'),
(2, 'menu_footer_1', 'Menu 1', NULL, '#', NULL, 1, '2020-01-03 03:33:46', '2020-01-03 03:33:46'),
(3, 'menu_footer_2', 'Menu 2', NULL, '#', NULL, 1, '2020-01-03 03:34:55', '2020-01-03 03:34:55'),
(4, 'menu_footer_3', 'Contact', NULL, '#', NULL, 1, '2020-01-03 03:35:40', '2020-01-03 03:35:40'),
(5, 'phone', 'Số điện thoại', NULL, NULL, '0915959980', 1, '2020-01-03 18:38:28', '2020-02-17 19:22:06'),
(6, 'name_company', 'Tên công ty', NULL, NULL, 'KÍNH MẮT NGỌC MINH', 1, '2020-01-03 18:38:53', '2020-02-17 19:21:01'),
(7, 'email', 'Email', NULL, NULL, 'ngocminhoptic@gmail.com', 1, '2020-01-03 18:39:06', '2020-02-17 19:21:38'),
(8, 'map', 'Bản đồ', NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.175190175079!2d105.88223101540235!3d21.025675093258425!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135a98b5aab33cd%3A0x1f0300b2c4f32a48!2zS8OtbmggTeG6r3QgTmfhu41jIE1pbmg!5e0!3m2!1svi!2s!4v1582335375652!5m2!1svi!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, '2020-01-03 18:39:26', '2020-02-21 18:36:34'),
(9, 'logo', 'logo', 'FILES/source/logo-images.jpg', NULL, NULL, 1, '2020-03-31 08:37:05', '2020-03-31 08:37:05');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Chỉ mục cho bảng `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `albums_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `benhans`
--
ALTER TABLE `benhans`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`);

--
-- Chỉ mục cho bảng `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `co_sos`
--
ALTER TABLE `co_sos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhangkhams`
--
ALTER TABLE `donhangkhams`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhangs`
--
ALTER TABLE `donhangs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giohangs`
--
ALTER TABLE `giohangs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `image_products`
--
ALTER TABLE `image_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khambenhs`
--
ALTER TABLE `khambenhs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lien_hes`
--
ALTER TABLE `lien_hes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `webinfos`
--
ALTER TABLE `webinfos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `webinfos_code_unique` (`code`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT cho bảng `benhans`
--
ALTER TABLE `benhans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `co_sos`
--
ALTER TABLE `co_sos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `donhangkhams`
--
ALTER TABLE `donhangkhams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;
--
-- AUTO_INCREMENT cho bảng `donhangs`
--
ALTER TABLE `donhangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT cho bảng `giohangs`
--
ALTER TABLE `giohangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT cho bảng `icons`
--
ALTER TABLE `icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `image_products`
--
ALTER TABLE `image_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;
--
-- AUTO_INCREMENT cho bảng `khambenhs`
--
ALTER TABLE `khambenhs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT cho bảng `lien_hes`
--
ALTER TABLE `lien_hes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT cho bảng `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `webinfos`
--
ALTER TABLE `webinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
