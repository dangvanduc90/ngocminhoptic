-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th3 25, 2020 lúc 10:22 AM
-- Phiên bản máy phục vụ: 5.7.29-0ubuntu0.18.04.1
-- Phiên bản PHP: 7.2.24-0ubuntu0.18.04.3

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
(1, 'admin', 'Nguyễn Minh Dũng', NULL, NULL, 'nm.dung.1991@gmail.com', 'admin', NULL, NULL, '$2y$10$TjFsIn3r.NNwdca9lqMZcuMSlOPKYcyhZ2FgggP31mhSSovi53tmi', NULL, NULL, NULL, 1, 'RHWcsDdzUuJ7mdhn8kHkCkhst5UQLuJWfSaeq6nGKcC4g1nkzEGd6rfvYQuA', NULL, NULL),
(2, 'dangvanduc90', 'dangvanduc', NULL, NULL, 'dangvanduc0@gmail.com', 'admin', NULL, NULL, '$2y$10$m9CE2vJdF8gEgooK4L8da.ej1/NB/tOyUbWzE2oQ1U6D1QWNJcRDG', NULL, NULL, NULL, 1, 'ROkxCytgQBdbQwRJXUmf4q1DZ0DnqbS2ZoVr0jyQ7cFroZs7Bo2XEWBBK1cS', NULL, NULL);

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
(1, 'FILES/source/GiftVoucher%20-%20Vietnam.jpg', 'Banner trang chủ 1', '#', NULL, NULL, NULL, NULL, 1, NULL, 1, '2020-01-03 03:23:21', '2020-02-17 21:19:00', NULL),
(2, 'FILES/source/GiftVoucher%20-%20English.jpg', 'Banner trang chủ 2', '#', NULL, NULL, NULL, NULL, 1, NULL, 1, '2020-01-03 03:24:51', '2020-02-17 21:20:01', NULL),
(5, NULL, 'Cơ sở 1', '#', NULL, NULL, '<p>K&iacute;nh mắt Ngọc Minh<br />\r\nTel : 01 23 45 67 89</p>\r\n\r\n<p>Email : info@monsite.fr​</p>', '<p>Ngoc Minh eyeglasses<br />\r\nTel: 01 23 45 67 89</p>\r\n\r\n<p>Email: info@monsite.fr</p>', 4, NULL, 1, '2020-01-06 21:10:42', '2020-01-06 21:12:47', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d251637.95196238213!2d105.6189045!3d9.779349!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1574212316946!5m2!1svi!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(7, 'FILES/source/Chemi.png', 'Chemi', '#', NULL, NULL, NULL, NULL, 2, NULL, 1, '2020-01-12 18:28:36', '2020-02-17 21:33:11', NULL),
(11, 'FILES/source/logo-images.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2020-01-12 18:39:55', '2020-01-12 18:39:55', NULL),
(15, 'FILES/source/InAo%20(1).png', 'Thông tin chân trang', '#', NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Văn ph&ograve;ng&nbsp;miền bắc: </strong></p>\r\n\r\n			<p>Số 83, Đường B&aacute;t Khối, Phường Long Bi&ecirc;n, Quận Long Bi&ecirc;n, H&agrave; Nội.</p>\r\n\r\n			<p><strong>Văn ph&ograve;ng&nbsp;miền nam: </strong></p>\r\n\r\n			<p>Số 280, Nam Kỳ Khởi Nghĩa, Quận 1, Th&agrave;nh Phố Hồ Ch&iacute; Minh.</p>\r\n\r\n			<p>Email: ngocminhoptic@gmail.com.</p>\r\n\r\n			<p>Điện thoại:&nbsp;0243.205.5979</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Li&ecirc;n hệ kh&aacute;m mắt v&agrave; b&aacute;n lẻ:</strong></p>\r\n\r\n			<p>Mss. Th&uacute;y: 091.5959.980</p>\r\n\r\n			<p><strong>Li&ecirc;n hệ b&aacute;n bu&ocirc;n:</strong></p>\r\n\r\n			<p>Mr. Hiệp 091.5441.113 - 098.8083.421</p>\r\n\r\n			<p>Zalo - Facebook - Viber</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '<p>&nbsp;</p>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>North Office:</p>\r\n\r\n			<p>No. 83, Bat Block Street, Long Bien Ward, Long Bien District, Hanoi, Vietnam.</p>\r\n\r\n			<p>Southern Office:</p>\r\n\r\n			<p>No. 280, Nam Ky Khoi Nghia, District 1, Ho Chi Minh City, Vietnam.</p>\r\n\r\n			<p>Email: ngocminhoptic@gmail.com.</p>\r\n\r\n			<p>Phone: 0243.205.5979</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Contact eye examination and retail:</strong></p>\r\n\r\n			<p>Mss. Thuy: 091.5959.980</p>\r\n\r\n			<p><strong>Wholesale contacts:</strong></p>\r\n\r\n			<p>Mr. Hiep 091.5441.113 - 098.8083.421</p>\r\n\r\n			<p>Zalo - Facebook - Viber</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', 5, NULL, 1, '2020-01-13 00:29:27', '2020-02-19 02:55:28', NULL),
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
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `benhans`
--

INSERT INTO `benhans` (`id`, `madon`, `hovaten`, `sdt`, `pd`, `ngaykham`, `ngayhen`, `diachi`, `mp_ts`, `mt_ts`, `mp_thiluc`, `mt_thiluc`, `mp_ts_moi`, `mt_ts_moi`, `mp_tl_kich`, `mt_tl_kich`, `mp_nhanap`, `mt_nhanap`, `khieunai`, `ghichu`, `noidung`, `datcoc`, `congno`, `status`, `created_at`, `updated_at`) VALUES
(2, '11112', 'Nguyễn Minh Dũng', '1231223131', '123', '20/10/2019', '20/10/2020', '21312', 'sadas', 'ada', 'đấ', 'đaa', 'ada', 'ada', 'đaa', 'ada', 'ada', 'ada', 0, 'aaaaaaaa', '3213123', 200000, 1200000, 0, '2020-01-04 23:01:10', '2020-01-04 23:41:54'),
(3, '3434', 'dsds', '09935463', '2232', '3848', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-01-08 00:48:45', '2020-01-08 00:48:45'),
(4, '3434', 'dsds', '09935463', '2232', '3848', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-01-08 00:48:52', '2020-01-08 00:48:52'),
(5, '23123', 'Dang van Duc', '0968107626', '3', '03/05/2020', '03/21/2020', 'dinh cong', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdasd', NULL, NULL, 0, '2020-03-19 21:00:36', '2020-03-19 21:00:36'),
(6, '123', 'Dang van Duc12345', '0968107626', NULL, NULL, NULL, 'dinh cong', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3100000, 0, '2020-03-20 00:07:28', '2020-03-20 21:09:33'),
(7, 'MDH_1585105472', 'Dang van Duc', '0968107626', NULL, NULL, NULL, 'dinh cong', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-03-24 20:05:58', '2020-03-24 20:05:58'),
(8, 'MDH_1585105472', 'Dang van Duc', '0968107626', NULL, NULL, NULL, 'dinh cong', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-03-24 20:13:15', '2020-03-24 20:13:15');

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
  `product_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_color` text COLLATE utf8mb4_unicode_ci,
  `code_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_product` text COLLATE utf8mb4_unicode_ci,
  `is_default` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `product_id`, `name`, `name_en`, `image_color`, `code_color`, `image_product`, `is_default`, `status`, `created_at`, `updated_at`, `quantity`) VALUES
(1, 1, 'Màu đỏ', 'red', NULL, '#ff0080', 'FILES/source/hong_mk015_4_b217982a5dca4d4fb9e304c398a685a5_master.jpg', 1, 1, '2019-12-30 00:26:31', '2020-03-21 21:56:36', 12),
(2, 1, 'Màu đen', 'black', NULL, '#000000', 'FILES/source/K%C3%ADnh-m%E1%BA%AFt-nam-Mercedes-Benz-743-2.jpg', 0, 0, '2020-01-03 02:19:44', '2020-01-06 02:27:53', 0);

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
(1, 'nm.dung.1991@gmail.com', 0, '2020-01-03 18:19:49', '2020-01-03 18:19:49'),
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
(2, 'cơ sở 2', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14901.897863424867!2d105.84077260000001!3d20.973609749999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9dd3328d3f4e9f04!2zVUJORCBQaMaw4budbmcgVMOibiBNYWk!5e0!3m2!1svi!2s!4v1584849167580!5m2!1svi!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', '2020-03-21 20:42:36', '2020-03-21 20:52:56'),
(3, 'co so 3', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.175190175079!2d105.88223101540235!3d21.025675093258425!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135a98b5aab33cd%3A0x1f0300b2c4f32a48!2zS8OtbmggTeG6r3QgTmfhu41jIE1pbmg!5e0!3m2!1svi!2s!4v1582335375652!5m2!1svi!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', '2020-03-21 20:50:53', '2020-03-21 21:38:39');

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
(11, 3, 4, 0, 500000, 0, '2020-01-08 00:48:45', '2020-01-08 00:48:45'),
(12, 4, 4, 0, 500000, 0, '2020-01-08 00:48:52', '2020-01-08 00:48:52'),
(13, 2, 3, 5, 100000, 500000, '2020-02-21 19:12:48', '2020-02-21 19:12:48'),
(14, 2, 3, 3, 100000, 300000, '2020-02-21 19:12:48', '2020-02-21 19:12:48'),
(15, 2, 1, 0, 500000, 0, '2020-02-21 19:12:48', '2020-02-21 19:12:48'),
(16, 5, 3, 0, 100000, 0, '2020-03-19 21:00:36', '2020-03-19 21:00:36'),
(70, 6, 3, 1, 100000, 100000, '2020-03-20 21:09:33', '2020-03-20 21:09:33'),
(71, 6, 1, 3, 500000, 1500000, '2020-03-20 21:09:33', '2020-03-20 21:09:33'),
(72, 6, 4, 3, 500000, 1500000, '2020-03-20 21:09:33', '2020-03-20 21:09:33'),
(73, 7, 1, 2, 500000, 1000000, '2020-03-24 20:05:58', '2020-03-24 20:05:58'),
(74, 7, 4, 1, 500000, 500000, '2020-03-24 20:05:58', '2020-03-24 20:05:58'),
(75, 7, 4, 0, 500000, 0, '2020-03-24 20:05:58', '2020-03-24 20:05:58'),
(76, 7, 4, 0, 500000, 0, '2020-03-24 20:05:58', '2020-03-24 20:05:58'),
(77, 7, 1, 0, 500000, 0, '2020-03-24 20:05:58', '2020-03-24 20:05:58'),
(78, 8, 1, 2, 500000, 1000000, '2020-03-24 20:13:15', '2020-03-24 20:13:15'),
(79, 8, 4, 1, 500000, 500000, '2020-03-24 20:13:15', '2020-03-24 20:13:15'),
(80, 8, 4, 0, 500000, 0, '2020-03-24 20:13:15', '2020-03-24 20:13:15'),
(81, 8, 4, 0, 500000, 0, '2020-03-24 20:13:15', '2020-03-24 20:13:15'),
(82, 8, 1, 0, 500000, 0, '2020-03-24 20:13:15', '2020-03-24 20:13:15');

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
  `bank_id` int(11) DEFAULT NULL,
  `stk` text COLLATE utf8mb4_unicode_ci,
  `type` int(11) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhangs`
--

INSERT INTO `donhangs` (`id`, `name`, `address`, `phone`, `email`, `bank_id`, `stk`, `type`, `content`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Nguyễn Minh Dũng', 'Thanh Hóa', '0981304093', 'nm.dung.1991@gmail.com', NULL, NULL, 1, 'Mua kính', 0, '2020-01-03 21:51:36', '2020-01-03 21:51:36'),
(3, 'Nguyễn Minh Dũng', 'Thanh Hóa', '0981304093', 'admin@admin.com', NULL, NULL, 1, '1245678', 0, '2020-01-04 00:07:13', '2020-01-04 00:07:13'),
(4, 'Nguyễn Minh Dũng', 'Thanh Hóa', '0981304093', 'nm.dung.1991@gmail.com', NULL, NULL, 1, 'OK', 0, '2020-01-05 02:18:37', '2020-01-05 02:18:37'),
(5, 'aa', 'â', 'aaaa', 'aa@gmail.com', NULL, NULL, 2, 'aa', 0, '2020-01-05 02:21:54', '2020-01-05 02:21:54'),
(6, 'Nguyễn Minh Dũng', '21312', '01231223131', '0981304093@gmail.com', NULL, NULL, 1, 'sssssssssssss', 0, '2020-01-05 05:21:04', '2020-01-05 05:21:04'),
(7, 'Quỳnh', 'a', '00001', '1aa@gmail.com', NULL, NULL, 1, 'a', 0, '2020-01-06 19:10:35', '2020-01-06 19:10:35'),
(8, 'Nguyễn Minh Dũng', 'TH', '0981304093', 'admin@admin.com', NULL, NULL, 1, '222', 0, '2020-02-01 20:29:43', '2020-02-01 20:29:43'),
(9, 'Vũ Mạnh Hiệp', 'Số 83 Bát Khối, Long Biên, Hà Nội', '0915441113', 'hiepvm1@gmail.com', NULL, NULL, 1, '3 Đen, 2 Trắng', 0, '2020-02-21 18:54:33', '2020-02-21 18:54:33'),
(10, 'Vũ Mạnh Hiệp', 'Số 85 Bát Khối, Long Biên, Hà Nội', '0915441113', 'hiepvm1@gmail.com', NULL, NULL, 2, '3', 0, '2020-02-21 18:56:02', '2020-02-21 18:56:02'),
(11, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', 2, '123123123123123', 1, 'ducbi chuyen tien', 0, '2020-03-19 07:29:02', '2020-03-19 07:29:02'),
(12, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', 3, 'asdasd', 1, 'adasdasdasd', 0, '2020-03-19 07:40:58', '2020-03-19 07:40:58'),
(13, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', 18, '123123123123123', 1, 'asdasd', 0, '2020-03-19 08:03:44', '2020-03-19 08:03:44'),
(14, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', 18, '123123123123123', 1, 'asdasd', 0, '2020-03-19 08:15:54', '2020-03-19 08:15:54'),
(15, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', 18, '123123123123123', 1, 'asdasd', 0, '2020-03-19 08:17:12', '2020-03-19 08:17:12'),
(16, 'Dang van Duc', 'dinh cong', '0968107626', 'dangvanduc0@gmail.com', 18, '123123123123123', 1, 'asdasd', 0, '2020-03-19 08:17:39', '2020-03-19 08:17:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohangs`
--

CREATE TABLE `giohangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `donhang_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` float DEFAULT '0',
  `sum` float DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giohangs`
--

INSERT INTO `giohangs` (`id`, `donhang_id`, `color_id`, `amount`, `price`, `sum`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 5250000, 5250000, '2020-01-03 21:51:36', '2020-01-03 21:51:36'),
(2, 3, 2, 1, 5250000, 5250000, '2020-01-04 00:07:13', '2020-01-04 00:07:13'),
(3, 3, 1, 1, 5250000, 5250000, '2020-01-04 00:07:13', '2020-01-04 00:07:13'),
(4, 4, 2, 1, 5250000, 5250000, '2020-01-05 02:18:37', '2020-01-05 02:18:37'),
(5, 5, 2, 3, 5250000, 15750000, '2020-01-05 02:21:54', '2020-01-05 02:21:54'),
(6, 6, 2, 1, 5250000, 5250000, '2020-01-05 05:21:04', '2020-01-05 05:21:04'),
(7, 6, 1, 3, 5250000, 15750000, '2020-01-05 05:21:04', '2020-01-05 05:21:04'),
(8, 7, 1, 1, 5250000, 5250000, '2020-01-06 19:10:35', '2020-01-06 19:10:35'),
(9, 8, 1, 1, 5250000, 5250000, '2020-02-01 20:29:43', '2020-02-01 20:29:43'),
(10, 9, 1, 8, 5250000, 42000000, '2020-02-21 18:54:33', '2020-02-21 18:54:33'),
(11, 10, 1, 1, 5250000, 5250000, '2020-02-21 18:56:02', '2020-02-21 18:56:02');

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
-- Cấu trúc bảng cho bảng `khambenhs`
--

CREATE TABLE `khambenhs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khambenhs`
--

INSERT INTO `khambenhs` (`id`, `name`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tròng kính 5', 500000.00, 1, '2020-01-04 20:54:43', '2020-01-04 20:54:43'),
(3, 'Gọng kính 1', 100000.00, 1, '2020-01-04 20:55:53', '2020-01-04 20:55:53'),
(4, 'Tròng kính 1', 500000.00, 1, '2020-01-04 20:56:08', '2020-01-04 20:56:08');

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

--
-- Đang đổ dữ liệu cho bảng `lien_hes`
--

INSERT INTO `lien_hes` (`id`, `name`, `phone`, `email`, `address`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Minh Dũng', '0981304093', 'nm.dung.1991@gmail.com', 'Thanh Hóa', NULL, 0, '2020-01-03 18:54:35', '2020-01-03 18:54:35'),
(2, 'Eric', '416-385-3200', 'eric@talkwithcustomer.com', '420 Lexington Ave', 'Hello ngocminhoptic.com,\r\n\r\nPeople ask, “why does TalkWithCustomer work so well?”\r\n\r\nIt’s simple.\r\n\r\nTalkWithCustomer enables you to connect with a prospective customer at EXACTLY the Perfect Time.\r\n\r\n- NOT one week, two weeks, three weeks after they’ve checked out your website ngocminhoptic.com.\r\n- NOT with a form letter style email that looks like it was written by a bot.\r\n- NOT with a robocall that could come at any time out of the blue.\r\n\r\nTalkWithCustomer connects you to that person within seconds of THEM asking to hear from YOU.\r\n\r\nThey kick off the conversation.\r\n\r\nThey take that first step.\r\n\r\nThey ask to hear from you regarding what you have to offer and how it can make their life better. \r\n\r\nAnd it happens almost immediately. In real time. While they’re still looking over your website ngocminhoptic.com, trying to make up their mind whether you are right for them.\r\n\r\nWhen you connect with them at that very moment it’s the ultimate in Perfect Timing – as one famous marketer put it, “you’re entering the conversation already going on in their mind.”\r\n\r\nYou can’t find a better opportunity than that.\r\n\r\nAnd you can’t find an easier way to seize that chance than TalkWithCustomer. \r\n\r\nCLICK HERE http://www.talkwithcustomer.com now to take a free, 14-day test drive and see what a difference “Perfect Timing” can make to your business.\r\n\r\nSincerely,\r\nEric\r\n\r\nPS:  If you’re wondering whether NOW is the perfect time to try TalkWithCustomer, ask yourself this:\r\nWill doing what I’m already doing now produce up to 100X more leads?\r\nBecause those are the kinds of results we know TalkWithCustomer can deliver.  \r\nIt shouldn’t even be a question, especially since it will cost you ZERO to give it a try. \r\nCLICK HERE http://www.talkwithcustomer.com to start your free 14-day test drive today.\r\n\r\nIf you\'d like to unsubscribe click here http://liveserveronline.com/talkwithcustomer.aspx?d=ngocminhoptic.com', 0, '2020-02-02 20:59:23', '2020-02-02 20:59:23'),
(3, 'Eric', '416-385-3200', 'eric@talkwithcustomer.com', '420 Lexington Ave', 'Hey,\r\n\r\nYou have a website ngocminhoptic.com, right?\r\n\r\nOf course you do. I am looking at your website now.\r\n\r\nIt gets traffic every day – that you’re probably spending $2 / $4 / $10 or more a click to get.  Not including all of the work you put into creating social media, videos, blog posts, emails, and so on.\r\n\r\nSo you’re investing seriously in getting people to that site.\r\n\r\nBut how’s it working?  Great? Okay?  Not so much?\r\n\r\nIf that answer could be better, then it’s likely you’re putting a lot of time, effort, and money into an approach that’s not paying off like it should.\r\n\r\nNow… imagine doubling your lead conversion in just minutes… In fact, I’ll go even better.\r\n \r\nYou could actually get up to 100X more conversions!\r\n\r\nI’m not making this up.  As Chris Smith, best-selling author of The Conversion Code says: Speed is essential - there is a 100x decrease in Leads when a Lead is contacted within 14 minutes vs being contacted within 5 minutes.\r\n\r\nHe’s backed up by a study at MIT that found the odds of contacting a lead will increase by 100 times if attempted in 5 minutes or less.\r\n\r\nAgain, out of the 100s of visitors to your website, how many actually call to become clients?\r\n\r\nWell, you can significantly increase the number of calls you get – with ZERO extra effort.\r\n\r\nTalkWithCustomer makes it easy, simple, and fast – in fact, you can start getting more calls today… and at absolutely no charge to you.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com now to take a free, 14-day test drive to find out how.\r\n\r\nSincerely,\r\nEric\r\n\r\nPS: Don’t just take my word for it, TalkWithCustomer works:\r\nEMA has been looking for ways to reach out to an audience. TalkWithCustomer so far is the most direct call of action. It has produced above average closing ratios and we are thrilled. Thank you for providing a real and effective tool to generate REAL leads. - P MontesDeOca.\r\nBest of all, act now to get a no-cost 14-Day Test Drive – our gift to you just for giving TalkWithCustomer a try. \r\nCLICK HERE http://www.talkwithcustomer.com to start converting up to 100X more leads today!\r\n\r\nIf you\'d like to unsubscribe click here http://liveserveronline.com/talkwithcustomer.aspx?d=ngocminhoptic.com', 0, '2020-02-05 09:03:04', '2020-02-05 09:03:04'),
(4, 'Eric', '416-385-3200', 'eric@talkwithwebvisitor.com', '420 Lexington Ave', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - ngocminhoptic.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across ngocminhoptic.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=ngocminhoptic.com', 0, '2020-02-25 12:42:05', '2020-02-25 12:42:05');

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
(29, '2020_03_19_093044_add_description_to_products_table', 14),
(30, '2020_03_19_134354_create_banks_table', 15),
(31, '2020_03_19_140812_add_stk_to_donhang_table', 16),
(32, '2020_03_21_142408_create_co_sos_table', 17),
(33, '2020_03_22_044517_add_quantity_to_colors', 18);

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
(5, 'Dang van Duc3', NULL, '0968107626', 'dangvanduc0@gmail.com', '03:00', '30/03/2020', 'dinh cong', 'asd', 0, '2020-03-19 23:36:18', '2020-03-19 23:36:18'),
(6, 'Dang van Duc', 3, '0968107626', 'dangvanduc0@gmail.com', '01:00', '30/03/2020', 'dinh cong', 'asd', 0, '2020-03-19 23:41:44', '2020-03-19 23:41:44');

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
(1, 'goc-review', 'Góc review', 1, 1, 'FILES/source/71146098_478298403021578_3724646500093919232_o%20(1).jpg', 'Qua tớ vừa sắm quả kính này các cậu ạ :v. Lần đầu được mua kính kèm thêm mắt chống xước, chống loá, chống hơi nước và chống bám nước CHỈ VỚI ...450k @@\r\nẤn tượng đầu tiên với quán này là đến nơi bất ngờ vì ... quá đông. Xe tràn ra cả lòng đường. Lúc đấy là 4h chiều và có khoảng 30 người đang đứng đứng ngồi ngồi tring cái quán nhỏ xinh đấy. Trong đầu nghĩ, chắc đến đúng hôm đang giảm giá, sao đông thế chứ. N thôi đến rồi,ngại về. Thế là lần mò vào, ngơ ngác nhìn. Không phải do giảm giá các bác ạ.', '<p>Qua tớ vừa sắm quả k&iacute;nh n&agrave;y c&aacute;c cậu ạ&nbsp;<img alt=\"\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png\" style=\"height:16px; width:16px\" />:v. Lần đầu được mua k&iacute;nh k&egrave;m th&ecirc;m mắt chống xước, chống lo&aacute;, chống hơi nước v&agrave; chống b&aacute;m nước CHỈ VỚI ...450k @@<br />\r\nẤn tượng đầu ti&ecirc;n với qu&aacute;n n&agrave;y l&agrave; đến nơi bất ngờ v&igrave; ... qu&aacute; đ&ocirc;ng. Xe tr&agrave;n ra cả l&ograve;ng đường. L&uacute;c đấy l&agrave; 4h chiều v&agrave; c&oacute; khoảng 30 người đang đứng đứng ngồi ngồi tring c&aacute;i qu&aacute;n nhỏ xinh đấy. Trong đầu nghĩ, chắc đến đ&uacute;ng h&ocirc;m đang giảm gi&aacute;, sao đ&ocirc;ng thế chứ. N th&ocirc;i đến rồi,ngại về. Thế l&agrave; lần m&ograve; v&agrave;o, ngơ ng&aacute;c nh&igrave;n.&nbsp;Kh&ocirc;ng phải do giảm gi&aacute; c&aacute;c b&aacute;c ạ.<br />\r\nV&agrave; bất ngờ thứ 2, người b&aacute;n người đo người cắt độ tầm 5 người, c&ograve;n lại l&agrave; kh&aacute;ch h&agrave;ng mỗi người tay cầm 4,5 c&aacute;i k&iacute;nh đeo đeo ngắm ngh&iacute;a. V&acirc;ng, v&agrave;o đ&acirc;y l&agrave; được TỰ DO LẤY V&Agrave; ĐEO THỬ . Cứ thi nhau lấy ra xong đeo đeo, ai &yacute; thức th&igrave; cất v&ocirc; chỗ cũ cẩn thận. Nhưng k v&igrave; thế m&agrave; ng&oacute; lơ kh&aacute;ch, chủ qu&aacute;n hay nh&acirc;n vi&ecirc;n rất nhiệt t&igrave;nh v&agrave; dễ mến&nbsp;<img alt=\"\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png\" style=\"height:16px; width:16px\" />:v. Hỏi l&agrave; t&igrave;m hộ cho. N&oacute;i chung l&agrave; hơi chật chội v&igrave; đ&ocirc;ng nhưng kh&aacute; thoải m&aacute;i v&igrave; được tự do chọn. M&agrave; nhiều n&ecirc;n hơi ngợp :(( thấy c&aacute;i n&agrave;o cũng được được hết. Băn khoăn hồi l&acirc;u quyết định chọn c&aacute;i n&egrave;.<br />\r\nBất ngờ thứ 3, &quot; B&ecirc;n chị c&oacute; 4 loại mắt,50,90,180,200....&quot; &quot; 200k l&agrave; loại chống xước chống nước chống lo&aacute; &aacute; chị&quot; uk đ&uacute;ng rồi e.e cận nặng th&igrave; c&oacute; thể chọn loại mỏng đắt hơn ch&uacute;t&quot; V&igrave; ngh&egrave;o n&ecirc;n tớ chỉ chọn loại 200k th&ocirc;i.<img alt=\"\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png\" style=\"height:16px; width:16px\" />:v&nbsp;N thấy rất rất ổn rồi.<br />\r\nReview d&agrave;i qu&aacute;&nbsp;<img alt=\"\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/eb4/1/16/FACE_WITH_COLON_THREE.png\" style=\"height:16px; width:16px\" />:3. Th&ecirc;m l&agrave; gọng ở đ&acirc;y cũng rất rất l&agrave; rẻ,nhẹ. Phải giới thiệu lu&ocirc;n cho c&aacute;c b&aacute;c bị cận. &Agrave; c&oacute; cả k&iacute;nh thời trang nữa<br />\r\nĐịa chỉ: K&iacute;nh Mắt Ngọc Minh 30 Trần Quốc Toản ^^</p>', NULL, 'asd', NULL, NULL, NULL, NULL, 1, 2, 1, '2019-12-29 19:31:46', '2020-03-19 06:02:42'),
(2, 've-chung-toi', 'Về chúng tôi', 2, 1, 'FILES/source/p8%20(1).jpg', 'Về chúng tôi', '<p><img src=\"https://yeah1group.com/img/about/overview-57b7b24b15471b58b5cf2c939feff87b.png?vsn=d\" /></p>\r\n\r\n<p>Tổng quan</p>\r\n\r\n<p>Tập đo&agrave;n Yeah1 (&ldquo;YEG&rdquo;) l&agrave; một trong những mạng truyền th&ocirc;ng lớn nhất Đ&ocirc;ng Nam &Aacute; hoạt động trong cả k&ecirc;nh truyền thống v&agrave; kỹ thuật số. Yeah1 vận h&agrave;nh hơn 20 c&ocirc;ng ty trong chuỗi gi&aacute; trị với c&aacute;c hoạt động tr&ecirc;n khắp Ch&acirc;u &Aacute; v&agrave; m&ocirc; h&igrave;nh doanh thu to&agrave;n cầu với doanh thu đến từ hơn 150 quốc gia v&agrave; khu vực. Ch&uacute;ng t&ocirc;i đang tr&ecirc;n đ&agrave; x&acirc;y dựng sự thống trị của m&igrave;nh ở mảng truyền th&ocirc;ng v&agrave; c&aacute;c ng&agrave;nh nghề c&oacute; li&ecirc;n quan.</p>\r\n\r\n<p><img src=\"https://yeah1group.com/img/about/vision-13a543361974670a8f1a165fea6b3a77.png?vsn=d\" /></p>\r\n\r\n<p>Tầm nh&igrave;n</p>\r\n\r\n<p>YEG định hướng trở th&agrave;nh mạng truyền th&ocirc;ng đứng đầu Đ&ocirc;ng Nam &Aacute;. Ch&uacute;ng t&ocirc;i hướng đến việc thu hẹp khoảng c&aacute;ch về c&ocirc;ng nghệ th&ocirc;ng qua việc c&aacute;c nội dung v&agrave; th&ocirc;ng tin c&oacute; thể truy cập dễ d&agrave;ng từ mọi nơi tr&ecirc;n thế giới th&ocirc;ng qua nền tảng c&ocirc;ng nghệ hiện đại v&agrave; c&aacute;c đối t&aacute;c nội dung v&agrave; nền tảng to&agrave;n cầu.</p>\r\n\r\n<p><img src=\"https://yeah1group.com/img/about/mission-0779f057e8632b6fe4bdf77ca00ccc7e.png?vsn=d\" /></p>\r\n\r\n<p>Sứ mệnh</p>\r\n\r\n<p>Li&ecirc;n tục ph&aacute;t triển kh&ocirc;ng ngừng, th&aacute;ch thức ranh giới của c&ocirc;ng nghệ v&agrave; ph&aacute;t triển c&aacute;c nội dung giải tr&iacute; hấp dẫn.</p>\r\n\r\n<p><img src=\"https://yeah1group.com/img/about/milestone-cdd458b7914ff819f0e1d702ee662552.png?vsn=d\" /></p>\r\n\r\n<p>Lịch sử ph&aacute;t triển</p>\r\n\r\n<p>Tập đo&agrave;n Yeah1 hiện tại vẫn thuộc sự điều h&agrave;nh v&agrave; kiểm so&aacute;t bởi c&aacute;c cổ đ&ocirc;ng s&aacute;ng lập, vốn l&agrave; những người bạn th&acirc;n cho đến hiện nay.</p>\r\n\r\n<p><img src=\"https://yeah1group.com/img/about/future-413268257f18d9a8ada13667cf5b2084.png?vsn=d\" /></p>\r\n\r\n<p>Tương lai</p>\r\n\r\n<p>Với cộng đồng v&agrave; nền tảng về c&ocirc;ng nghệ v&agrave; truyền h&igrave;nh, YEG đang từng bước mở rộng ra ngo&agrave;i ch&acirc;u &Aacute; với tham vọng ph&aacute;t triển mạnh mẽ ng&agrave;nh truyền th&ocirc;ng kỹ thuật số. YEG hiện đang hoạt động tại nhiều quốc gia trong khu vực v&agrave; tr&ecirc;n thế giới như Th&aacute;i Lan, Singapore, Ph&aacute;p v&agrave; Đ&agrave;i Loan ở mảng truyền th&ocirc;ng kỹ thuật số v&agrave; kinh doanh quảng c&aacute;o trực tuyến.</p>\r\n\r\n<p>Khu vực Đ&ocirc;ng Nam &Aacute; hiện đang sẵn s&agrave;ng cho sự tăng trưởng b&ugrave;ng nổ của ng&agrave;nh kinh doanh thương mại v&agrave; quảng c&aacute;o trực tuyến. YEG, với những th&agrave;nh t&iacute;ch vượt bậc c&ugrave;ng với năng lực cốt l&otilde;i vượt trội v&agrave; c&ocirc;ng nghệ quảng c&aacute;o hiện đại, đ&atilde; chuẩn bị sẵn s&agrave;ng để tận dụng những lợi thế từ xu hướng n&agrave;y v&agrave; định hướng trở th&agrave;nh đơn vị kỹ thuật số kh&aacute;c biệt ở khu vực Đ&ocirc;ng Nam &Aacute; trong v&agrave;i năm tới.</p>\r\n\r\n<h2>2006</h2>\r\n\r\n<p>X&acirc;y dựng cộng đồng mạng gồm<br />\r\n<strong>40k</strong>&nbsp;người d&ugrave;ng<br />\r\nVận h&agrave;nh&nbsp;<a href=\"http://yeah1.com/\" target=\"_blank\">www.yeah1.com</a><br />\r\nv&agrave; bắt đầu kiếm tiền<br />\r\ntừ c&aacute;c nh&atilde;n h&agrave;ng v&agrave; quảng c&aacute;o nội dung</p>\r\n\r\n<h2>2008</h2>\r\n\r\n<p>Tăng trưởng cộng đồng mạng ở Việt Nam 10 lần l&ecirc;n&nbsp;<strong>400k</strong>&nbsp;người sử dụng h&agrave;ng ng&agrave;y<br />\r\nRa đời k&ecirc;nh tivi đầu ti&ecirc;n cho giới trẻ Việt Nam&nbsp;<img src=\"https://yeah1group.com/img/logo/y1tv-e9d910682ce73c44525dd6bc12752213.png?vsn=d\" />&nbsp;v&agrave; gặt h&aacute;i được nhiều th&agrave;nh tựu lớn</p>\r\n\r\n<h2>2010</h2>\r\n\r\n<p>Th&ecirc;m 2 k&ecirc;nh&nbsp;<img src=\"https://yeah1group.com/img/logo/y1family-fe8c1779ac5d2b757a27766170e6f4ba.png?vsn=d\" />&nbsp;<img src=\"https://yeah1group.com/img/logo/imovie-a0d069a85f7c51adfdadf0ba17e795c0.png?vsn=d\" />&nbsp;để chiếm lĩnh s&acirc;u hơn v&agrave;o<br />\r\nc&aacute;c hộ gia đ&igrave;nh v&agrave;<br />\r\nmảng phim truyền h&igrave;nh<br />\r\nvới&nbsp;<strong>2 triệu</strong>&nbsp;người xem tr&ecirc;n tivi</p>\r\n\r\n<h2>2015</h2>\r\n\r\n<p>Được cấp&nbsp;<img src=\"https://yeah1group.com/img/about/timeline/youtube-4b61a4bc97362e2b7c8ea888d4f1d0e5.png?vsn=d\" />&nbsp;Giấy chứng nhận MCN<br />\r\nv&agrave; nhanh ch&oacute;ng đạt&nbsp;<strong>2,4 tỷ</strong>&nbsp;lượt xem<br />\r\nĐược trao tặng&nbsp;<strong>2</strong>&nbsp;<img src=\"https://yeah1group.com/img/about/timeline/gold-58d7b0f048ab631eda5a3f973a6870da.png?vsn=d\" />&nbsp;cho c&aacute;c k&ecirc;nh c&oacute; hơn 1 triệu người theo d&otilde;i<br />\r\nTh&agrave;nh lập&nbsp;<img src=\"https://yeah1group.com/img/about/timeline/y1cmg-1dbada3f96e5449639d743a4c7219525.png?vsn=d\" />&nbsp;mảng phim chiếu rạp<br />\r\nDoanh thu kỹ thuật số chỉ chiếm&nbsp;<strong>9,6%</strong>&nbsp;tổng doanh thu</p>\r\n\r\n<h2>2016</h2>\r\n\r\n<p>Cộng đồng l&ecirc;n đến&nbsp;<strong>20 triệu</strong>&nbsp;th&agrave;nh vi&ecirc;n<br />\r\n<img src=\"https://yeah1group.com/img/about/timeline/youtube-4b61a4bc97362e2b7c8ea888d4f1d0e5.png?vsn=d\" />&nbsp;lượt xem t&iacute;ch lũy:&nbsp;<strong>19,7 tỷ</strong><br />\r\nDoanh thu kỹ thuật số:&nbsp;<strong>41,5%</strong>&nbsp;tổng doanh thu</p>\r\n\r\n<h2>2017</h2>\r\n\r\n<p><img src=\"https://yeah1group.com/img/about/timeline/netlink-5f9a1aeab26c3f72da26cb25724f72dc.png?vsn=d\" />&nbsp;Đối t&aacute;c xuất bản ch&iacute;nh thức Duy nhất của&nbsp;<img src=\"https://yeah1group.com/img/about/timeline/google-830c49ba5f3a69c96084b0ead46368a1.png?vsn=d\" />&nbsp;ở Đ&ocirc;ng Nam &Aacute;<br />\r\n<img src=\"https://yeah1group.com/img/about/timeline/tnt-e08079dd978e76747b748f99449bcaf1.png?vsn=d\" />&nbsp;Đại l&yacute; quảng c&aacute;o truyền h&igrave;nh lớn nhất Việt Nam<br />\r\n<img src=\"https://yeah1group.com/img/about/timeline/youtube-4b61a4bc97362e2b7c8ea888d4f1d0e5.png?vsn=d\" />&nbsp;MCN h&agrave;ng đầu ch&acirc;u &Aacute;<br />\r\n<img src=\"https://yeah1group.com/img/about/timeline/youtube-4b61a4bc97362e2b7c8ea888d4f1d0e5.png?vsn=d\" />&nbsp;Lượt xem t&iacute;ch lũy:&nbsp;<strong>56 tỷ</strong><br />\r\nC&oacute; tổng cộng&nbsp;<strong>12</strong><img src=\"https://yeah1group.com/img/about/timeline/gold-58d7b0f048ab631eda5a3f973a6870da.png?vsn=d\" />&nbsp;and&nbsp;<strong>280</strong>&nbsp;<img src=\"https://yeah1group.com/img/about/timeline/silver-4e5d800ec5671976f76f24183cb35568.png?vsn=d\" /><br />\r\nRa đời nhiều trang Facebook fanpages v&agrave; websites<br />\r\n<strong>48 triệu</strong>&nbsp;fans tr&ecirc;n&nbsp;<img src=\"https://yeah1group.com/img/about/timeline/facebook-eaf4ad15070ceb12f715fbc0a5019a5d.png?vsn=d\" /><br />\r\nSở hữu&nbsp;<strong>40</strong>&nbsp;websites<br />\r\nDoanh thu kỹ thuật số chiếm&nbsp;<strong>56,9%</strong>&nbsp;tổng doanh thu</p>\r\n\r\n<h2>2018</h2>\r\n\r\n<p><strong>Mở rộng&nbsp;</strong>sang Th&aacute;i Lan, Phillipines v&agrave; Indonesia<br />\r\n<strong>Hợp t&aacute;c độc quyền</strong>&nbsp;với&nbsp;<img src=\"https://yeah1group.com/img/about/timeline/universal-f017050b4f14739a5b6d8e853300d32d.png?vsn=d\" />, c&ocirc;ng ty nhạc đứng đầu thế giới<br />\r\nĐạt giải thưởng 2018 Apex&nbsp;<img src=\"https://yeah1group.com/img/about/timeline/apex-8a1f0cc92f21e3e2df6560a8cd209b58.png?vsn=d\" />&nbsp;về Đại l&yacute; truyền th&ocirc;ng Xuất sắc nhất<br />\r\nT&igrave;m kiếm&nbsp;<strong>c&aacute;c thoả thuận về nội dung</strong></p>\r\n\r\n<h3>Ban l&atilde;nh đạo</h3>\r\n\r\n<ul>\r\n	<li><a href=\"https://yeah1group.com/about_us#tab1\">ĐỘI NGŨ L&Atilde;NH ĐẠO TẬP ĐO&Agrave;N</a></li>\r\n	<li><a href=\"https://yeah1group.com/about_us#tab3\">HỘI ĐỒNG QUẢN TRỊ</a></li>\r\n</ul>\r\n\r\n<p><img src=\"https://y1group.s3.amazonaws.com/prod/file/tong_original.jpg\" /></p>\r\n\r\n<p>NGUYỄN ẢNH NHƯỢNG TỐNG</p>\r\n\r\n<p>CHỦ TỊCH HĐQT</p>\r\n\r\n<p><img src=\"https://y1group.s3.amazonaws.com/prod/file/tri_original.jpg\" /></p>\r\n\r\n<p>Đ&Agrave;O PH&Uacute;C TR&Iacute;</p>\r\n\r\n<p>TỔNG GI&Aacute;M ĐỐC</p>\r\n\r\n<p><img src=\"https://y1group.s3.amazonaws.com/prod/file/niraan-original_original.jpg\" /></p>\r\n\r\n<p>NIRAAN DE SILVA</p>\r\n\r\n<p>PH&Oacute; TỔNG GI&Aacute;M ĐỐC</p>\r\n\r\n<p><img src=\"https://y1group.s3.amazonaws.com/prod/file/cang_original.jpg\" /></p>\r\n\r\n<p>NGUYỄN VĂN CANG</p>\r\n\r\n<p>PH&Oacute; TỔNG GI&Aacute;M ĐỐC</p>\r\n\r\n<p><img src=\"https://y1group.s3.amazonaws.com/prod/file/hung_original.jpg\" /></p>\r\n\r\n<p>NGUYỄN NGỌC HƯNG</p>\r\n\r\n<p>PH&Oacute; TỔNG GI&Aacute;M ĐỐC</p>\r\n\r\n<p><img src=\"https://y1group.s3.amazonaws.com/prod/file/anh-dong_original.jpg\" /></p>\r\n\r\n<p>HỒ NAM Đ&Ocirc;NG</p>\r\n\r\n<p>PH&Oacute; TỔNG GI&Aacute;M ĐỐC</p>\r\n\r\n<h3>Triết l&yacute; kinh doanh</h3>\r\n\r\n<p><img src=\"https://yeah1group.com/img/about/box-41431f7e9f71e24f3da95dc073878ceb.jpg?vsn=d\" /></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i mục ti&ecirc;u trở th&agrave;nh bạn đồng h&agrave;nh của người ti&ecirc;u d&ugrave;ng mỗi ng&agrave;y</p>\r\n\r\n<p><img src=\"https://yeah1group.com/img/about/box-41431f7e9f71e24f3da95dc073878ceb.jpg?vsn=d\" /></p>\r\n\r\n<p>Hệ sinh th&aacute;i truyền th&ocirc;ng chiếm lĩnh c&aacute;c thiết bị của người sử dụng</p>', NULL, 'Về chúng tôi', NULL, NULL, NULL, NULL, 1, NULL, 1, '2020-01-06 20:33:50', '2020-01-06 20:33:50');

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
  `description_en` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
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

INSERT INTO `products` (`id`, `sku`, `slug`, `name`, `type_id`, `is_display`, `price`, `saleoff`, `chatlieu`, `description_en`, `description`, `content`, `note`, `name_en`, `chatlieu_en`, `content_en`, `note_en`, `meta_title`, `meta_des`, `meta_key`, `status`, `created_at`, `updated_at`) VALUES
(1, 'RB3025', 'kinh-mat-rayban-cao-cap-rb3025-0013362it', 'Kính mắt Rayban cao cấp RB3025-001/33(62IT)', 2, 1, 5250000, NULL, NULL, '<p>&aacute;ds1</p>', '<p>&aacute;d1</p>', '<p><a href=\"http://vietanoptic.com/kinh-mat-ray-ban/\">K&iacute;nh mắt Rayban</a>&nbsp;RB3025-001/33(62IT) (62/14/145) Thiết kế ban đầu d&agrave;nh cho c&aacute;c phi c&ocirc;ng của Mỹ, từ đ&oacute; thiết kế chiếc k&iacute;nh m&aacute;t Aviator chuồn chuồn thời trang hiện đại, cho đến d&aacute;ng nhựa Wayfarer trẻ trung phong c&aacute;ch. Gọng k&iacute;nh được l&agrave;m từ chất liệu xi mạ cao cấp nhất với độ bền cao nhất v&agrave; an to&agrave;n cho người sử dụng.</p>\r\n\r\n<p><img alt=\"Kính mắt Rayban RB3025-001/33(62IT)\" src=\"http://vietanoptic.com/wp-content/uploads/2019/09/k%C3%ADnh-rayban-rb3025-001-33-400x400.jpg\" style=\"height:400px; width:400px\" /></p>\r\n\r\n<p>K&iacute;nh mắt Rayban RB3025-001/33(62IT)</p>\r\n\r\n<p>Mẫu k&iacute;nh Rayban Aviator Classic được thiết kế d&agrave;nh ri&ecirc;ng cho c&aacute;c phi c&ocirc;ng mỹ v&agrave;o năm 1937. K&iacute;nh rayban RB3025 l&agrave; sự kết hợp ho&agrave;n hảo của phong c&aacute;ch cổ điển pha ch&uacute;t hiện đại, ph&oacute;ng kho&aacute;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Kính mắt cao cấp Rayban RB3025-001/33(62IT)\" src=\"http://vietanoptic.com/wp-content/uploads/2019/09/k%C3%ADnh-rayban-rb3025-001-33-1-400x400.jpg\" style=\"height:400px; width:400px\" /></p>\r\n\r\n<p>K&iacute;nh mắt cao cấp Rayban RB3025-001/33(62IT)</p>\r\n\r\n<ul>\r\n	<li>Tr&ograve;ng của mắt k&iacute;nh Rayban giữ nguy&ecirc;n chất liệu về khả năng chống trầy cao nhất v&agrave; chắc chắn đạt ti&ecirc;u chuẩn chống tia cực t&iacute;m UV400.</li>\r\n	<li>Tr&ograve;ng k&iacute;nh m&agrave;u n&acirc;u tr&agrave; c&oacute; khả năng chống ch&oacute;i, chống tia UV, tia cực t&iacute;m tốt, gi&uacute;p ngăn chặn c&aacute;c bệnh về mắt.</li>\r\n	<li>Thiết kế vừa vặn với nhiều h&igrave;nh d&aacute;ng gương mặt, khi đeo tạo sự h&agrave;i h&ograve;a, c&acirc;n đối giữa hai b&ecirc;n th&aacute;i dương, mắt v&agrave; s&oacute;ng mũi.</li>\r\n	<li>Sản phẩm được gia c&ocirc;ng tỉ mỉ v&agrave; sắc sảo đến từng chi tiết nhằm duy tr&igrave; tuổi thọ v&agrave; t&iacute;nh thẩm mỹ l&acirc;u d&agrave;i.</li>\r\n	<li>Trọng lượng nhẹ, &ocirc;m s&aacute;t gương mặt thoải m&aacute;i.</li>\r\n	<li>Đệm mũi &ecirc;m &aacute;i, tạo cảm gi&aacute;c dễ chịu khi đeo.</li>\r\n	<li>C&agrave;ng k&iacute;nh chắc chắn, kh&ocirc;ng g&acirc;y ra vết hằn kh&oacute; chịu tr&ecirc;n da.</li>\r\n	<li>Ốc vặn được gia c&ocirc;ng kỹ lưỡng v&agrave; cẩn thận.</li>\r\n	<li>Xuất xứ: &Yacute;</li>\r\n</ul>', '<h2>Th&ocirc;ng số chi tiết&nbsp;K&iacute;nh Mắt RayBan Rayban RB3025-001/33(62IT)</h2>\r\n\r\n<p>&ndash; Thương hiệu: Ray-Ban.</p>\r\n\r\n<p>&ndash; Nguồn gốc: Nhập khẩu ch&iacute;nh h&atilde;ng từ Italia.</p>\r\n\r\n<p>&ndash; K&iacute;ch thước ống k&iacute;nh 62mm</p>\r\n\r\n<p>&ndash; K&iacute;ch thước cầu 14mm</p>\r\n\r\n<p>&ndash; Chiều d&agrave;i đến 140mm</p>\r\n\r\n<p>&ndash; Giới t&iacute;nh: Cả hai</p>\r\n\r\n<p>&ndash; Ph&acirc;n cực Kh&ocirc;ng ph&acirc;n cực</p>\r\n\r\n<p>&ndash; Bảo H&agrave;nh: 12 th&aacute;ng</p>', 'High quality Rayban eyeglasses RB3025-001 / 33 (62IT)', NULL, '<p>Rayban RB3025-001 / 33 (62IT) eyeglasses (62/14/145) Original design for American pilots, from which to design modern fashion aviator sunglasses, from Wayfarer youthful style. Frames are made from the highest quality plating material with the highest durability and safety for users.</p>', '<p>Detailed specifications RayBan Rayban Eyeglasses RB3025-001 / 33 (62IT)<br />\r\n- Brand: Ray-Ban.</p>\r\n\r\n<p>- Origin: Imports genuine from Italy.</p>\r\n\r\n<p>- 62mm lens size</p>\r\n\r\n<p>- Bridge size 14mm</p>\r\n\r\n<p>- Length up to 140mm</p>\r\n\r\n<p>- Gender: Both</p>\r\n\r\n<p>- Polarized No polarity</p>\r\n\r\n<p>- Warranty 12 months</p>', NULL, NULL, NULL, 1, '2019-12-29 21:41:00', '2020-03-19 02:41:22'),
(2, 'dfdfsdf', 'tk-popsd', 'TK POP', 3, 1, 100000, NULL, 'Ultem', NULL, NULL, '<p>sdfdf</p>', '<p>sdfdf</p>', 'dffgdf', 'Ultem', '<p>sdfdf</p>', '<p>sdfdsf</p>', NULL, NULL, NULL, 1, '2020-01-13 05:15:45', '2020-01-13 05:15:45'),
(3, '24srsdsf', '123asd', 'sfdfs', 2, 0, 34, NULL, '3', '<p>M&ocirc; tả ngắn (EN)(*)</p>', '<p>M&ocirc; tả ngắn</p>', '<p>Th&ocirc;ng tin chi tiết(*)</p>', NULL, 'sdfsdf', '4', '<p>Th&ocirc;ng tin chi tiết (EN)(*)</p>', NULL, NULL, NULL, NULL, 1, '2020-03-19 02:42:32', '2020-03-19 02:42:32');

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
(1, 'trong-kinh', 'Tròng kính', 'Lenses', NULL, NULL, NULL, 1, '2020-01-06 00:43:26', '2020-01-06 00:43:26'),
(2, 'gong-kinh', 'Gọng kính', 'Glasses', NULL, NULL, NULL, 1, '2020-01-06 00:43:51', '2020-01-06 00:43:51'),
(3, 'TK POP', 'TK POP', 'TK Pop', NULL, NULL, NULL, 1, '2020-01-13 05:14:45', '2020-01-13 05:14:45');

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
(1, 'Admin', NULL, NULL, 'admin@admin.com', 'super-admin', NULL, NULL, '$2y$10$s9SQXij43FYvXvD0fnbe6OAL3YSLn2s2EwmwvU6MYvzY6/OmwvBRu', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(2, 'dangvanduc90', NULL, NULL, 'dangvanduc0@gmail.com', 'super-admin', NULL, NULL, '$2y$10$m9CE2vJdF8gEgooK4L8da.ej1/NB/tOyUbWzE2oQ1U6D1QWNJcRDG', NULL, NULL, NULL, 1, NULL, NULL, NULL);

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
(8, 'map', 'Bản đồ', NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.175190175079!2d105.88223101540235!3d21.025675093258425!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135a98b5aab33cd%3A0x1f0300b2c4f32a48!2zS8OtbmggTeG6r3QgTmfhu41jIE1pbmg!5e0!3m2!1svi!2s!4v1582335375652!5m2!1svi!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, '2020-01-03 18:39:26', '2020-02-21 18:36:34');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `donhangkhams`
--
ALTER TABLE `donhangkhams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT cho bảng `donhangs`
--
ALTER TABLE `donhangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT cho bảng `giohangs`
--
ALTER TABLE `giohangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
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
-- AUTO_INCREMENT cho bảng `khambenhs`
--
ALTER TABLE `khambenhs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `lien_hes`
--
ALTER TABLE `lien_hes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `webinfos`
--
ALTER TABLE `webinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
