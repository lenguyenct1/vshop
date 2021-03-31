-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 31, 2021 lúc 08:04 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `bl_id` int(11) NOT NULL,
  `bl_noidung` varchar(255) NOT NULL,
  `bl_ngay` datetime NOT NULL,
  `kh_id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `bl_trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`bl_id`, `bl_noidung`, `bl_ngay`, `kh_id`, `sp_id`, `bl_trangthai`) VALUES
(1, 'Hàng rất tốt', '2020-12-02 14:58:51', 2, 32, 0),
(2, 'Sản phẩm tốt', '2020-12-02 15:39:23', 8, 29, 0),
(3, 'Chưa mua nhưng cho 5 sao', '2020-12-02 15:39:52', 8, 29, 0),
(4, 'Sản phẩm dùng rất tốt', '2020-12-03 18:44:35', 2, 4, 0),
(5, 'Sản phẩm rất tốt , rất hài lòng về shop', '2020-12-03 18:48:44', 1, 30, 1),
(6, 'Sản phâm tốt', '2020-12-17 10:08:32', 1, 28, 1),
(7, 'Sản phẩm bán chạy không Shop', '2021-01-10 19:17:50', 1, 30, 1),
(8, 'Sản phẩm tốt', '2021-01-10 19:31:37', 1, 10, 0),
(9, 'Còn hàng không bạn', '2021-01-10 19:31:45', 1, 10, 0),
(10, 'Sản phẩm rất tốt! GOOD!', '2021-01-10 19:32:00', 1, 10, 0),
(11, 'Sản phẩm rất tốt, tôi sẽ ủng hộ VSHOP', '2021-01-11 10:09:44', 1, 10, 1),
(12, 'sp tốt', '2021-01-11 14:59:55', 1, 10, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdathang`
--

CREATE TABLE `chitietdathang` (
  `mausp_id` int(11) NOT NULL,
  `ddh_id` int(11) NOT NULL,
  `ctdh_soluong` int(11) NOT NULL,
  `ctdh_dongia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietdathang`
--

INSERT INTO `chitietdathang` (`mausp_id`, `ddh_id`, `ctdh_soluong`, `ctdh_dongia`) VALUES
(69, 3, 1, 1990000),
(66, 4, 1, 8490000),
(9, 5, 1, 2700000),
(60, 6, 1, 2690000),
(69, 6, 1, 1990000),
(50, 7, 1, 2300000),
(60, 8, 4, 2690000),
(7, 8, 1, 1800000),
(37, 9, 1, 2390000),
(54, 10, 1, 9490000),
(64, 11, 1, 7000000),
(19, 12, 1, 7371000),
(21, 13, 1, 12591000),
(68, 14, 1, 1990000),
(64, 15, 1, 7000000),
(60, 16, 1, 2690000),
(64, 17, 1, 7000000),
(7, 18, 1, 1800000),
(66, 19, 1, 7641000),
(58, 20, 1, 7000000),
(37, 21, 1, 2300000),
(62, 22, 1, 3141000),
(67, 23, 3, 8490000),
(21, 24, 1, 13990000),
(64, 25, 2, 7000000),
(66, 26, 2, 8490000),
(69, 27, 1, 1990000),
(62, 28, 2, 3490000),
(20, 29, 3, 12591000),
(64, 30, 1, 7000000),
(20, 31, 4, 12591000),
(20, 32, 3, 12591000),
(21, 33, 1, 12591000),
(20, 34, 1, 12591000),
(20, 35, 1, 12591000),
(20, 36, 1, 12591000),
(27, 37, 1, 13000000),
(20, 38, 3, 12591000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `pnk_id` int(11) NOT NULL,
  `mausp_id` int(11) NOT NULL,
  `ctpn_soluong` int(11) NOT NULL,
  `ctpn_dongia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`pnk_id`, `mausp_id`, `ctpn_soluong`, `ctpn_dongia`) VALUES
(5, 62, 12, 5000000),
(5, 63, 12, 5000000),
(6, 37, 12, 2000000),
(6, 38, 12, 2000000),
(7, 19, 12, 7190000),
(8, 20, 15, 12000000),
(8, 21, 12, 12000000),
(9, 23, 12, 3600000),
(9, 24, 12, 3600000),
(10, 64, 12, 5100000),
(10, 65, 12, 5100000),
(11, 17, 12, 7000000),
(11, 18, 12, 7000000),
(12, 14, 12, 16000000),
(12, 15, 12, 16000000),
(13, 34, 15, 6000000),
(13, 35, 15, 6000000),
(14, 9, 15, 2000000),
(14, 10, 5, 2000000),
(15, 7, 20, 2700000),
(16, 68, 5, 1000000),
(16, 69, 5, 1000000),
(17, 66, 8, 5000000),
(17, 67, 12, 5000000),
(18, 11, 8, 2000000),
(18, 12, 12, 2000000),
(18, 13, 10, 2000000),
(19, 5, 12, 6000000),
(19, 6, 6, 6000000),
(20, 42, 12, 3000000),
(20, 43, 5, 3000000),
(21, 60, 12, 1000000),
(21, 61, 6, 1000000),
(22, 44, 12, 10000000),
(22, 45, 8, 10000000),
(23, 58, 12, 5000000),
(23, 59, 15, 5000000),
(24, 56, 12, 5000000),
(24, 57, 15, 5000000),
(25, 47, 12, 2000000),
(25, 48, 16, 2000000),
(26, 54, 12, 7000000),
(26, 55, 5, 7000000),
(27, 52, 15, 6000000),
(27, 53, 16, 6000000),
(28, 32, 12, 5000000),
(28, 33, 13, 5000000),
(29, 50, 12, 2000000),
(30, 29, 23, 4690000),
(30, 30, 24, 4690000),
(31, 28, 12, 20000000),
(32, 27, 12, 12000000),
(33, 25, 12, 3500000),
(34, 23, 12, 3600000),
(35, 40, 5, 3000000),
(36, 7, 5, 2700000),
(37, 20, 5, 12000000),
(37, 21, 5, 12000000),
(38, 7, 3, 2700000),
(38, 16, 5, 16000000),
(39, 38, 12, 2000000),
(39, 45, 24, 10000000),
(40, 5, 2, 6000000),
(40, 7, 3, 2700000),
(40, 12, 4, 2000000),
(40, 18, 5, 7000000),
(41, 14, 2, 16000000),
(42, 19, 2, 7190000),
(42, 72, 5, 7190000),
(43, 5, 2, 6000000),
(43, 10, 2, 2000000),
(43, 15, 2, 16000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiettrancc`
--

CREATE TABLE `chitiettrancc` (
  `ptncc_id` int(11) NOT NULL,
  `mausp_id` int(11) NOT NULL,
  `ctncc_soluong` int(11) NOT NULL,
  `ctncc_dongia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitiettrancc`
--

INSERT INTO `chitiettrancc` (`ptncc_id`, `mausp_id`, `ctncc_soluong`, `ctncc_dongia`) VALUES
(2, 23, 1, 3600000),
(3, 23, 3, 3600000),
(4, 20, 2, 12000000),
(4, 21, 2, 12000000),
(5, 62, 2, 5000000),
(5, 63, 2, 5000000),
(6, 5, 2, 6000000),
(6, 7, 2, 2700000),
(7, 20, 2, 12000000),
(7, 21, 12, 12000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `dg_id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `dg_danhgia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`dg_id`, `sp_id`, `dg_danhgia`) VALUES
(1, 33, 5),
(2, 26, 4),
(3, 14, 5),
(4, 31, 4),
(5, 22, 4),
(6, 32, 5),
(7, 29, 5),
(8, 29, 5),
(9, 10, 3),
(10, 7, 4),
(11, 24, 3),
(12, 23, 3),
(13, 28, 5),
(14, 25, 4),
(15, 30, 3),
(16, 19, 3),
(17, 17, 3),
(18, 9, 4),
(19, 9, 5),
(20, 13, 4),
(21, 4, 3),
(22, 12, 4),
(23, 15, 4),
(24, 16, 4),
(25, 6, 3),
(26, 8, 4),
(27, 3, 4),
(28, 27, 3),
(29, 21, 3),
(30, 20, 4),
(31, 27, 5),
(32, 27, 5),
(33, 27, 5),
(34, 11, 5),
(35, 5, 4),
(36, 33, 3),
(37, 33, 3),
(38, 33, 3),
(39, 33, 3),
(40, 32, 1),
(41, 31, 1),
(42, 32, 4),
(43, 10, 4),
(44, 31, 4),
(45, 32, 4),
(46, 16, 2),
(47, 11, 2),
(48, 11, 2),
(49, 9, 3),
(50, 9, 3),
(51, 9, 3),
(52, 9, 3),
(53, 9, 3),
(54, 32, 3),
(55, 10, 3),
(56, 10, 3),
(57, 10, 4),
(58, 32, 4),
(59, 10, 4),
(60, 10, 3),
(61, 10, 3),
(62, 10, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuctin`
--

CREATE TABLE `danhmuctin` (
  `dmt_id` int(11) NOT NULL,
  `dmt_ten` varchar(100) NOT NULL,
  `dmt_hienthi` int(11) NOT NULL,
  `dmt_nhan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuctin`
--

INSERT INTO `danhmuctin` (`dmt_id`, `dmt_ten`, `dmt_hienthi`, `dmt_nhan`) VALUES
(1, 'Tin mới', 0, 'tin-moi'),
(2, 'Tin khuyến mãi', 0, 'tin-khuyen-mai'),
(3, 'Tin thủ thuật', 0, 'tin-thu-thuat');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `ddh_id` int(11) NOT NULL,
  `kh_id` int(11) NOT NULL,
  `ddh_ngaylap` datetime NOT NULL,
  `ddh_ngayxacnhan` datetime DEFAULT NULL,
  `ddh_trangthai` int(11) NOT NULL,
  `tt_id` int(11) NOT NULL,
  `ddh_diachi` varchar(255) NOT NULL,
  `ddh_sdt` varchar(30) NOT NULL,
  `vc_id` int(11) NOT NULL,
  `ddh_tong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dondathang`
--

INSERT INTO `dondathang` (`ddh_id`, `kh_id`, `ddh_ngaylap`, `ddh_ngayxacnhan`, `ddh_trangthai`, `tt_id`, `ddh_diachi`, `ddh_sdt`, `vc_id`, `ddh_tong`) VALUES
(3, 1, '2020-12-01 21:59:20', NULL, 4, 1, '123/456 ABCD', '1234567891', 1, 1990000),
(4, 2, '2020-12-02 14:59:33', '2021-01-10 19:57:00', 3, 1, '123/456ATH', '1234567892', 1, 8490000),
(5, 2, '2020-12-02 15:05:59', '2020-12-02 15:29:05', 3, 2, '123/456ATH', '1234567892', 1, 2700000),
(6, 3, '2020-12-02 15:08:04', NULL, 2, 1, '123/456ATY', '1234567893', 1, 4680000),
(7, 3, '2020-12-02 15:10:24', '2020-12-02 15:29:01', 3, 2, '123/456ATY', '1234567893', 1, 2300000),
(8, 4, '2020-12-02 15:11:46', NULL, 4, 1, '123/456ATZ', '1234567894', 1, 12560000),
(9, 4, '2020-12-02 15:12:02', NULL, 4, 1, '123/456ATZ', '1234567894', 1, 2390000),
(10, 4, '2020-12-02 15:18:23', NULL, 4, 1, '123/456ATZ', '1234567894', 1, 9490000),
(11, 5, '2020-12-02 15:22:21', NULL, 1, 1, '123/456ATHC', '1234567895', 1, 7000000),
(12, 5, '2020-12-02 15:23:08', NULL, 1, 1, '123/456ATHC', '1234567895', 1, 7371000),
(13, 5, '2020-12-02 15:26:06', NULL, 2, 2, '123/456ATHC', '1234567895', 4, 12611000),
(14, 6, '2020-12-02 15:28:06', NULL, 2, 2, '123/456ATHE', '1234567896', 5, 2020000),
(15, 7, '2020-12-02 15:38:14', NULL, 1, 1, '123/456ATHEH', '1234567897', 5, 7050000),
(16, 8, '2020-12-02 15:42:50', NULL, 2, 1, '123/456ATHV', '1234567898', 5, 2720000),
(17, 2, '2020-12-03 08:09:37', NULL, 1, 1, '123/456ATH', '1234567892', 1, 7000000),
(18, 1, '2020-12-03 08:40:00', NULL, 2, 1, '123/456 ABCD', '1234567891', 1, 1800000),
(19, 1, '2020-12-17 10:08:07', NULL, 1, 1, '123/456 ABCD', '1234567891', 1, 7641000),
(20, 1, '2020-12-17 10:10:00', NULL, 2, 2, '123/456 ABCD', '1234567891', 5, 7050000),
(21, 1, '2020-12-17 10:14:07', NULL, 1, 1, '123/456 ABCD', '1234567891', 1, 2300000),
(22, 1, '2020-12-17 10:19:44', NULL, 2, 2, '123/456 ABCD', '1234567891', 2, 3141000),
(23, 1, '2021-01-03 18:09:27', NULL, 4, 1, '123/456 ABCD', '1234567891', 1, 25470000),
(24, 1, '2021-01-03 19:12:17', '2021-01-03 19:44:35', 3, 1, '123/456 ABCD', '1234567891', 1, 13990000),
(25, 1, '2021-01-03 19:32:43', NULL, 1, 1, '123/456 ABCD', '1234567891', 4, 14020000),
(26, 1, '2021-01-03 19:38:01', NULL, 1, 1, '123/456 ABCD', '1234567891', 4, 17000000),
(27, 1, '2021-01-06 08:55:42', '2021-01-10 19:21:23', 3, 2, '123/456 ABCD', '1234567891', 2, 1990000),
(28, 1, '2021-01-10 19:15:03', NULL, 1, 1, '123/456 ABCD', '1234567891', 1, 6980000),
(29, 1, '2021-01-10 19:39:54', NULL, 1, 1, '123/456 ABCD', '1234567891', 5, 37913000),
(30, 1, '2021-01-10 19:48:21', NULL, 1, 1, '123/456 ABCD', '1234567891', 4, 7020000),
(31, 1, '2021-01-10 20:09:51', NULL, 2, 2, '123/456 ABCD', '1234567891', 4, 50384000),
(32, 1, '2021-01-10 20:36:32', NULL, 2, 2, '123/456 ABCD', '1234567891', 4, 37793000),
(33, 1, '2021-01-11 09:50:53', NULL, 2, 2, '123/456 ABCD', '1234567891', 4, 12611000),
(34, 1, '2021-01-11 10:11:12', NULL, 2, 2, '123/456 ABCD', '1234567891', 4, 12611000),
(35, 1, '2021-01-11 10:37:32', NULL, 2, 2, '123/456 ABCD', '1234567891', 4, 12611000),
(36, 1, '2021-01-11 11:05:50', NULL, 1, 1, '123/456 ABCD', '1234567891', 1, 12591000),
(37, 1, '2021-01-11 11:07:14', NULL, 2, 1, '123/456 ABCD', '1234567891', 2, 13000000),
(38, 1, '2021-01-11 15:01:43', NULL, 2, 2, '123/456 ABCD', '1234567891', 4, 37793000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gia`
--

CREATE TABLE `gia` (
  `sp_id` int(11) NOT NULL,
  `gia_ngayapdung` date NOT NULL,
  `gia_giatri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `gia`
--

INSERT INTO `gia` (`sp_id`, `gia_ngayapdung`, `gia_giatri`) VALUES
(3, '2020-11-16', 6490000),
(3, '2020-11-17', 6400000),
(4, '2020-11-16', 2790000),
(4, '2020-11-19', 2000000),
(5, '2020-11-16', 2990000),
(5, '2020-11-19', 3000000),
(6, '2020-11-16', 2290000),
(7, '2020-11-15', 17990000),
(7, '2020-11-20', 18000000),
(8, '2020-11-16', 8490000),
(8, '2020-11-24', 8400000),
(9, '2020-11-16', 8190000),
(10, '2020-11-15', 13990000),
(11, '2020-11-16', 3690000),
(12, '2020-11-16', 3590000),
(12, '2020-11-18', 3580000),
(12, '2020-11-25', 3490000),
(13, '2020-11-16', 12990000),
(13, '2020-11-30', 13000000),
(14, '2020-11-16', 29990000),
(14, '2020-12-29', 28990000),
(15, '2020-11-11', 4790000),
(16, '2020-11-09', 5590000),
(16, '2020-11-14', 5790000),
(16, '2020-11-16', 5990000),
(17, '2020-11-14', 5290000),
(17, '2020-11-21', 7000000),
(17, '2020-11-28', 6990000),
(19, '2020-12-01', 2390000),
(19, '2020-12-14', 2300000),
(19, '2020-12-28', 2990000),
(20, '2020-12-01', 4000000),
(20, '2020-12-10', 4490000),
(20, '2020-12-30', 5000000),
(21, '2020-12-01', 4000000),
(21, '2020-12-31', 5690000),
(22, '2020-12-01', 12990000),
(23, '2020-12-01', 3590000),
(23, '2020-12-27', 4000000),
(24, '2020-12-01', 2300000),
(24, '2020-12-21', 3590000),
(24, '2020-12-30', 2990000),
(25, '2020-12-01', 8990000),
(26, '2020-12-01', 9490000),
(27, '2020-12-03', 7490000),
(27, '2020-12-07', 7000000),
(28, '2020-12-03', 7790000),
(28, '2020-12-08', 9490000),
(28, '2020-12-16', 7000000),
(29, '2020-12-01', 2690000),
(29, '2020-12-04', 2000000),
(30, '2020-12-03', 3490000),
(31, '2020-12-01', 6999000),
(31, '2020-12-02', 7000000),
(32, '2020-12-01', 8490000),
(33, '2020-12-01', 1990000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhanh`
--

CREATE TABLE `hinhanh` (
  `hinhanh_id` int(11) NOT NULL,
  `hinhanh_ten` varchar(255) NOT NULL,
  `hinhanh_hinh` varchar(255) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `mausp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hinhanh`
--

INSERT INTO `hinhanh` (`hinhanh_id`, `hinhanh_ten`, `hinhanh_hinh`, `sp_id`, `mausp_id`) VALUES
(83, 'nokia-53-360-org-1.jpg', 'nokia-53-360-org-1.jpg', 4, NULL),
(84, 'nokia-53-360-org-2.jpg', 'nokia-53-360-org-2.jpg', 4, NULL),
(85, 'nokia-53-360-org-3.jpg', 'nokia-53-360-org-3.jpg', 4, NULL),
(86, 'nokia-53-360-org-4.jpg', 'nokia-53-360-org-4.jpg', 4, NULL),
(87, 'nokia-53-360-org-5.jpg', 'nokia-53-360-org-5.jpg', 4, NULL),
(88, 'nokia-53-360-org-6.jpg', 'nokia-53-360-org-6.jpg', 4, NULL),
(89, 'nokia-53-360-org-7.jpg', 'nokia-53-360-org-7.jpg', 4, NULL),
(90, 'nokia-53-360-org-8.jpg', 'nokia-53-360-org-8.jpg', 4, NULL),
(91, 'nokia-53-360-org-9.jpg', 'nokia-53-360-org-9.jpg', 4, NULL),
(92, 'nokia-53-360-org-10.jpg', 'nokia-53-360-org-10.jpg', 4, NULL),
(93, 'nokia-53-360-org-11.jpg', 'nokia-53-360-org-11.jpg', 4, NULL),
(94, 'nokia-53-360-org-12.jpg', 'nokia-53-360-org-12.jpg', 4, NULL),
(95, 'nokia-53-360-org-13.jpg', 'nokia-53-360-org-13.jpg', 4, NULL),
(96, 'nokia-53-360-org-14.jpg', 'nokia-53-360-org-14.jpg', 4, NULL),
(97, 'nokia-53-360-org-15.jpg', 'nokia-53-360-org-15.jpg', 4, NULL),
(98, 'nokia-53-360-org-16.jpg', 'nokia-53-360-org-16.jpg', 4, NULL),
(99, 'nokia-53-360-org-17.jpg', 'nokia-53-360-org-17.jpg', 4, NULL),
(100, 'nokia-53-360-org-18.jpg', 'nokia-53-360-org-18.jpg', 4, NULL),
(101, 'nokia-53-360-org-19.jpg', 'nokia-53-360-org-19.jpg', 4, NULL),
(102, 'nokia-53-360-org-20.jpg', 'nokia-53-360-org-20.jpg', 4, NULL),
(103, 'nokia-53-360-org-21.jpg', 'nokia-53-360-org-21.jpg', 4, NULL),
(104, 'nokia-53-360-org-22.jpg', 'nokia-53-360-org-22.jpg', 4, NULL),
(105, 'nokia-53-360-org-23.jpg', 'nokia-53-360-org-23.jpg', 4, NULL),
(106, 'nokia-53-360-org-24.jpg', 'nokia-53-360-org-24.jpg', 4, NULL),
(107, 'nokia-53-360-org-25.jpg', 'nokia-53-360-org-25.jpg', 4, NULL),
(108, 'nokia-53-360-org-26.jpg', 'nokia-53-360-org-26.jpg', 4, NULL),
(109, 'nokia-53-360-org-27.jpg', 'nokia-53-360-org-27.jpg', 4, NULL),
(110, 'nokia-53-360-org-28.jpg', 'nokia-53-360-org-28.jpg', 4, NULL),
(111, 'nokia-53-360-org-29.jpg', 'nokia-53-360-org-29.jpg', 4, NULL),
(112, 'nokia-53-360-org-30.jpg', 'nokia-53-360-org-30.jpg', 4, NULL),
(113, 'nokia-53-360-org-31.jpg', 'nokia-53-360-org-31.jpg', 4, NULL),
(114, 'nokia-53-360-org-32.jpg', 'nokia-53-360-org-32.jpg', 4, NULL),
(115, 'nokia-53-360-org-33.jpg', 'nokia-53-360-org-33.jpg', 4, NULL),
(116, 'nokia-53-360-org-34.jpg', 'nokia-53-360-org-34.jpg', 4, NULL),
(117, 'nokia-53-360-org-35.jpg', 'nokia-53-360-org-35.jpg', 4, NULL),
(118, 'nokia-53-360-org-36.jpg', 'nokia-53-360-org-36.jpg', 4, NULL),
(119, '637260977349362825_nokia-53-den-3.png', '637260977349362825_nokia-53-den-3.png', 4, 7),
(120, '637260977349872947_nokia-53-den-4.png', '637260977349872947_nokia-53-den-4.png', 4, 7),
(121, '637260977350922790_nokia-53-den-2.png', '637260977350922790_nokia-53-den-2.png', 4, 7),
(122, '637272223563055000_nokia-5-3-den-1-1.png', '637272223563055000_nokia-5-3-den-1-1.png', 4, 7),
(123, '637267707505506492_nokia-5-3-xanh-4.png', '637267707505506492_nokia-5-3-xanh-4.png', 4, 8),
(124, '637267707505766525_nokia-5-3-xanh-2.png', '637267707505766525_nokia-5-3-xanh-2.png', 4, 8),
(125, '637267707505776515_nokia-5-3-xanh-3.png', '637267707505776515_nokia-5-3-xanh-3.png', 4, 8),
(126, '637272223563216869_nokia-5-3-xanh-1-1.png', '637272223563216869_nokia-5-3-xanh-1-1.png', 4, 8),
(127, 'realme-c3-360-org-1.jpg', 'realme-c3-360-org-1.jpg', 5, NULL),
(128, 'realme-c3-360-org-2.jpg', 'realme-c3-360-org-2.jpg', 5, NULL),
(129, 'realme-c3-360-org-3.jpg', 'realme-c3-360-org-3.jpg', 5, NULL),
(130, 'realme-c3-360-org-4.jpg', 'realme-c3-360-org-4.jpg', 5, NULL),
(131, 'realme-c3-360-org-5.jpg', 'realme-c3-360-org-5.jpg', 5, NULL),
(132, 'realme-c3-360-org-6.jpg', 'realme-c3-360-org-6.jpg', 5, NULL),
(133, 'realme-c3-360-org-7.jpg', 'realme-c3-360-org-7.jpg', 5, NULL),
(134, 'realme-c3-360-org-8.jpg', 'realme-c3-360-org-8.jpg', 5, NULL),
(135, 'realme-c3-360-org-9.jpg', 'realme-c3-360-org-9.jpg', 5, NULL),
(136, 'realme-c3-360-org-10.jpg', 'realme-c3-360-org-10.jpg', 5, NULL),
(137, 'realme-c3-360-org-11.jpg', 'realme-c3-360-org-11.jpg', 5, NULL),
(138, 'realme-c3-360-org-12.jpg', 'realme-c3-360-org-12.jpg', 5, NULL),
(139, 'realme-c3-360-org-13.jpg', 'realme-c3-360-org-13.jpg', 5, NULL),
(140, 'realme-c3-360-org-14.jpg', 'realme-c3-360-org-14.jpg', 5, NULL),
(141, 'realme-c3-360-org-15.jpg', 'realme-c3-360-org-15.jpg', 5, NULL),
(142, 'realme-c3-360-org-16.jpg', 'realme-c3-360-org-16.jpg', 5, NULL),
(143, 'realme-c3-360-org-17.jpg', 'realme-c3-360-org-17.jpg', 5, NULL),
(144, 'realme-c3-360-org-18.jpg', 'realme-c3-360-org-18.jpg', 5, NULL),
(145, 'realme-c3-360-org-19.jpg', 'realme-c3-360-org-19.jpg', 5, NULL),
(146, 'realme-c3-360-org-20.jpg', 'realme-c3-360-org-20.jpg', 5, NULL),
(147, 'realme-c3-360-org-21.jpg', 'realme-c3-360-org-21.jpg', 5, NULL),
(148, 'realme-c3-360-org-22.jpg', 'realme-c3-360-org-22.jpg', 5, NULL),
(149, 'realme-c3-360-org-23.jpg', 'realme-c3-360-org-23.jpg', 5, NULL),
(150, 'realme-c3-360-org-24.jpg', 'realme-c3-360-org-24.jpg', 5, NULL),
(151, 'realme-c3-360-org-25.jpg', 'realme-c3-360-org-25.jpg', 5, NULL),
(152, 'realme-c3-360-org-26.jpg', 'realme-c3-360-org-26.jpg', 5, NULL),
(153, 'realme-c3-360-org-27.jpg', 'realme-c3-360-org-27.jpg', 5, NULL),
(154, 'realme-c3-360-org-28.jpg', 'realme-c3-360-org-28.jpg', 5, NULL),
(155, 'realme-c3-360-org-29.jpg', 'realme-c3-360-org-29.jpg', 5, NULL),
(156, 'realme-c3-360-org-30.jpg', 'realme-c3-360-org-30.jpg', 5, NULL),
(157, 'realme-c3-360-org-31.jpg', 'realme-c3-360-org-31.jpg', 5, NULL),
(158, 'realme-c3-360-org-32.jpg', 'realme-c3-360-org-32.jpg', 5, NULL),
(159, 'realme-c3-360-org-33.jpg', 'realme-c3-360-org-33.jpg', 5, NULL),
(160, 'realme-c3-360-org-34.jpg', 'realme-c3-360-org-34.jpg', 5, NULL),
(161, 'realme-c3-360-org-35.jpg', 'realme-c3-360-org-35.jpg', 5, NULL),
(162, 'realme-c3-360-org-36.jpg', 'realme-c3-360-org-36.jpg', 5, NULL),
(163, '637176200624636073_realme-c3-do-1.png', '637176200624636073_realme-c3-do-1.png', 5, 9),
(164, '637176200624636073_realme-c3-do-2.png', '637176200624636073_realme-c3-do-2.png', 5, 9),
(165, '637176200624792120_realme-c3-do-3.png', '637176200624792120_realme-c3-do-3.png', 5, 9),
(166, '637176200624792120_realme-c3-do-5.png', '637176200624792120_realme-c3-do-5.png', 5, 9),
(167, '637183128538635394_C3 Blue 3.png', '637183128538635394_C3 Blue 3.png', 5, 10),
(168, '637183128538635394_C3 blue 4.png', '637183128538635394_C3 blue 4.png', 5, 10),
(169, '637183128538635394_C3-Blue-1.png', '637183128538635394_C3-Blue-1.png', 5, 10),
(170, '637183128538635394_C3-Blue-2.png', '637183128538635394_C3-Blue-2.png', 5, 10),
(171, 'oppo-a92-org-1.jpg', 'oppo-a92-org-1.jpg', 3, NULL),
(172, 'oppo-a92-org-2.jpg', 'oppo-a92-org-2.jpg', 3, NULL),
(173, 'oppo-a92-org-3.jpg', 'oppo-a92-org-3.jpg', 3, NULL),
(174, 'oppo-a92-org-4.jpg', 'oppo-a92-org-4.jpg', 3, NULL),
(175, 'oppo-a92-org-5.jpg', 'oppo-a92-org-5.jpg', 3, NULL),
(176, 'oppo-a92-org-6.jpg', 'oppo-a92-org-6.jpg', 3, NULL),
(177, 'oppo-a92-org-7.jpg', 'oppo-a92-org-7.jpg', 3, NULL),
(178, 'oppo-a92-org-8.jpg', 'oppo-a92-org-8.jpg', 3, NULL),
(179, 'oppo-a92-org-9.jpg', 'oppo-a92-org-9.jpg', 3, NULL),
(180, 'oppo-a92-org-10.jpg', 'oppo-a92-org-10.jpg', 3, NULL),
(181, 'oppo-a92-org-11.jpg', 'oppo-a92-org-11.jpg', 3, NULL),
(182, 'oppo-a92-org-12.jpg', 'oppo-a92-org-12.jpg', 3, NULL),
(183, 'oppo-a92-org-13.jpg', 'oppo-a92-org-13.jpg', 3, NULL),
(184, 'oppo-a92-org-14.jpg', 'oppo-a92-org-14.jpg', 3, NULL),
(185, 'oppo-a92-org-15.jpg', 'oppo-a92-org-15.jpg', 3, NULL),
(186, 'oppo-a92-org-16.jpg', 'oppo-a92-org-16.jpg', 3, NULL),
(187, 'oppo-a92-org-17.jpg', 'oppo-a92-org-17.jpg', 3, NULL),
(188, 'oppo-a92-org-18.jpg', 'oppo-a92-org-18.jpg', 3, NULL),
(189, 'oppo-a92-org-19.jpg', 'oppo-a92-org-19.jpg', 3, NULL),
(190, 'oppo-a92-org-20.jpg', 'oppo-a92-org-20.jpg', 3, NULL),
(191, 'oppo-a92-org-21.jpg', 'oppo-a92-org-21.jpg', 3, NULL),
(192, 'oppo-a92-org-22.jpg', 'oppo-a92-org-22.jpg', 3, NULL),
(193, 'oppo-a92-org-23.jpg', 'oppo-a92-org-23.jpg', 3, NULL),
(194, 'oppo-a92-org-24.jpg', 'oppo-a92-org-24.jpg', 3, NULL),
(195, 'oppo-a92-org-25.jpg', 'oppo-a92-org-25.jpg', 3, NULL),
(196, 'oppo-a92-org-26.jpg', 'oppo-a92-org-26.jpg', 3, NULL),
(197, 'oppo-a92-org-27.jpg', 'oppo-a92-org-27.jpg', 3, NULL),
(198, 'oppo-a92-org-28.jpg', 'oppo-a92-org-28.jpg', 3, NULL),
(199, 'oppo-a92-org-29.jpg', 'oppo-a92-org-29.jpg', 3, NULL),
(200, 'oppo-a92-org-30.jpg', 'oppo-a92-org-30.jpg', 3, NULL),
(201, 'oppo-a92-org-31.jpg', 'oppo-a92-org-31.jpg', 3, NULL),
(202, 'oppo-a92-org-32.jpg', 'oppo-a92-org-32.jpg', 3, NULL),
(203, 'oppo-a92-org-33.jpg', 'oppo-a92-org-33.jpg', 3, NULL),
(204, 'oppo-a92-org-34.jpg', 'oppo-a92-org-34.jpg', 3, NULL),
(205, 'oppo-a92-org-35.jpg', 'oppo-a92-org-35.jpg', 3, NULL),
(206, 'oppo-a92-org-36.jpg', 'oppo-a92-org-36.jpg', 3, NULL),
(207, '637259998714483499_oppo-a92-den-3.png', '637259998714483499_oppo-a92-den-3.png', 3, 5),
(208, '637259998714795944_oppo-a92-den-2.png', '637259998714795944_oppo-a92-den-2.png', 3, 5),
(209, '637259998715264902_oppo-a92-den-1 (1).png', '637259998715264902_oppo-a92-den-1 (1).png', 3, 5),
(210, '637291103966708862_oppo-a92-den-4.png', '637291103966708862_oppo-a92-den-4.png', 3, 5),
(211, '637291103967208823_oppo-a92-den-5.png', '637291103967208823_oppo-a92-den-5.png', 3, 5),
(217, '637259998058055604_oppo-a92-trang-3.png', '637259998058055604_oppo-a92-trang-3.png', 3, 6),
(218, '637259998058245563_oppo-a92-trang-2.png', '637259998058245563_oppo-a92-trang-2.png', 3, 6),
(219, '637259998058295676_oppo-a92-trang-1.png', '637259998058295676_oppo-a92-trang-1.png', 3, 6),
(220, '637291103966908933_oppo-a92-trang-4.png', '637291103966908933_oppo-a92-trang-4.png', 3, 6),
(221, '637291103967288817_oppo-a92-trang-5.png', '637291103967288817_oppo-a92-trang-5.png', 3, 6),
(222, 'vsmart-joy-3-org-1.jpg', 'vsmart-joy-3-org-1.jpg', 6, NULL),
(223, 'vsmart-joy-3-org-2.jpg', 'vsmart-joy-3-org-2.jpg', 6, NULL),
(224, 'vsmart-joy-3-org-3.jpg', 'vsmart-joy-3-org-3.jpg', 6, NULL),
(225, 'vsmart-joy-3-org-4.jpg', 'vsmart-joy-3-org-4.jpg', 6, NULL),
(226, 'vsmart-joy-3-org-5.jpg', 'vsmart-joy-3-org-5.jpg', 6, NULL),
(227, 'vsmart-joy-3-org-6.jpg', 'vsmart-joy-3-org-6.jpg', 6, NULL),
(228, 'vsmart-joy-3-org-7.jpg', 'vsmart-joy-3-org-7.jpg', 6, NULL),
(229, 'vsmart-joy-3-org-8.jpg', 'vsmart-joy-3-org-8.jpg', 6, NULL),
(230, 'vsmart-joy-3-org-9.jpg', 'vsmart-joy-3-org-9.jpg', 6, NULL),
(231, 'vsmart-joy-3-org-10.jpg', 'vsmart-joy-3-org-10.jpg', 6, NULL),
(232, 'vsmart-joy-3-org-11.jpg', 'vsmart-joy-3-org-11.jpg', 6, NULL),
(233, 'vsmart-joy-3-org-12.jpg', 'vsmart-joy-3-org-12.jpg', 6, NULL),
(234, 'vsmart-joy-3-org-13.jpg', 'vsmart-joy-3-org-13.jpg', 6, NULL),
(235, 'vsmart-joy-3-org-14.jpg', 'vsmart-joy-3-org-14.jpg', 6, NULL),
(236, 'vsmart-joy-3-org-15.jpg', 'vsmart-joy-3-org-15.jpg', 6, NULL),
(237, 'vsmart-joy-3-org-16.jpg', 'vsmart-joy-3-org-16.jpg', 6, NULL),
(238, 'vsmart-joy-3-org-17.jpg', 'vsmart-joy-3-org-17.jpg', 6, NULL),
(239, 'vsmart-joy-3-org-18.jpg', 'vsmart-joy-3-org-18.jpg', 6, NULL),
(240, 'vsmart-joy-3-org-19.jpg', 'vsmart-joy-3-org-19.jpg', 6, NULL),
(241, 'vsmart-joy-3-org-20.jpg', 'vsmart-joy-3-org-20.jpg', 6, NULL),
(242, 'vsmart-joy-3-org-21.jpg', 'vsmart-joy-3-org-21.jpg', 6, NULL),
(243, 'vsmart-joy-3-org-22.jpg', 'vsmart-joy-3-org-22.jpg', 6, NULL),
(244, 'vsmart-joy-3-org-23.jpg', 'vsmart-joy-3-org-23.jpg', 6, NULL),
(245, 'vsmart-joy-3-org-24.jpg', 'vsmart-joy-3-org-24.jpg', 6, NULL),
(246, 'vsmart-joy-3-org-25.jpg', 'vsmart-joy-3-org-25.jpg', 6, NULL),
(247, 'vsmart-joy-3-org-26.jpg', 'vsmart-joy-3-org-26.jpg', 6, NULL),
(248, 'vsmart-joy-3-org-27.jpg', 'vsmart-joy-3-org-27.jpg', 6, NULL),
(249, 'vsmart-joy-3-org-28.jpg', 'vsmart-joy-3-org-28.jpg', 6, NULL),
(250, 'vsmart-joy-3-org-29.jpg', 'vsmart-joy-3-org-29.jpg', 6, NULL),
(251, 'vsmart-joy-3-org-30.jpg', 'vsmart-joy-3-org-30.jpg', 6, NULL),
(252, 'vsmart-joy-3-org-31.jpg', 'vsmart-joy-3-org-31.jpg', 6, NULL),
(253, 'vsmart-joy-3-org-32.jpg', 'vsmart-joy-3-org-32.jpg', 6, NULL),
(254, 'vsmart-joy-3-org-33.jpg', 'vsmart-joy-3-org-33.jpg', 6, NULL),
(255, 'vsmart-joy-3-org-34.jpg', 'vsmart-joy-3-org-34.jpg', 6, NULL),
(256, 'vsmart-joy-3-org-35.jpg', 'vsmart-joy-3-org-35.jpg', 6, NULL),
(257, 'vsmart-joy-3-org-36.jpg', 'vsmart-joy-3-org-36.jpg', 6, NULL),
(258, '637164273139832463_Vsmart-joy-3-den-5.png', '637164273139832463_Vsmart-joy-3-den-5.png', 6, 11),
(259, '637164273141159618_Vsmart-joy-3-den-2.png', '637164273141159618_Vsmart-joy-3-den-2.png', 6, 11),
(260, '637164273141389555_Vsmart-joy-3-den-3.png', '637164273141389555_Vsmart-joy-3-den-3.png', 6, 11),
(261, '637164273141429583_Vsmart-joy-3-den-4.png', '637164273141429583_Vsmart-joy-3-den-4.png', 6, 11),
(262, '637164273141859571_Vsmart-joy-3-den-1.png', '637164273141859571_Vsmart-joy-3-den-1.png', 6, 11),
(263, '637164276577868046_Vsmart-joy-3-tim-5.png', '637164276577868046_Vsmart-joy-3-tim-5.png', 6, 12),
(264, '637164276578468018_Vsmart-joy-3-tim-2.png', '637164276578468018_Vsmart-joy-3-tim-2.png', 6, 12),
(265, '637164276578618050_Vsmart-joy-3-tim-3.png', '637164276578618050_Vsmart-joy-3-tim-3.png', 6, 12),
(266, '637164276578698027_Vsmart-joy-3-tim-4.png', '637164276578698027_Vsmart-joy-3-tim-4.png', 6, 12),
(267, '637164276578898043_Vsmart-joy-3-tim-1.png', '637164276578898043_Vsmart-joy-3-tim-1.png', 6, 12),
(268, '637164263934598773_Vsmart-joy-3-trang-5.png', '637164263934598773_Vsmart-joy-3-trang-5.png', 6, 13),
(269, '637164263935188834_Vsmart-joy-3-trang-2.png', '637164263935188834_Vsmart-joy-3-trang-2.png', 6, 13),
(270, '637164263935298805_Vsmart-joy-3-trang-4.png', '637164263935298805_Vsmart-joy-3-trang-4.png', 6, 13),
(271, '637164263935508789_Vsmart-joy-3-trang-1.png', '637164263935508789_Vsmart-joy-3-trang-1.png', 6, 13),
(272, '637164263935541412_Vsmart-joy-3-trang-3.png', '637164263935541412_Vsmart-joy-3-trang-3.png', 6, 13),
(273, 'iphone-11-org-1.jpg', 'iphone-11-org-1.jpg', 7, NULL),
(274, 'iphone-11-org-2.jpg', 'iphone-11-org-2.jpg', 7, NULL),
(275, 'iphone-11-org-3.jpg', 'iphone-11-org-3.jpg', 7, NULL),
(276, 'iphone-11-org-4.jpg', 'iphone-11-org-4.jpg', 7, NULL),
(277, 'iphone-11-org-5.jpg', 'iphone-11-org-5.jpg', 7, NULL),
(278, 'iphone-11-org-6.jpg', 'iphone-11-org-6.jpg', 7, NULL),
(279, 'iphone-11-org-7.jpg', 'iphone-11-org-7.jpg', 7, NULL),
(280, 'iphone-11-org-8.jpg', 'iphone-11-org-8.jpg', 7, NULL),
(281, 'iphone-11-org-9.jpg', 'iphone-11-org-9.jpg', 7, NULL),
(282, 'iphone-11-org-10.jpg', 'iphone-11-org-10.jpg', 7, NULL),
(283, 'iphone-11-org-11.jpg', 'iphone-11-org-11.jpg', 7, NULL),
(284, 'iphone-11-org-12.jpg', 'iphone-11-org-12.jpg', 7, NULL),
(285, 'iphone-11-org-13.jpg', 'iphone-11-org-13.jpg', 7, NULL),
(286, 'iphone-11-org-14.jpg', 'iphone-11-org-14.jpg', 7, NULL),
(287, 'iphone-11-org-15.jpg', 'iphone-11-org-15.jpg', 7, NULL),
(288, 'iphone-11-org-16.jpg', 'iphone-11-org-16.jpg', 7, NULL),
(289, 'iphone-11-org-17.jpg', 'iphone-11-org-17.jpg', 7, NULL),
(290, 'iphone-11-org-18.jpg', 'iphone-11-org-18.jpg', 7, NULL),
(291, 'iphone-11-org-19.jpg', 'iphone-11-org-19.jpg', 7, NULL),
(292, 'iphone-11-org-20.jpg', 'iphone-11-org-20.jpg', 7, NULL),
(293, 'iphone-11-org-21.jpg', 'iphone-11-org-21.jpg', 7, NULL),
(294, 'iphone-11-org-22.jpg', 'iphone-11-org-22.jpg', 7, NULL),
(295, 'iphone-11-org-23.jpg', 'iphone-11-org-23.jpg', 7, NULL),
(296, 'iphone-11-org-24.jpg', 'iphone-11-org-24.jpg', 7, NULL),
(297, 'iphone-11-org-25.jpg', 'iphone-11-org-25.jpg', 7, NULL),
(298, 'iphone-11-org-26.jpg', 'iphone-11-org-26.jpg', 7, NULL),
(299, 'iphone-11-org-27.jpg', 'iphone-11-org-27.jpg', 7, NULL),
(300, 'iphone-11-org-28.jpg', 'iphone-11-org-28.jpg', 7, NULL),
(301, 'iphone-11-org-29.jpg', 'iphone-11-org-29.jpg', 7, NULL),
(302, 'iphone-11-org-30.jpg', 'iphone-11-org-30.jpg', 7, NULL),
(303, 'iphone-11-org-31.jpg', 'iphone-11-org-31.jpg', 7, NULL),
(304, 'iphone-11-org-32.jpg', 'iphone-11-org-32.jpg', 7, NULL),
(305, 'iphone-11-org-33.jpg', 'iphone-11-org-33.jpg', 7, NULL),
(306, 'iphone-11-org-34.jpg', 'iphone-11-org-34.jpg', 7, NULL),
(307, 'iphone-11-org-35.jpg', 'iphone-11-org-35.jpg', 7, NULL),
(308, 'iphone-11-org-36.jpg', 'iphone-11-org-36.jpg', 7, NULL),
(309, '637037652462548298_11-trang.png', '637037652462548298_11-trang.png', 7, 14),
(310, '637037652457717299_11-den.png', '637037652457717299_11-den.png', 7, 15),
(311, '637037652463329577_11-do.png', '637037652463329577_11-do.png', 7, 16),
(312, 'oppo-reno4-org-1.jpg', 'oppo-reno4-org-1.jpg', 8, NULL),
(313, 'oppo-reno4-org-2.jpg', 'oppo-reno4-org-2.jpg', 8, NULL),
(314, 'oppo-reno4-org-3.jpg', 'oppo-reno4-org-3.jpg', 8, NULL),
(315, 'oppo-reno4-org-4.jpg', 'oppo-reno4-org-4.jpg', 8, NULL),
(316, 'oppo-reno4-org-5.jpg', 'oppo-reno4-org-5.jpg', 8, NULL),
(317, 'oppo-reno4-org-6.jpg', 'oppo-reno4-org-6.jpg', 8, NULL),
(318, 'oppo-reno4-org-7.jpg', 'oppo-reno4-org-7.jpg', 8, NULL),
(319, 'oppo-reno4-org-8.jpg', 'oppo-reno4-org-8.jpg', 8, NULL),
(320, 'oppo-reno4-org-9.jpg', 'oppo-reno4-org-9.jpg', 8, NULL),
(321, 'oppo-reno4-org-10.jpg', 'oppo-reno4-org-10.jpg', 8, NULL),
(322, 'oppo-reno4-org-11.jpg', 'oppo-reno4-org-11.jpg', 8, NULL),
(323, 'oppo-reno4-org-12.jpg', 'oppo-reno4-org-12.jpg', 8, NULL),
(324, 'oppo-reno4-org-13.jpg', 'oppo-reno4-org-13.jpg', 8, NULL),
(325, 'oppo-reno4-org-14.jpg', 'oppo-reno4-org-14.jpg', 8, NULL),
(326, 'oppo-reno4-org-15.jpg', 'oppo-reno4-org-15.jpg', 8, NULL),
(327, 'oppo-reno4-org-16.jpg', 'oppo-reno4-org-16.jpg', 8, NULL),
(328, 'oppo-reno4-org-17.jpg', 'oppo-reno4-org-17.jpg', 8, NULL),
(329, 'oppo-reno4-org-18.jpg', 'oppo-reno4-org-18.jpg', 8, NULL),
(330, 'oppo-reno4-org-19.jpg', 'oppo-reno4-org-19.jpg', 8, NULL),
(331, 'oppo-reno4-org-20.jpg', 'oppo-reno4-org-20.jpg', 8, NULL),
(332, 'oppo-reno4-org-21.jpg', 'oppo-reno4-org-21.jpg', 8, NULL),
(333, 'oppo-reno4-org-22.jpg', 'oppo-reno4-org-22.jpg', 8, NULL),
(334, 'oppo-reno4-org-23.jpg', 'oppo-reno4-org-23.jpg', 8, NULL),
(335, 'oppo-reno4-org-24.jpg', 'oppo-reno4-org-24.jpg', 8, NULL),
(336, 'oppo-reno4-org-25.jpg', 'oppo-reno4-org-25.jpg', 8, NULL),
(337, 'oppo-reno4-org-26.jpg', 'oppo-reno4-org-26.jpg', 8, NULL),
(338, 'oppo-reno4-org-27.jpg', 'oppo-reno4-org-27.jpg', 8, NULL),
(339, 'oppo-reno4-org-28.jpg', 'oppo-reno4-org-28.jpg', 8, NULL),
(340, 'oppo-reno4-org-29.jpg', 'oppo-reno4-org-29.jpg', 8, NULL),
(341, 'oppo-reno4-org-30.jpg', 'oppo-reno4-org-30.jpg', 8, NULL),
(342, 'oppo-reno4-org-31.jpg', 'oppo-reno4-org-31.jpg', 8, NULL),
(343, 'oppo-reno4-org-32.jpg', 'oppo-reno4-org-32.jpg', 8, NULL),
(344, 'oppo-reno4-org-33.jpg', 'oppo-reno4-org-33.jpg', 8, NULL),
(345, 'oppo-reno4-org-34.jpg', 'oppo-reno4-org-34.jpg', 8, NULL),
(346, 'oppo-reno4-org-35.jpg', 'oppo-reno4-org-35.jpg', 8, NULL),
(347, 'oppo-reno4-org-36.jpg', 'oppo-reno4-org-36.jpg', 8, NULL),
(348, '637308580669198186_oppo-reno4-den-3.png', '637308580669198186_oppo-reno4-den-3.png', 8, 17),
(349, '637341202826417637_oppo-reno4-den-st-2.png', '637341202826417637_oppo-reno4-den-st-2.png', 8, 17),
(350, '637341202841917538_oppo-reno4-den-st-1.png', '637341202841917538_oppo-reno4-den-st-1.png', 8, 17),
(351, '637340376460565483_oppo-reno4-tim-3.png', '637340376460565483_oppo-reno4-tim-3.png', 8, 18),
(352, '637341202824817588_oppo-reno4-tim-st-2.png', '637341202824817588_oppo-reno4-tim-st-2.png', 8, 18),
(353, '637341202827757617_oppo-reno4-tim-st-1.png', '637341202827757617_oppo-reno4-tim-st-1.png', 8, 18),
(354, 'vivo-v20-360-org-1.jpg', 'vivo-v20-360-org-1.jpg', 9, NULL),
(355, 'vivo-v20-360-org-2.jpg', 'vivo-v20-360-org-2.jpg', 9, NULL),
(356, 'vivo-v20-360-org-3.jpg', 'vivo-v20-360-org-3.jpg', 9, NULL),
(357, 'vivo-v20-360-org-4.jpg', 'vivo-v20-360-org-4.jpg', 9, NULL),
(358, 'vivo-v20-360-org-5.jpg', 'vivo-v20-360-org-5.jpg', 9, NULL),
(359, 'vivo-v20-360-org-6.jpg', 'vivo-v20-360-org-6.jpg', 9, NULL),
(360, 'vivo-v20-360-org-7.jpg', 'vivo-v20-360-org-7.jpg', 9, NULL),
(361, 'vivo-v20-360-org-8.jpg', 'vivo-v20-360-org-8.jpg', 9, NULL),
(362, 'vivo-v20-360-org-9.jpg', 'vivo-v20-360-org-9.jpg', 9, NULL),
(363, 'vivo-v20-360-org-10.jpg', 'vivo-v20-360-org-10.jpg', 9, NULL),
(364, 'vivo-v20-360-org-11.jpg', 'vivo-v20-360-org-11.jpg', 9, NULL),
(365, 'vivo-v20-360-org-12.jpg', 'vivo-v20-360-org-12.jpg', 9, NULL),
(366, 'vivo-v20-360-org-13.jpg', 'vivo-v20-360-org-13.jpg', 9, NULL),
(367, 'vivo-v20-360-org-14.jpg', 'vivo-v20-360-org-14.jpg', 9, NULL),
(368, 'vivo-v20-360-org-15.jpg', 'vivo-v20-360-org-15.jpg', 9, NULL),
(369, 'vivo-v20-360-org-16.jpg', 'vivo-v20-360-org-16.jpg', 9, NULL),
(370, 'vivo-v20-360-org-17.jpg', 'vivo-v20-360-org-17.jpg', 9, NULL),
(371, 'vivo-v20-360-org-18.jpg', 'vivo-v20-360-org-18.jpg', 9, NULL),
(372, 'vivo-v20-360-org-19.jpg', 'vivo-v20-360-org-19.jpg', 9, NULL),
(373, 'vivo-v20-360-org-20.jpg', 'vivo-v20-360-org-20.jpg', 9, NULL),
(374, 'vivo-v20-360-org-21.jpg', 'vivo-v20-360-org-21.jpg', 9, NULL),
(375, 'vivo-v20-360-org-22.jpg', 'vivo-v20-360-org-22.jpg', 9, NULL),
(376, 'vivo-v20-360-org-23.jpg', 'vivo-v20-360-org-23.jpg', 9, NULL),
(377, 'vivo-v20-360-org-24.jpg', 'vivo-v20-360-org-24.jpg', 9, NULL),
(378, 'vivo-v20-360-org-25.jpg', 'vivo-v20-360-org-25.jpg', 9, NULL),
(379, 'vivo-v20-360-org-26.jpg', 'vivo-v20-360-org-26.jpg', 9, NULL),
(380, 'vivo-v20-360-org-27.jpg', 'vivo-v20-360-org-27.jpg', 9, NULL),
(381, 'vivo-v20-360-org-28.jpg', 'vivo-v20-360-org-28.jpg', 9, NULL),
(382, 'vivo-v20-360-org-29.jpg', 'vivo-v20-360-org-29.jpg', 9, NULL),
(383, 'vivo-v20-360-org-30.jpg', 'vivo-v20-360-org-30.jpg', 9, NULL),
(384, 'vivo-v20-360-org-31.jpg', 'vivo-v20-360-org-31.jpg', 9, NULL),
(385, 'vivo-v20-360-org-32.jpg', 'vivo-v20-360-org-32.jpg', 9, NULL),
(386, 'vivo-v20-360-org-33.jpg', 'vivo-v20-360-org-33.jpg', 9, NULL),
(387, 'vivo-v20-360-org-34.jpg', 'vivo-v20-360-org-34.jpg', 9, NULL),
(388, 'vivo-v20-360-org-35.jpg', 'vivo-v20-360-org-35.jpg', 9, NULL),
(389, 'vivo-v20-360-org-36.jpg', 'vivo-v20-360-org-36.jpg', 9, NULL),
(390, '637366216527274689_vivo-v20-den-3.png', '637366216527274689_vivo-v20-den-3.png', 9, 19),
(391, '637366216527431001_vivo-v20-den-4.png', '637366216527431001_vivo-v20-den-4.png', 9, 19),
(392, '637370823496119046_vivo-v20-den-2.png', '637370823496119046_vivo-v20-den-2.png', 9, 19),
(393, '637370823498134889_vivo-v20-den-1.png', '637370823498134889_vivo-v20-den-1.png', 9, 19),
(394, '637201402211432988_ip-8-pl-128-bac-4.png', '637201402211432988_ip-8-pl-128-bac-4.png', 10, 22),
(395, '637201402211582991_ip-8-pl-128-bac-3.png', '637201402211582991_ip-8-pl-128-bac-3.png', 10, 22),
(396, '637201402212092986_ip-8-pl-128-bac-1.png', '637201402212092986_ip-8-pl-128-bac-1.png', 10, 22),
(397, '637201402212483043_ip-8-pl-128-bac-2.png', '637201402212483043_ip-8-pl-128-bac-2.png', 10, 22),
(398, '637201410154594671_ip-8-pl-128-xam-4.png', '637201410154594671_ip-8-pl-128-xam-4.png', 10, 21),
(399, '637201410154984672_ip-8-pl-128-xam-3.png', '637201410154984672_ip-8-pl-128-xam-3.png', 10, 21),
(400, '637201410154994619_ip-8-pl-128-xam-2.png', '637201410154994619_ip-8-pl-128-xam-2.png', 10, 21),
(401, '637201410155294678_ip-8-pl-128-xam-1.png', '637201410155294678_ip-8-pl-128-xam-1.png', 10, 21),
(402, '637201400431677530_ip-8-pl-128-vang-4.png', '637201400431677530_ip-8-pl-128-vang-4.png', 10, 20),
(403, '637201400431997236_ip-8-pl-128-vang-2.png', '637201400431997236_ip-8-pl-128-vang-2.png', 10, 20),
(404, '637201400432117216_ip-8-pl-128-vang-1.png', '637201400432117216_ip-8-pl-128-vang-1.png', 10, 20),
(405, '637201400432807583_ip-8-pl-128-vang-3.png', '637201400432807583_ip-8-pl-128-vang-3.png', 10, 20),
(406, 'iphone-8-plus-64gb-360-org-org-1.jpg', 'iphone-8-plus-64gb-360-org-org-1.jpg', 10, NULL),
(407, 'iphone-8-plus-64gb-360-org-org-2.jpg', 'iphone-8-plus-64gb-360-org-org-2.jpg', 10, NULL),
(408, 'iphone-8-plus-64gb-360-org-org-3.jpg', 'iphone-8-plus-64gb-360-org-org-3.jpg', 10, NULL),
(409, 'iphone-8-plus-64gb-360-org-org-4.jpg', 'iphone-8-plus-64gb-360-org-org-4.jpg', 10, NULL),
(410, 'iphone-8-plus-64gb-360-org-org-5.jpg', 'iphone-8-plus-64gb-360-org-org-5.jpg', 10, NULL),
(411, 'iphone-8-plus-64gb-360-org-org-6.jpg', 'iphone-8-plus-64gb-360-org-org-6.jpg', 10, NULL),
(412, 'iphone-8-plus-64gb-360-org-org-7.jpg', 'iphone-8-plus-64gb-360-org-org-7.jpg', 10, NULL),
(413, 'iphone-8-plus-64gb-360-org-org-8.jpg', 'iphone-8-plus-64gb-360-org-org-8.jpg', 10, NULL),
(414, 'iphone-8-plus-64gb-360-org-org-9.jpg', 'iphone-8-plus-64gb-360-org-org-9.jpg', 10, NULL),
(415, 'iphone-8-plus-64gb-360-org-org-10.jpg', 'iphone-8-plus-64gb-360-org-org-10.jpg', 10, NULL),
(416, 'iphone-8-plus-64gb-360-org-org-11.jpg', 'iphone-8-plus-64gb-360-org-org-11.jpg', 10, NULL),
(417, 'iphone-8-plus-64gb-360-org-org-12.jpg', 'iphone-8-plus-64gb-360-org-org-12.jpg', 10, NULL),
(418, 'iphone-8-plus-64gb-360-org-org-13.jpg', 'iphone-8-plus-64gb-360-org-org-13.jpg', 10, NULL),
(419, 'iphone-8-plus-64gb-360-org-org-14.jpg', 'iphone-8-plus-64gb-360-org-org-14.jpg', 10, NULL),
(420, 'iphone-8-plus-64gb-360-org-org-15.jpg', 'iphone-8-plus-64gb-360-org-org-15.jpg', 10, NULL),
(421, 'iphone-8-plus-64gb-360-org-org-16.jpg', 'iphone-8-plus-64gb-360-org-org-16.jpg', 10, NULL),
(422, 'iphone-8-plus-64gb-360-org-org-17.jpg', 'iphone-8-plus-64gb-360-org-org-17.jpg', 10, NULL),
(423, 'iphone-8-plus-64gb-360-org-org-18.jpg', 'iphone-8-plus-64gb-360-org-org-18.jpg', 10, NULL),
(424, 'iphone-8-plus-64gb-360-org-org-19.jpg', 'iphone-8-plus-64gb-360-org-org-19.jpg', 10, NULL),
(425, 'iphone-8-plus-64gb-360-org-org-20.jpg', 'iphone-8-plus-64gb-360-org-org-20.jpg', 10, NULL),
(426, 'iphone-8-plus-64gb-360-org-org-21.jpg', 'iphone-8-plus-64gb-360-org-org-21.jpg', 10, NULL),
(427, 'iphone-8-plus-64gb-360-org-org-22.jpg', 'iphone-8-plus-64gb-360-org-org-22.jpg', 10, NULL),
(428, 'iphone-8-plus-64gb-360-org-org-23.jpg', 'iphone-8-plus-64gb-360-org-org-23.jpg', 10, NULL),
(429, 'iphone-8-plus-64gb-360-org-org-24.jpg', 'iphone-8-plus-64gb-360-org-org-24.jpg', 10, NULL),
(430, 'iphone-8-plus-64gb-360-org-org-25.jpg', 'iphone-8-plus-64gb-360-org-org-25.jpg', 10, NULL),
(431, 'iphone-8-plus-64gb-360-org-org-26.jpg', 'iphone-8-plus-64gb-360-org-org-26.jpg', 10, NULL),
(432, 'iphone-8-plus-64gb-360-org-org-27.jpg', 'iphone-8-plus-64gb-360-org-org-27.jpg', 10, NULL),
(433, 'iphone-8-plus-64gb-360-org-org-28.jpg', 'iphone-8-plus-64gb-360-org-org-28.jpg', 10, NULL),
(434, 'iphone-8-plus-64gb-360-org-org-29.jpg', 'iphone-8-plus-64gb-360-org-org-29.jpg', 10, NULL),
(435, 'iphone-8-plus-64gb-360-org-org-30.jpg', 'iphone-8-plus-64gb-360-org-org-30.jpg', 10, NULL),
(436, 'iphone-8-plus-64gb-360-org-org-31.jpg', 'iphone-8-plus-64gb-360-org-org-31.jpg', 10, NULL),
(437, 'iphone-8-plus-64gb-360-org-org-32.jpg', 'iphone-8-plus-64gb-360-org-org-32.jpg', 10, NULL),
(438, 'iphone-8-plus-64gb-360-org-org-33.jpg', 'iphone-8-plus-64gb-360-org-org-33.jpg', 10, NULL),
(439, 'iphone-8-plus-64gb-360-org-org-34.jpg', 'iphone-8-plus-64gb-360-org-org-34.jpg', 10, NULL),
(440, 'iphone-8-plus-64gb-360-org-org-35.jpg', 'iphone-8-plus-64gb-360-org-org-35.jpg', 10, NULL),
(441, 'iphone-8-plus-64gb-360-org-org-36.jpg', 'iphone-8-plus-64gb-360-org-org-36.jpg', 10, NULL),
(442, 'realme-5i-4gb-org-1.jpg', 'realme-5i-4gb-org-1.jpg', 11, NULL),
(443, 'realme-5i-4gb-org-2.jpg', 'realme-5i-4gb-org-2.jpg', 11, NULL),
(444, 'realme-5i-4gb-org-3.jpg', 'realme-5i-4gb-org-3.jpg', 11, NULL),
(445, 'realme-5i-4gb-org-4.jpg', 'realme-5i-4gb-org-4.jpg', 11, NULL),
(446, 'realme-5i-4gb-org-5.jpg', 'realme-5i-4gb-org-5.jpg', 11, NULL),
(447, 'realme-5i-4gb-org-6.jpg', 'realme-5i-4gb-org-6.jpg', 11, NULL),
(448, 'realme-5i-4gb-org-7.jpg', 'realme-5i-4gb-org-7.jpg', 11, NULL),
(449, 'realme-5i-4gb-org-8.jpg', 'realme-5i-4gb-org-8.jpg', 11, NULL),
(450, 'realme-5i-4gb-org-9.jpg', 'realme-5i-4gb-org-9.jpg', 11, NULL),
(451, 'realme-5i-4gb-org-10.jpg', 'realme-5i-4gb-org-10.jpg', 11, NULL),
(452, 'realme-5i-4gb-org-11.jpg', 'realme-5i-4gb-org-11.jpg', 11, NULL),
(453, 'realme-5i-4gb-org-12.jpg', 'realme-5i-4gb-org-12.jpg', 11, NULL),
(454, 'realme-5i-4gb-org-13.jpg', 'realme-5i-4gb-org-13.jpg', 11, NULL),
(455, 'realme-5i-4gb-org-14.jpg', 'realme-5i-4gb-org-14.jpg', 11, NULL),
(456, 'realme-5i-4gb-org-15.jpg', 'realme-5i-4gb-org-15.jpg', 11, NULL),
(457, 'realme-5i-4gb-org-16.jpg', 'realme-5i-4gb-org-16.jpg', 11, NULL),
(458, 'realme-5i-4gb-org-17.jpg', 'realme-5i-4gb-org-17.jpg', 11, NULL),
(459, 'realme-5i-4gb-org-18.jpg', 'realme-5i-4gb-org-18.jpg', 11, NULL),
(460, 'realme-5i-4gb-org-19.jpg', 'realme-5i-4gb-org-19.jpg', 11, NULL),
(461, 'realme-5i-4gb-org-20.jpg', 'realme-5i-4gb-org-20.jpg', 11, NULL),
(462, 'realme-5i-4gb-org-21.jpg', 'realme-5i-4gb-org-21.jpg', 11, NULL),
(463, 'realme-5i-4gb-org-22.jpg', 'realme-5i-4gb-org-22.jpg', 11, NULL),
(464, 'realme-5i-4gb-org-23.jpg', 'realme-5i-4gb-org-23.jpg', 11, NULL),
(465, 'realme-5i-4gb-org-24.jpg', 'realme-5i-4gb-org-24.jpg', 11, NULL),
(466, 'realme-5i-4gb-org-25.jpg', 'realme-5i-4gb-org-25.jpg', 11, NULL),
(467, 'realme-5i-4gb-org-26.jpg', 'realme-5i-4gb-org-26.jpg', 11, NULL),
(468, 'realme-5i-4gb-org-27.jpg', 'realme-5i-4gb-org-27.jpg', 11, NULL),
(469, 'realme-5i-4gb-org-28.jpg', 'realme-5i-4gb-org-28.jpg', 11, NULL),
(470, 'realme-5i-4gb-org-29.jpg', 'realme-5i-4gb-org-29.jpg', 11, NULL),
(471, 'realme-5i-4gb-org-30.jpg', 'realme-5i-4gb-org-30.jpg', 11, NULL),
(472, 'realme-5i-4gb-org-31.jpg', 'realme-5i-4gb-org-31.jpg', 11, NULL),
(473, 'realme-5i-4gb-org-32.jpg', 'realme-5i-4gb-org-32.jpg', 11, NULL),
(474, 'realme-5i-4gb-org-33.jpg', 'realme-5i-4gb-org-33.jpg', 11, NULL),
(475, 'realme-5i-4gb-org-34.jpg', 'realme-5i-4gb-org-34.jpg', 11, NULL),
(476, 'realme-5i-4gb-org-35.jpg', 'realme-5i-4gb-org-35.jpg', 11, NULL),
(477, 'realme-5i-4gb-org-36.jpg', 'realme-5i-4gb-org-36.jpg', 11, NULL),
(478, '637123489263816982_realme-5i-green-5.png', '637123489263816982_realme-5i-green-5.png', 11, 23),
(479, '637123489264910617_realme-5i-green-3.png', '637123489264910617_realme-5i-green-3.png', 11, 23),
(480, '637142747588299724_realme-5i-green-4.png', '637142747588299724_realme-5i-green-4.png', 11, 23),
(481, '637142747588457154_realme-5i-green-2.png', '637142747588457154_realme-5i-green-2.png', 11, 23),
(482, '637142747588768746_realme-5i-green-1.png', '637142747588768746_realme-5i-green-1.png', 11, 23),
(483, '637123490007269822_realme-5i-blue-5.png', '637123490007269822_realme-5i-blue-5.png', 11, 24),
(484, '637123490008676038_realme-5i-blue-3.png', '637123490008676038_realme-5i-blue-3.png', 11, 24),
(485, '637142747588768746_realme-5i-blue-4.png', '637142747588768746_realme-5i-blue-4.png', 11, 24),
(486, '637142747589081245_realme-5i-blue-1.png', '637142747589081245_realme-5i-blue-1.png', 11, 24),
(487, '637142747589237481_realme-5i-blue-2.png', '637142747589237481_realme-5i-blue-2.png', 11, 24),
(488, '637356715805338025_vsmart-joy-4-den-2.png', '637356715805338025_vsmart-joy-4-den-2.png', 12, 25),
(489, '637359404161299443_vsmart-joy-4-den-4.png', '637359404161299443_vsmart-joy-4-den-4.png', 12, 25),
(490, '637359404161389516_vsmart-joy-4-den-3.png', '637359404161389516_vsmart-joy-4-den-3.png', 12, 25),
(491, '637359404161479456_vsmart-joy-4-den-1.png', '637359404161479456_vsmart-joy-4-den-1.png', 12, 25),
(492, '637356729793068248_vsmart-joy-4-xanh-2.png', '637356729793068248_vsmart-joy-4-xanh-2.png', 12, 26),
(493, '637359402150195813_vsmart-joy-4-xanh-3.png', '637359402150195813_vsmart-joy-4-xanh-3.png', 12, 26),
(494, '637359402150316021_vsmart-joy-4-xanh-4.png', '637359402150316021_vsmart-joy-4-xanh-4.png', 12, 26),
(495, '637359402150435003_vsmart-joy-4-xanh-1.png', '637359402150435003_vsmart-joy-4-xanh-1.png', 12, 26),
(496, 'vsmart-joy-4-4gb-64gb-360-org-1.jpg', 'vsmart-joy-4-4gb-64gb-360-org-1.jpg', 12, NULL),
(497, 'vsmart-joy-4-4gb-64gb-360-org-2.jpg', 'vsmart-joy-4-4gb-64gb-360-org-2.jpg', 12, NULL),
(498, 'vsmart-joy-4-4gb-64gb-360-org-3.jpg', 'vsmart-joy-4-4gb-64gb-360-org-3.jpg', 12, NULL),
(499, 'vsmart-joy-4-4gb-64gb-360-org-4.jpg', 'vsmart-joy-4-4gb-64gb-360-org-4.jpg', 12, NULL),
(500, 'vsmart-joy-4-4gb-64gb-360-org-5.jpg', 'vsmart-joy-4-4gb-64gb-360-org-5.jpg', 12, NULL),
(501, 'vsmart-joy-4-4gb-64gb-360-org-6.jpg', 'vsmart-joy-4-4gb-64gb-360-org-6.jpg', 12, NULL),
(502, 'vsmart-joy-4-4gb-64gb-360-org-7.jpg', 'vsmart-joy-4-4gb-64gb-360-org-7.jpg', 12, NULL),
(503, 'vsmart-joy-4-4gb-64gb-360-org-8.jpg', 'vsmart-joy-4-4gb-64gb-360-org-8.jpg', 12, NULL),
(504, 'vsmart-joy-4-4gb-64gb-360-org-9.jpg', 'vsmart-joy-4-4gb-64gb-360-org-9.jpg', 12, NULL),
(505, 'vsmart-joy-4-4gb-64gb-360-org-10.jpg', 'vsmart-joy-4-4gb-64gb-360-org-10.jpg', 12, NULL),
(506, 'vsmart-joy-4-4gb-64gb-360-org-11.jpg', 'vsmart-joy-4-4gb-64gb-360-org-11.jpg', 12, NULL),
(507, 'vsmart-joy-4-4gb-64gb-360-org-12.jpg', 'vsmart-joy-4-4gb-64gb-360-org-12.jpg', 12, NULL),
(508, 'vsmart-joy-4-4gb-64gb-360-org-13.jpg', 'vsmart-joy-4-4gb-64gb-360-org-13.jpg', 12, NULL),
(509, 'vsmart-joy-4-4gb-64gb-360-org-14.jpg', 'vsmart-joy-4-4gb-64gb-360-org-14.jpg', 12, NULL),
(510, 'vsmart-joy-4-4gb-64gb-360-org-15.jpg', 'vsmart-joy-4-4gb-64gb-360-org-15.jpg', 12, NULL),
(511, 'vsmart-joy-4-4gb-64gb-360-org-16.jpg', 'vsmart-joy-4-4gb-64gb-360-org-16.jpg', 12, NULL),
(512, 'vsmart-joy-4-4gb-64gb-360-org-17.jpg', 'vsmart-joy-4-4gb-64gb-360-org-17.jpg', 12, NULL),
(513, 'vsmart-joy-4-4gb-64gb-360-org-18.jpg', 'vsmart-joy-4-4gb-64gb-360-org-18.jpg', 12, NULL),
(514, 'vsmart-joy-4-4gb-64gb-360-org-19.jpg', 'vsmart-joy-4-4gb-64gb-360-org-19.jpg', 12, NULL),
(515, 'vsmart-joy-4-4gb-64gb-360-org-20.jpg', 'vsmart-joy-4-4gb-64gb-360-org-20.jpg', 12, NULL),
(516, 'vsmart-joy-4-4gb-64gb-360-org-21.jpg', 'vsmart-joy-4-4gb-64gb-360-org-21.jpg', 12, NULL),
(517, 'vsmart-joy-4-4gb-64gb-360-org-22.jpg', 'vsmart-joy-4-4gb-64gb-360-org-22.jpg', 12, NULL),
(518, 'vsmart-joy-4-4gb-64gb-360-org-23.jpg', 'vsmart-joy-4-4gb-64gb-360-org-23.jpg', 12, NULL),
(519, 'vsmart-joy-4-4gb-64gb-360-org-24.jpg', 'vsmart-joy-4-4gb-64gb-360-org-24.jpg', 12, NULL),
(520, 'vsmart-joy-4-4gb-64gb-360-org-25.jpg', 'vsmart-joy-4-4gb-64gb-360-org-25.jpg', 12, NULL),
(521, 'vsmart-joy-4-4gb-64gb-360-org-26.jpg', 'vsmart-joy-4-4gb-64gb-360-org-26.jpg', 12, NULL),
(522, 'vsmart-joy-4-4gb-64gb-360-org-27.jpg', 'vsmart-joy-4-4gb-64gb-360-org-27.jpg', 12, NULL),
(523, 'vsmart-joy-4-4gb-64gb-360-org-28.jpg', 'vsmart-joy-4-4gb-64gb-360-org-28.jpg', 12, NULL),
(524, 'vsmart-joy-4-4gb-64gb-360-org-29.jpg', 'vsmart-joy-4-4gb-64gb-360-org-29.jpg', 12, NULL),
(525, 'vsmart-joy-4-4gb-64gb-360-org-30.jpg', 'vsmart-joy-4-4gb-64gb-360-org-30.jpg', 12, NULL),
(526, 'vsmart-joy-4-4gb-64gb-360-org-31.jpg', 'vsmart-joy-4-4gb-64gb-360-org-31.jpg', 12, NULL),
(527, 'vsmart-joy-4-4gb-64gb-360-org-32.jpg', 'vsmart-joy-4-4gb-64gb-360-org-32.jpg', 12, NULL),
(528, 'vsmart-joy-4-4gb-64gb-360-org-33.jpg', 'vsmart-joy-4-4gb-64gb-360-org-33.jpg', 12, NULL),
(529, 'vsmart-joy-4-4gb-64gb-360-org-34.jpg', 'vsmart-joy-4-4gb-64gb-360-org-34.jpg', 12, NULL),
(530, 'vsmart-joy-4-4gb-64gb-360-org-35.jpg', 'vsmart-joy-4-4gb-64gb-360-org-35.jpg', 12, NULL),
(531, 'vsmart-joy-4-4gb-64gb-360-org-36.jpg', 'vsmart-joy-4-4gb-64gb-360-org-36.jpg', 12, NULL),
(532, 'nokia-83-360-org-1.jpg', 'nokia-83-360-org-1.jpg', 13, NULL),
(533, 'nokia-83-360-org-2.jpg', 'nokia-83-360-org-2.jpg', 13, NULL),
(534, 'nokia-83-360-org-3.jpg', 'nokia-83-360-org-3.jpg', 13, NULL),
(535, 'nokia-83-360-org-4.jpg', 'nokia-83-360-org-4.jpg', 13, NULL),
(536, 'nokia-83-360-org-5.jpg', 'nokia-83-360-org-5.jpg', 13, NULL),
(537, 'nokia-83-360-org-6.jpg', 'nokia-83-360-org-6.jpg', 13, NULL),
(538, 'nokia-83-360-org-7.jpg', 'nokia-83-360-org-7.jpg', 13, NULL),
(539, 'nokia-83-360-org-8.jpg', 'nokia-83-360-org-8.jpg', 13, NULL),
(540, 'nokia-83-360-org-9.jpg', 'nokia-83-360-org-9.jpg', 13, NULL),
(541, 'nokia-83-360-org-10.jpg', 'nokia-83-360-org-10.jpg', 13, NULL),
(542, 'nokia-83-360-org-11.jpg', 'nokia-83-360-org-11.jpg', 13, NULL),
(543, 'nokia-83-360-org-12.jpg', 'nokia-83-360-org-12.jpg', 13, NULL),
(544, 'nokia-83-360-org-13.jpg', 'nokia-83-360-org-13.jpg', 13, NULL),
(545, 'nokia-83-360-org-14.jpg', 'nokia-83-360-org-14.jpg', 13, NULL),
(546, 'nokia-83-360-org-15.jpg', 'nokia-83-360-org-15.jpg', 13, NULL),
(547, 'nokia-83-360-org-16.jpg', 'nokia-83-360-org-16.jpg', 13, NULL),
(548, 'nokia-83-360-org-17.jpg', 'nokia-83-360-org-17.jpg', 13, NULL),
(549, 'nokia-83-360-org-18.jpg', 'nokia-83-360-org-18.jpg', 13, NULL),
(550, 'nokia-83-360-org-19.jpg', 'nokia-83-360-org-19.jpg', 13, NULL),
(551, 'nokia-83-360-org-20.jpg', 'nokia-83-360-org-20.jpg', 13, NULL),
(552, 'nokia-83-360-org-21.jpg', 'nokia-83-360-org-21.jpg', 13, NULL),
(553, 'nokia-83-360-org-22.jpg', 'nokia-83-360-org-22.jpg', 13, NULL),
(554, 'nokia-83-360-org-23.jpg', 'nokia-83-360-org-23.jpg', 13, NULL),
(555, 'nokia-83-360-org-24.jpg', 'nokia-83-360-org-24.jpg', 13, NULL),
(556, 'nokia-83-360-org-25.jpg', 'nokia-83-360-org-25.jpg', 13, NULL),
(557, 'nokia-83-360-org-26.jpg', 'nokia-83-360-org-26.jpg', 13, NULL),
(558, 'nokia-83-360-org-27.jpg', 'nokia-83-360-org-27.jpg', 13, NULL),
(559, 'nokia-83-360-org-28.jpg', 'nokia-83-360-org-28.jpg', 13, NULL),
(560, 'nokia-83-360-org-29.jpg', 'nokia-83-360-org-29.jpg', 13, NULL),
(561, 'nokia-83-360-org-30.jpg', 'nokia-83-360-org-30.jpg', 13, NULL),
(562, 'nokia-83-360-org-31.jpg', 'nokia-83-360-org-31.jpg', 13, NULL),
(563, 'nokia-83-360-org-32.jpg', 'nokia-83-360-org-32.jpg', 13, NULL),
(564, 'nokia-83-360-org-33.jpg', 'nokia-83-360-org-33.jpg', 13, NULL),
(565, 'nokia-83-360-org-34.jpg', 'nokia-83-360-org-34.jpg', 13, NULL),
(566, 'nokia-83-360-org-35.jpg', 'nokia-83-360-org-35.jpg', 13, NULL),
(567, 'nokia-83-360-org-36.jpg', 'nokia-83-360-org-36.jpg', 13, NULL),
(568, '637217889288426639_nokia-8-3-5g-2.png', '637217889288426639_nokia-8-3-5g-2.png', 13, 27),
(569, '637217889288626602_nokia-8-3-5g-4.png', '637217889288626602_nokia-8-3-5g-4.png', 13, 27),
(570, '637217889288886668_nokia-8-3-5g-3.png', '637217889288886668_nokia-8-3-5g-3.png', 13, 27),
(571, '637217889289047006_nokia-8-3-5g-1.png', '637217889289047006_nokia-8-3-5g-1.png', 13, 27),
(572, 'samsung-galaxy-note-20-ultra-org-1.jpg', 'samsung-galaxy-note-20-ultra-org-1.jpg', 14, NULL),
(573, 'samsung-galaxy-note-20-ultra-org-2.jpg', 'samsung-galaxy-note-20-ultra-org-2.jpg', 14, NULL),
(574, 'samsung-galaxy-note-20-ultra-org-3.jpg', 'samsung-galaxy-note-20-ultra-org-3.jpg', 14, NULL),
(575, 'samsung-galaxy-note-20-ultra-org-4.jpg', 'samsung-galaxy-note-20-ultra-org-4.jpg', 14, NULL),
(576, 'samsung-galaxy-note-20-ultra-org-5.jpg', 'samsung-galaxy-note-20-ultra-org-5.jpg', 14, NULL),
(577, 'samsung-galaxy-note-20-ultra-org-6.jpg', 'samsung-galaxy-note-20-ultra-org-6.jpg', 14, NULL),
(578, 'samsung-galaxy-note-20-ultra-org-7.jpg', 'samsung-galaxy-note-20-ultra-org-7.jpg', 14, NULL),
(579, 'samsung-galaxy-note-20-ultra-org-8.jpg', 'samsung-galaxy-note-20-ultra-org-8.jpg', 14, NULL),
(580, 'samsung-galaxy-note-20-ultra-org-9.jpg', 'samsung-galaxy-note-20-ultra-org-9.jpg', 14, NULL),
(581, 'samsung-galaxy-note-20-ultra-org-10.jpg', 'samsung-galaxy-note-20-ultra-org-10.jpg', 14, NULL),
(582, 'samsung-galaxy-note-20-ultra-org-11.jpg', 'samsung-galaxy-note-20-ultra-org-11.jpg', 14, NULL),
(583, 'samsung-galaxy-note-20-ultra-org-12.jpg', 'samsung-galaxy-note-20-ultra-org-12.jpg', 14, NULL),
(584, 'samsung-galaxy-note-20-ultra-org-13.jpg', 'samsung-galaxy-note-20-ultra-org-13.jpg', 14, NULL),
(585, 'samsung-galaxy-note-20-ultra-org-14.jpg', 'samsung-galaxy-note-20-ultra-org-14.jpg', 14, NULL),
(586, 'samsung-galaxy-note-20-ultra-org-15.jpg', 'samsung-galaxy-note-20-ultra-org-15.jpg', 14, NULL),
(587, 'samsung-galaxy-note-20-ultra-org-16.jpg', 'samsung-galaxy-note-20-ultra-org-16.jpg', 14, NULL),
(588, 'samsung-galaxy-note-20-ultra-org-17.jpg', 'samsung-galaxy-note-20-ultra-org-17.jpg', 14, NULL),
(589, 'samsung-galaxy-note-20-ultra-org-18.jpg', 'samsung-galaxy-note-20-ultra-org-18.jpg', 14, NULL),
(590, 'samsung-galaxy-note-20-ultra-org-19.jpg', 'samsung-galaxy-note-20-ultra-org-19.jpg', 14, NULL),
(591, 'samsung-galaxy-note-20-ultra-org-20.jpg', 'samsung-galaxy-note-20-ultra-org-20.jpg', 14, NULL),
(592, 'samsung-galaxy-note-20-ultra-org-21.jpg', 'samsung-galaxy-note-20-ultra-org-21.jpg', 14, NULL),
(593, 'samsung-galaxy-note-20-ultra-org-22.jpg', 'samsung-galaxy-note-20-ultra-org-22.jpg', 14, NULL),
(594, 'samsung-galaxy-note-20-ultra-org-23.jpg', 'samsung-galaxy-note-20-ultra-org-23.jpg', 14, NULL),
(595, 'samsung-galaxy-note-20-ultra-org-24.jpg', 'samsung-galaxy-note-20-ultra-org-24.jpg', 14, NULL),
(596, 'samsung-galaxy-note-20-ultra-org-25.jpg', 'samsung-galaxy-note-20-ultra-org-25.jpg', 14, NULL),
(597, 'samsung-galaxy-note-20-ultra-org-26.jpg', 'samsung-galaxy-note-20-ultra-org-26.jpg', 14, NULL),
(598, 'samsung-galaxy-note-20-ultra-org-27.jpg', 'samsung-galaxy-note-20-ultra-org-27.jpg', 14, NULL),
(599, 'samsung-galaxy-note-20-ultra-org-28.jpg', 'samsung-galaxy-note-20-ultra-org-28.jpg', 14, NULL),
(600, 'samsung-galaxy-note-20-ultra-org-29.jpg', 'samsung-galaxy-note-20-ultra-org-29.jpg', 14, NULL),
(601, 'samsung-galaxy-note-20-ultra-org-30.jpg', 'samsung-galaxy-note-20-ultra-org-30.jpg', 14, NULL),
(602, 'samsung-galaxy-note-20-ultra-org-31.jpg', 'samsung-galaxy-note-20-ultra-org-31.jpg', 14, NULL),
(603, 'samsung-galaxy-note-20-ultra-org-32.jpg', 'samsung-galaxy-note-20-ultra-org-32.jpg', 14, NULL),
(604, 'samsung-galaxy-note-20-ultra-org-33.jpg', 'samsung-galaxy-note-20-ultra-org-33.jpg', 14, NULL),
(605, 'samsung-galaxy-note-20-ultra-org-34.jpg', 'samsung-galaxy-note-20-ultra-org-34.jpg', 14, NULL),
(606, 'samsung-galaxy-note-20-ultra-org-35.jpg', 'samsung-galaxy-note-20-ultra-org-35.jpg', 14, NULL),
(607, 'samsung-galaxy-note-20-ultra-org-36.jpg', 'samsung-galaxy-note-20-ultra-org-36.jpg', 14, NULL),
(608, '637322682440542195_ss-note-20-ultra-gold-3.png', '637322682440542195_ss-note-20-ultra-gold-3.png', 14, 28),
(609, '637322682441312154_ss-note-20-ultra-gold-2.png', '637322682441312154_ss-note-20-ultra-gold-2.png', 14, 28),
(610, '637322682441632129_ss-note-20-ultra-gold-1 (1).png', '637322682441632129_ss-note-20-ultra-gold-1 (1).png', 14, 28),
(611, '637323023412255408_ss-note-20-ultra-gold-6.png', '637323023412255408_ss-note-20-ultra-gold-6.png', 14, 28),
(612, '637323023412655423_ss-note-20-ultra-gold-5.png', '637323023412655423_ss-note-20-ultra-gold-5.png', 14, 28),
(613, 'vsmart-live-4-6gb-org-1.jpg', 'vsmart-live-4-6gb-org-1.jpg', 15, NULL),
(614, 'vsmart-live-4-6gb-org-2.jpg', 'vsmart-live-4-6gb-org-2.jpg', 15, NULL),
(615, 'vsmart-live-4-6gb-org-3.jpg', 'vsmart-live-4-6gb-org-3.jpg', 15, NULL),
(616, 'vsmart-live-4-6gb-org-4.jpg', 'vsmart-live-4-6gb-org-4.jpg', 15, NULL),
(617, 'vsmart-live-4-6gb-org-5.jpg', 'vsmart-live-4-6gb-org-5.jpg', 15, NULL),
(618, 'vsmart-live-4-6gb-org-6.jpg', 'vsmart-live-4-6gb-org-6.jpg', 15, NULL),
(619, 'vsmart-live-4-6gb-org-7.jpg', 'vsmart-live-4-6gb-org-7.jpg', 15, NULL),
(620, 'vsmart-live-4-6gb-org-8.jpg', 'vsmart-live-4-6gb-org-8.jpg', 15, NULL),
(621, 'vsmart-live-4-6gb-org-9.jpg', 'vsmart-live-4-6gb-org-9.jpg', 15, NULL),
(622, 'vsmart-live-4-6gb-org-10.jpg', 'vsmart-live-4-6gb-org-10.jpg', 15, NULL),
(623, 'vsmart-live-4-6gb-org-11.jpg', 'vsmart-live-4-6gb-org-11.jpg', 15, NULL),
(624, 'vsmart-live-4-6gb-org-12.jpg', 'vsmart-live-4-6gb-org-12.jpg', 15, NULL),
(625, 'vsmart-live-4-6gb-org-13.jpg', 'vsmart-live-4-6gb-org-13.jpg', 15, NULL),
(626, 'vsmart-live-4-6gb-org-14.jpg', 'vsmart-live-4-6gb-org-14.jpg', 15, NULL),
(627, 'vsmart-live-4-6gb-org-15.jpg', 'vsmart-live-4-6gb-org-15.jpg', 15, NULL),
(628, 'vsmart-live-4-6gb-org-16.jpg', 'vsmart-live-4-6gb-org-16.jpg', 15, NULL),
(629, 'vsmart-live-4-6gb-org-17.jpg', 'vsmart-live-4-6gb-org-17.jpg', 15, NULL),
(630, 'vsmart-live-4-6gb-org-18.jpg', 'vsmart-live-4-6gb-org-18.jpg', 15, NULL),
(631, 'vsmart-live-4-6gb-org-19.jpg', 'vsmart-live-4-6gb-org-19.jpg', 15, NULL),
(632, 'vsmart-live-4-6gb-org-20.jpg', 'vsmart-live-4-6gb-org-20.jpg', 15, NULL),
(633, 'vsmart-live-4-6gb-org-21.jpg', 'vsmart-live-4-6gb-org-21.jpg', 15, NULL),
(634, 'vsmart-live-4-6gb-org-22.jpg', 'vsmart-live-4-6gb-org-22.jpg', 15, NULL),
(635, 'vsmart-live-4-6gb-org-23.jpg', 'vsmart-live-4-6gb-org-23.jpg', 15, NULL),
(636, 'vsmart-live-4-6gb-org-24.jpg', 'vsmart-live-4-6gb-org-24.jpg', 15, NULL),
(637, 'vsmart-live-4-6gb-org-25.jpg', 'vsmart-live-4-6gb-org-25.jpg', 15, NULL),
(638, 'vsmart-live-4-6gb-org-26.jpg', 'vsmart-live-4-6gb-org-26.jpg', 15, NULL),
(639, 'vsmart-live-4-6gb-org-27.jpg', 'vsmart-live-4-6gb-org-27.jpg', 15, NULL),
(640, 'vsmart-live-4-6gb-org-28.jpg', 'vsmart-live-4-6gb-org-28.jpg', 15, NULL),
(641, 'vsmart-live-4-6gb-org-29.jpg', 'vsmart-live-4-6gb-org-29.jpg', 15, NULL),
(642, 'vsmart-live-4-6gb-org-30.jpg', 'vsmart-live-4-6gb-org-30.jpg', 15, NULL),
(643, 'vsmart-live-4-6gb-org-31.jpg', 'vsmart-live-4-6gb-org-31.jpg', 15, NULL),
(644, 'vsmart-live-4-6gb-org-32.jpg', 'vsmart-live-4-6gb-org-32.jpg', 15, NULL),
(645, 'vsmart-live-4-6gb-org-33.jpg', 'vsmart-live-4-6gb-org-33.jpg', 15, NULL),
(646, 'vsmart-live-4-6gb-org-34.jpg', 'vsmart-live-4-6gb-org-34.jpg', 15, NULL),
(647, 'vsmart-live-4-6gb-org-35.jpg', 'vsmart-live-4-6gb-org-35.jpg', 15, NULL),
(648, 'vsmart-live-4-6gb-org-36.jpg', 'vsmart-live-4-6gb-org-36.jpg', 15, NULL),
(649, '637338568494958657_vsmart-live-4-den-5.png', '637338568494958657_vsmart-live-4-den-5.png', 15, 29),
(650, '637338568495427358_vsmart-live-4-den-2.png', '637338568495427358_vsmart-live-4-den-2.png', 15, 29),
(651, '637338568495427358_vsmart-live-4-den-3.png', '637338568495427358_vsmart-live-4-den-3.png', 15, 29),
(652, '637338568495583618_vsmart-live-4-den-1.png', '637338568495583618_vsmart-live-4-den-1.png', 15, 29),
(653, '637338568495583618_vsmart-live-4-den-4.png', '637338568495583618_vsmart-live-4-den-4.png', 15, 29),
(654, '637338584150607083_vsmart-live-4-xanh-5.png', '637338584150607083_vsmart-live-4-xanh-5.png', 15, 30),
(655, '637338584150919854_vsmart-live-4-xanh-2.png', '637338584150919854_vsmart-live-4-xanh-2.png', 15, 30),
(656, '637338584151075770_vsmart-live-4-xanh-3.png', '637338584151075770_vsmart-live-4-xanh-3.png', 15, 30),
(657, '637338584151232001_vsmart-live-4-xanh-4.png', '637338584151232001_vsmart-live-4-xanh-4.png', 15, 30),
(658, '637338584151388263_vsmart-live-4-xanh-1.png', '637338584151388263_vsmart-live-4-xanh-1.png', 15, 30),
(659, '637338591387618759_vsmart-live-4-trang-5.png', '637338591387618759_vsmart-live-4-trang-5.png', 15, 31),
(660, '637338591387931222_vsmart-live-4-trang-2.png', '637338591387931222_vsmart-live-4-trang-2.png', 15, 31),
(661, '637338591388087612_vsmart-live-4-trang-3.png', '637338591388087612_vsmart-live-4-trang-3.png', 15, 31),
(662, '637338591388243820_vsmart-live-4-trang-1.png', '637338591388243820_vsmart-live-4-trang-1.png', 15, 31),
(663, '637338591388243820_vsmart-live-4-trang-4.png', '637338591388243820_vsmart-live-4-trang-4.png', 15, 31),
(664, 'vsmart-aris-8gb-128gb-xanhla-org-1.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-1.jpg', 16, NULL),
(665, 'vsmart-aris-8gb-128gb-xanhla-org-2.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-2.jpg', 16, NULL),
(666, 'vsmart-aris-8gb-128gb-xanhla-org-3.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-3.jpg', 16, NULL),
(667, 'vsmart-aris-8gb-128gb-xanhla-org-4.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-4.jpg', 16, NULL),
(668, 'vsmart-aris-8gb-128gb-xanhla-org-5.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-5.jpg', 16, NULL),
(669, 'vsmart-aris-8gb-128gb-xanhla-org-6.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-6.jpg', 16, NULL),
(670, 'vsmart-aris-8gb-128gb-xanhla-org-7.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-7.jpg', 16, NULL),
(671, 'vsmart-aris-8gb-128gb-xanhla-org-8.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-8.jpg', 16, NULL),
(672, 'vsmart-aris-8gb-128gb-xanhla-org-9.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-9.jpg', 16, NULL),
(673, 'vsmart-aris-8gb-128gb-xanhla-org-10.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-10.jpg', 16, NULL),
(674, 'vsmart-aris-8gb-128gb-xanhla-org-11.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-11.jpg', 16, NULL),
(675, 'vsmart-aris-8gb-128gb-xanhla-org-12.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-12.jpg', 16, NULL),
(676, 'vsmart-aris-8gb-128gb-xanhla-org-13.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-13.jpg', 16, NULL),
(677, 'vsmart-aris-8gb-128gb-xanhla-org-14.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-14.jpg', 16, NULL),
(678, 'vsmart-aris-8gb-128gb-xanhla-org-15.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-15.jpg', 16, NULL),
(679, 'vsmart-aris-8gb-128gb-xanhla-org-16.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-16.jpg', 16, NULL),
(680, 'vsmart-aris-8gb-128gb-xanhla-org-17.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-17.jpg', 16, NULL),
(681, 'vsmart-aris-8gb-128gb-xanhla-org-18.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-18.jpg', 16, NULL),
(682, 'vsmart-aris-8gb-128gb-xanhla-org-19.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-19.jpg', 16, NULL),
(683, 'vsmart-aris-8gb-128gb-xanhla-org-20.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-20.jpg', 16, NULL),
(684, 'vsmart-aris-8gb-128gb-xanhla-org-21.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-21.jpg', 16, NULL),
(685, 'vsmart-aris-8gb-128gb-xanhla-org-22.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-22.jpg', 16, NULL),
(686, 'vsmart-aris-8gb-128gb-xanhla-org-23.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-23.jpg', 16, NULL),
(687, 'vsmart-aris-8gb-128gb-xanhla-org-24.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-24.jpg', 16, NULL),
(688, 'vsmart-aris-8gb-128gb-xanhla-org-25.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-25.jpg', 16, NULL),
(689, 'vsmart-aris-8gb-128gb-xanhla-org-26.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-26.jpg', 16, NULL),
(690, 'vsmart-aris-8gb-128gb-xanhla-org-27.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-27.jpg', 16, NULL),
(691, 'vsmart-aris-8gb-128gb-xanhla-org-28.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-28.jpg', 16, NULL),
(692, 'vsmart-aris-8gb-128gb-xanhla-org-29.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-29.jpg', 16, NULL),
(693, 'vsmart-aris-8gb-128gb-xanhla-org-30.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-30.jpg', 16, NULL),
(694, 'vsmart-aris-8gb-128gb-xanhla-org-31.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-31.jpg', 16, NULL),
(695, 'vsmart-aris-8gb-128gb-xanhla-org-32.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-32.jpg', 16, NULL),
(696, 'vsmart-aris-8gb-128gb-xanhla-org-33.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-33.jpg', 16, NULL),
(697, 'vsmart-aris-8gb-128gb-xanhla-org-34.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-34.jpg', 16, NULL),
(698, 'vsmart-aris-8gb-128gb-xanhla-org-35.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-35.jpg', 16, NULL),
(699, 'vsmart-aris-8gb-128gb-xanhla-org-36.jpg', 'vsmart-aris-8gb-128gb-xanhla-org-36.jpg', 16, NULL),
(700, '637359469441230574_vsmart-aris-green-3.png', '637359469441230574_vsmart-aris-green-3.png', 16, 32),
(701, '637359469441320535_vsmart-aris-green-5.png', '637359469441320535_vsmart-aris-green-5.png', 16, 32),
(702, '637359469441710404_vsmart-aris-green-1 (1).png', '637359469441710404_vsmart-aris-green-1 (1).png', 16, 32),
(703, '637359469441840537_vsmart-aris-green-4.png', '637359469441840537_vsmart-aris-green-4.png', 16, 32),
(704, '637356760746984714_vsmart-aris-den-2.png', '637356760746984714_vsmart-aris-den-2.png', 16, 33),
(705, '637359470069998642_vsmart-aris-den-5.png', '637359470069998642_vsmart-aris-den-5.png', 16, 33);
INSERT INTO `hinhanh` (`hinhanh_id`, `hinhanh_ten`, `hinhanh_hinh`, `sp_id`, `mausp_id`) VALUES
(706, '637359470070498647_vsmart-aris-den-3.png', '637359470070498647_vsmart-aris-den-3.png', 16, 33),
(707, '637359470070858671_vsmart-aris-den-1.png', '637359470070858671_vsmart-aris-den-1.png', 16, 33),
(708, '637359470071238643_vsmart-aris-den-4.png', '637359470071238643_vsmart-aris-den-4.png', 16, 33),
(709, 'vivo-y50-360-org-1.jpg', 'vivo-y50-360-org-1.jpg', 17, NULL),
(710, 'vivo-y50-360-org-2.jpg', 'vivo-y50-360-org-2.jpg', 17, NULL),
(711, 'vivo-y50-360-org-3.jpg', 'vivo-y50-360-org-3.jpg', 17, NULL),
(712, 'vivo-y50-360-org-4.jpg', 'vivo-y50-360-org-4.jpg', 17, NULL),
(713, 'vivo-y50-360-org-5.jpg', 'vivo-y50-360-org-5.jpg', 17, NULL),
(714, 'vivo-y50-360-org-6.jpg', 'vivo-y50-360-org-6.jpg', 17, NULL),
(715, 'vivo-y50-360-org-7.jpg', 'vivo-y50-360-org-7.jpg', 17, NULL),
(716, 'vivo-y50-360-org-8.jpg', 'vivo-y50-360-org-8.jpg', 17, NULL),
(717, 'vivo-y50-360-org-9.jpg', 'vivo-y50-360-org-9.jpg', 17, NULL),
(718, 'vivo-y50-360-org-10.jpg', 'vivo-y50-360-org-10.jpg', 17, NULL),
(719, 'vivo-y50-360-org-11.jpg', 'vivo-y50-360-org-11.jpg', 17, NULL),
(720, 'vivo-y50-360-org-12.jpg', 'vivo-y50-360-org-12.jpg', 17, NULL),
(721, 'vivo-y50-360-org-13.jpg', 'vivo-y50-360-org-13.jpg', 17, NULL),
(722, 'vivo-y50-360-org-14.jpg', 'vivo-y50-360-org-14.jpg', 17, NULL),
(723, 'vivo-y50-360-org-15.jpg', 'vivo-y50-360-org-15.jpg', 17, NULL),
(724, 'vivo-y50-360-org-16.jpg', 'vivo-y50-360-org-16.jpg', 17, NULL),
(725, 'vivo-y50-360-org-17.jpg', 'vivo-y50-360-org-17.jpg', 17, NULL),
(726, 'vivo-y50-360-org-18.jpg', 'vivo-y50-360-org-18.jpg', 17, NULL),
(727, 'vivo-y50-360-org-19.jpg', 'vivo-y50-360-org-19.jpg', 17, NULL),
(728, 'vivo-y50-360-org-20.jpg', 'vivo-y50-360-org-20.jpg', 17, NULL),
(729, 'vivo-y50-360-org-21.jpg', 'vivo-y50-360-org-21.jpg', 17, NULL),
(730, 'vivo-y50-360-org-22.jpg', 'vivo-y50-360-org-22.jpg', 17, NULL),
(731, 'vivo-y50-360-org-23.jpg', 'vivo-y50-360-org-23.jpg', 17, NULL),
(732, 'vivo-y50-360-org-24.jpg', 'vivo-y50-360-org-24.jpg', 17, NULL),
(733, 'vivo-y50-360-org-25.jpg', 'vivo-y50-360-org-25.jpg', 17, NULL),
(734, 'vivo-y50-360-org-26.jpg', 'vivo-y50-360-org-26.jpg', 17, NULL),
(735, 'vivo-y50-360-org-27.jpg', 'vivo-y50-360-org-27.jpg', 17, NULL),
(736, 'vivo-y50-360-org-28.jpg', 'vivo-y50-360-org-28.jpg', 17, NULL),
(737, 'vivo-y50-360-org-29.jpg', 'vivo-y50-360-org-29.jpg', 17, NULL),
(738, 'vivo-y50-360-org-30.jpg', 'vivo-y50-360-org-30.jpg', 17, NULL),
(739, 'vivo-y50-360-org-31.jpg', 'vivo-y50-360-org-31.jpg', 17, NULL),
(740, 'vivo-y50-360-org-32.jpg', 'vivo-y50-360-org-32.jpg', 17, NULL),
(741, 'vivo-y50-360-org-33.jpg', 'vivo-y50-360-org-33.jpg', 17, NULL),
(742, 'vivo-y50-360-org-34.jpg', 'vivo-y50-360-org-34.jpg', 17, NULL),
(743, 'vivo-y50-360-org-35.jpg', 'vivo-y50-360-org-35.jpg', 17, NULL),
(744, 'vivo-y50-360-org-36.jpg', 'vivo-y50-360-org-36.jpg', 17, NULL),
(745, '637231522785682704_vivo-y50-den-3.png', '637231522785682704_vivo-y50-den-3.png', 17, 34),
(746, '637231522785882594_vivo-y50-den-2.png', '637231522785882594_vivo-y50-den-2.png', 17, 34),
(747, '637231522786002614_vivo-y50-den-1.png', '637231522786002614_vivo-y50-den-1.png', 17, 34),
(748, '637231522786082665_vivo-y50-den-4.png', '637231522786082665_vivo-y50-den-4.png', 17, 34),
(749, '637231514112517621_vivo-y50-tim-3.png', '637231514112517621_vivo-y50-tim-3.png', 17, 35),
(750, '637231514112537691_vivo-y50-tim-2.png', '637231514112537691_vivo-y50-tim-2.png', 17, 35),
(751, '637231514112627697_vivo-y50-tim-1.png', '637231514112627697_vivo-y50-tim-1.png', 17, 35),
(752, '637231514112687655_vivo-y50-tim-4.png', '637231514112687655_vivo-y50-tim-4.png', 17, 35),
(753, '637069296714132861_vivo-y11-do-5.png', '637069296714132861_vivo-y11-do-5.png', 19, 37),
(754, '637069296715142317_vivo-y11-do-2.png', '637069296715142317_vivo-y11-do-2.png', 19, 37),
(755, '637069296715454474_vivo-y11-do-3.png', '637069296715454474_vivo-y11-do-3.png', 19, 37),
(756, '637069296715454474_vivo-y11-do-4.png', '637069296715454474_vivo-y11-do-4.png', 19, 37),
(757, '637069296715675049_vivo-y11-do-1.png', '637069296715675049_vivo-y11-do-1.png', 19, 37),
(758, '637069295774065724_vivo-y11-xanh-5.png', '637069295774065724_vivo-y11-xanh-5.png', 19, 38),
(759, '637069295775370648_vivo-y11-xanh-3.png', '637069295775370648_vivo-y11-xanh-3.png', 19, 38),
(760, '637069295775480620_vivo-y11-xanh-2.png', '637069295775480620_vivo-y11-xanh-2.png', 19, 38),
(761, '637069295775630500_vivo-y11-xanh-1.png', '637069295775630500_vivo-y11-xanh-1.png', 19, 38),
(762, '637069295775680534_vivo-y11-xanh-4.png', '637069295775680534_vivo-y11-xanh-4.png', 19, 38),
(763, '637263662735475171_vivo-y11-xanhlam-2.png', '637263662735475171_vivo-y11-xanhlam-2.png', 19, 39),
(764, '637263662735475171_vivo-y11-xanhlam-3.png', '637263662735475171_vivo-y11-xanhlam-3.png', 19, 39),
(765, '637263662735525083_vivo-y11-xanhlam-1.png', '637263662735525083_vivo-y11-xanhlam-1.png', 19, 39),
(766, 'vivo-y11-org-1.jpg', 'vivo-y11-org-1.jpg', 19, NULL),
(767, 'vivo-y11-org-2.jpg', 'vivo-y11-org-2.jpg', 19, NULL),
(768, 'vivo-y11-org-3.jpg', 'vivo-y11-org-3.jpg', 19, NULL),
(769, 'vivo-y11-org-4.jpg', 'vivo-y11-org-4.jpg', 19, NULL),
(770, 'vivo-y11-org-5.jpg', 'vivo-y11-org-5.jpg', 19, NULL),
(771, 'vivo-y11-org-6.jpg', 'vivo-y11-org-6.jpg', 19, NULL),
(772, 'vivo-y11-org-7.jpg', 'vivo-y11-org-7.jpg', 19, NULL),
(773, 'vivo-y11-org-8.jpg', 'vivo-y11-org-8.jpg', 19, NULL),
(774, 'vivo-y11-org-9.jpg', 'vivo-y11-org-9.jpg', 19, NULL),
(775, 'vivo-y11-org-10.jpg', 'vivo-y11-org-10.jpg', 19, NULL),
(776, 'vivo-y11-org-11.jpg', 'vivo-y11-org-11.jpg', 19, NULL),
(777, 'vivo-y11-org-12.jpg', 'vivo-y11-org-12.jpg', 19, NULL),
(778, 'vivo-y11-org-13.jpg', 'vivo-y11-org-13.jpg', 19, NULL),
(779, 'vivo-y11-org-14.jpg', 'vivo-y11-org-14.jpg', 19, NULL),
(780, 'vivo-y11-org-15.jpg', 'vivo-y11-org-15.jpg', 19, NULL),
(781, 'vivo-y11-org-16.jpg', 'vivo-y11-org-16.jpg', 19, NULL),
(782, 'vivo-y11-org-17.jpg', 'vivo-y11-org-17.jpg', 19, NULL),
(783, 'vivo-y11-org-18.jpg', 'vivo-y11-org-18.jpg', 19, NULL),
(784, 'vivo-y11-org-19.jpg', 'vivo-y11-org-19.jpg', 19, NULL),
(785, 'vivo-y11-org-20.jpg', 'vivo-y11-org-20.jpg', 19, NULL),
(786, 'vivo-y11-org-21.jpg', 'vivo-y11-org-21.jpg', 19, NULL),
(787, 'vivo-y11-org-22.jpg', 'vivo-y11-org-22.jpg', 19, NULL),
(788, 'vivo-y11-org-23.jpg', 'vivo-y11-org-23.jpg', 19, NULL),
(789, 'vivo-y11-org-24.jpg', 'vivo-y11-org-24.jpg', 19, NULL),
(790, 'vivo-y11-org-25.jpg', 'vivo-y11-org-25.jpg', 19, NULL),
(791, 'vivo-y11-org-26.jpg', 'vivo-y11-org-26.jpg', 19, NULL),
(792, 'vivo-y11-org-27.jpg', 'vivo-y11-org-27.jpg', 19, NULL),
(793, 'vivo-y11-org-28.jpg', 'vivo-y11-org-28.jpg', 19, NULL),
(794, 'vivo-y11-org-29.jpg', 'vivo-y11-org-29.jpg', 19, NULL),
(795, 'vivo-y11-org-30.jpg', 'vivo-y11-org-30.jpg', 19, NULL),
(796, 'vivo-y11-org-31.jpg', 'vivo-y11-org-31.jpg', 19, NULL),
(797, 'vivo-y11-org-32.jpg', 'vivo-y11-org-32.jpg', 19, NULL),
(798, 'vivo-y11-org-33.jpg', 'vivo-y11-org-33.jpg', 19, NULL),
(799, 'vivo-y11-org-34.jpg', 'vivo-y11-org-34.jpg', 19, NULL),
(800, 'vivo-y11-org-35.jpg', 'vivo-y11-org-35.jpg', 19, NULL),
(801, 'vivo-y11-org-36.jpg', 'vivo-y11-org-36.jpg', 19, NULL),
(802, '637339726969407951_oppo-a53-xanh-2.png', '637339726969407951_oppo-a53-xanh-2.png', 20, 40),
(803, '637339726969437973_oppo-a53-xanh-5.png', '637339726969437973_oppo-a53-xanh-5.png', 20, 40),
(804, '637339726969608014_oppo-a53-xanh-4.png', '637339726969608014_oppo-a53-xanh-4.png', 20, 40),
(805, '637339726969697956_oppo-a53-xanh-1.png', '637339726969697956_oppo-a53-xanh-1.png', 20, 40),
(806, '637339726969707956_oppo-a53-xanh-3.png', '637339726969707956_oppo-a53-xanh-3.png', 20, 40),
(807, '637339677734200354_oppo-a53-den-4.png', '637339677734200354_oppo-a53-den-4.png', 20, 41),
(808, '637339677734440510_oppo-a53-den-2.png', '637339677734440510_oppo-a53-den-2.png', 20, 41),
(809, '637339677734470423_oppo-a53-den-3.png', '637339677734470423_oppo-a53-den-3.png', 20, 41),
(810, '637339677734650488_oppo-a53-den-1.png', '637339677734650488_oppo-a53-den-1.png', 20, 41),
(811, '637339700674568985_oppo-a53-den-5.png', '637339700674568985_oppo-a53-den-5.png', 20, 41),
(812, 'oppo-a53-2020-org-1.jpg', 'oppo-a53-2020-org-1.jpg', 20, NULL),
(813, 'oppo-a53-2020-org-2.jpg', 'oppo-a53-2020-org-2.jpg', 20, NULL),
(814, 'oppo-a53-2020-org-3.jpg', 'oppo-a53-2020-org-3.jpg', 20, NULL),
(815, 'oppo-a53-2020-org-4.jpg', 'oppo-a53-2020-org-4.jpg', 20, NULL),
(816, 'oppo-a53-2020-org-5.jpg', 'oppo-a53-2020-org-5.jpg', 20, NULL),
(817, 'oppo-a53-2020-org-6.jpg', 'oppo-a53-2020-org-6.jpg', 20, NULL),
(818, 'oppo-a53-2020-org-7.jpg', 'oppo-a53-2020-org-7.jpg', 20, NULL),
(819, 'oppo-a53-2020-org-8.jpg', 'oppo-a53-2020-org-8.jpg', 20, NULL),
(820, 'oppo-a53-2020-org-9.jpg', 'oppo-a53-2020-org-9.jpg', 20, NULL),
(821, 'oppo-a53-2020-org-10.jpg', 'oppo-a53-2020-org-10.jpg', 20, NULL),
(822, 'oppo-a53-2020-org-11.jpg', 'oppo-a53-2020-org-11.jpg', 20, NULL),
(823, 'oppo-a53-2020-org-12.jpg', 'oppo-a53-2020-org-12.jpg', 20, NULL),
(824, 'oppo-a53-2020-org-13.jpg', 'oppo-a53-2020-org-13.jpg', 20, NULL),
(825, 'oppo-a53-2020-org-14.jpg', 'oppo-a53-2020-org-14.jpg', 20, NULL),
(826, 'oppo-a53-2020-org-15.jpg', 'oppo-a53-2020-org-15.jpg', 20, NULL),
(827, 'oppo-a53-2020-org-16.jpg', 'oppo-a53-2020-org-16.jpg', 20, NULL),
(828, 'oppo-a53-2020-org-17.jpg', 'oppo-a53-2020-org-17.jpg', 20, NULL),
(829, 'oppo-a53-2020-org-18.jpg', 'oppo-a53-2020-org-18.jpg', 20, NULL),
(830, 'oppo-a53-2020-org-19.jpg', 'oppo-a53-2020-org-19.jpg', 20, NULL),
(831, 'oppo-a53-2020-org-20.jpg', 'oppo-a53-2020-org-20.jpg', 20, NULL),
(832, 'oppo-a53-2020-org-21.jpg', 'oppo-a53-2020-org-21.jpg', 20, NULL),
(833, 'oppo-a53-2020-org-22.jpg', 'oppo-a53-2020-org-22.jpg', 20, NULL),
(834, 'oppo-a53-2020-org-23.jpg', 'oppo-a53-2020-org-23.jpg', 20, NULL),
(835, 'oppo-a53-2020-org-24.jpg', 'oppo-a53-2020-org-24.jpg', 20, NULL),
(836, 'oppo-a53-2020-org-25.jpg', 'oppo-a53-2020-org-25.jpg', 20, NULL),
(837, 'oppo-a53-2020-org-26.jpg', 'oppo-a53-2020-org-26.jpg', 20, NULL),
(838, 'oppo-a53-2020-org-27.jpg', 'oppo-a53-2020-org-27.jpg', 20, NULL),
(839, 'oppo-a53-2020-org-28.jpg', 'oppo-a53-2020-org-28.jpg', 20, NULL),
(840, 'oppo-a53-2020-org-29.jpg', 'oppo-a53-2020-org-29.jpg', 20, NULL),
(841, 'oppo-a53-2020-org-30.jpg', 'oppo-a53-2020-org-30.jpg', 20, NULL),
(842, 'oppo-a53-2020-org-31.jpg', 'oppo-a53-2020-org-31.jpg', 20, NULL),
(843, 'oppo-a53-2020-org-32.jpg', 'oppo-a53-2020-org-32.jpg', 20, NULL),
(844, 'oppo-a53-2020-org-33.jpg', 'oppo-a53-2020-org-33.jpg', 20, NULL),
(845, 'oppo-a53-2020-org-34.jpg', 'oppo-a53-2020-org-34.jpg', 20, NULL),
(846, 'oppo-a53-2020-org-35.jpg', 'oppo-a53-2020-org-35.jpg', 20, NULL),
(847, 'oppo-a53-2020-org-36.jpg', 'oppo-a53-2020-org-36.jpg', 20, NULL),
(848, '637353320104565903_oppo-a52-den-5.png', '637353320104565903_oppo-a52-den-5.png', 21, 42),
(849, '637353320104715867_oppo-a52-den-2.png', '637353320104715867_oppo-a52-den-2.png', 21, 42),
(850, '637353320105105860_oppo-a52-den-3.png', '637353320105105860_oppo-a52-den-3.png', 21, 42),
(851, '637353320105195905_oppo-a52-den-1.png', '637353320105195905_oppo-a52-den-1.png', 21, 42),
(852, '637353320105245831_oppo-a52-den-4.png', '637353320105245831_oppo-a52-den-4.png', 21, 42),
(853, '637353321949489887_oppo-a52-trang-1.png', '637353321949489887_oppo-a52-trang-1.png', 21, 43),
(854, '637353321949646146_oppo-a52-trang-5.png', '637353321949646146_oppo-a52-trang-5.png', 21, 43),
(855, '637353321950114924_oppo-a52-trang-2.png', '637353321950114924_oppo-a52-trang-2.png', 21, 43),
(856, '637353321950114924_oppo-a52-trang-3.png', '637353321950114924_oppo-a52-trang-3.png', 21, 43),
(857, '637353321950583661_oppo-a52-trang-4.png', '637353321950583661_oppo-a52-trang-4.png', 21, 43),
(858, 'oppo-a52-org-1.jpg', 'oppo-a52-org-1.jpg', 21, NULL),
(859, 'oppo-a52-org-2.jpg', 'oppo-a52-org-2.jpg', 21, NULL),
(860, 'oppo-a52-org-3.jpg', 'oppo-a52-org-3.jpg', 21, NULL),
(861, 'oppo-a52-org-4.jpg', 'oppo-a52-org-4.jpg', 21, NULL),
(862, 'oppo-a52-org-5.jpg', 'oppo-a52-org-5.jpg', 21, NULL),
(863, 'oppo-a52-org-6.jpg', 'oppo-a52-org-6.jpg', 21, NULL),
(864, 'oppo-a52-org-7.jpg', 'oppo-a52-org-7.jpg', 21, NULL),
(865, 'oppo-a52-org-8.jpg', 'oppo-a52-org-8.jpg', 21, NULL),
(866, 'oppo-a52-org-9.jpg', 'oppo-a52-org-9.jpg', 21, NULL),
(867, 'oppo-a52-org-10.jpg', 'oppo-a52-org-10.jpg', 21, NULL),
(868, 'oppo-a52-org-11.jpg', 'oppo-a52-org-11.jpg', 21, NULL),
(869, 'oppo-a52-org-12.jpg', 'oppo-a52-org-12.jpg', 21, NULL),
(870, 'oppo-a52-org-13.jpg', 'oppo-a52-org-13.jpg', 21, NULL),
(871, 'oppo-a52-org-14.jpg', 'oppo-a52-org-14.jpg', 21, NULL),
(872, 'oppo-a52-org-15.jpg', 'oppo-a52-org-15.jpg', 21, NULL),
(873, 'oppo-a52-org-16.jpg', 'oppo-a52-org-16.jpg', 21, NULL),
(874, 'oppo-a52-org-17.jpg', 'oppo-a52-org-17.jpg', 21, NULL),
(875, 'oppo-a52-org-18.jpg', 'oppo-a52-org-18.jpg', 21, NULL),
(876, 'oppo-a52-org-19.jpg', 'oppo-a52-org-19.jpg', 21, NULL),
(877, 'oppo-a52-org-20.jpg', 'oppo-a52-org-20.jpg', 21, NULL),
(878, 'oppo-a52-org-21.jpg', 'oppo-a52-org-21.jpg', 21, NULL),
(879, 'oppo-a52-org-22.jpg', 'oppo-a52-org-22.jpg', 21, NULL),
(880, 'oppo-a52-org-23.jpg', 'oppo-a52-org-23.jpg', 21, NULL),
(881, 'oppo-a52-org-24.jpg', 'oppo-a52-org-24.jpg', 21, NULL),
(882, 'oppo-a52-org-25.jpg', 'oppo-a52-org-25.jpg', 21, NULL),
(883, 'oppo-a52-org-26.jpg', 'oppo-a52-org-26.jpg', 21, NULL),
(884, 'oppo-a52-org-27.jpg', 'oppo-a52-org-27.jpg', 21, NULL),
(885, 'oppo-a52-org-28.jpg', 'oppo-a52-org-28.jpg', 21, NULL),
(886, 'oppo-a52-org-29.jpg', 'oppo-a52-org-29.jpg', 21, NULL),
(887, 'oppo-a52-org-30.jpg', 'oppo-a52-org-30.jpg', 21, NULL),
(888, 'oppo-a52-org-31.jpg', 'oppo-a52-org-31.jpg', 21, NULL),
(889, 'oppo-a52-org-32.jpg', 'oppo-a52-org-32.jpg', 21, NULL),
(890, 'oppo-a52-org-33.jpg', 'oppo-a52-org-33.jpg', 21, NULL),
(891, 'oppo-a52-org-34.jpg', 'oppo-a52-org-34.jpg', 21, NULL),
(892, 'oppo-a52-org-35.jpg', 'oppo-a52-org-35.jpg', 21, NULL),
(893, 'oppo-a52-org-36.jpg', 'oppo-a52-org-36.jpg', 21, NULL),
(894, '637370831123652122_xiaomi-mi-10t-pro-den-5.png', '637370831123652122_xiaomi-mi-10t-pro-den-5.png', 22, 44),
(895, '637370831123896036_xiaomi-mi-10t-pro-den-3.png', '637370831123896036_xiaomi-mi-10t-pro-den-3.png', 22, 44),
(896, '637370831124612882_xiaomi-mi-10t-pro-den-4.png', '637370831124612882_xiaomi-mi-10t-pro-den-4.png', 22, 44),
(897, '637370831124816916_xiaomi-mi-10t-pro-den-2.png', '637370831124816916_xiaomi-mi-10t-pro-den-2.png', 22, 44),
(898, '637370831124988719_xiaomi-mi-10t-pro-den-1.png', '637370831124988719_xiaomi-mi-10t-pro-den-1.png', 22, 44),
(899, '637370828366335248_xiaomi-mi-10t-pro-bac-5.png', '637370828366335248_xiaomi-mi-10t-pro-bac-5.png', 22, 45),
(900, '637370828366611349_xiaomi-mi-10t-pro-bac-3.png', '637370828366611349_xiaomi-mi-10t-pro-bac-3.png', 22, 45),
(901, '637370828366783154_xiaomi-mi-10t-pro-bac-1.png', '637370828366783154_xiaomi-mi-10t-pro-bac-1.png', 22, 45),
(902, '637370828366803154_xiaomi-mi-10t-pro-bac-2.png', '637370828366803154_xiaomi-mi-10t-pro-bac-2.png', 22, 45),
(903, '637370828366976895_xiaomi-mi-10t-pro-bac-4.png', '637370828366976895_xiaomi-mi-10t-pro-bac-4.png', 22, 45),
(904, '637370830457930219_xiaomi-mi-10t-pro-xanh-3.png', '637370830457930219_xiaomi-mi-10t-pro-xanh-3.png', 22, 46),
(905, '637370830458602784_xiaomi-mi-10t-pro-xanh-5.png', '637370830458602784_xiaomi-mi-10t-pro-xanh-5.png', 22, 46),
(906, '637370830462014519_xiaomi-mi-10t-pro-xanh-2.png', '637370830462014519_xiaomi-mi-10t-pro-xanh-2.png', 22, 46),
(907, '637370830462279964_xiaomi-mi-10t-pro-xanh-4.png', '637370830462279964_xiaomi-mi-10t-pro-xanh-4.png', 22, 46),
(908, '637370830462678378_xiaomi-mi-10t-pro-xanh-1.png', '637370830462678378_xiaomi-mi-10t-pro-xanh-1.png', 22, 46),
(909, 'xiaomi-mi-10t-pro-org-1.jpg', 'xiaomi-mi-10t-pro-org-1.jpg', 22, NULL),
(910, 'xiaomi-mi-10t-pro-org-2.jpg', 'xiaomi-mi-10t-pro-org-2.jpg', 22, NULL),
(911, 'xiaomi-mi-10t-pro-org-3.jpg', 'xiaomi-mi-10t-pro-org-3.jpg', 22, NULL),
(912, 'xiaomi-mi-10t-pro-org-4.jpg', 'xiaomi-mi-10t-pro-org-4.jpg', 22, NULL),
(913, 'xiaomi-mi-10t-pro-org-5.jpg', 'xiaomi-mi-10t-pro-org-5.jpg', 22, NULL),
(914, 'xiaomi-mi-10t-pro-org-6.jpg', 'xiaomi-mi-10t-pro-org-6.jpg', 22, NULL),
(915, 'xiaomi-mi-10t-pro-org-7.jpg', 'xiaomi-mi-10t-pro-org-7.jpg', 22, NULL),
(916, 'xiaomi-mi-10t-pro-org-8.jpg', 'xiaomi-mi-10t-pro-org-8.jpg', 22, NULL),
(917, 'xiaomi-mi-10t-pro-org-9.jpg', 'xiaomi-mi-10t-pro-org-9.jpg', 22, NULL),
(918, 'xiaomi-mi-10t-pro-org-10.jpg', 'xiaomi-mi-10t-pro-org-10.jpg', 22, NULL),
(919, 'xiaomi-mi-10t-pro-org-11.jpg', 'xiaomi-mi-10t-pro-org-11.jpg', 22, NULL),
(920, 'xiaomi-mi-10t-pro-org-12.jpg', 'xiaomi-mi-10t-pro-org-12.jpg', 22, NULL),
(921, 'xiaomi-mi-10t-pro-org-13.jpg', 'xiaomi-mi-10t-pro-org-13.jpg', 22, NULL),
(922, 'xiaomi-mi-10t-pro-org-14.jpg', 'xiaomi-mi-10t-pro-org-14.jpg', 22, NULL),
(923, 'xiaomi-mi-10t-pro-org-15.jpg', 'xiaomi-mi-10t-pro-org-15.jpg', 22, NULL),
(924, 'xiaomi-mi-10t-pro-org-16.jpg', 'xiaomi-mi-10t-pro-org-16.jpg', 22, NULL),
(925, 'xiaomi-mi-10t-pro-org-17.jpg', 'xiaomi-mi-10t-pro-org-17.jpg', 22, NULL),
(926, 'xiaomi-mi-10t-pro-org-18.jpg', 'xiaomi-mi-10t-pro-org-18.jpg', 22, NULL),
(927, 'xiaomi-mi-10t-pro-org-19.jpg', 'xiaomi-mi-10t-pro-org-19.jpg', 22, NULL),
(928, 'xiaomi-mi-10t-pro-org-20.jpg', 'xiaomi-mi-10t-pro-org-20.jpg', 22, NULL),
(929, 'xiaomi-mi-10t-pro-org-21.jpg', 'xiaomi-mi-10t-pro-org-21.jpg', 22, NULL),
(930, 'xiaomi-mi-10t-pro-org-22.jpg', 'xiaomi-mi-10t-pro-org-22.jpg', 22, NULL),
(931, 'xiaomi-mi-10t-pro-org-23.jpg', 'xiaomi-mi-10t-pro-org-23.jpg', 22, NULL),
(932, 'xiaomi-mi-10t-pro-org-24.jpg', 'xiaomi-mi-10t-pro-org-24.jpg', 22, NULL),
(933, 'xiaomi-mi-10t-pro-org-25.jpg', 'xiaomi-mi-10t-pro-org-25.jpg', 22, NULL),
(934, 'xiaomi-mi-10t-pro-org-26.jpg', 'xiaomi-mi-10t-pro-org-26.jpg', 22, NULL),
(935, 'xiaomi-mi-10t-pro-org-27.jpg', 'xiaomi-mi-10t-pro-org-27.jpg', 22, NULL),
(936, 'xiaomi-mi-10t-pro-org-28.jpg', 'xiaomi-mi-10t-pro-org-28.jpg', 22, NULL),
(937, 'xiaomi-mi-10t-pro-org-29.jpg', 'xiaomi-mi-10t-pro-org-29.jpg', 22, NULL),
(938, 'xiaomi-mi-10t-pro-org-30.jpg', 'xiaomi-mi-10t-pro-org-30.jpg', 22, NULL),
(939, 'xiaomi-mi-10t-pro-org-31.jpg', 'xiaomi-mi-10t-pro-org-31.jpg', 22, NULL),
(940, 'xiaomi-mi-10t-pro-org-32.jpg', 'xiaomi-mi-10t-pro-org-32.jpg', 22, NULL),
(941, 'xiaomi-mi-10t-pro-org-33.jpg', 'xiaomi-mi-10t-pro-org-33.jpg', 22, NULL),
(942, 'xiaomi-mi-10t-pro-org-34.jpg', 'xiaomi-mi-10t-pro-org-34.jpg', 22, NULL),
(943, 'xiaomi-mi-10t-pro-org-35.jpg', 'xiaomi-mi-10t-pro-org-35.jpg', 22, NULL),
(944, 'xiaomi-mi-10t-pro-org-36.jpg', 'xiaomi-mi-10t-pro-org-36.jpg', 22, NULL),
(945, 'xiaomi-redmi-9-org-1.jpg', 'xiaomi-redmi-9-org-1.jpg', 23, NULL),
(946, 'xiaomi-redmi-9-org-2.jpg', 'xiaomi-redmi-9-org-2.jpg', 23, NULL),
(947, 'xiaomi-redmi-9-org-3.jpg', 'xiaomi-redmi-9-org-3.jpg', 23, NULL),
(948, 'xiaomi-redmi-9-org-4.jpg', 'xiaomi-redmi-9-org-4.jpg', 23, NULL),
(949, 'xiaomi-redmi-9-org-5.jpg', 'xiaomi-redmi-9-org-5.jpg', 23, NULL),
(950, 'xiaomi-redmi-9-org-6.jpg', 'xiaomi-redmi-9-org-6.jpg', 23, NULL),
(951, 'xiaomi-redmi-9-org-7.jpg', 'xiaomi-redmi-9-org-7.jpg', 23, NULL),
(952, 'xiaomi-redmi-9-org-8.jpg', 'xiaomi-redmi-9-org-8.jpg', 23, NULL),
(953, 'xiaomi-redmi-9-org-9.jpg', 'xiaomi-redmi-9-org-9.jpg', 23, NULL),
(954, 'xiaomi-redmi-9-org-10.jpg', 'xiaomi-redmi-9-org-10.jpg', 23, NULL),
(955, 'xiaomi-redmi-9-org-11.jpg', 'xiaomi-redmi-9-org-11.jpg', 23, NULL),
(956, 'xiaomi-redmi-9-org-12.jpg', 'xiaomi-redmi-9-org-12.jpg', 23, NULL),
(957, 'xiaomi-redmi-9-org-13.jpg', 'xiaomi-redmi-9-org-13.jpg', 23, NULL),
(958, 'xiaomi-redmi-9-org-14.jpg', 'xiaomi-redmi-9-org-14.jpg', 23, NULL),
(959, 'xiaomi-redmi-9-org-15.jpg', 'xiaomi-redmi-9-org-15.jpg', 23, NULL),
(960, 'xiaomi-redmi-9-org-16.jpg', 'xiaomi-redmi-9-org-16.jpg', 23, NULL),
(961, 'xiaomi-redmi-9-org-17.jpg', 'xiaomi-redmi-9-org-17.jpg', 23, NULL),
(962, 'xiaomi-redmi-9-org-18.jpg', 'xiaomi-redmi-9-org-18.jpg', 23, NULL),
(963, 'xiaomi-redmi-9-org-19.jpg', 'xiaomi-redmi-9-org-19.jpg', 23, NULL),
(964, 'xiaomi-redmi-9-org-20.jpg', 'xiaomi-redmi-9-org-20.jpg', 23, NULL),
(965, 'xiaomi-redmi-9-org-21.jpg', 'xiaomi-redmi-9-org-21.jpg', 23, NULL),
(966, 'xiaomi-redmi-9-org-22.jpg', 'xiaomi-redmi-9-org-22.jpg', 23, NULL),
(967, 'xiaomi-redmi-9-org-23.jpg', 'xiaomi-redmi-9-org-23.jpg', 23, NULL),
(968, 'xiaomi-redmi-9-org-24.jpg', 'xiaomi-redmi-9-org-24.jpg', 23, NULL),
(969, 'xiaomi-redmi-9-org-25.jpg', 'xiaomi-redmi-9-org-25.jpg', 23, NULL),
(970, 'xiaomi-redmi-9-org-26.jpg', 'xiaomi-redmi-9-org-26.jpg', 23, NULL),
(971, 'xiaomi-redmi-9-org-27.jpg', 'xiaomi-redmi-9-org-27.jpg', 23, NULL),
(972, 'xiaomi-redmi-9-org-28.jpg', 'xiaomi-redmi-9-org-28.jpg', 23, NULL),
(973, 'xiaomi-redmi-9-org-29.jpg', 'xiaomi-redmi-9-org-29.jpg', 23, NULL),
(974, 'xiaomi-redmi-9-org-30.jpg', 'xiaomi-redmi-9-org-30.jpg', 23, NULL),
(975, 'xiaomi-redmi-9-org-31.jpg', 'xiaomi-redmi-9-org-31.jpg', 23, NULL),
(976, 'xiaomi-redmi-9-org-32.jpg', 'xiaomi-redmi-9-org-32.jpg', 23, NULL),
(977, 'xiaomi-redmi-9-org-33.jpg', 'xiaomi-redmi-9-org-33.jpg', 23, NULL),
(978, 'xiaomi-redmi-9-org-34.jpg', 'xiaomi-redmi-9-org-34.jpg', 23, NULL),
(979, 'xiaomi-redmi-9-org-35.jpg', 'xiaomi-redmi-9-org-35.jpg', 23, NULL),
(980, 'xiaomi-redmi-9-org-36.jpg', 'xiaomi-redmi-9-org-36.jpg', 23, NULL),
(981, '637276369083185930_xiaomi-redmi-9-xam-4.png', '637276369083185930_xiaomi-redmi-9-xam-4.png', 23, 47),
(982, '637276369083335929_xiaomi-redmi-9-xam-2.png', '637276369083335929_xiaomi-redmi-9-xam-2.png', 23, 47),
(983, '637276369083345923_xiaomi-redmi-9-xam-3.png', '637276369083345923_xiaomi-redmi-9-xam-3.png', 23, 47),
(984, '637276369083465913_xiaomi-redmi-9-xam-1 (1).png', '637276369083465913_xiaomi-redmi-9-xam-1 (1).png', 23, 47),
(985, '637276365975097479_xiaomi-redmi-9-xanh-4.png', '637276365975097479_xiaomi-redmi-9-xanh-4.png', 23, 48),
(986, '637276365975717457_xiaomi-redmi-9-xanh-2.png', '637276365975717457_xiaomi-redmi-9-xanh-2.png', 23, 48),
(987, '637276365975727464_xiaomi-redmi-9-xanh-3.png', '637276365975727464_xiaomi-redmi-9-xanh-3.png', 23, 48),
(988, '637276365976047454_xiaomi-redmi-9-xanh-1.png', '637276365976047454_xiaomi-redmi-9-xanh-1.png', 23, 48),
(989, '637276367462199461_xiaomi-redmi-9-tim-2.png', '637276367462199461_xiaomi-redmi-9-tim-2.png', 23, 49),
(990, '637276367462479467_xiaomi-redmi-9-tim-3.png', '637276367462479467_xiaomi-redmi-9-tim-3.png', 23, 49),
(991, '637276367462489455_xiaomi-redmi-9-tim-4.png', '637276367462489455_xiaomi-redmi-9-tim-4.png', 23, 49),
(992, '637276367462559454_xiaomi-redmi-9-tim-1.png', '637276367462559454_xiaomi-redmi-9-tim-1.png', 23, 49),
(993, 'xiaomi-redmi-9c-3gb-org-1.jpg', 'xiaomi-redmi-9c-3gb-org-1.jpg', 24, NULL),
(994, 'xiaomi-redmi-9c-3gb-org-2.jpg', 'xiaomi-redmi-9c-3gb-org-2.jpg', 24, NULL),
(995, 'xiaomi-redmi-9c-3gb-org-3.jpg', 'xiaomi-redmi-9c-3gb-org-3.jpg', 24, NULL),
(996, 'xiaomi-redmi-9c-3gb-org-4.jpg', 'xiaomi-redmi-9c-3gb-org-4.jpg', 24, NULL),
(997, 'xiaomi-redmi-9c-3gb-org-5.jpg', 'xiaomi-redmi-9c-3gb-org-5.jpg', 24, NULL),
(998, 'xiaomi-redmi-9c-3gb-org-6.jpg', 'xiaomi-redmi-9c-3gb-org-6.jpg', 24, NULL),
(999, 'xiaomi-redmi-9c-3gb-org-7.jpg', 'xiaomi-redmi-9c-3gb-org-7.jpg', 24, NULL),
(1000, 'xiaomi-redmi-9c-3gb-org-8.jpg', 'xiaomi-redmi-9c-3gb-org-8.jpg', 24, NULL),
(1001, 'xiaomi-redmi-9c-3gb-org-9.jpg', 'xiaomi-redmi-9c-3gb-org-9.jpg', 24, NULL),
(1002, 'xiaomi-redmi-9c-3gb-org-10.jpg', 'xiaomi-redmi-9c-3gb-org-10.jpg', 24, NULL),
(1003, 'xiaomi-redmi-9c-3gb-org-11.jpg', 'xiaomi-redmi-9c-3gb-org-11.jpg', 24, NULL),
(1004, 'xiaomi-redmi-9c-3gb-org-12.jpg', 'xiaomi-redmi-9c-3gb-org-12.jpg', 24, NULL),
(1005, 'xiaomi-redmi-9c-3gb-org-13.jpg', 'xiaomi-redmi-9c-3gb-org-13.jpg', 24, NULL),
(1006, 'xiaomi-redmi-9c-3gb-org-14.jpg', 'xiaomi-redmi-9c-3gb-org-14.jpg', 24, NULL),
(1007, 'xiaomi-redmi-9c-3gb-org-15.jpg', 'xiaomi-redmi-9c-3gb-org-15.jpg', 24, NULL),
(1008, 'xiaomi-redmi-9c-3gb-org-16.jpg', 'xiaomi-redmi-9c-3gb-org-16.jpg', 24, NULL),
(1009, 'xiaomi-redmi-9c-3gb-org-17.jpg', 'xiaomi-redmi-9c-3gb-org-17.jpg', 24, NULL),
(1010, 'xiaomi-redmi-9c-3gb-org-18.jpg', 'xiaomi-redmi-9c-3gb-org-18.jpg', 24, NULL),
(1011, 'xiaomi-redmi-9c-3gb-org-19.jpg', 'xiaomi-redmi-9c-3gb-org-19.jpg', 24, NULL),
(1012, 'xiaomi-redmi-9c-3gb-org-20.jpg', 'xiaomi-redmi-9c-3gb-org-20.jpg', 24, NULL),
(1013, 'xiaomi-redmi-9c-3gb-org-21.jpg', 'xiaomi-redmi-9c-3gb-org-21.jpg', 24, NULL),
(1014, 'xiaomi-redmi-9c-3gb-org-22.jpg', 'xiaomi-redmi-9c-3gb-org-22.jpg', 24, NULL),
(1015, 'xiaomi-redmi-9c-3gb-org-23.jpg', 'xiaomi-redmi-9c-3gb-org-23.jpg', 24, NULL),
(1016, 'xiaomi-redmi-9c-3gb-org-24.jpg', 'xiaomi-redmi-9c-3gb-org-24.jpg', 24, NULL),
(1017, 'xiaomi-redmi-9c-3gb-org-25.jpg', 'xiaomi-redmi-9c-3gb-org-25.jpg', 24, NULL),
(1018, 'xiaomi-redmi-9c-3gb-org-26.jpg', 'xiaomi-redmi-9c-3gb-org-26.jpg', 24, NULL),
(1019, 'xiaomi-redmi-9c-3gb-org-27.jpg', 'xiaomi-redmi-9c-3gb-org-27.jpg', 24, NULL),
(1020, 'xiaomi-redmi-9c-3gb-org-28.jpg', 'xiaomi-redmi-9c-3gb-org-28.jpg', 24, NULL),
(1021, 'xiaomi-redmi-9c-3gb-org-29.jpg', 'xiaomi-redmi-9c-3gb-org-29.jpg', 24, NULL),
(1022, 'xiaomi-redmi-9c-3gb-org-30.jpg', 'xiaomi-redmi-9c-3gb-org-30.jpg', 24, NULL),
(1023, 'xiaomi-redmi-9c-3gb-org-31.jpg', 'xiaomi-redmi-9c-3gb-org-31.jpg', 24, NULL),
(1024, 'xiaomi-redmi-9c-3gb-org-32.jpg', 'xiaomi-redmi-9c-3gb-org-32.jpg', 24, NULL),
(1025, 'xiaomi-redmi-9c-3gb-org-33.jpg', 'xiaomi-redmi-9c-3gb-org-33.jpg', 24, NULL),
(1026, 'xiaomi-redmi-9c-3gb-org-34.jpg', 'xiaomi-redmi-9c-3gb-org-34.jpg', 24, NULL),
(1027, 'xiaomi-redmi-9c-3gb-org-35.jpg', 'xiaomi-redmi-9c-3gb-org-35.jpg', 24, NULL),
(1028, 'xiaomi-redmi-9c-3gb-org-36.jpg', 'xiaomi-redmi-9c-3gb-org-36.jpg', 24, NULL),
(1029, '637308302847022576_xiaomi-redmi-9c-xanh-5.png', '637308302847022576_xiaomi-redmi-9c-xanh-5.png', 24, 50),
(1030, '637308302847382696_xiaomi-redmi-9c-xanh-4.png', '637308302847382696_xiaomi-redmi-9c-xanh-4.png', 24, 50),
(1031, '637308302847423013_xiaomi-redmi-9c-xanh-2.png', '637308302847423013_xiaomi-redmi-9c-xanh-2.png', 24, 50),
(1032, '637308302848062480_xiaomi-redmi-9c-xanh-1.png', '637308302848062480_xiaomi-redmi-9c-xanh-1.png', 24, 50),
(1033, '637308302848172582_xiaomi-redmi-9c-xanh-3.png', '637308302848172582_xiaomi-redmi-9c-xanh-3.png', 24, 50),
(1034, '637308306477446806_xiaomi-redmi-9c-den-5.png', '637308306477446806_xiaomi-redmi-9c-den-5.png', 24, 51),
(1035, '637308306477896800_xiaomi-redmi-9c-den-2.png', '637308306477896800_xiaomi-redmi-9c-den-2.png', 24, 51),
(1036, '637308306477936754_xiaomi-redmi-9c-den-4.png', '637308306477936754_xiaomi-redmi-9c-den-4.png', 24, 51),
(1037, '637308306478026767_xiaomi-redmi-9c-den-3.png', '637308306478026767_xiaomi-redmi-9c-den-3.png', 24, 51),
(1038, '637308306478616748_xiaomi-redmi-9c-den-1.png', '637308306478616748_xiaomi-redmi-9c-den-1.png', 24, 51),
(1039, '637147839315374740_ss-a71-den-5.png', '637147839315374740_ss-a71-den-5.png', 25, 52),
(1040, '637147839316434733_ss-a71-den-3.png', '637147839316434733_ss-a71-den-3.png', 25, 52),
(1041, '637147839316434733_ss-a71-den-4.png', '637147839316434733_ss-a71-den-4.png', 25, 52),
(1042, '637293809325283586_ss-a71-den-1-1.png', '637293809325283586_ss-a71-den-1-1.png', 25, 52),
(1043, '637293809325763596_ss-a71-den-2-1 (1).png', '637293809325763596_ss-a71-den-2-1 (1).png', 25, 52),
(1044, '637147830321910586_ss-a71-xanh-5.png', '637147830321910586_ss-a71-xanh-5.png', 25, 53),
(1045, '637147830322922152_ss-a71-xanh-3.png', '637147830322922152_ss-a71-xanh-3.png', 25, 53),
(1046, '637147830323234931_ss-a71-xanh-4.png', '637147830323234931_ss-a71-xanh-4.png', 25, 53),
(1047, '637293809324983594_ss-a71-xanh1-1.png', '637293809324983594_ss-a71-xanh1-1.png', 25, 53),
(1048, '637293809325493559_ss-a71-xanh2-1.png', '637293809325493559_ss-a71-xanh2-1.png', 25, 53),
(1049, 'samsung-galaxy-a71-org-1.jpg', 'samsung-galaxy-a71-org-1.jpg', 25, NULL),
(1050, 'samsung-galaxy-a71-org-2.jpg', 'samsung-galaxy-a71-org-2.jpg', 25, NULL),
(1051, 'samsung-galaxy-a71-org-3.jpg', 'samsung-galaxy-a71-org-3.jpg', 25, NULL),
(1052, 'samsung-galaxy-a71-org-4.jpg', 'samsung-galaxy-a71-org-4.jpg', 25, NULL),
(1053, 'samsung-galaxy-a71-org-5.jpg', 'samsung-galaxy-a71-org-5.jpg', 25, NULL),
(1054, 'samsung-galaxy-a71-org-6.jpg', 'samsung-galaxy-a71-org-6.jpg', 25, NULL),
(1055, 'samsung-galaxy-a71-org-7.jpg', 'samsung-galaxy-a71-org-7.jpg', 25, NULL),
(1056, 'samsung-galaxy-a71-org-8.jpg', 'samsung-galaxy-a71-org-8.jpg', 25, NULL),
(1057, 'samsung-galaxy-a71-org-9.jpg', 'samsung-galaxy-a71-org-9.jpg', 25, NULL),
(1058, 'samsung-galaxy-a71-org-10.jpg', 'samsung-galaxy-a71-org-10.jpg', 25, NULL),
(1059, 'samsung-galaxy-a71-org-11.jpg', 'samsung-galaxy-a71-org-11.jpg', 25, NULL),
(1060, 'samsung-galaxy-a71-org-12.jpg', 'samsung-galaxy-a71-org-12.jpg', 25, NULL),
(1061, 'samsung-galaxy-a71-org-13.jpg', 'samsung-galaxy-a71-org-13.jpg', 25, NULL),
(1062, 'samsung-galaxy-a71-org-14.jpg', 'samsung-galaxy-a71-org-14.jpg', 25, NULL),
(1063, 'samsung-galaxy-a71-org-15.jpg', 'samsung-galaxy-a71-org-15.jpg', 25, NULL),
(1064, 'samsung-galaxy-a71-org-16.jpg', 'samsung-galaxy-a71-org-16.jpg', 25, NULL),
(1065, 'samsung-galaxy-a71-org-17.jpg', 'samsung-galaxy-a71-org-17.jpg', 25, NULL),
(1066, 'samsung-galaxy-a71-org-18.jpg', 'samsung-galaxy-a71-org-18.jpg', 25, NULL),
(1067, 'samsung-galaxy-a71-org-19.jpg', 'samsung-galaxy-a71-org-19.jpg', 25, NULL),
(1068, 'samsung-galaxy-a71-org-20.jpg', 'samsung-galaxy-a71-org-20.jpg', 25, NULL),
(1069, 'samsung-galaxy-a71-org-21.jpg', 'samsung-galaxy-a71-org-21.jpg', 25, NULL),
(1070, 'samsung-galaxy-a71-org-22.jpg', 'samsung-galaxy-a71-org-22.jpg', 25, NULL),
(1071, 'samsung-galaxy-a71-org-23.jpg', 'samsung-galaxy-a71-org-23.jpg', 25, NULL),
(1072, 'samsung-galaxy-a71-org-24.jpg', 'samsung-galaxy-a71-org-24.jpg', 25, NULL),
(1073, 'samsung-galaxy-a71-org-25.jpg', 'samsung-galaxy-a71-org-25.jpg', 25, NULL),
(1074, 'samsung-galaxy-a71-org-26.jpg', 'samsung-galaxy-a71-org-26.jpg', 25, NULL),
(1075, 'samsung-galaxy-a71-org-27.jpg', 'samsung-galaxy-a71-org-27.jpg', 25, NULL),
(1076, 'samsung-galaxy-a71-org-28.jpg', 'samsung-galaxy-a71-org-28.jpg', 25, NULL),
(1077, 'samsung-galaxy-a71-org-29.jpg', 'samsung-galaxy-a71-org-29.jpg', 25, NULL),
(1078, 'samsung-galaxy-a71-org-30.jpg', 'samsung-galaxy-a71-org-30.jpg', 25, NULL),
(1079, 'samsung-galaxy-a71-org-31.jpg', 'samsung-galaxy-a71-org-31.jpg', 25, NULL),
(1080, 'samsung-galaxy-a71-org-32.jpg', 'samsung-galaxy-a71-org-32.jpg', 25, NULL),
(1081, 'samsung-galaxy-a71-org-33.jpg', 'samsung-galaxy-a71-org-33.jpg', 25, NULL),
(1082, 'samsung-galaxy-a71-org-34.jpg', 'samsung-galaxy-a71-org-34.jpg', 25, NULL),
(1083, 'samsung-galaxy-a71-org-35.jpg', 'samsung-galaxy-a71-org-35.jpg', 25, NULL),
(1084, 'samsung-galaxy-a71-org-36.jpg', 'samsung-galaxy-a71-org-36.jpg', 25, NULL),
(1085, 'samsung-galaxy-m51-360-org-1.jpg', 'samsung-galaxy-m51-360-org-1.jpg', 26, NULL),
(1086, 'samsung-galaxy-m51-360-org-2.jpg', 'samsung-galaxy-m51-360-org-2.jpg', 26, NULL),
(1087, 'samsung-galaxy-m51-360-org-3.jpg', 'samsung-galaxy-m51-360-org-3.jpg', 26, NULL),
(1088, 'samsung-galaxy-m51-360-org-4.jpg', 'samsung-galaxy-m51-360-org-4.jpg', 26, NULL),
(1089, 'samsung-galaxy-m51-360-org-5.jpg', 'samsung-galaxy-m51-360-org-5.jpg', 26, NULL),
(1090, 'samsung-galaxy-m51-360-org-6.jpg', 'samsung-galaxy-m51-360-org-6.jpg', 26, NULL),
(1091, 'samsung-galaxy-m51-360-org-7.jpg', 'samsung-galaxy-m51-360-org-7.jpg', 26, NULL),
(1092, 'samsung-galaxy-m51-360-org-8.jpg', 'samsung-galaxy-m51-360-org-8.jpg', 26, NULL),
(1093, 'samsung-galaxy-m51-360-org-9.jpg', 'samsung-galaxy-m51-360-org-9.jpg', 26, NULL),
(1094, 'samsung-galaxy-m51-360-org-10.jpg', 'samsung-galaxy-m51-360-org-10.jpg', 26, NULL),
(1095, 'samsung-galaxy-m51-360-org-11.jpg', 'samsung-galaxy-m51-360-org-11.jpg', 26, NULL),
(1096, 'samsung-galaxy-m51-360-org-12.jpg', 'samsung-galaxy-m51-360-org-12.jpg', 26, NULL),
(1097, 'samsung-galaxy-m51-360-org-13.jpg', 'samsung-galaxy-m51-360-org-13.jpg', 26, NULL),
(1098, 'samsung-galaxy-m51-360-org-14.jpg', 'samsung-galaxy-m51-360-org-14.jpg', 26, NULL),
(1099, 'samsung-galaxy-m51-360-org-15.jpg', 'samsung-galaxy-m51-360-org-15.jpg', 26, NULL),
(1100, 'samsung-galaxy-m51-360-org-16.jpg', 'samsung-galaxy-m51-360-org-16.jpg', 26, NULL),
(1101, 'samsung-galaxy-m51-360-org-17.jpg', 'samsung-galaxy-m51-360-org-17.jpg', 26, NULL),
(1102, 'samsung-galaxy-m51-360-org-18.jpg', 'samsung-galaxy-m51-360-org-18.jpg', 26, NULL),
(1103, 'samsung-galaxy-m51-360-org-19.jpg', 'samsung-galaxy-m51-360-org-19.jpg', 26, NULL),
(1104, 'samsung-galaxy-m51-360-org-20.jpg', 'samsung-galaxy-m51-360-org-20.jpg', 26, NULL),
(1105, 'samsung-galaxy-m51-360-org-21.jpg', 'samsung-galaxy-m51-360-org-21.jpg', 26, NULL),
(1106, 'samsung-galaxy-m51-360-org-22.jpg', 'samsung-galaxy-m51-360-org-22.jpg', 26, NULL),
(1107, 'samsung-galaxy-m51-360-org-23.jpg', 'samsung-galaxy-m51-360-org-23.jpg', 26, NULL),
(1108, 'samsung-galaxy-m51-360-org-24.jpg', 'samsung-galaxy-m51-360-org-24.jpg', 26, NULL),
(1109, 'samsung-galaxy-m51-360-org-25.jpg', 'samsung-galaxy-m51-360-org-25.jpg', 26, NULL),
(1110, 'samsung-galaxy-m51-360-org-26.jpg', 'samsung-galaxy-m51-360-org-26.jpg', 26, NULL),
(1111, 'samsung-galaxy-m51-360-org-27.jpg', 'samsung-galaxy-m51-360-org-27.jpg', 26, NULL),
(1112, 'samsung-galaxy-m51-360-org-28.jpg', 'samsung-galaxy-m51-360-org-28.jpg', 26, NULL),
(1113, 'samsung-galaxy-m51-360-org-29.jpg', 'samsung-galaxy-m51-360-org-29.jpg', 26, NULL),
(1114, 'samsung-galaxy-m51-360-org-30.jpg', 'samsung-galaxy-m51-360-org-30.jpg', 26, NULL),
(1115, 'samsung-galaxy-m51-360-org-31.jpg', 'samsung-galaxy-m51-360-org-31.jpg', 26, NULL),
(1116, 'samsung-galaxy-m51-360-org-32.jpg', 'samsung-galaxy-m51-360-org-32.jpg', 26, NULL),
(1117, 'samsung-galaxy-m51-360-org-33.jpg', 'samsung-galaxy-m51-360-org-33.jpg', 26, NULL),
(1118, 'samsung-galaxy-m51-360-org-34.jpg', 'samsung-galaxy-m51-360-org-34.jpg', 26, NULL),
(1119, 'samsung-galaxy-m51-360-org-35.jpg', 'samsung-galaxy-m51-360-org-35.jpg', 26, NULL),
(1120, 'samsung-galaxy-m51-360-org-36.jpg', 'samsung-galaxy-m51-360-org-36.jpg', 26, NULL),
(1121, 'images (1).jpg', 'images (1).jpg', 26, 54),
(1122, 'images.jpg', 'images.jpg', 26, 54),
(1123, 'tải xuống.jpg', 'tải xuống.jpg', 26, 54),
(1124, 'images (2).jpg', 'images (2).jpg', 26, 55),
(1125, 'images.jpg', 'images.jpg', 26, 55),
(1126, 'tải xuống.jpg', 'tải xuống.jpg', 26, 55),
(1127, 'oppo-a93-org-1.jpg', 'oppo-a93-org-1.jpg', 27, NULL),
(1128, 'oppo-a93-org-2.jpg', 'oppo-a93-org-2.jpg', 27, NULL),
(1129, 'oppo-a93-org-3.jpg', 'oppo-a93-org-3.jpg', 27, NULL),
(1130, 'oppo-a93-org-4.jpg', 'oppo-a93-org-4.jpg', 27, NULL),
(1131, 'oppo-a93-org-5.jpg', 'oppo-a93-org-5.jpg', 27, NULL),
(1132, 'oppo-a93-org-6.jpg', 'oppo-a93-org-6.jpg', 27, NULL),
(1133, 'oppo-a93-org-7.jpg', 'oppo-a93-org-7.jpg', 27, NULL),
(1134, 'oppo-a93-org-8.jpg', 'oppo-a93-org-8.jpg', 27, NULL),
(1135, 'oppo-a93-org-9.jpg', 'oppo-a93-org-9.jpg', 27, NULL),
(1136, 'oppo-a93-org-10.jpg', 'oppo-a93-org-10.jpg', 27, NULL),
(1137, 'oppo-a93-org-11.jpg', 'oppo-a93-org-11.jpg', 27, NULL),
(1138, 'oppo-a93-org-12.jpg', 'oppo-a93-org-12.jpg', 27, NULL),
(1139, 'oppo-a93-org-13.jpg', 'oppo-a93-org-13.jpg', 27, NULL),
(1140, 'oppo-a93-org-14.jpg', 'oppo-a93-org-14.jpg', 27, NULL),
(1141, 'oppo-a93-org-15.jpg', 'oppo-a93-org-15.jpg', 27, NULL),
(1142, 'oppo-a93-org-16.jpg', 'oppo-a93-org-16.jpg', 27, NULL),
(1143, 'oppo-a93-org-17.jpg', 'oppo-a93-org-17.jpg', 27, NULL),
(1144, 'oppo-a93-org-18.jpg', 'oppo-a93-org-18.jpg', 27, NULL),
(1145, 'oppo-a93-org-19.jpg', 'oppo-a93-org-19.jpg', 27, NULL),
(1146, 'oppo-a93-org-20.jpg', 'oppo-a93-org-20.jpg', 27, NULL),
(1147, 'oppo-a93-org-21.jpg', 'oppo-a93-org-21.jpg', 27, NULL),
(1148, 'oppo-a93-org-22.jpg', 'oppo-a93-org-22.jpg', 27, NULL),
(1149, 'oppo-a93-org-23.jpg', 'oppo-a93-org-23.jpg', 27, NULL),
(1150, 'oppo-a93-org-24.jpg', 'oppo-a93-org-24.jpg', 27, NULL),
(1151, 'oppo-a93-org-25.jpg', 'oppo-a93-org-25.jpg', 27, NULL),
(1152, 'oppo-a93-org-26.jpg', 'oppo-a93-org-26.jpg', 27, NULL),
(1153, 'oppo-a93-org-27.jpg', 'oppo-a93-org-27.jpg', 27, NULL),
(1154, 'oppo-a93-org-28.jpg', 'oppo-a93-org-28.jpg', 27, NULL),
(1155, 'oppo-a93-org-29.jpg', 'oppo-a93-org-29.jpg', 27, NULL),
(1156, 'oppo-a93-org-30.jpg', 'oppo-a93-org-30.jpg', 27, NULL),
(1157, 'oppo-a93-org-31.jpg', 'oppo-a93-org-31.jpg', 27, NULL),
(1158, 'oppo-a93-org-32.jpg', 'oppo-a93-org-32.jpg', 27, NULL),
(1159, 'oppo-a93-org-33.jpg', 'oppo-a93-org-33.jpg', 27, NULL),
(1160, 'oppo-a93-org-34.jpg', 'oppo-a93-org-34.jpg', 27, NULL),
(1161, 'oppo-a93-org-35.jpg', 'oppo-a93-org-35.jpg', 27, NULL),
(1162, 'oppo-a93-org-36.jpg', 'oppo-a93-org-36.jpg', 27, NULL),
(1163, '637365326866540463_oppo-A93-den-5.png', '637365326866540463_oppo-A93-den-5.png', 27, 56),
(1164, '637365326868820998_oppo-A93-den-4.png', '637365326868820998_oppo-A93-den-4.png', 27, 56),
(1165, '637365326869012512_oppo-A93-den-2.png', '637365326869012512_oppo-A93-den-2.png', 27, 56),
(1166, '637365326869325321_oppo-A93-den-1 (1).png', '637365326869325321_oppo-A93-den-1 (1).png', 27, 56),
(1167, '637365326872973483_oppo-A93-den-3.png', '637365326872973483_oppo-A93-den-3.png', 27, 56),
(1168, '637365325836295087_oppo-A93-trang-5.png', '637365325836295087_oppo-A93-trang-5.png', 27, 57),
(1169, '637365325836920166_oppo-A93-trang-2.png', '637365325836920166_oppo-A93-trang-2.png', 27, 57),
(1170, '637365325837076352_oppo-A93-trang-4.png', '637365325837076352_oppo-A93-trang-4.png', 27, 57),
(1171, '637365325837276550_oppo-A93-trang-3.png', '637365325837276550_oppo-A93-trang-3.png', 27, 57),
(1172, '637365325837796763_oppo-A93-trang-1.png', '637365325837796763_oppo-A93-trang-1.png', 27, 57),
(1173, 'samsung-galaxy-a51-org-1.jpg', 'samsung-galaxy-a51-org-1.jpg', 28, NULL),
(1174, 'samsung-galaxy-a51-org-2.jpg', 'samsung-galaxy-a51-org-2.jpg', 28, NULL),
(1175, 'samsung-galaxy-a51-org-3.jpg', 'samsung-galaxy-a51-org-3.jpg', 28, NULL),
(1176, 'samsung-galaxy-a51-org-4.jpg', 'samsung-galaxy-a51-org-4.jpg', 28, NULL),
(1177, 'samsung-galaxy-a51-org-5.jpg', 'samsung-galaxy-a51-org-5.jpg', 28, NULL),
(1178, 'samsung-galaxy-a51-org-6.jpg', 'samsung-galaxy-a51-org-6.jpg', 28, NULL),
(1179, 'samsung-galaxy-a51-org-7.jpg', 'samsung-galaxy-a51-org-7.jpg', 28, NULL),
(1180, 'samsung-galaxy-a51-org-8.jpg', 'samsung-galaxy-a51-org-8.jpg', 28, NULL),
(1181, 'samsung-galaxy-a51-org-9.jpg', 'samsung-galaxy-a51-org-9.jpg', 28, NULL),
(1182, 'samsung-galaxy-a51-org-10.jpg', 'samsung-galaxy-a51-org-10.jpg', 28, NULL),
(1183, 'samsung-galaxy-a51-org-11.jpg', 'samsung-galaxy-a51-org-11.jpg', 28, NULL),
(1184, 'samsung-galaxy-a51-org-12.jpg', 'samsung-galaxy-a51-org-12.jpg', 28, NULL),
(1185, 'samsung-galaxy-a51-org-13.jpg', 'samsung-galaxy-a51-org-13.jpg', 28, NULL),
(1186, 'samsung-galaxy-a51-org-14.jpg', 'samsung-galaxy-a51-org-14.jpg', 28, NULL),
(1187, 'samsung-galaxy-a51-org-15.jpg', 'samsung-galaxy-a51-org-15.jpg', 28, NULL),
(1188, 'samsung-galaxy-a51-org-16.jpg', 'samsung-galaxy-a51-org-16.jpg', 28, NULL),
(1189, 'samsung-galaxy-a51-org-17.jpg', 'samsung-galaxy-a51-org-17.jpg', 28, NULL),
(1190, 'samsung-galaxy-a51-org-18.jpg', 'samsung-galaxy-a51-org-18.jpg', 28, NULL),
(1191, 'samsung-galaxy-a51-org-19.jpg', 'samsung-galaxy-a51-org-19.jpg', 28, NULL),
(1192, 'samsung-galaxy-a51-org-20.jpg', 'samsung-galaxy-a51-org-20.jpg', 28, NULL),
(1193, 'samsung-galaxy-a51-org-21.jpg', 'samsung-galaxy-a51-org-21.jpg', 28, NULL),
(1194, 'samsung-galaxy-a51-org-22.jpg', 'samsung-galaxy-a51-org-22.jpg', 28, NULL),
(1195, 'samsung-galaxy-a51-org-23.jpg', 'samsung-galaxy-a51-org-23.jpg', 28, NULL),
(1196, 'samsung-galaxy-a51-org-24.jpg', 'samsung-galaxy-a51-org-24.jpg', 28, NULL),
(1197, 'samsung-galaxy-a51-org-25.jpg', 'samsung-galaxy-a51-org-25.jpg', 28, NULL),
(1198, 'samsung-galaxy-a51-org-26.jpg', 'samsung-galaxy-a51-org-26.jpg', 28, NULL),
(1199, 'samsung-galaxy-a51-org-27.jpg', 'samsung-galaxy-a51-org-27.jpg', 28, NULL),
(1200, 'samsung-galaxy-a51-org-28.jpg', 'samsung-galaxy-a51-org-28.jpg', 28, NULL),
(1201, 'samsung-galaxy-a51-org-29.jpg', 'samsung-galaxy-a51-org-29.jpg', 28, NULL),
(1202, 'samsung-galaxy-a51-org-30.jpg', 'samsung-galaxy-a51-org-30.jpg', 28, NULL),
(1203, 'samsung-galaxy-a51-org-31.jpg', 'samsung-galaxy-a51-org-31.jpg', 28, NULL),
(1204, 'samsung-galaxy-a51-org-32.jpg', 'samsung-galaxy-a51-org-32.jpg', 28, NULL),
(1205, 'samsung-galaxy-a51-org-33.jpg', 'samsung-galaxy-a51-org-33.jpg', 28, NULL),
(1206, 'samsung-galaxy-a51-org-34.jpg', 'samsung-galaxy-a51-org-34.jpg', 28, NULL),
(1207, 'samsung-galaxy-a51-org-35.jpg', 'samsung-galaxy-a51-org-35.jpg', 28, NULL),
(1208, 'samsung-galaxy-a51-org-36.jpg', 'samsung-galaxy-a51-org-36.jpg', 28, NULL),
(1209, '637109798148497279_ss-a51-den-5.png', '637109798148497279_ss-a51-den-5.png', 28, 58),
(1210, '637109798149387229_ss-a51-den-3.png', '637109798149387229_ss-a51-den-3.png', 28, 58),
(1211, '637109798149487427_ss-a51-den-4.png', '637109798149487427_ss-a51-den-4.png', 28, 58),
(1212, '637196211269575512_ss-a51-den-1 (1).png', '637196211269575512_ss-a51-den-1 (1).png', 28, 58),
(1213, '637196211270085479_ss-a51-den-2.png', '637196211270085479_ss-a51-den-2.png', 28, 58),
(1214, '637109816698921058_ss-a51-trang-5.png', '637109816698921058_ss-a51-trang-5.png', 28, 59),
(1215, '637109816699540979_ss-a51-trang-3.png', '637109816699540979_ss-a51-trang-3.png', 28, 59),
(1216, '637109816699890999_ss-a51-trang-4.png', '637109816699890999_ss-a51-trang-4.png', 28, 59),
(1217, '637196210922750337_ss-a51-trang-2.png', '637196210922750337_ss-a51-trang-2.png', 28, 59),
(1218, '637196210922780150_ss-a51-trang-1.png', '637196210922780150_ss-a51-trang-1.png', 28, 59),
(1219, '637299941073672166_vivo-y1s-den-4.png', '637299941073672166_vivo-y1s-den-4.png', 29, 60),
(1220, '637299941075112130_vivo-y1s-den-2.png', '637299941075112130_vivo-y1s-den-2.png', 29, 60),
(1221, '637304087396922425_vivo-y1s-den-2.png', '637304087396922425_vivo-y1s-den-2.png', 29, 60),
(1222, '637304087398642440_vivo-y1s-den-1 (1).png', '637304087398642440_vivo-y1s-den-1 (1).png', 29, 60),
(1223, '637304077684104481_vivo-y1s-xanh-4.png', '637304077684104481_vivo-y1s-xanh-4.png', 29, 61),
(1224, '637304077684744461_vivo-y1s-xanh-3.png', '637304077684744461_vivo-y1s-xanh-3.png', 29, 61),
(1225, '637304086935557572_vivo-y1s-xanh-1.png', '637304086935557572_vivo-y1s-xanh-1.png', 29, 61),
(1226, '637304086940317801_vivo-y1s-xanh-2.png', '637304086940317801_vivo-y1s-xanh-2.png', 29, 61),
(1227, 'vivo-y1s-org-1.jpg', 'vivo-y1s-org-1.jpg', 29, NULL),
(1228, 'vivo-y1s-org-2.jpg', 'vivo-y1s-org-2.jpg', 29, NULL),
(1229, 'vivo-y1s-org-3.jpg', 'vivo-y1s-org-3.jpg', 29, NULL),
(1230, 'vivo-y1s-org-4.jpg', 'vivo-y1s-org-4.jpg', 29, NULL),
(1231, 'vivo-y1s-org-5.jpg', 'vivo-y1s-org-5.jpg', 29, NULL),
(1232, 'vivo-y1s-org-6.jpg', 'vivo-y1s-org-6.jpg', 29, NULL),
(1233, 'vivo-y1s-org-7.jpg', 'vivo-y1s-org-7.jpg', 29, NULL),
(1234, 'vivo-y1s-org-8.jpg', 'vivo-y1s-org-8.jpg', 29, NULL),
(1235, 'vivo-y1s-org-9.jpg', 'vivo-y1s-org-9.jpg', 29, NULL),
(1236, 'vivo-y1s-org-10.jpg', 'vivo-y1s-org-10.jpg', 29, NULL),
(1237, 'vivo-y1s-org-11.jpg', 'vivo-y1s-org-11.jpg', 29, NULL),
(1238, 'vivo-y1s-org-12.jpg', 'vivo-y1s-org-12.jpg', 29, NULL),
(1239, 'vivo-y1s-org-13.jpg', 'vivo-y1s-org-13.jpg', 29, NULL),
(1240, 'vivo-y1s-org-14.jpg', 'vivo-y1s-org-14.jpg', 29, NULL),
(1241, 'vivo-y1s-org-15.jpg', 'vivo-y1s-org-15.jpg', 29, NULL),
(1242, 'vivo-y1s-org-16.jpg', 'vivo-y1s-org-16.jpg', 29, NULL),
(1243, 'vivo-y1s-org-17.jpg', 'vivo-y1s-org-17.jpg', 29, NULL),
(1244, 'vivo-y1s-org-18.jpg', 'vivo-y1s-org-18.jpg', 29, NULL),
(1245, 'vivo-y1s-org-19.jpg', 'vivo-y1s-org-19.jpg', 29, NULL),
(1246, 'vivo-y1s-org-20.jpg', 'vivo-y1s-org-20.jpg', 29, NULL),
(1247, 'vivo-y1s-org-21.jpg', 'vivo-y1s-org-21.jpg', 29, NULL),
(1248, 'vivo-y1s-org-22.jpg', 'vivo-y1s-org-22.jpg', 29, NULL),
(1249, 'vivo-y1s-org-23.jpg', 'vivo-y1s-org-23.jpg', 29, NULL),
(1250, 'vivo-y1s-org-24.jpg', 'vivo-y1s-org-24.jpg', 29, NULL),
(1251, 'vivo-y1s-org-25.jpg', 'vivo-y1s-org-25.jpg', 29, NULL),
(1252, 'vivo-y1s-org-26.jpg', 'vivo-y1s-org-26.jpg', 29, NULL),
(1253, 'vivo-y1s-org-27.jpg', 'vivo-y1s-org-27.jpg', 29, NULL),
(1254, 'vivo-y1s-org-28.jpg', 'vivo-y1s-org-28.jpg', 29, NULL),
(1255, 'vivo-y1s-org-29.jpg', 'vivo-y1s-org-29.jpg', 29, NULL),
(1256, 'vivo-y1s-org-30.jpg', 'vivo-y1s-org-30.jpg', 29, NULL),
(1257, 'vivo-y1s-org-31.jpg', 'vivo-y1s-org-31.jpg', 29, NULL),
(1258, 'vivo-y1s-org-32.jpg', 'vivo-y1s-org-32.jpg', 29, NULL),
(1259, 'vivo-y1s-org-33.jpg', 'vivo-y1s-org-33.jpg', 29, NULL),
(1260, 'vivo-y1s-org-34.jpg', 'vivo-y1s-org-34.jpg', 29, NULL),
(1261, 'vivo-y1s-org-35.jpg', 'vivo-y1s-org-35.jpg', 29, NULL),
(1262, 'vivo-y1s-org-36.jpg', 'vivo-y1s-org-36.jpg', 29, NULL),
(1263, 'vivo-u10-org-1.jpg', 'vivo-u10-org-1.jpg', 30, NULL),
(1264, 'vivo-u10-org-2.jpg', 'vivo-u10-org-2.jpg', 30, NULL),
(1265, 'vivo-u10-org-3.jpg', 'vivo-u10-org-3.jpg', 30, NULL),
(1266, 'vivo-u10-org-4.jpg', 'vivo-u10-org-4.jpg', 30, NULL),
(1267, 'vivo-u10-org-5.jpg', 'vivo-u10-org-5.jpg', 30, NULL),
(1268, 'vivo-u10-org-6.jpg', 'vivo-u10-org-6.jpg', 30, NULL),
(1269, 'vivo-u10-org-7.jpg', 'vivo-u10-org-7.jpg', 30, NULL),
(1270, 'vivo-u10-org-8.jpg', 'vivo-u10-org-8.jpg', 30, NULL),
(1271, 'vivo-u10-org-9.jpg', 'vivo-u10-org-9.jpg', 30, NULL),
(1272, 'vivo-u10-org-10.jpg', 'vivo-u10-org-10.jpg', 30, NULL),
(1273, 'vivo-u10-org-11.jpg', 'vivo-u10-org-11.jpg', 30, NULL),
(1274, 'vivo-u10-org-12.jpg', 'vivo-u10-org-12.jpg', 30, NULL),
(1275, 'vivo-u10-org-13.jpg', 'vivo-u10-org-13.jpg', 30, NULL),
(1276, 'vivo-u10-org-14.jpg', 'vivo-u10-org-14.jpg', 30, NULL),
(1277, 'vivo-u10-org-15.jpg', 'vivo-u10-org-15.jpg', 30, NULL),
(1278, 'vivo-u10-org-16.jpg', 'vivo-u10-org-16.jpg', 30, NULL),
(1279, 'vivo-u10-org-17.jpg', 'vivo-u10-org-17.jpg', 30, NULL),
(1280, 'vivo-u10-org-18.jpg', 'vivo-u10-org-18.jpg', 30, NULL),
(1281, 'vivo-u10-org-19.jpg', 'vivo-u10-org-19.jpg', 30, NULL),
(1282, 'vivo-u10-org-20.jpg', 'vivo-u10-org-20.jpg', 30, NULL),
(1283, 'vivo-u10-org-21.jpg', 'vivo-u10-org-21.jpg', 30, NULL),
(1284, 'vivo-u10-org-22.jpg', 'vivo-u10-org-22.jpg', 30, NULL),
(1285, 'vivo-u10-org-23.jpg', 'vivo-u10-org-23.jpg', 30, NULL),
(1286, 'vivo-u10-org-24.jpg', 'vivo-u10-org-24.jpg', 30, NULL),
(1287, 'vivo-u10-org-25.jpg', 'vivo-u10-org-25.jpg', 30, NULL),
(1288, 'vivo-u10-org-26.jpg', 'vivo-u10-org-26.jpg', 30, NULL),
(1289, 'vivo-u10-org-27.jpg', 'vivo-u10-org-27.jpg', 30, NULL),
(1290, 'vivo-u10-org-28.jpg', 'vivo-u10-org-28.jpg', 30, NULL),
(1291, 'vivo-u10-org-29.jpg', 'vivo-u10-org-29.jpg', 30, NULL),
(1292, 'vivo-u10-org-30.jpg', 'vivo-u10-org-30.jpg', 30, NULL),
(1293, 'vivo-u10-org-31.jpg', 'vivo-u10-org-31.jpg', 30, NULL),
(1294, 'vivo-u10-org-32.jpg', 'vivo-u10-org-32.jpg', 30, NULL),
(1295, 'vivo-u10-org-33.jpg', 'vivo-u10-org-33.jpg', 30, NULL),
(1296, 'vivo-u10-org-34.jpg', 'vivo-u10-org-34.jpg', 30, NULL),
(1297, 'vivo-u10-org-35.jpg', 'vivo-u10-org-35.jpg', 30, NULL),
(1298, 'vivo-u10-org-36.jpg', 'vivo-u10-org-36.jpg', 30, NULL),
(1299, '637147814666879637_vivo-u10-den-4.png', '637147814666879637_vivo-u10-den-4.png', 30, 62),
(1300, '637147814667049735_vivo-u10-den-1 (1).png', '637147814667049735_vivo-u10-den-1 (1).png', 30, 62),
(1301, '637147814667079633_vivo-u10-den-3.png', '637147814667079633_vivo-u10-den-3.png', 30, 62),
(1302, '637147814667089600_vivo-u10-den-2.png', '637147814667089600_vivo-u10-den-2.png', 30, 62),
(1303, '637147812707024275_vivo-u10-xanh-4.png', '637147812707024275_vivo-u10-xanh-4.png', 30, 63),
(1304, '637147812707757517_vivo-u10-xanh-1.png', '637147812707757517_vivo-u10-xanh-1.png', 30, 63),
(1305, '637147812707757517_vivo-u10-xanh-2.png', '637147812707757517_vivo-u10-xanh-2.png', 30, 63),
(1306, '637147812707757517_vivo-u10-xanh-3.png', '637147812707757517_vivo-u10-xanh-3.png', 30, 63),
(1307, 'xiaomi-poco-x3-org-1.jpg', 'xiaomi-poco-x3-org-1.jpg', 31, NULL),
(1308, 'xiaomi-poco-x3-org-2.jpg', 'xiaomi-poco-x3-org-2.jpg', 31, NULL),
(1309, 'xiaomi-poco-x3-org-3.jpg', 'xiaomi-poco-x3-org-3.jpg', 31, NULL),
(1310, 'xiaomi-poco-x3-org-4.jpg', 'xiaomi-poco-x3-org-4.jpg', 31, NULL),
(1311, 'xiaomi-poco-x3-org-5.jpg', 'xiaomi-poco-x3-org-5.jpg', 31, NULL),
(1312, 'xiaomi-poco-x3-org-6.jpg', 'xiaomi-poco-x3-org-6.jpg', 31, NULL),
(1313, 'xiaomi-poco-x3-org-7.jpg', 'xiaomi-poco-x3-org-7.jpg', 31, NULL),
(1314, 'xiaomi-poco-x3-org-8.jpg', 'xiaomi-poco-x3-org-8.jpg', 31, NULL),
(1315, 'xiaomi-poco-x3-org-9.jpg', 'xiaomi-poco-x3-org-9.jpg', 31, NULL),
(1316, 'xiaomi-poco-x3-org-10.jpg', 'xiaomi-poco-x3-org-10.jpg', 31, NULL),
(1317, 'xiaomi-poco-x3-org-11.jpg', 'xiaomi-poco-x3-org-11.jpg', 31, NULL),
(1318, 'xiaomi-poco-x3-org-12.jpg', 'xiaomi-poco-x3-org-12.jpg', 31, NULL),
(1319, 'xiaomi-poco-x3-org-13.jpg', 'xiaomi-poco-x3-org-13.jpg', 31, NULL),
(1320, 'xiaomi-poco-x3-org-14.jpg', 'xiaomi-poco-x3-org-14.jpg', 31, NULL),
(1321, 'xiaomi-poco-x3-org-15.jpg', 'xiaomi-poco-x3-org-15.jpg', 31, NULL),
(1322, 'xiaomi-poco-x3-org-16.jpg', 'xiaomi-poco-x3-org-16.jpg', 31, NULL),
(1323, 'xiaomi-poco-x3-org-17.jpg', 'xiaomi-poco-x3-org-17.jpg', 31, NULL),
(1324, 'xiaomi-poco-x3-org-18.jpg', 'xiaomi-poco-x3-org-18.jpg', 31, NULL),
(1325, 'xiaomi-poco-x3-org-19.jpg', 'xiaomi-poco-x3-org-19.jpg', 31, NULL),
(1326, 'xiaomi-poco-x3-org-20.jpg', 'xiaomi-poco-x3-org-20.jpg', 31, NULL),
(1327, 'xiaomi-poco-x3-org-21.jpg', 'xiaomi-poco-x3-org-21.jpg', 31, NULL),
(1328, 'xiaomi-poco-x3-org-22.jpg', 'xiaomi-poco-x3-org-22.jpg', 31, NULL),
(1329, 'xiaomi-poco-x3-org-23.jpg', 'xiaomi-poco-x3-org-23.jpg', 31, NULL),
(1330, 'xiaomi-poco-x3-org-24.jpg', 'xiaomi-poco-x3-org-24.jpg', 31, NULL),
(1331, 'xiaomi-poco-x3-org-25.jpg', 'xiaomi-poco-x3-org-25.jpg', 31, NULL),
(1332, 'xiaomi-poco-x3-org-26.jpg', 'xiaomi-poco-x3-org-26.jpg', 31, NULL),
(1333, 'xiaomi-poco-x3-org-27.jpg', 'xiaomi-poco-x3-org-27.jpg', 31, NULL),
(1334, 'xiaomi-poco-x3-org-28.jpg', 'xiaomi-poco-x3-org-28.jpg', 31, NULL),
(1335, 'xiaomi-poco-x3-org-29.jpg', 'xiaomi-poco-x3-org-29.jpg', 31, NULL),
(1336, 'xiaomi-poco-x3-org-30.jpg', 'xiaomi-poco-x3-org-30.jpg', 31, NULL),
(1337, 'xiaomi-poco-x3-org-31.jpg', 'xiaomi-poco-x3-org-31.jpg', 31, NULL),
(1338, 'xiaomi-poco-x3-org-32.jpg', 'xiaomi-poco-x3-org-32.jpg', 31, NULL),
(1339, 'xiaomi-poco-x3-org-33.jpg', 'xiaomi-poco-x3-org-33.jpg', 31, NULL),
(1340, 'xiaomi-poco-x3-org-34.jpg', 'xiaomi-poco-x3-org-34.jpg', 31, NULL),
(1341, 'xiaomi-poco-x3-org-35.jpg', 'xiaomi-poco-x3-org-35.jpg', 31, NULL),
(1342, 'xiaomi-poco-x3-org-36.jpg', 'xiaomi-poco-x3-org-36.jpg', 31, NULL),
(1343, '637350931609117767_xiaomi-poco-x3-xam-5.png', '637350931609117767_xiaomi-poco-x3-xam-5.png', 31, 64),
(1344, '637350931609899196_xiaomi-poco-x3-xam-3.png', '637350931609899196_xiaomi-poco-x3-xam-3.png', 31, 64),
(1345, '637350931610211776_xiaomi-poco-x3-xam-4.png', '637350931610211776_xiaomi-poco-x3-xam-4.png', 31, 64),
(1346, '637350931610367785_xiaomi-poco-x3-xam-1.png', '637350931610367785_xiaomi-poco-x3-xam-1.png', 31, 64),
(1347, '637350931613649256_xiaomi-poco-x3-xam-2.png', '637350931613649256_xiaomi-poco-x3-xam-2.png', 31, 64);
INSERT INTO `hinhanh` (`hinhanh_id`, `hinhanh_ten`, `hinhanh_hinh`, `sp_id`, `mausp_id`) VALUES
(1348, '637350938779473018_xiaomi-poco-x3-xanh-5.png', '637350938779473018_xiaomi-poco-x3-xanh-5.png', 31, 65),
(1349, '637350938780097835_xiaomi-poco-x3-xanh-2.png', '637350938780097835_xiaomi-poco-x3-xanh-2.png', 31, 65),
(1350, '637350938780723081_xiaomi-poco-x3-xanh-1.png', '637350938780723081_xiaomi-poco-x3-xanh-1.png', 31, 65),
(1351, '637350938780723081_xiaomi-poco-x3-xanh-3.png', '637350938780723081_xiaomi-poco-x3-xanh-3.png', 31, 65),
(1352, '637350938780879050_xiaomi-poco-x3-xanh-4.png', '637350938780879050_xiaomi-poco-x3-xanh-4.png', 31, 65),
(1353, 'iphone-7-360-org-1.jpg', 'iphone-7-360-org-1.jpg', 32, NULL),
(1354, 'iphone-7-360-org-2.jpg', 'iphone-7-360-org-2.jpg', 32, NULL),
(1355, 'iphone-7-360-org-3.jpg', 'iphone-7-360-org-3.jpg', 32, NULL),
(1356, 'iphone-7-360-org-4.jpg', 'iphone-7-360-org-4.jpg', 32, NULL),
(1357, 'iphone-7-360-org-5.jpg', 'iphone-7-360-org-5.jpg', 32, NULL),
(1358, 'iphone-7-360-org-6.jpg', 'iphone-7-360-org-6.jpg', 32, NULL),
(1359, 'iphone-7-360-org-7.jpg', 'iphone-7-360-org-7.jpg', 32, NULL),
(1360, 'iphone-7-360-org-8.jpg', 'iphone-7-360-org-8.jpg', 32, NULL),
(1361, 'iphone-7-360-org-9.jpg', 'iphone-7-360-org-9.jpg', 32, NULL),
(1362, 'iphone-7-360-org-10.jpg', 'iphone-7-360-org-10.jpg', 32, NULL),
(1363, 'iphone-7-360-org-11.jpg', 'iphone-7-360-org-11.jpg', 32, NULL),
(1364, 'iphone-7-360-org-12.jpg', 'iphone-7-360-org-12.jpg', 32, NULL),
(1365, 'iphone-7-360-org-13.jpg', 'iphone-7-360-org-13.jpg', 32, NULL),
(1366, 'iphone-7-360-org-14.jpg', 'iphone-7-360-org-14.jpg', 32, NULL),
(1367, 'iphone-7-360-org-15.jpg', 'iphone-7-360-org-15.jpg', 32, NULL),
(1368, 'iphone-7-360-org-16.jpg', 'iphone-7-360-org-16.jpg', 32, NULL),
(1369, 'iphone-7-360-org-17.jpg', 'iphone-7-360-org-17.jpg', 32, NULL),
(1370, 'iphone-7-360-org-18.jpg', 'iphone-7-360-org-18.jpg', 32, NULL),
(1371, 'iphone-7-360-org-19.jpg', 'iphone-7-360-org-19.jpg', 32, NULL),
(1372, 'iphone-7-360-org-20.jpg', 'iphone-7-360-org-20.jpg', 32, NULL),
(1373, 'iphone-7-360-org-21.jpg', 'iphone-7-360-org-21.jpg', 32, NULL),
(1374, 'iphone-7-360-org-22.jpg', 'iphone-7-360-org-22.jpg', 32, NULL),
(1375, 'iphone-7-360-org-23.jpg', 'iphone-7-360-org-23.jpg', 32, NULL),
(1376, 'iphone-7-360-org-24.jpg', 'iphone-7-360-org-24.jpg', 32, NULL),
(1377, 'iphone-7-360-org-25.jpg', 'iphone-7-360-org-25.jpg', 32, NULL),
(1378, 'iphone-7-360-org-26.jpg', 'iphone-7-360-org-26.jpg', 32, NULL),
(1379, 'iphone-7-360-org-27.jpg', 'iphone-7-360-org-27.jpg', 32, NULL),
(1380, 'iphone-7-360-org-28.jpg', 'iphone-7-360-org-28.jpg', 32, NULL),
(1381, 'iphone-7-360-org-29.jpg', 'iphone-7-360-org-29.jpg', 32, NULL),
(1382, 'iphone-7-360-org-30.jpg', 'iphone-7-360-org-30.jpg', 32, NULL),
(1383, 'iphone-7-360-org-31.jpg', 'iphone-7-360-org-31.jpg', 32, NULL),
(1384, 'iphone-7-360-org-32.jpg', 'iphone-7-360-org-32.jpg', 32, NULL),
(1385, 'iphone-7-360-org-33.jpg', 'iphone-7-360-org-33.jpg', 32, NULL),
(1386, 'iphone-7-360-org-34.jpg', 'iphone-7-360-org-34.jpg', 32, NULL),
(1387, 'iphone-7-360-org-35.jpg', 'iphone-7-360-org-35.jpg', 32, NULL),
(1388, 'iphone-7-360-org-36.jpg', 'iphone-7-360-org-36.jpg', 32, NULL),
(1389, 'iphone-7-black_8.jpg', 'iphone-7-black_8.jpg', 32, 66),
(1390, 'iphone-7-gold_8.jpg', 'iphone-7-gold_8.jpg', 32, 67),
(1391, 'vsmart-star-3-org-1.jpg', 'vsmart-star-3-org-1.jpg', 33, NULL),
(1392, 'vsmart-star-3-org-2.jpg', 'vsmart-star-3-org-2.jpg', 33, NULL),
(1393, 'vsmart-star-3-org-3.jpg', 'vsmart-star-3-org-3.jpg', 33, NULL),
(1394, 'vsmart-star-3-org-4.jpg', 'vsmart-star-3-org-4.jpg', 33, NULL),
(1395, 'vsmart-star-3-org-5.jpg', 'vsmart-star-3-org-5.jpg', 33, NULL),
(1396, 'vsmart-star-3-org-6.jpg', 'vsmart-star-3-org-6.jpg', 33, NULL),
(1397, 'vsmart-star-3-org-7.jpg', 'vsmart-star-3-org-7.jpg', 33, NULL),
(1398, 'vsmart-star-3-org-8.jpg', 'vsmart-star-3-org-8.jpg', 33, NULL),
(1399, 'vsmart-star-3-org-9.jpg', 'vsmart-star-3-org-9.jpg', 33, NULL),
(1400, 'vsmart-star-3-org-10.jpg', 'vsmart-star-3-org-10.jpg', 33, NULL),
(1401, 'vsmart-star-3-org-11.jpg', 'vsmart-star-3-org-11.jpg', 33, NULL),
(1402, 'vsmart-star-3-org-12.jpg', 'vsmart-star-3-org-12.jpg', 33, NULL),
(1403, 'vsmart-star-3-org-13.jpg', 'vsmart-star-3-org-13.jpg', 33, NULL),
(1404, 'vsmart-star-3-org-14.jpg', 'vsmart-star-3-org-14.jpg', 33, NULL),
(1405, 'vsmart-star-3-org-15.jpg', 'vsmart-star-3-org-15.jpg', 33, NULL),
(1406, 'vsmart-star-3-org-16.jpg', 'vsmart-star-3-org-16.jpg', 33, NULL),
(1407, 'vsmart-star-3-org-17.jpg', 'vsmart-star-3-org-17.jpg', 33, NULL),
(1408, 'vsmart-star-3-org-18.jpg', 'vsmart-star-3-org-18.jpg', 33, NULL),
(1409, 'vsmart-star-3-org-19.jpg', 'vsmart-star-3-org-19.jpg', 33, NULL),
(1410, 'vsmart-star-3-org-20.jpg', 'vsmart-star-3-org-20.jpg', 33, NULL),
(1411, 'vsmart-star-3-org-21.jpg', 'vsmart-star-3-org-21.jpg', 33, NULL),
(1412, 'vsmart-star-3-org-22.jpg', 'vsmart-star-3-org-22.jpg', 33, NULL),
(1413, 'vsmart-star-3-org-23.jpg', 'vsmart-star-3-org-23.jpg', 33, NULL),
(1414, 'vsmart-star-3-org-24.jpg', 'vsmart-star-3-org-24.jpg', 33, NULL),
(1415, 'vsmart-star-3-org-25.jpg', 'vsmart-star-3-org-25.jpg', 33, NULL),
(1416, 'vsmart-star-3-org-26.jpg', 'vsmart-star-3-org-26.jpg', 33, NULL),
(1417, 'vsmart-star-3-org-27.jpg', 'vsmart-star-3-org-27.jpg', 33, NULL),
(1418, 'vsmart-star-3-org-28.jpg', 'vsmart-star-3-org-28.jpg', 33, NULL),
(1419, 'vsmart-star-3-org-29.jpg', 'vsmart-star-3-org-29.jpg', 33, NULL),
(1420, 'vsmart-star-3-org-30.jpg', 'vsmart-star-3-org-30.jpg', 33, NULL),
(1421, 'vsmart-star-3-org-31.jpg', 'vsmart-star-3-org-31.jpg', 33, NULL),
(1422, 'vsmart-star-3-org-32.jpg', 'vsmart-star-3-org-32.jpg', 33, NULL),
(1423, 'vsmart-star-3-org-33.jpg', 'vsmart-star-3-org-33.jpg', 33, NULL),
(1424, 'vsmart-star-3-org-34.jpg', 'vsmart-star-3-org-34.jpg', 33, NULL),
(1425, 'vsmart-star-3-org-35.jpg', 'vsmart-star-3-org-35.jpg', 33, NULL),
(1426, 'vsmart-star-3-org-36.jpg', 'vsmart-star-3-org-36.jpg', 33, NULL),
(1427, '637176388616279541_vsmart-star-3-xanh-1 (1).png', '637176388616279541_vsmart-star-3-xanh-1 (1).png', 33, 68),
(1428, '637176388616279541_vsmart-star-3-xanh-4.png', '637176388616279541_vsmart-star-3-xanh-4.png', 33, 68),
(1429, '637176388618779430_vsmart-star-3-xanh-2.png', '637176388618779430_vsmart-star-3-xanh-2.png', 33, 68),
(1430, '637176388618944357_vsmart-star-3-xanh-3.png', '637176388618944357_vsmart-star-3-xanh-3.png', 33, 68),
(1431, '637176410802523392_vsmart-star-3-xanh-5.png', '637176410802523392_vsmart-star-3-xanh-5.png', 33, 68),
(1432, '637176392120185573_vsmart-star-3-den-3.png', '637176392120185573_vsmart-star-3-den-3.png', 33, 69),
(1433, '637176392120638549_vsmart-star-3-den-2.png', '637176392120638549_vsmart-star-3-den-2.png', 33, 69),
(1434, '637176392120638549_vsmart-star-3-den-4.png', '637176392120638549_vsmart-star-3-den-4.png', 33, 69),
(1435, '637176392120796042_vsmart-star-3-den-1.png', '637176392120796042_vsmart-star-3-den-1.png', 33, 69),
(1436, '637176410802523392_vsmart-star-3-den-5.png', '637176410802523392_vsmart-star-3-den-5.png', 33, 69),
(1437, '637176410169774400_vsmart-star-3-do-4.png', '637176410169774400_vsmart-star-3-do-4.png', 33, 70),
(1438, '637176410170404483_vsmart-star-3-do-2.png', '637176410170404483_vsmart-star-3-do-2.png', 33, 70),
(1439, '637176410170514541_vsmart-star-3-do-3.png', '637176410170514541_vsmart-star-3-do-3.png', 33, 70),
(1440, '637176410170817666_vsmart-star-3-do-1.png', '637176410170817666_vsmart-star-3-do-1.png', 33, 70);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `kh_id` int(11) NOT NULL,
  `kh_ten` varchar(100) NOT NULL,
  `kh_diachi` varchar(255) NOT NULL,
  `kh_sdt` varchar(30) NOT NULL,
  `kh_email` varchar(100) NOT NULL,
  `kh_matkhau` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`kh_id`, `kh_ten`, `kh_diachi`, `kh_sdt`, `kh_email`, `kh_matkhau`) VALUES
(1, 'Nguyễn Hải Nam', '123/456 ABCD', '1234567891', 'nhn@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'Phan Thành Công', '123/456ATH', '1234567892', 'ptc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'Lê Quốc Vinh', '123/456ATY', '1234567893', 'lqv@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'Lê Quỳnh Phương', '123/456ATZ', '1234567894', 'lqp@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'Lê Thành Nam', '123/456ATHC', '1234567895', 'ltn@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'Lê Thùy Linh', '123/456ATHE', '1234567896', 'ltl@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(7, 'Lê Hoàng Long', '123/456ATHEH', '1234567897', 'lhl@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'Nguyễn Minh Nhật', '123/456ATHV', '1234567898', 'nmn@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khohang`
--

CREATE TABLE `khohang` (
  `kho_id` int(11) NOT NULL,
  `kho_ten` varchar(100) NOT NULL,
  `kho_diachi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khohang`
--

INSERT INTO `khohang` (`kho_id`, `kho_ten`, `kho_diachi`) VALUES
(1, 'Kho số 1', '123/4456 ABC'),
(2, 'Kho số 2', '345/789 DFG');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `khuyenmai_id` int(11) NOT NULL,
  `khuyenmai_ten` varchar(100) NOT NULL,
  `khuyenmai_ngaybatdau` date NOT NULL,
  `khuyenmai_ngayketthuc` date NOT NULL,
  `khuyenmai_giatri` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`khuyenmai_id`, `khuyenmai_ten`, `khuyenmai_ngaybatdau`, `khuyenmai_ngayketthuc`, `khuyenmai_giatri`, `id`) VALUES
(1, 'Khuyến mãi tháng 12', '2020-12-01', '2020-12-15', 10, 1),
(2, 'Khuyến mãi T12 -L2', '2020-12-15', '2020-12-31', 10, 1),
(3, 'Khuyến mãi T1-L1', '2021-01-01', '2021-01-12', 10, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `lienhe_id` int(11) NOT NULL,
  `lienhe_thongtin` mediumtext NOT NULL,
  `lienhe_bando` text NOT NULL,
  `lienhe_hinh` varchar(255) NOT NULL,
  `lienhe_fanpage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`lienhe_id`, `lienhe_thongtin`, `lienhe_bando`, `lienhe_hinh`, `lienhe_fanpage`) VALUES
(1, '<ul>\r\n	<li><span style=\"color:#000000\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\">Địa chỉ 1: 123/456 A Ch&acirc;u Văn Li&ecirc;m, Quận Ninh Kiều , TPCT.</span></span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\">Địa chỉ 2:&nbsp;123/466 A Ch&acirc;u Văn Li&ecirc;m, Quận Ninh Kiều , TPCT.</span></span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\">Số điện thoại: 0901234566</span></span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Fanpage<span style=\"background-color:#ffffff\">:</span><strong><span style=\"background-color:#ffffff\">&nbsp;</span></strong></span><a href=\"https://www.facebook.com/Vshop-110623450796225\" target=\"blank\">&nbsp;</a><a href=\"https://www.facebook.com/Vshop-110623450796225\" target=\"_blank\">Vshop</a></span></span></li>\r\n</ul>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.82520309079!2d105.7817852142822!3d10.031278875248512!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0629f966be283%3A0x8229c2afb8c886a6!2zMTIzIMSQxrDhu51uZyBDaMOidSBWxINuIExpw6ptLCBUw6JuIEFuLCBOaW5oIEtp4buBdSwgQ-G6p24gVGjGoSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1606566344072!5m2!1svi!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'vshop64.png', '<div id=\"fb-root\"></div>\r\n<script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v9.0&appId=840076133401851&autoLogAppEvents=1\" nonce=\"o5KFd7Xo\"></script>\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/Vshop-110623450796225\" data-tabs=\"timeline\" data-width=\"500px\" data-height=\"\" data-small-header=\"false\" data-adapt-container-width=\"true\" data-hide-cover=\"false\" data-show-facepile=\"true\"><blockquote cite=\"https://www.facebook.com/Vshop-110623450796225\" class=\"fb-xfbml-parse-ignore\"><a href=\"https://www.facebook.com/Vshop-110623450796225\">Vshop</a></blockquote></div>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mau`
--

CREATE TABLE `mau` (
  `mau_id` int(11) NOT NULL,
  `mau_ten` varchar(100) NOT NULL,
  `mau_giatri` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `mau`
--

INSERT INTO `mau` (`mau_id`, `mau_ten`, `mau_giatri`) VALUES
(1, 'màu đỏ', '#F91616'),
(2, 'màu cam', '#ED7E10'),
(3, 'màu vàng', '#EAE717'),
(4, 'màu đen', '#0F0F0E'),
(5, 'màu trắng', '#F7EDF4'),
(6, 'màu tím', '#EA27D0'),
(8, 'màu xanh lá', '#2D7021'),
(9, 'màu nâu', '#CE840E'),
(10, 'màu xanh', '#1C3ACE'),
(12, 'màu xanh nước biển', '#13F4F4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mausanpham`
--

CREATE TABLE `mausanpham` (
  `mausp_id` int(11) NOT NULL,
  `mausp_ten` varchar(110) NOT NULL,
  `mausp_soluong` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `mau_id` int(11) NOT NULL,
  `mausp_hienthi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `mausanpham`
--

INSERT INTO `mausanpham` (`mausp_id`, `mausp_ten`, `mausp_soluong`, `sp_id`, `mau_id`, `mausp_hienthi`) VALUES
(5, 'OPPO A92 8GB-128GB(màu đen)', 14, 3, 4, 1),
(6, 'OPPO A92 8GB-128GB(màu trắng)', 6, 3, 5, 1),
(7, 'Nokia 5.3 3GB - 64GB(màu đen)', 28, 4, 4, 1),
(8, 'Nokia 5.3 3GB - 64GB(màu xanh)', 0, 4, 10, 1),
(9, 'Realme C3 3GB-32GB(màu đỏ)', 14, 5, 1, 1),
(10, 'Realme C3 3GB-32GB(màu xanh)', 7, 5, 10, 1),
(11, 'Vsmart Joy 3 2GB-32GB(màu đen)', 8, 6, 4, 1),
(12, 'Vsmart Joy 3 2GB-32GB(màu tím)', 16, 6, 6, 1),
(13, 'Vsmart Joy 3 2GB-32GB(màu trắng)', 10, 6, 5, 1),
(14, 'iPhone 11 4GB-64GB(màu trắng)', 14, 7, 5, 1),
(15, 'iPhone 11 4GB-64GB(màu đen)', 14, 7, 4, 1),
(16, 'iPhone 11 4GB-64GB(màu đỏ)', 5, 7, 1, 1),
(17, 'OPPO Reno4 8GB-128GB(màu đen)', 12, 8, 4, 1),
(18, 'OPPO Reno4 8GB-128GB(màu tím)', 17, 8, 6, 1),
(19, 'Vivo V20 8GB -128GB(màu đen)', 13, 9, 4, 1),
(20, 'iPhone 8 Plus 3GB-128GB(màu vàng)', 0, 10, 3, 1),
(21, 'iPhone 8 Plus 3GB-128GB(màu đen)', 0, 10, 4, 1),
(22, 'iPhone 8 Plus 3GB-128GB(màu trắng)', 0, 10, 5, 1),
(23, 'Realme 5i 4GB-64GB(màu xanh lá)', 20, 11, 8, 1),
(24, 'Realme 5i 4GB-64GB(màu xanh)', 12, 11, 10, 1),
(25, 'Vsmart Joy 4 4GB-64GB(màu đen)', 12, 12, 4, 1),
(26, 'Vsmart Joy 4 4GB-64GB(màu xanh)', 0, 12, 10, 1),
(27, 'Nokia 8.3 5G 8GB-128GB(màu xanh)', 11, 13, 10, 1),
(28, 'Samsung Galaxy Note 20 Ultra 5G 12GB-256GB(màu vàng)', 12, 14, 3, 1),
(29, 'Vsmart Live 4 6GB-64GB(màu đen)', 23, 15, 4, 1),
(30, 'Vsmart Live 4 6GB-64GB(màu xanh)', 24, 15, 10, 1),
(31, 'Vsmart Live 4 6GB-64GB(màu trắng)', 0, 15, 5, 1),
(32, 'Vsmart Aris 6GB-64GB(màu xanh lá)', 12, 16, 8, 1),
(33, 'Vsmart Aris 6GB-64GB(màu đen)', 13, 16, 4, 1),
(34, 'Vivo Y50 8GB - 128GB(màu đen)', 15, 17, 4, 1),
(35, 'Vivo Y50 8GB - 128GB(màu xanh)', 15, 17, 10, 1),
(37, 'Vivo Y11 3GB-32GB(màu đỏ)', 11, 19, 1, 1),
(38, 'Vivo Y11 3GB-32GB(màu xanh)', 24, 19, 10, 1),
(39, 'Vivo Y11 3GB-32GB(màu xanh nước biển)', 0, 19, 12, 1),
(40, 'Oppo A53 4GB-128GB(màu xanh)', 5, 20, 10, 1),
(41, 'Oppo A53 4GB-128GB(màu đen)', 0, 20, 4, 1),
(42, 'Oppo A52 6GB-128GB(màu đen)', 12, 21, 4, 1),
(43, 'Oppo A52 6GB-128GB(màu trắng)', 5, 21, 5, 1),
(44, 'Xiaomi Mi 10T Pro 5G 8GB-256GB(màu đen)', 12, 22, 4, 1),
(45, 'Xiaomi Mi 10T Pro 5G 8GB-256GB(màu trắng)', 32, 22, 5, 1),
(46, 'Xiaomi Mi 10T Pro 5G 8GB-256GB(màu xanh)', 0, 22, 10, 1),
(47, 'Xiaomi Redmi 9 3GB-32GB(màu đen)', 12, 23, 4, 1),
(48, 'Xiaomi Redmi 9 3GB-32GB(màu xanh lá)', 16, 23, 8, 1),
(49, 'Xiaomi Redmi 9 3GB-32GB(màu tím)', 0, 23, 6, 1),
(50, 'Xiaomi Redmi 9C 3GB-64GB(màu xanh)', 11, 24, 10, 1),
(51, 'Xiaomi Redmi 9C 3GB-64GB(màu đen)', 0, 24, 4, 1),
(52, 'Samsung Galaxy A71 8GB-128GB(màu đen)', 15, 25, 4, 1),
(53, 'Samsung Galaxy A71 8GB-128GB(màu xanh)', 16, 25, 10, 1),
(54, 'Samsung Galaxy M51 6GB-128GB(màu đen)', 12, 26, 4, 1),
(55, 'Samsung Galaxy M51 6GB-128GB(màu trắng)', 5, 26, 5, 1),
(56, 'OPPO A93 8GB-128GB(màu đen)', 12, 27, 4, 1),
(57, 'OPPO A93 8GB-128GB(màu trắng)', 15, 27, 5, 1),
(58, 'Samsung Galaxy A51 6GB-128GB(màu đen)', 11, 28, 4, 1),
(59, 'Samsung Galaxy A51 6GB-128GB(màu trắng)', 15, 28, 5, 1),
(60, 'Vivo Y1s 2GB-32GB(màu đen)', 10, 29, 4, 1),
(61, 'Vivo Y1s 2GB-32GB(màu trắng)', 6, 29, 5, 1),
(62, 'Vivo U10 4GB-64GB(màu đen)', 7, 30, 4, 1),
(63, 'Vivo U10 4GB-64GB(màu xanh)', 10, 30, 10, 1),
(64, 'Xiaomi Poco X3 NFC 6GB-128GB(màu đen)', 6, 31, 4, 1),
(65, 'Xiaomi Poco X3 NFC 6GB-128GB(màu xanh)', 12, 31, 10, 1),
(66, 'iPhone 7 2GB-32GB(màu đen)', 4, 32, 4, 1),
(67, 'iPhone 7 2GB-32GB(màu trắng)', 12, 32, 5, 1),
(68, 'Vsmart Star 3 2GB - 16GB(màu xanh)', 4, 33, 10, 1),
(69, 'Vsmart Star 3 2GB - 16GB(màu đen)', 3, 33, 4, 1),
(70, 'Vsmart Star 3 2GB - 16GB(màu đỏ)', 0, 33, 1, 1),
(72, 'Vivo V20 8GB -128GB(màu đỏ)', 5, 9, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `ncc_id` int(11) NOT NULL,
  `ncc_ten` varchar(100) NOT NULL,
  `ncc_diachi` varchar(255) NOT NULL,
  `ncc_sdt` varchar(30) NOT NULL,
  `ncc_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`ncc_id`, `ncc_ten`, `ncc_diachi`, `ncc_sdt`, `ncc_email`) VALUES
(5, 'CTY SUNNY', '123/456ABC', '1234567890', 'SUNNY@gmail.com'),
(6, 'CTY VEGA', '123/456ABCD', '1234567891', 'VEGA@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` int(11) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `name`, `diachi`, `email`, `sdt`, `quyen`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '123/456 ABC', 'banhang@gmail.com', '1234567892', 9, '$2y$10$CEdbdsSMU9Nv.6yjdRMEtOhR0kdIiOBWtNR2Bup9upjueOPbcsM9m', '2UfigxA9iJCPXTBaMtemRjaGzA8QUVKG5vPP5UCk5YE7YzYuSLao8AmKNkDc', '2016-06-09 10:05:09', '2021-01-10 20:46:50'),
(15, 'Lê Minh Quang', '123/456 TJk', 'kho@gmail.com', '0918999888', 4, '$2y$10$h8eQbxQZajHd20nd5OezBOSKcj87/YLy9sSpfnTJ6qDwZSM.wA9w2', NULL, '2020-12-27 01:56:21', '2020-12-27 01:56:21'),
(16, 'Nguyễn Hoàng Long', '123/456 ABCDEF', 'admin@gmail.com', '0909665544', 9, '$2y$10$inbA6.pdLA.3ZizdelTZsOu8k44P7ln4jLuaV.yDvF9SAq5miTff.', NULL, '2021-01-10 05:27:15', '2021-01-10 05:27:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanhoi`
--

CREATE TABLE `phanhoi` (
  `ph_id` int(11) NOT NULL,
  `ph_noidung` varchar(255) NOT NULL,
  `ph_ngay` datetime NOT NULL,
  `bl_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phanhoi`
--

INSERT INTO `phanhoi` (`ph_id`, `ph_noidung`, `ph_ngay`, `bl_id`, `id`) VALUES
(1, 'Cám ơn bạn đã mua hàng', '2020-12-02 14:59:12', 1, 1),
(2, 'Sản phẩm rất tốt, cám ơn bạn đã đánh giá', '2020-12-02 15:41:17', 3, 1),
(3, 'Cám ơn bạn!', '2020-12-02 15:42:34', 2, 1),
(4, 'Cám ơn bạn', '2020-12-03 18:45:08', 4, 1),
(5, 'Cám ơn bạn đã đánh giá sản phẩm', '2021-01-10 19:33:32', 10, 1),
(6, 'Còn nha bạn', '2021-01-10 19:33:49', 9, 1),
(7, 'Cám ơn bạn đã đánh giá tốt sản phẩm', '2021-01-10 19:34:32', 8, 1),
(8, 'Ok bạn', '2021-01-11 15:06:12', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhapkho`
--

CREATE TABLE `phieunhapkho` (
  `pnk_id` int(11) NOT NULL,
  `id` int(11) NOT NULL COMMENT 'mã nhân viên',
  `ncc_id` int(11) NOT NULL,
  `kho_id` int(11) NOT NULL,
  `pnk_ngaynhapkho` date NOT NULL,
  `pnk_trangthai` int(11) NOT NULL,
  `pnk_tong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phieunhapkho`
--

INSERT INTO `phieunhapkho` (`pnk_id`, `id`, `ncc_id`, `kho_id`, `pnk_ngaynhapkho`, `pnk_trangthai`, `pnk_tong`) VALUES
(5, 1, 6, 2, '2020-12-01', 2, 120000000),
(6, 1, 6, 2, '2020-12-01', 1, 48000000),
(7, 1, 5, 1, '2020-12-01', 1, 86280000),
(8, 1, 5, 1, '2020-12-01', 2, 324000000),
(9, 1, 5, 1, '2020-12-01', 2, 86400000),
(10, 1, 6, 2, '2020-12-01', 1, 122400000),
(11, 1, 5, 1, '2020-12-01', 1, 168000000),
(12, 1, 5, 1, '2020-12-01', 1, 384000000),
(13, 1, 5, 1, '2020-12-01', 1, 180000000),
(14, 1, 5, 1, '2020-12-01', 1, 40000000),
(15, 1, 5, 1, '2020-12-01', 1, 54000000),
(16, 1, 6, 2, '2020-12-01', 1, 10000000),
(17, 1, 6, 2, '2020-12-01', 1, 100000000),
(18, 1, 5, 1, '2020-12-01', 1, 60000000),
(19, 1, 5, 1, '2020-12-01', 1, 108000000),
(20, 1, 6, 2, '2020-12-01', 1, 51000000),
(21, 1, 6, 2, '2020-12-01', 1, 18000000),
(22, 1, 6, 2, '2020-12-01', 1, 200000000),
(23, 1, 6, 2, '2020-12-01', 1, 135000000),
(24, 1, 6, 2, '2020-12-01', 1, 135000000),
(25, 1, 6, 2, '2020-12-01', 1, 56000000),
(26, 1, 6, 2, '2020-12-01', 1, 119000000),
(27, 1, 6, 2, '2020-12-01', 1, 186000000),
(28, 1, 5, 1, '2020-12-01', 1, 125000000),
(29, 1, 6, 2, '2020-12-01', 1, 24000000),
(30, 1, 5, 1, '2020-12-01', 1, 220430000),
(31, 1, 5, 1, '2020-12-01', 1, 240000000),
(32, 1, 5, 1, '2020-12-01', 1, 144000000),
(33, 1, 5, 1, '2020-12-01', 1, 42000000),
(34, 1, 5, 1, '2020-12-01', 2, 43200000),
(35, 1, 6, 2, '2020-12-01', 1, 15000000),
(36, 1, 5, 1, '2020-12-01', 1, 13500000),
(37, 1, 5, 1, '2020-12-01', 2, 120000000),
(38, 1, 5, 1, '2020-12-02', 1, 88100000),
(39, 1, 6, 2, '2020-12-02', 1, 264000000),
(40, 1, 5, 1, '2020-12-02', 2, 63100000),
(41, 1, 5, 1, '2020-12-02', 1, 32000000),
(42, 1, 5, 1, '2021-01-11', 1, 50330000),
(43, 1, 5, 1, '2021-01-11', 1, 48000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieutrancc`
--

CREATE TABLE `phieutrancc` (
  `ptncc_id` int(11) NOT NULL,
  `pnk_id` int(11) NOT NULL,
  `ncc_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `ptncc_ngaylap` date NOT NULL,
  `ptncc_tong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phieutrancc`
--

INSERT INTO `phieutrancc` (`ptncc_id`, `pnk_id`, `ncc_id`, `id`, `ptncc_ngaylap`, `ptncc_tong`) VALUES
(2, 9, 5, 1, '2020-12-01', 3600000),
(3, 34, 5, 1, '2020-12-01', 10800000),
(4, 37, 5, 1, '2020-12-01', 48000000),
(5, 5, 6, 1, '2020-12-02', 20000000),
(6, 40, 5, 1, '2020-12-02', 17400000),
(7, 8, 5, 1, '2021-01-11', 168000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `sp_id` int(11) NOT NULL,
  `th_id` int(11) NOT NULL,
  `sp_nhan` varchar(100) NOT NULL,
  `kho_id` int(11) NOT NULL,
  `sp_ten` varchar(100) NOT NULL,
  `sp_dongianhap` int(11) NOT NULL,
  `sp_hinh` varchar(255) NOT NULL,
  `sp_soluong` int(11) NOT NULL,
  `sp_thongtin` text NOT NULL,
  `sp_ngaytaomoi` date NOT NULL,
  `sp_ngaycapnhat` date NOT NULL,
  `khuyenmai_id` int(11) DEFAULT NULL,
  `sp_hienthi` int(11) NOT NULL,
  `ncc_id` int(11) NOT NULL,
  `sp_mausac` varchar(255) NOT NULL,
  `xx_id` int(11) NOT NULL,
  `sp_tskt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`sp_id`, `th_id`, `sp_nhan`, `kho_id`, `sp_ten`, `sp_dongianhap`, `sp_hinh`, `sp_soluong`, `sp_thongtin`, `sp_ngaytaomoi`, `sp_ngaycapnhat`, `khuyenmai_id`, `sp_hienthi`, `ncc_id`, `sp_mausac`, `xx_id`, `sp_tskt`) VALUES
(3, 14, 'oppo-a92-8gb-128gb', 1, 'OPPO A92 8GB-128GB', 6000000, '637259998715264902_oppo-a92-den-193.png', 20, '<h3>Đ&aacute;nh gi&aacute; chi tiết OPPO A92</h3>\r\n\r\n<p><strong>M&agrave;n h&igrave;nh chấm O tinh tế, hiệu năng mạnh mẽ, 4 camera AI 48MP v&agrave; vi&ecirc;n pin dung lượng cực &ldquo;khủng&rdquo;, bạn sẽ ho&agrave;n to&agrave;n h&agrave;i l&ograve;ng về&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/oppo-a92\">OPPO A92</a>, chiếc&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;si&ecirc;u mượt m&agrave;, đầy đẳng cấp.</strong></p>\r\n\r\n<p><strong><img alt=\"OPPO A92\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a92-1.jpg\" /></strong></p>\r\n\r\n<h3><strong>Trải nghiệm h&igrave;nh ảnh ho&agrave;n to&agrave;n mới tr&ecirc;n m&agrave;n h&igrave;nh chấm O</strong></h3>\r\n\r\n<p>Đến với những điều kỳ th&uacute; tr&ecirc;n kh&ocirc;ng gian m&agrave;n h&igrave;nh lớn tớn 6,5 inch v&agrave; độ ph&acirc;n giải Full HD+ sắc n&eacute;t của OPPO A92. Kh&ocirc;ng chỉ m&agrave;n h&igrave;nh lớn, độ ph&acirc;n giải cao, điều đặc biệt của m&agrave;n h&igrave;nh n&agrave;y c&ograve;n đến từ viền cạnh si&ecirc;u mỏng v&agrave; thiết kế chấm O tinh tế. Viền cạnh mỏng chỉ 1,73mm, camera trước được đặt v&agrave;o ngay trong tấm k&iacute;nh m&agrave;n h&igrave;nh gi&uacute;p trải nghiệm xem của bạn trở n&ecirc;n th&uacute; vị hơn bao giờ hết. Hơn nữa, m&agrave;n h&igrave;nh n&agrave;y c&ograve;n c&oacute; chế độ bảo vệ mắt, để bạn d&ugrave; c&oacute; sử dụng l&acirc;u, đ&ocirc;i mắt vẫn ho&agrave;n to&agrave;n khỏe mạnh m&agrave; kh&ocirc;ng hề bị mỏi.</p>\r\n\r\n<p><img alt=\"màn hình OPPO A92\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a92-2.jpg\" /></p>\r\n\r\n<h3><strong>Thiết kế cảm hứng, khơi nguồn s&aacute;ng tạo</strong></h3>\r\n\r\n<p>Một thiết kế tươi trẻ, đầy sức sống mang t&iacute;nh biểu tượng của OPPO A92 sẽ gi&uacute;p cho bạn như được tiếp th&ecirc;m năng lượng suốt cả ng&agrave;y. Điện thoại OPPO A92 lấy cảm hứng từ những ng&ocirc;i sao s&aacute;ng với c&aacute;c họa tiết cực quang tỏa s&aacute;ng bắt mắt, được ho&agrave;n thiện tỉ mỉ v&agrave; ch&iacute;nh x&aacute;c sẽ tạo n&ecirc;n một sản phẩm thực sự nổi bật m&agrave; ai cũng phải ngước nh&igrave;n. To&agrave;n th&acirc;n m&aacute;y đều l&agrave;m cong 3D mượt m&agrave;, cho cảm gi&aacute;c rất dễ chịu khi sử dụng. Sự s&aacute;ng tạo c&ograve;n thể hiện ở cảm biến v&acirc;n tay ngay tr&ecirc;n ph&iacute;m nguồn, tạo n&ecirc;n một thiết kế thanh tho&aacute;t v&agrave; tiện lợi. H&atilde;y để OPPO A92 biến th&agrave;nh một kiệt t&aacute;c tr&ecirc;n tay bạn.</p>\r\n\r\n<p><img alt=\"thiết kế OPPO A92\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a92-3.jpg\" /></p>\r\n\r\n<h3><strong>4 camera 48MP AI chuy&ecirc;n nghiệp</strong></h3>\r\n\r\n<p>Chụp h&igrave;nh tr&ecirc;n OPPO A92 giờ đ&acirc;y đ&atilde; c&oacute; bước tiến vượt trội, khi m&aacute;y trang bị tới 4 camera AI chuy&ecirc;n nghiệp. Trung t&acirc;m của 4 camera n&agrave;y l&agrave; camera ch&iacute;nh 48MP khẩu độ lớn f/1.7, tăng cường khả năng chụp đ&ecirc;m. Xung quanh l&agrave; c&aacute;c camera với những chức năng hữu &iacute;ch như chụp ảnh g&oacute;c si&ecirc;u rộng v&agrave; chụp ch&acirc;n dung. D&ugrave; trong bất cứ ho&agrave;n cảnh n&agrave;o, camera OPPO A92 cũng thể hiện được sự chuy&ecirc;n nghiệp trong nhiếp ảnh.</p>\r\n\r\n<p><img alt=\"camera OPPO A92\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a92-4.jpg\" /></p>\r\n\r\n<h3><strong>Bắt trọn mọi vẻ đẹp</strong></h3>\r\n\r\n<p>Cảm biến camera ch&iacute;nh 48MP của OPPO A92 l&agrave; một cảm biến rất cao cấp với k&iacute;ch thước lớn 1/2 inch, khẩu độ f/1.7, gi&uacute;p bạn dễ d&agrave;ng chụp được những bức ảnh sắc n&eacute;t, đầy đủ chi tiết trong cuộc sống h&agrave;ng ng&agrave;y. B&ecirc;n cạnh đ&oacute;, với sự trợ gi&uacute;p của phần mềm th&ocirc;ng minh ở chế độ Ultra Night Mode 2.0, khả năng chụp đ&ecirc;m tr&ecirc;n A92 được n&acirc;ng tầm đ&aacute;ng kể. Những bức ảnh chụp đ&ecirc;m sẽ thu trọn vẹn &aacute;nh s&aacute;ng ch&acirc;n thực, lung linh v&agrave; r&otilde; n&eacute;t.</p>\r\n\r\n<p><img alt=\"camera OPPO A92\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a92-5.jpg\" /></p>\r\n\r\n<h3><strong>Quay video chống rung hiệu quả</strong></h3>\r\n\r\n<p>Với t&iacute;nh năng quay video chống rung, bạn c&oacute; thể tự tin quay những thước phim h&agrave;nh động đầy chuy&ecirc;n nghiệp tr&ecirc;n chiếc OPPO A92. H&igrave;nh ảnh vẫn lu&ocirc;n mượt m&agrave;, kh&ocirc;ng hề c&oacute; hiện tượng nh&ograve;e hay vỡ h&igrave;nh. Ngo&agrave;i ra bạn c&ograve;n c&oacute; rất nhiều t&iacute;nh năng th&uacute; vị khi quay video như video chuyển động chậm 120 khung h&igrave;nh/s, video g&oacute;c si&ecirc;u rộng v&agrave; thậm ch&iacute; l&agrave; video độ ph&acirc;n giải 4K si&ecirc;u n&eacute;t.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"360\" src=\"https://www.youtube.com/embed/LH9T0p1MOYQ\" width=\"640\"></iframe></p>\r\n\r\n<h3><strong>Mang cả thế giới v&agrave;o trong khung h&igrave;nh</strong></h3>\r\n\r\n<p>Nhờ camera ống k&iacute;nh g&oacute;c si&ecirc;u rộng 119 độ, OPPO A92 c&oacute; thể thu được nhiều cảnh vật hơn v&agrave;o trong chỉ một khung h&igrave;nh. Bạn sẽ c&oacute; được những g&oacute;c chụp đầy nghệ thuật v&agrave; khả năng bao qu&aacute;t m&agrave; camera thường kh&ocirc;ng thể l&agrave;m được.</p>\r\n\r\n<p><img alt=\"góc siêu rộng OPPO A92\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a92-6.jpg\" /></p>\r\n\r\n<h3><strong>Tỏa s&aacute;ng với chế độ l&agrave;m đẹp AI</strong></h3>\r\n\r\n<p>OPPO A92 sở hữu camera trước độ ph&acirc;n giải 16MP v&agrave; c&ocirc;ng nghệ l&agrave;m đẹp AI trứ danh từ&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/oppo\">OPPO</a>. Chế độ l&agrave;m đẹp AI sẽ nhận diện c&aacute;c m&agrave;u da kh&aacute;c nhau trong bối cảnh v&agrave; điều kiện &aacute;nh s&aacute;ng kh&aacute;c nhau, để bạn vừa xuất hiện rạng rỡ, lại vừa c&oacute; được phong c&aacute;ch ri&ecirc;ng biệt. Tất nhi&ecirc;n l&agrave;n da v&agrave; vẻ đẹp của bạn trong ảnh cũng được l&agrave;m nổi bật, mang đến n&eacute;t đẹp ch&acirc;n thực đầy tự nhi&ecirc;n.</p>\r\n\r\n<p><img alt=\"làm đẹp AI OPPO A92\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a92-7.jpg\" /></p>\r\n\r\n<h3><strong>Trải nghiệm mượt m&agrave;, bộ nhớ cực lớn</strong></h3>\r\n\r\n<p>Hiệu năng l&agrave; một điểm cộng tr&ecirc;n OPPO A92 khi m&aacute;y trang bị bộ vi xử l&yacute; Snapdragon 665 mạnh mẽ, đi c&ugrave;ng 8GB RAM v&agrave; 128GB bộ nhớ trong. RAM 8GB LPDDR4x gi&uacute;p bạn thoải m&aacute;i mở nhiều ứng dụng c&ugrave;ng l&uacute;c m&agrave; m&aacute;y vẫn chạy mượt m&agrave;, trong khi đ&oacute; bộ nhớ 128GB UFS 2.1 kh&ocirc;ng chỉ mang đến kh&ocirc;ng gian lưu trữ dồi d&agrave;o m&agrave; c&ograve;n n&acirc;ng cao hiệu suất, tăng tốc độ c&agrave;i đặt dữ liệu hay sao ch&eacute;p tệp tin. Cuối c&ugrave;ng, con chip Qualcomm Snapdragon 665 cực mạnh gi&uacute;p hệ thống vận h&agrave;nh mượt m&agrave; v&agrave; khả năng chơi game cực đỉnh.</p>\r\n\r\n<p><img alt=\"bộ nhớ OPPO A92\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a92-8.jpg\" /></p>\r\n\r\n<h3><strong>Sạc nhanh hơn, d&ugrave;ng l&acirc;u hơn</strong></h3>\r\n\r\n<p>Vi&ecirc;n pin dung lượng l&ecirc;n tới 5000 mAh gi&uacute;p OPPO A92 c&oacute; thể sử dụng thoải m&aacute;i trong suốt cả ng&agrave;y d&agrave;i. OPPO A92 c&ograve;n t&iacute;ch hợp c&ocirc;ng nghệ sạc nhanh 18W, nhanh ch&oacute;ng nạp đầy năng lượng để c&ugrave;ng bạn trong cả c&ocirc;ng việc v&agrave; giải tr&iacute;.</p>\r\n\r\n<p><img alt=\"sạc nhanh OPPO A92\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a92-9.jpg\" /></p>\r\n\r\n<h3><strong>Loa ngo&agrave;i Stereo k&eacute;p sống động</strong></h3>\r\n\r\n<p>OPPO A92 l&agrave; chiếc điện thoại hiếm hoi tr&ecirc;n thị trường tập trung v&agrave;o loa ngo&agrave;i, t&iacute;nh năng giải tr&iacute; rất hữu &iacute;ch v&agrave; thường xuy&ecirc;n được người d&ugrave;ng sử dụng. Nhờ loa stereo k&eacute;p si&ecirc;u tuyến t&iacute;nh v&agrave; hiệu ứng &acirc;m thanh Dirac 2.0, bạn kh&ocirc;ng chỉ được tận hưởng &acirc;m thanh sống động hơn m&agrave; hệ thống c&ograve;n c&oacute; thể nhận dạng t&aacute;c vụ bạn đang l&agrave;m như nghe nhạc, xem phim hay chơi game để đưa ra t&ugrave;y chỉnh &acirc;m thanh ph&ugrave; hợp nhất.</p>\r\n\r\n<p><img alt=\"loa ngoài OPPO A92\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a92-10.jpg\" /></p>', '2020-11-16', '2020-12-01', 3, 0, 5, '\"màu đen\",\"màu trắng\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>OPPO</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>162 x 75.5 x 8.9 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>192 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>8 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>128 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>IPS LCD, 16 triệu m&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.5 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>1080 x 2400 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 10, ColorOS 7.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm SM6125 Snapdragon 665 (11 nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core (4x2.0 GHz Kryo 260 Gold &amp; 4x1.8 GHz Kryo 260 Silver)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 610</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>Camera ch&iacute;nh: 48 MP, f/1.7, (wide), 1/2.0&quot;, 0.8&micro;m, PDAF<br />\r\n			Camera si&ecirc;u rộng: 8 MP, f/2.2, 119&deg; (ultrawide), 1/4.0&quot;, 1.12&micro;m<br />\r\n			Camera xo&aacute; ph&ocirc;ng: 2 MP, f/2.4, (depth)<br />\r\n			Camera B/W: 2 MP B/W, f/2.4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>16 MP, f/2.0, (wide), 1/3.1, 1.0&micro;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>Trước: 1080p@30fps<br />\r\n			Sau: 2160p@30fps, 1080p@30/120fps, gyro-EIS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat15 800/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.0, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS, GALILEO, BDS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>2.0, Type-C 1.0 reversible connector, USB On-The-Go</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến tiệm cận, gia tốc kế, la b&agrave;n, con quay hồi chuyển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Po 5000 mAh, Fast charging 18W</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>'),
(4, 16, 'nokia-53-3gb-64gb', 1, 'Nokia 5.3 3GB - 64GB', 2700000, '637272223563055000_nokia-5-3-den-1-125.png', 28, '<h3>Đ&aacute;nh gi&aacute; chi tiết Nokia 5.3 3GB - 64GB</h3>\r\n\r\n<p><strong>Chiếc điện thoại mạnh mẽ, độ bền ho&agrave;n hảo v&agrave; đặc biệt l&agrave; 4 camera AI đỉnh cao, Nokia 5.3 l&agrave; một phi&ecirc;n bản ho&agrave;n thiện tất cả c&aacute;c t&iacute;nh năng d&agrave;nh cho bạn, c&ugrave;ng bạn chinh phục những thử th&aacute;ch.</strong></p>\r\n\r\n<p><strong><img alt=\"Nokia 5.3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/nokia-53-2.jpg\" /></strong></p>\r\n\r\n<h3><strong>Bắt kịp mọi khoảnh khắc</strong></h3>\r\n\r\n<p>C&oacute; rất nhiều điều th&uacute; vị xảy ra trong cuộc sống xung quanh bạn mỗi ng&agrave;y. Nokia hiểu điều đ&oacute; v&agrave; trang bị tới 4 camera để bạn lưu giữ mọi khoảnh khắc tr&ecirc;n Nokia 5.3. Camera ch&iacute;nh với độ ph&acirc;n giải 13MP, khẩu độ lớn f/1.8, cho khả năng chụp đ&ecirc;m cực đỉnh. Ngo&agrave;i ra, bạn c&ograve;n c&oacute; camera g&oacute;c si&ecirc;u rộng, camera chụp si&ecirc;u cận cảnh macro v&agrave; camera hỗ trợ chụp ảnh x&oacute;a ph&ocirc;ng. Tất cả tạo n&ecirc;n một thiết bị chụp h&igrave;nh chuy&ecirc;n nghiệp, mang đến những bức ảnh sắc n&eacute;t đến từng chi tiết.</p>\r\n\r\n<p><img alt=\"camera Nokia 5.3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/nokia-53-3.jpg\" /></p>\r\n\r\n<h3><strong>Thoải sức l&agrave;m điều m&igrave;nh th&iacute;ch tr&ecirc;n m&agrave;n h&igrave;nh lớn</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh lớn tới 6,55 inch của Nokia 5.3 gi&uacute;p thế giới trở n&ecirc;n sống động hơn trong mắt bạn. D&ugrave; bạn đang chơi game, xem phim, đọc b&aacute;o hay livestream, m&agrave;n h&igrave;nh lớn cũng mang đến những h&igrave;nh ảnh ch&acirc;n thực v&agrave; nhiều cảm hứng hơn. Với thiết kế m&agrave;n h&igrave;nh viền mỏng, Nokia 5.3 kh&eacute;o l&eacute;o đặt m&agrave;n h&igrave;nh lớn v&agrave;o trong một khung m&aacute;y gọn g&agrave;ng, dễ d&agrave;ng để bạn cầm nắm, thao t&aacute;c tr&ecirc;n tay hay cho v&agrave;o t&uacute;i khi di chuyển.</p>\r\n\r\n<p><img alt=\"màn hình Nokia 5.3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/nokia-53-6.jpg\" /></p>\r\n\r\n<h3><strong>Thời lượng pin l&ecirc;n tới 2 ng&agrave;y</strong></h3>\r\n\r\n<p>Nhờ dung lượng pin lớn 4000 mAh v&agrave; chế độ quản l&yacute; pin th&ocirc;ng minh bằng tr&iacute; tuệ nh&acirc;n tạo AI, Nokia 5.3 c&oacute; khả năng tiết kiệm năng lượng tối ưu. Kết quả l&agrave; bạn sẽ c&oacute; thời lượng pin rất d&agrave;i, l&ecirc;n tới 2 ng&agrave;y sử dụng chỉ sau một lần sạc đầy. Kh&ocirc;ng cần phải lo lắng về việc pin sẽ l&agrave;m ảnh hưởng đến trải nghiệm của bạn nữa.</p>\r\n\r\n<p><img alt=\"pin Nokia 5.3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/nokia-53-1.jpg\" /></p>\r\n\r\n<h3><strong>Sức mạnh hiệu năng đ&aacute;ng nể</strong></h3>\r\n\r\n<p>Nokia 5.3 mang tr&ecirc;n m&igrave;nh sức mạnh tuyệt vời khi trang bị bộ vi xử l&yacute; Qualcomm Snapdragon 665 mạnh mẽ. Với 8 nh&acirc;n kiến tr&uacute;c Kryo ti&ecirc;n tiến v&agrave; GPU đồ họa Adreno 610, Nokia 5.3 kh&ocirc;ng chỉ mang đến tốc độ nhanh ở c&aacute;c t&aacute;c vụ cơ bản m&agrave; c&ograve;n trở th&agrave;nh một thiết bị chơi game xuất sắc. Tha hồ tận hưởng những tr&ograve; chơi bạn th&iacute;ch m&agrave; kh&ocirc;ng lo hiện tượng lag giật.</p>\r\n\r\n<p><img alt=\"hiệu năng Nokia 5.3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/nokia-53-4.jpg\" /></p>\r\n\r\n<h3><strong>Hệ điều h&agrave;nh Android One, phần mềm ưu việt cho người d&ugrave;ng</strong></h3>\r\n\r\n<p>Điểm mạnh nhất của Nokia 5.3 so với c&aacute;c đối thủ về mặt phần mềm đ&oacute; l&agrave; hệ điều h&agrave;nh Android One. Đ&acirc;y l&agrave; hệ điều h&agrave;nh nguy&ecirc;n bản với giao diện đơn giản, dễ sử dụng, kh&ocirc;ng c&oacute; ứng dụng r&aacute;c. Bạn sẽ được tận hưởng tốc độ nhanh nhất, những t&iacute;nh năng mới nhất v&agrave; hệ thống bảo mật nhất. Hơn nữa, mỗi khi c&oacute; bản cập nhật Android mới, Nokia 5.3 đều được cập nhật trước ti&ecirc;n, gi&uacute;p chiếc điện thoại của bạn kh&ocirc;ng thể bị lỗi thời.</p>\r\n\r\n<p><img alt=\"hệ điều hành Nokia 5.3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/nokia-53-7.jpg\" /></p>\r\n\r\n<h3><strong>Độ bền chuẩn thương hiệu Nokia</strong></h3>\r\n\r\n<p>Những chiếc điện thoại Nokia lu&ocirc;n được đ&aacute;nh gi&aacute; cao về độ bền ho&agrave;n hảo v&agrave; ng&ocirc;n ngữ ri&ecirc;ng biệt trong thiết kế. Nokia 5.3 c&oacute; thiết kế mang cảm hứng Bắc &Acirc;u cổ điển, với những đường n&eacute;t tinh tế v&agrave; m&agrave;u sắc lịch l&atilde;m. Cả ba phi&ecirc;n bản m&agrave;u l&agrave; Xanh lục bảo, V&agrave;ng c&aacute;t v&agrave; X&aacute;m than ch&igrave; đều rất độc đ&aacute;o, kh&aacute;c biệt so với c&aacute;c smartphone kh&aacute;c tr&ecirc;n thị trường. Với mặt trước l&agrave;m từ k&iacute;nh cong 2,5D thanh lịch v&agrave; mặt sau chất liệu composite mới chống trầy, Nokia 5.3 vừa đẹp lại vừa rất bền vững.</p>\r\n\r\n<p><img alt=\"độ bền Nokia 5.3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/nokia-53-5.jpg\" /></p>', '2020-11-16', '2020-12-01', 3, 0, 5, '\"màu đen\",\"màu xanh\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Nokia</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>D&agrave;i 164.3 mm - Ngang 76.6 mm - D&agrave;y 8.5 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>185 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>3 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>64 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>IPS LCD , HD+</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.55 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>720 x 1600 pixel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Snapdragon 665 8 nh&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>4 nh&acirc;n 2.0 GHz &amp; 4 nh&acirc;n 1.8 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 610</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>MicroSD, hỗ trợ tối đa 512 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>Ch&iacute;nh 13 MP &amp; Phụ 5 MP, 2 MP, 2 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>8 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 b/g/n, Dual-band, Wi-Fi Direct, Wi-Fi hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>A2DP, LE, v4.2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>BDS, A-GPS, GLONASS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>USB Type-C</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Mở kh&oacute;a bằng v&acirc;n tay</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>4000 mAh - Tiết kiệm pin, Sạc pin nhanh</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>'),
(5, 11, 'realme-c3-3gb-32gb', 1, 'Realme C3 3GB-32GB', 2000000, '637200356355787786_realme-c3-do-dd6.jpg', 21, '<h3>Đ&aacute;nh gi&aacute; chi tiết Realme C3 3GB-32GB</h3>\r\n\r\n<p><strong>Nổi bật với bộ 3 camera sau thời thượng, realme C3 gi&uacute;p bạn kh&aacute;m ph&aacute; thế giới qua những g&oacute;c nh&igrave;n chuy&ecirc;n nghiệp, ngo&agrave;i ra điện thoại c&ograve;n sở hữu vi&ecirc;n pin dung lượng tới 5000 mAh c&ugrave;ng hiệu năng mạnh mẽ trong tầm gi&aacute; rẻ.</strong></p>\r\n\r\n<p><img alt=\"realme C3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/realme-c3-1.jpg\" /></p>\r\n\r\n<h3><strong>Bộ 3 camera 12MP AI chuy&ecirc;n nghiệp</strong></h3>\r\n\r\n<p>Realme C3 mang đến cho bạn đầy đủ t&iacute;nh năng chụp h&igrave;nh khi trang bị tới 3 camera sau với mỗi camera sẽ c&oacute; một vai tr&ograve; kh&aacute;c nhau. Camera ch&iacute;nh 12MP AI chụp ảnh sắc n&eacute;t, kể cả trong điều kiện thiếu s&aacute;ng; camera si&ecirc;u cận cho ph&eacute;p bạn chụp ảnh những vật thể nhỏ ở cự li cực gần chỉ 4cm v&agrave; cuối c&ugrave;ng l&agrave; camera x&oacute;a ph&ocirc;ng, hỗ trợ để bạn chụp ảnh ch&acirc;n dung x&oacute;a ph&ocirc;ng đẹp hơn. D&ugrave; trong bất kỳ ho&agrave;n cảnh n&agrave;o th&igrave; realme C3 cũng c&oacute; thể chụp được những bức ảnh chất lượng nhất.</p>\r\n\r\n<p><img alt=\"thiết kế realme C3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/realme-c3-2.jpg\" /></p>\r\n\r\n<h3><strong>Sự kh&aacute;c biệt khi x&oacute;a ph&ocirc;ng bằng phần cứng</strong></h3>\r\n\r\n<p>Kh&ocirc;ng chỉ sử dụng phần mềm m&agrave; realme C3 c&ograve;n c&oacute; một camera chuy&ecirc;n dụng để hỗ trợ chụp ảnh x&oacute;a ph&ocirc;ng. Ch&iacute;nh v&igrave; thế những bức ảnh x&oacute;a ph&ocirc;ng kết hợp bởi camera ch&iacute;nh v&agrave; camera x&oacute;a ph&ocirc;ng cho kết quả đ&aacute;ng kinh ngạc. Chủ thể trở n&ecirc;n nổi bật, ph&acirc;n t&aacute;ch hậu cảnh ch&iacute;nh x&aacute;c v&agrave; x&oacute;a ph&ocirc;ng mượt m&agrave;. Bạn c&oacute; thể chụp ảnh x&oacute;a ph&ocirc;ng với bất cứ đối tượng n&agrave;o, d&ugrave; l&agrave; người hay vật.</p>\r\n\r\n<p><img alt=\"realme C3 xóa phông\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/realme-c3-3.jpg\" /></p>\r\n\r\n<h3><strong>Kh&aacute;m ph&aacute; thế giới si&ecirc;u nhỏ</strong></h3>\r\n\r\n<p>Camera g&oacute;c si&ecirc;u cận 4cm sẽ gi&uacute;p bạn chụp được cả những vật thể si&ecirc;u nhỏ ở khoảng c&aacute;ch cực gần. Đ&ocirc;i khi bạn nh&igrave;n thấy những điều nhỏ b&eacute; th&uacute; vị nhưng kh&ocirc;ng thể lấy n&eacute;t được bằng camera th&ocirc;ng thường. Camera si&ecirc;u cận macro của realme C3 sẽ l&agrave;m nhiệm vụ đ&oacute;, lưu lại những chi tiết bất ngờ d&agrave;nh cho bạn.</p>\r\n\r\n<p><img alt=\"realme C3 macro\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/realme-c3-4.jpg\" /></p>\r\n\r\n<h3><strong>L&agrave;m đẹp th&ocirc;ng minh AI bằng camera trước</strong></h3>\r\n\r\n<p>Kh&ocirc;ng chỉ camera sau, camera trước realme C3 cũng c&oacute; thể chụp những bức ảnh selfie ch&acirc;n dung tuyệt đẹp. Thuật to&aacute;n th&ocirc;ng minh từ tr&iacute; tuệ nh&acirc;n tạo AI cho bạn xuất hiện đẹp rạng rỡ hơn với những tinh chỉnh l&agrave;m đẹp c&aacute; nh&acirc;n h&oacute;a dựa tr&ecirc;n đặc điểm của từng người d&ugrave;ng.</p>\r\n\r\n<p><img alt=\"làm đẹp realme C3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/realme-c3-5.jpg\" /></p>\r\n\r\n<h3><strong>Trải nghiệm chơi game mạnh mẽ</strong></h3>\r\n\r\n<p>Hiệu năng realme C3 nổi bật với bộ vi xử l&yacute; Helio G70 mạnh mẽ. Con chip n&agrave;y sản xuất tr&ecirc;n tiến tr&igrave;nh 12nm, c&ocirc;ng nghệ Hyper Engine, bao gồm 8 nh&acirc;n v&agrave; đi c&ugrave;ng GPU Mali G52 chuy&ecirc;n chơi game. Những ứng dụng h&agrave;ng ng&agrave;y bạn sử dụng tr&ecirc;n realme C3 đều diễn ra một c&aacute;ch mượt m&agrave;. Kể cả khi bạn chơi game, realme C3 cũng đ&aacute;p ứng rất tốt những tựa game phổ biến hiện nay như Li&ecirc;n qu&acirc;n Mobile hay PUBG Mobile.</p>\r\n\r\n<p><img alt=\"chơi game realme C3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/realme-c3-6.jpg\" /></p>\r\n\r\n<h3><strong>Pin khủng 5000 mAh, sạc ngược cho smartphone kh&aacute;c</strong></h3>\r\n\r\n<p>Việc trang bị vi&ecirc;n pin dung lượng l&ecirc;n tới 5000 mAh gi&uacute;p realme C3 c&oacute; thời lượng pin đ&aacute;ng kinh ngạc. Bạn c&oacute; thể xem Youtube li&ecirc;n tục trong khoảng 20 tiếng, bắn PUBG li&ecirc;n tục trong hơn 10 tiếng, gọi thoại trong 44 tiếng, những th&ocirc;ng số hết sức ấn tượng. Trung b&igrave;nh khoảng 2 ng&agrave;y bạn mới cần sạc điện thoại một lần. Vi&ecirc;n pin của realme C3 lớn đến nỗi bạn c&oacute; thể sử dụng n&oacute; thay cho vai tr&ograve; của một cục sạc dự ph&ograve;ng để sạc pin ngược lại cho điện thoại v&agrave; c&aacute;c thiết bị kh&aacute;c.</p>\r\n\r\n<p><img alt=\"pin realme C3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/realme-c3-7.jpg\" /></p>\r\n\r\n<h3><strong>Tận hưởng những nội dung cực đ&atilde; tr&ecirc;n m&agrave;n h&igrave;nh giọt sương tr&agrave;n viền</strong></h3>\r\n\r\n<p>Tha hồ tận hưởng những nội dung y&ecirc;u th&iacute;ch tr&ecirc;n m&agrave;n h&igrave;nh lớn tới 6,5 inch, hiển thị tr&agrave;n viền dạng &ldquo;giọt sương&rdquo; với tỉ lệ chuẩn điện ảnh 20:9. Những bộ phim, tr&ograve; chơi hay thậm ch&iacute; l&agrave; cả b&agrave;i b&aacute;o bạn đang đọc cũng trở n&ecirc;n sống động, th&uacute; vị hơn tr&ecirc;n một m&agrave;n h&igrave;nh lớn, c&oacute; tỉ lệ diện t&iacute;ch tr&ecirc;n mặt trước l&ecirc;n tới 89,8%.</p>\r\n\r\n<p><img alt=\"màn hình realme C3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/realme-c3-8.jpg\" /></p>\r\n\r\n<h3><strong>Cảm biến v&acirc;n tay cực nhạy</strong></h3>\r\n\r\n<p>Cảm biến v&acirc;n tay một chạm tr&ecirc;n mặt lưng realme C3 l&agrave; phương thức bảo mật rất hữu &iacute;ch v&agrave; tiện dụng. Kh&ocirc;ng cần phải nhấn n&uacute;t nguồn rồi nhập mật khẩu như những g&igrave; bạn biết trước đ&acirc;y nữa, với realme C3 đơn giản chỉ cần chạm v&agrave;o khu vực cảm biến. M&aacute;y sẽ nhận diện cực nhanh trong 0,27 gi&acirc;y v&agrave; mở kh&oacute;a ngay lập tức. Hơn nữa, realme C3 c&ograve;n c&oacute; th&ecirc;m lựa chọn mở kh&oacute;a bằng nhận diện khu&ocirc;n mặt, gi&uacute;p việc mở kh&oacute;a m&aacute;y của bạn trở n&ecirc;n dễ d&agrave;ng v&agrave; th&uacute; vị hơn.</p>\r\n\r\n<p><img alt=\"vân tay realme C3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/realme-c3-9.jpg\" /></p>\r\n\r\n<h3><strong>Thiết kế hiện đại v&agrave; trẻ trung</strong></h3>\r\n\r\n<p>Realme C3 kh&ocirc;ng chỉ nổi bật với hai phi&ecirc;n bản m&agrave;u tươi trẻ l&agrave; Băng Đăng Xanh v&agrave; Băng Đăng Đỏ m&agrave; chiếc điện thoại n&agrave;y c&ograve;n ẩn chứa nhiều b&iacute; mật trong thiết kế. Mặt lưng v&acirc;n s&aacute;ng &aacute;nh dương độc đ&aacute;o gi&uacute;p điện thoại c&oacute; hiện tượng đổi m&agrave;u nhẹ nh&agrave;ng, tinh tế dưới &aacute;nh s&aacute;ng. Đồng thời realme đ&atilde; sử dụng c&ocirc;ng nghệ sơn đặc biệt, hạn chế t&igrave;nh trạng b&aacute;m bẩn, trầy xước, dấu v&acirc;n tay trong suốt qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p><img alt=\"thiết kế realme C3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/realme-c3-10.jpg\" /></p>', '2020-11-16', '2020-12-01', 3, 0, 5, '\"màu đỏ\",\"màu xanh\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Realme</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>164.4 x 75 x 9 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>195 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>3 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>32 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>IPS LCD, 16 triệu m&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.5 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>720 x 1600 pixel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 10.0; realme UI 1.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Mediatek Helio G70 (12 nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core (2x2.0 GHz Cortex-A75 &amp; 6x1.7 GHz Cortex-A55)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Mali-G52 2EEMC2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>Camera ch&iacute;nh: 12 MP, f/1.8, 28mm (wide), 1/2.8&quot;, 1.25&micro;m, PDAF<br />\r\n			Camera Macro: 2 MP<br />\r\n			Camera đo chiều s&acirc;u:2 MP, f/2.4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>Camera trước: 5 MP, f/2.4, 27mm (wide), 1/5&quot;, 1.12&micro;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>Trước I Sau: 1080p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (2CA) Cat6 300/50 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 b/g/n, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.0, A2DP, LE, aptX</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS, BDS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>microUSB 2.0, USB On-The-Go</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến gia tốc, cảm biến tiệm cận, la b&agrave;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Po 5000 mAh</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>'),
(6, 15, 'vsmart-joy-3-2gb-32gb', 1, 'Vsmart Joy 3 2GB-32GB', 2000000, '637164273141859571_Vsmart-joy-3-den-14.png', 34, '<h3>Đ&aacute;nh gi&aacute; chi tiết Vsmart Joy 3 2GB-32GB</h3>\r\n\r\n<p><strong>N&acirc;ng tầm sức mạnh của smartphone thương hiệu Việt,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/vsmart-joy-3-2gb-32gb\" target=\"_blank\">Vsmart Joy 3</a>&nbsp;sở hữu m&agrave;n h&igrave;nh giọt nước cực lớn, dung lượng pin khủng, sạc nhanh v&agrave; 3 camera AI, đ&aacute;p ứng ho&agrave;n hảo mọi nhu cầu ở mức gi&aacute; rẻ đến bất ngờ.</strong></p>\r\n\r\n<p><strong><img alt=\"Vsmart Joy 3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-joy-3-1.jpg\" /></strong></p>\r\n\r\n<h3><strong>Tận hưởng h&igrave;nh ảnh si&ecirc;u lớn 6,5 inch</strong></h3>\r\n\r\n<p>C&ugrave;ng tận hưởng những nội dung sống động tr&ecirc;n m&agrave;n h&igrave;nh lớn tới 6,52 inch của Vsmart Joy 3. M&agrave;n h&igrave;nh được l&agrave;m dưới dạng viền mỏng giọt nước, cho kh&ocirc;ng gian hiển thị lớn hơn, nhưng đồng thời k&iacute;ch thước m&aacute;y cũng gọn g&agrave;ng hơn. C&ocirc;ng nghệ m&agrave;n h&igrave;nh IPS cho h&igrave;nh ảnh sắc n&eacute;t, độ s&aacute;ng v&agrave; độ tương phản cao. Chắc chắn bạn sẽ c&oacute; những gi&acirc;y ph&uacute;t giải tr&iacute; kh&oacute; qu&ecirc;n khi chơi game hay xem phim tr&ecirc;n Vsmart Joy 3.</p>\r\n\r\n<p><img alt=\"màn hình Vsmart Joy 3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-joy-3-2.jpg\" /></p>\r\n\r\n<h3><strong>Tr&agrave;n đầy năng lượng suốt cả ng&agrave;y</strong></h3>\r\n\r\n<p>Vsmart Joy 3 mang tr&ecirc;n m&igrave;nh vi&ecirc;n pin dung lượng l&ecirc;n tới 5000 mAh, cho thời gian sử dụng đ&aacute;ng kinh ngạc. Bạn c&oacute; thể xem Youtube li&ecirc;n tục trong 25 giờ đồng hồ, đ&agrave;m thoại trong 48 giờ hoặc nghe nhạc trong 143 giờ. Ở nhu cầu sử dụng b&igrave;nh thường, Vsmart Joy 3 c&oacute; thể sử dụng trong 2 ng&agrave;y mới cần phải sạc. Tốc độ sạc của Joy 3 cũng hết sức ấn tượng nhờ c&ocirc;ng nghệ sạc nhanh QuickCharge 3.0 c&ocirc;ng suất cao 18W. Chỉ cần khoảng 30 ph&uacute;t sạc, bạn sẽ tiếp tục d&ugrave;ng m&aacute;y thoải m&aacute;i th&ecirc;m nửa ng&agrave;y.</p>\r\n\r\n<p><img alt=\"pin Vsmart Joy 3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-joy-3-3.jpg\" /></p>\r\n\r\n<h3><strong>Bộ 3 camera AI phong c&aacute;ch</strong></h3>\r\n\r\n<p>Nhiếp ảnh tr&ecirc;n Vsmart Joy 3 c&oacute; sự n&acirc;ng cấp mạnh mẽ với 3 camera thời thượng, mang đến nhiều chức năng hơn cho việc chụp ảnh. Bạn sẽ c&oacute; camera ch&iacute;nh 13MP, camera g&oacute;c si&ecirc;u rộng 8MP v&agrave; camera x&oacute;a ph&ocirc;ng chuy&ecirc;n nghiệp 2MP. Mỗi camera đ&oacute;ng một vai tr&ograve; kh&aacute;c nhau để trải nghiệm chụp ảnh trở n&ecirc;n th&uacute; vị hơn rất nhiều.</p>\r\n\r\n<p><img alt=\"camera Vsmart Joy 3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-joy-3-4.jpg\" /></p>\r\n\r\n<h3><strong>Camera ch&iacute;nh chụp thiếu s&aacute;ng đỉnh cao</strong></h3>\r\n\r\n<p>Camera ch&iacute;nh 13MP tr&ecirc;n Vsmart Joy 3 kh&ocirc;ng chỉ chụp ảnh sắc n&eacute;t trong điều kiện &aacute;nh s&aacute;ng ban ng&agrave;y m&agrave; c&ograve;n c&oacute; khả năng chụp thiếu s&aacute;ng rất tốt. Bạn c&oacute; thể chọn chế độ chụp thiếu s&aacute;ng để mang lại những bức ảnh đầy nghệ thuật. Khung cảnh ho&agrave;ng h&ocirc;n chập choạng, b&igrave;nh minh s&aacute;ng sớm hay phố đ&ecirc;m với những &aacute;nh đ&egrave;n lung linh sẽ được t&aacute;i hiện một c&aacute;ch sinh động tr&ecirc;n Vsmart Joy 3.</p>\r\n\r\n<p><img alt=\"camera góc rộng Vsmart Joy 3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-joy-3-5.jpg\" /></p>\r\n\r\n<h3><strong>Mở rộng tầm nh&igrave;n</strong></h3>\r\n\r\n<p>Joy 3 t&iacute;ch hợp camera g&oacute;c si&ecirc;u rộng 8MP với g&oacute;c nh&igrave;n l&ecirc;n tới 120 độ, cho khung h&igrave;nh rộng gấp đ&ocirc;i ống k&iacute;nh camera th&ocirc;ng thường. Nhờ vậy bạn sẽ thu được những khung cảnh rộng lớn, ho&agrave;nh tr&aacute;ng hơn.</p>\r\n\r\n<p><img alt=\"tầm nhìn Vsmart Joy 3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-joy-3-15.jpg\" /></p>\r\n\r\n<h3><strong>Nổi bật hơn với ảnh ch&acirc;n dung</strong></h3>\r\n\r\n<p>Sự kết hợp của camera ch&iacute;nh v&agrave; camera đo độ s&acirc;u trường ảnh tr&ecirc;n Vsmart Joy 3 sẽ mang lại cho bạn những bức ảnh x&oacute;a ph&ocirc;ng chuy&ecirc;n nghiệp. Ở trong c&aacute;c bức ảnh n&agrave;y, chủ thể sẽ nổi bật giữa phần viền l&agrave;m mờ ảo diệu. Bạn cũng c&oacute; thể t&ugrave;y biến mức độ x&oacute;a ph&ocirc;ng hay th&ecirc;m v&agrave;o những hiệu ứng để c&oacute; được h&igrave;nh ảnh ho&agrave;n hảo nhất.</p>\r\n\r\n<p><img alt=\"ảnh chân dung Vsmart Joy 3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-joy-3-7.jpg\" /></p>\r\n\r\n<h3><strong>Tự tin khoe c&aacute; t&iacute;nh bằng ảnh selffie</strong></h3>\r\n\r\n<p>Camera selfie của Vsmart Joy 3 c&oacute; độ ph&acirc;n giải 8MP, chụp ảnh sắc n&eacute;t v&agrave; l&agrave;m đẹp th&ocirc;ng minh, để bạn lu&ocirc;n xuất hiện rạng rỡ trong ống k&iacute;nh. Với camera n&agrave;y, bạn c&oacute; thể l&agrave;m mịn da, x&oacute;a khuyết điểm, nổi bật những đường n&eacute;t tr&ecirc;n khu&ocirc;n mặt v&agrave; thậm ch&iacute; x&oacute;a ph&ocirc;ng để h&igrave;nh ảnh &ldquo;tự sướng&rdquo; đẹp hơn bao giờ hết.</p>\r\n\r\n<p><img alt=\"ảnh selfie Vsmart Joy 3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-joy-3-8.jpg\" /></p>\r\n\r\n<h3><strong>Trải nghiệm mượt m&agrave;, hiệu năng mạnh mẽ</strong></h3>\r\n\r\n<p>Vsmart Joy 3 trang bị bộ vi xử l&yacute; Qualcomm Snapdragon 632 mạnh mẽ, đủ để chạy tốt mọi ứng dụng. Bạn cũng sẽ c&oacute; 32GB bộ nhớ trong, tha hồ lưu trữ, c&agrave;i đặt ứng dụng. Dễ d&agrave;ng n&acirc;ng cấp bộ nhớ th&ocirc;ng qua khe cắm thẻ nhớ microSD. Với hệ điều h&agrave;nh VOS mới nhất, Vsmart Joy 3 sẽ mang đến trải nghiệm mượt m&agrave;, dễ sử dụng v&agrave; nhiều t&iacute;nh năng hữu &iacute;ch.</p>\r\n\r\n<p><img alt=\"hiệu năng Vsmart Joy 3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-joy-3-12.jpg\" /></p>\r\n\r\n<h3><strong>Bảo mật th&ocirc;ng minh</strong></h3>\r\n\r\n<p>Với cả hai phương thức bảo mật ti&ecirc;n tiến nhất hiện nay l&agrave; cảm biến v&acirc;n tay v&agrave; nhận diện khu&ocirc;n mặt, Vsmart Joy 3 cung cấp cho bạn t&ugrave;y chọn mở kh&oacute;a linh hoạt bằng sinh trắc học vừa an to&agrave;n, vừa tiện lợi. Chỉ cần một c&uacute; chạm hoặc đơn giản l&agrave; cầm m&aacute;y l&ecirc;n,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;sẽ nhận diện v&agrave; mở kh&oacute;a ngay lập tức, sẵn s&agrave;ng cho mọi hoạt động.</p>\r\n\r\n<p><img alt=\"vân tay Vsmart Joy 3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-joy-3-11.jpg\" /></p>', '2020-11-16', '2020-12-01', 3, 0, 5, '\"màu đen\",\"màu tím\",\"màu trắng\"', 5, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Vsmart</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>165.13 x 76..4 x 9.19 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>192 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>2 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>32 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>IPS LCD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.5 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>720 x 1600 pixel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm Snapdragon 632</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Kryo 250</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 506</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>MicroSD, hỗ trợ tối đa 128 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>Ch&iacute;nh: 13 MP<br />\r\n			Phụ :8 MP, 2MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>8 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>720p@30fps,1080p@30fps, 2160p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE Cat4 150/50 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 b/g/n, Wi-Fi Direct, Wi-Fi hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>LE, A2DP, v4.2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>BDS, A-GPS, GLONASS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến tiệm cận, cảm biến gia tốc, la b&agrave;n, con quay hồi chuyển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Po 5000 mAh</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>');
INSERT INTO `sanpham` (`sp_id`, `th_id`, `sp_nhan`, `kho_id`, `sp_ten`, `sp_dongianhap`, `sp_hinh`, `sp_soluong`, `sp_thongtin`, `sp_ngaytaomoi`, `sp_ngaycapnhat`, `khuyenmai_id`, `sp_hienthi`, `ncc_id`, `sp_mausac`, `xx_id`, `sp_tskt`) VALUES
(7, 18, 'iphone-11-4gb-64gb', 1, 'iPhone 11 4GB-64GB', 16000000, '637393169370871358_ip-11-dd71.jpg', 33, '<h3>Đ&aacute;nh gi&aacute; chi tiết iPhone 11 64GB</h3>\r\n\r\n<p><strong><a href=\"https://fptshop.com.vn/dien-thoai/iphone-11-64gb\" target=\"_blank\">iPhone 11</a>&nbsp;với 6 phi&ecirc;n bản m&agrave;u sắc, camera c&oacute; khả năng chụp ảnh vượt trội, thời lượng pin cực d&agrave;i v&agrave; bộ vi xử l&yacute; mạnh nhất từ trước đến nay sẽ mang đến trải nghiệm tuyệt vời d&agrave;nh cho bạn.</strong></p>\r\n\r\n<p><strong><img alt=\"iPhone 11\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-1.jpg\" /></strong></p>\r\n\r\n<h3><strong>Rực rỡ sắc m&agrave;u, thể hiện c&aacute; t&iacute;nh</strong></h3>\r\n\r\n<p>C&oacute; tới 6 sự lựa chọn m&agrave;u sắc cho iPhone 11 64GB, bao gồm T&iacute;m, V&agrave;ng, Xanh lục, Đen, Trắng v&agrave; Đỏ, tha hồ để bạn lựa chọn m&agrave;u ph&ugrave; hợp với sở th&iacute;ch, c&aacute; t&iacute;nh ri&ecirc;ng của bản th&acirc;n. Vẻ đẹp của iPhone 11 đến từ thiết kế cao cấp khi được l&agrave;m từ khung nh&ocirc;m nguy&ecirc;n khối v&agrave; mặt lưng liền lạc với một tấm k&iacute;nh duy nhất. Ở mặt trước, bạn sẽ được chi&ecirc;m ngưỡng m&agrave;n h&igrave;nh Liquid Retina lớn 6,1 inch, m&agrave;u sắc v&ocirc; c&ugrave;ng ch&acirc;n thực. Tất cả tạo n&ecirc;n chiếc&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;tr&agrave;n đầy hứng khởi.</p>\r\n\r\n<p><img alt=\"iPhone 11 màu sắc \" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-2.jpg\" /></p>\r\n\r\n<h3><strong>Hệ thống camera k&eacute;p mới</strong></h3>\r\n\r\n<p>Apple iPhone 11 sở hữu cụm camera k&eacute;p mặt sau, bao gồm camera g&oacute;c rộng v&agrave; camera g&oacute;c si&ecirc;u rộng. Cảm biến camera g&oacute;c rộng 12MP c&oacute; khả năng lấy n&eacute;t tự động nhanh gấp 3 lần trong điều kiện thiếu s&aacute;ng. B&ecirc;n cạnh đ&oacute; cảm biến g&oacute;c si&ecirc;u rộng cho khả năng chụp cảnh rộng gấp 4 lần, l&agrave; phương tiện ghi h&igrave;nh tuyệt vời cho những chuyến du lịch, chụp h&igrave;nh nh&oacute;m. Nhanh ch&oacute;ng chụp ảnh, quay video, chỉnh sửa v&agrave; chia sẻ ngay tr&ecirc;n&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/apple-iphone\">iPhone</a>, bạn sẽ kh&ocirc;ng bỏ lỡ bất cứ khoảnh khắc đ&aacute;ng nhớ n&agrave;o.</p>\r\n\r\n<p><img alt=\"iPhone 11 camera kép\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-3.jpg\" /></p>\r\n\r\n<h3><strong>Quay video chưa bao giờ chuy&ecirc;n nghiệp đến thế</strong></h3>\r\n\r\n<p>Điện thoại iPhone 11 64GB c&oacute; khả năng quay những đoạn video tuyệt đẹp với độ ph&acirc;n giải 4K 60fps si&ecirc;u sắc n&eacute;t. Camera g&oacute;c si&ecirc;u rộng mang đến nhiều khung cảnh hơn, đồng thời khả năng quay chuyển động cực ấn tượng sẽ tạo n&ecirc;n những thước phim ho&agrave;n hảo. Ngo&agrave;i ra bạn c&ograve;n c&oacute; thể tập trung thu &acirc;m v&agrave;o một chủ thể khi quay video bằng c&aacute;ch ph&oacute;ng to, zoom h&igrave;nh ảnh &ndash; đồng thời zoom &acirc;m thanh hết sức th&uacute; vị. Tất nhi&ecirc;n sau khi quay video, việc chỉnh sửa v&agrave; xuất bản sẽ diễn ra hết sức tiện lợi, nhanh ch&oacute;ng tr&ecirc;n iPhone 11.</p>\r\n\r\n<p><img alt=\"video iPhone 11\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-4.jpg\" /></p>\r\n\r\n<h3><strong>Night Mode, chuy&ecirc;n gia chụp ảnh thiếu s&aacute;ng</strong></h3>\r\n\r\n<p>Chụp ảnh thiếu s&aacute;ng kh&ocirc;ng c&ograve;n l&agrave; vấn đề tr&ecirc;n iPhone 11. Với chế độ chụp đ&ecirc;m chuy&ecirc;n dụng Night Mode ho&agrave;n to&agrave;n mới, m&aacute;y ảnh sẽ nh&igrave;n thấy r&otilde; r&agrave;ng từng chi tiết trong đ&ecirc;m tối. Kh&ocirc;ng cần phải bật đ&egrave;n flash, h&igrave;nh ảnh vẫn trở n&ecirc;n sống động nhờ &aacute;nh s&aacute;ng tự nhi&ecirc;n, m&agrave;u sắc ch&iacute;nh x&aacute;c v&agrave; chất ảnh s&aacute;ng r&otilde;.</p>\r\n\r\n<p><img alt=\"iPhone 11 night mode\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-5.jpg\" /></p>\r\n\r\n<h3><strong>Hiệu ứng x&oacute;a ph&ocirc;ng &ldquo;ảo diệu&rdquo;</strong></h3>\r\n\r\n<p>Những bức ảnh ch&acirc;n dung x&oacute;a ph&ocirc;ng của bạn sẽ trở n&ecirc;n &ldquo;ảo diệu&rdquo; hơn tr&ecirc;n iPhone 11. Với cơ chế x&oacute;a ph&ocirc;ng v&agrave; &aacute;nh s&aacute;ng mới, giờ đ&acirc;y bạn c&oacute; thể chụp ảnh x&oacute;a ph&ocirc;ng c&ugrave;ng người bạn th&acirc;n; th&ecirc;m hiệu ứng &aacute;nh s&aacute;ng Studio; thay đổi độ mờ ph&ocirc;ng nền. C&aacute;c bức ảnh x&oacute;a ph&ocirc;ng sẽ c&oacute; độ l&agrave;m mờ tuyệt hảo, ph&acirc;n t&aacute;ch chủ thể ch&iacute;nh x&aacute;c v&agrave; &aacute;nh s&aacute;ng đẹp mắt.</p>\r\n\r\n<p><img alt=\"iPhone 11 xóa phông\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-6.jpg\" /></p>\r\n\r\n<h3><strong>Smart HDR thế hệ mới, chụp ảnh tốt hơn trong điều kiện &aacute;nh s&aacute;ng phức tạp</strong></h3>\r\n\r\n<p>Nhờ tr&iacute; tuệ nh&acirc;n tạo Machine Learning, t&iacute;nh năng Smart HDR tr&ecirc;n camera iPhone 11 th&ocirc;ng minh hơn bao giờ hết. Camera sẽ tự động nhận diện người v&agrave; cảnh, sau đ&oacute; đưa ra c&aacute;c tinh chỉnh ri&ecirc;ng biệt. Trong c&ugrave;ng một bức ảnh, khu&ocirc;n mặt sẽ c&oacute; điểm nhấn đẹp hơn, t&ocirc;ng m&agrave;u da tự nhi&ecirc;n &ndash; trong khi đ&oacute; phần khung cảnh nền ho&agrave;ng h&ocirc;n vẫn tuyệt đẹp theo một c&aacute;ch kh&aacute;c. Smart HDR sẽ gi&uacute;p điện thoại xử l&yacute; bức ảnh xuất sắc, đặc biệt l&agrave; trong điều kiện &aacute;nh s&aacute;ng phức tạp.</p>\r\n\r\n<p><img alt=\"iPhone 11 smart HDR\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-7.jpg\" /></p>\r\n\r\n<h3><strong>Camera trước 12MP, hơn cả chụp ảnh selfie</strong></h3>\r\n\r\n<p>Camera trước của iPhone 11 đ&atilde; được n&acirc;ng cấp l&ecirc;n 12MP, mang đến những bức ảnh selfie sắc n&eacute;t v&agrave; chất lượng cao hơn. Apple c&ograve;n bổ sung th&ecirc;m t&iacute;nh năng mới mang t&ecirc;n slofie &ndash; quay một đoạn video chuyển động si&ecirc;u chậm 120 fps bằng ch&iacute;nh camera trước. Lưu giữ những khoảnh khắc th&uacute; vị theo c&aacute;ch của ri&ecirc;ng bạn.</p>\r\n\r\n<p><img alt=\"camera trước\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-8.jpg\" /></p>\r\n\r\n<h3><strong>Chiếc iPhone bền bỉ v&agrave; th&acirc;n thiện</strong></h3>\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; vẻ ngo&agrave;i hấp dẫn, iPhone 11 c&ograve;n rất vững chắc khi sử dụng k&iacute;nh cường lực cứng nhất trong thế giới smartphone. Nước cũng kh&ocirc;ng phải l&agrave; vấn đề với khả năng&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/chuan-ip68-la-gi-khac-biet-gi-so-voi-ip67-57823\">chống nước chuẩn IP68</a>, cho ph&eacute;p bạn ng&acirc;m thiết bị dưới 2m trong v&ograve;ng 30 ph&uacute;t, điện thoại vẫn ho&agrave;n to&agrave;n sống khỏe dưới nước. Tuyệt vời hơn nữa, tất cả vật liệu chế tạo n&ecirc;n iPhone 11 đều c&oacute; khả năng t&aacute;i chế, cực kỳ th&acirc;n thiện với m&ocirc;i trường.</p>\r\n\r\n<p><img alt=\"iPhone 11 chống nước\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-9.jpg\" /></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh Liquid Retina sống động đến từng chi tiết</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh 6,1 inch Liquid Retina tr&ecirc;n điện thoại iPhone 11 mang cả thế giới đến trước mắt bạn khi mọi thứ đều ch&acirc;n thực một c&aacute;ch tuyệt vời. C&acirc;n bằng trắng được điều chỉnh dựa theo &aacute;nh s&aacute;ng xung quanh, để nhiệt độ m&agrave;u lu&ocirc;n lu&ocirc;n dễ chịu. Với cảm ứng x&uacute;c gi&aacute;c Haptic Touch ho&agrave;n to&agrave;n mới, bạn c&oacute; thể thao t&aacute;c nhanh ch&oacute;ng tr&ecirc;n m&agrave;n h&igrave;nh cảm ứng.</p>\r\n\r\n<p><img alt=\"iPhone 11 liquid retina\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-10.jpg\" /></p>\r\n\r\n<h3><strong>Thoải m&aacute;i sử dụng cả ng&agrave;y</strong></h3>\r\n\r\n<p>Thời lượng pin của iPhone 11 64GB tr&ecirc;n cả mong đợi, cho ph&eacute;p bạn sử dụng thoải m&aacute;i trong cả ng&agrave;y d&agrave;i. Đ&acirc;y l&agrave; kết quả của sự tương th&iacute;ch tuyệt đối giữa phần cứng v&agrave; phần mềm. Hơn nữa, với t&iacute;nh năng sạc nhanh, chỉ cần 30 ph&uacute;t cho 50% pin, nhanh ch&oacute;ng nạp đầy năng lượng.</p>\r\n\r\n<p><img alt=\"iPhone 11 pin\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-12.jpg\" /></p>\r\n\r\n<h3><strong>Sức mạnh đẳng cấp kh&aacute;c biệt</strong></h3>\r\n\r\n<p>Cả iPhone 11 v&agrave; iPhone 11 Pro đều được trang bị bộ vi xử l&yacute; mạnh nhất thế giới smartphone hiện tại.<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/con-chip-apple-a13-bionic-tren-iphone-11-manh-co-nao-101678\">&nbsp;Apple A13 Bionic</a>&nbsp;mang đến hiệu năng đẳng cấp kh&aacute;c biệt, mọi thứ đều diễn ra nhanh ch&oacute;ng, mượt m&agrave; một c&aacute;ch ho&agrave;n hảo. Kể cả những tựa game nặng nhất, c&oacute; đồ họa ch&acirc;n thực đến kh&oacute; tin vẫn được thể hiện cực đỉnh tr&ecirc;n iPhone 11. Sử dụng iPhone 11 64GB nghĩa l&agrave; bạn sẽ c&oacute; chiếc m&aacute;y hiệu năng đảm bảo d&ugrave;ng tốt trong nhiều năm nữa.</p>\r\n\r\n<p><img alt=\"iPhone 11 chip\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-11.jpg\" /></p>\r\n\r\n<h3><strong>Nhận diện khu&ocirc;n mặt nhanh hơn bao giờ hết</strong></h3>\r\n\r\n<p>Face ID mới được cải tiến cho ph&eacute;p bạn mở kh&oacute;a iPhone 11 64GB nhanh ch&oacute;ng v&agrave; dễ d&agrave;ng hơn bao giờ hết. Thậm ch&iacute; Face ID c&ograve;n tiện lợi v&agrave; bảo mật hơn cả phương &aacute;n truyền thống l&agrave; cảm biến v&acirc;n tay Touch ID. Bạn c&oacute; thể d&ugrave;ng t&iacute;nh năng n&agrave;y để đăng nhập v&agrave;o ứng dụng, t&agrave;i khoản, ng&acirc;n h&agrave;ng v&agrave; thanh to&aacute;n với Apple Pay. Tất cả th&ocirc;ng tin đều được bảo mật tuyệt đối khi Face ID kh&ocirc;ng hề lưu trữ hay chia sẻ h&igrave;nh ảnh của bạn. Kể cả khi gửi ảnh hay gọi FaceTime, h&igrave;nh ảnh của bạn cũng được m&atilde; h&oacute;a an to&agrave;n.</p>\r\n\r\n<p><img alt=\"iPhone 11 khuôn mặt\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-13.jpg\" /></p>', '2020-11-16', '2020-12-02', 3, 0, 5, '\"màu trắng\",\"màu đen\",\"màu đỏ\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Apple</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>150.9mm - 75.7mm - 8.3mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>194 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>4 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>64 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>Nano-SIM + eSIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>IPS LCD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.1 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>1792 x 828 pixel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>iOS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>iOS 13</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>A13 Bionic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>Kh&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>Camera k&eacute;p 12MP:<br />\r\n			- Camera g&oacute;c rộng: &fnof;/1.8 aperture<br />\r\n			- Camera si&ecirc;u rộng: &fnof;/2.4 aperture</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>12 MP, &fnof;/2.2 aperture</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>Quay video 4K ở tốc độ 24 fps, 30 fps hoặc 60 fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>802.11ax Wi‑Fi 6 with 2x2 MIMO</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>GPS/GNSS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>FaceID, Con quay hồi chuyển, Gia tốc kế, Cảm biến tiệm cận, Cảm biến &aacute;nh s&aacute;ng xung quanh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>3110 mAh</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>'),
(8, 14, 'oppo-reno4-8gb-128gb', 1, 'OPPO Reno4 8GB-128GB', 7000000, '637341202825967708_oppo-reno4-xanh-st-149.png', 29, '<h3>Đ&aacute;nh gi&aacute; chi tiết OPPO Reno4</h3>\r\n\r\n<p><strong><a href=\"https://fptshop.com.vn/dien-thoai/oppo-reno4\">OPPO Reno4</a>&nbsp;với cấu h&igrave;nh mạnh mẽ v&agrave; c&ocirc;ng nghệ sạc si&ecirc;u nhanh sẽ gi&uacute;p bạn c&oacute; được hiệu suất cao để trải nghiệm những điều th&uacute; vị trong cuộc sống, nhất l&agrave; tr&ecirc;n bộ tứ&nbsp;camera đẳng cấp c&ugrave;ng thiết kế m&agrave; ai cũng phải ngước nh&igrave;n.</strong></p>\r\n\r\n<p><img alt=\"OPPO Reno4\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-reno4-fpt-1.jpg\" /></p>\r\n\r\n<h3><strong>Mỏng nhẹ cao cấp, tỏa s&aacute;ng như pha l&ecirc;</strong></h3>\r\n\r\n<p>OPPO Reno4 đẹp tựa như một kiệt t&aacute;c tr&ecirc;n tay bạn với kiểu d&aacute;ng mỏng nhẹ thanh lịch v&agrave; ho&agrave;n thiện dạng pha l&ecirc; Reno Glow độc đ&aacute;o. C&ocirc;ng nghệ ho&agrave;n thiện Reno Glow mang đến một mặt lưng k&iacute;nh đặc biệt, bền hơn, sang trọng hơn v&agrave; kh&ocirc;ng b&aacute;m bẩn, mồ h&ocirc;i hay dấu v&acirc;n tay. Để c&oacute; được thiết kế xuất sắc, mỗi chiếc OPPO Reno4 đ&atilde; phải trải qua nhiều qu&aacute; tr&igrave;nh đi&ecirc;u khắc tinh xảo, thay đổi cấu tr&uacute;c vi m&ocirc; của chất liệu k&iacute;nh. Kết quả l&agrave; OPPO Reno4 khiến ai cũng phải trầm trồ v&igrave; m&aacute;y kh&ocirc;ng chỉ đẹp m&agrave; c&ograve;n vừa vặn ho&agrave;n hảo trong l&ograve;ng b&agrave;n tay.</p>\r\n\r\n<p><img alt=\"thiết kế OPPO Reno4\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-reno4-fpt-2.jpg\" /></p>\r\n\r\n<h3><strong>H&igrave;nh ảnh đẹp tuyệt mỹ tr&ecirc;n m&agrave;n h&igrave;nh AMOLED</strong></h3>\r\n\r\n<p>B&iacute; mật của một chiếc m&aacute;y m&agrave;n h&igrave;nh lớn nhưng vẫn rất gọn g&agrave;ng của OPPO Reno4 đến từ m&agrave;n h&igrave;nh viền si&ecirc;u mỏng. M&agrave;n h&igrave;nh Reno4 c&oacute; k&iacute;ch thước 6,4 inch, độ ph&acirc;n giải Full HD+ v&agrave; c&ocirc;ng nghệ OLED ti&ecirc;n tiến nhất hiện nay. Với việc viền m&agrave;n h&igrave;nh k&eacute;o ra s&aacute;t c&aacute;c cạnh, h&igrave;nh ảnh hiển thị được chiếm tới 91,5% diện t&iacute;ch mặt trước, kết hợp th&ecirc;m mặt k&iacute;nh cong 2,5D v&agrave; độ ph&acirc;n giải si&ecirc;u cao 5.000.000:1, bạn sẽ c&oacute; được những h&igrave;nh ảnh đẹp hơn bao giờ hết, mang đến niềm cảm hứng hơn mỗi ng&agrave;y.</p>\r\n\r\n<p><img alt=\"màn hình OPPO Reno4\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-reno4-fpt-3.jpg\" /></p>\r\n\r\n<h3><strong>Cảm biến v&acirc;n tay trong m&agrave;n h&igrave;nh si&ecirc;u nhạy</strong></h3>\r\n\r\n<p>C&ocirc;ng nghệ cảm biến v&acirc;n tay 3.0 được t&iacute;ch hợp ngay trong m&agrave;n h&igrave;nh gi&uacute;p bạn c&oacute; thể mở kh&oacute;a cực nhanh chỉ sau một c&uacute; chạm. Sử dụng v&acirc;n tay ẩn trong m&agrave;n h&igrave;nh c&ograve;n khiến Reno4 c&oacute; được thiết kế liền lạc v&agrave; thẩm mĩ hơn v&igrave; kh&ocirc;ng cần phải tốn diện t&iacute;ch để đặt v&acirc;n tay tr&ecirc;n th&acirc;n m&aacute;y.</p>\r\n\r\n<p><img alt=\"vân tay OPPO Reno4\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-reno4-fpt-4.jpg\" /></p>\r\n\r\n<h3><strong>Bậc thầy về quay video</strong></h3>\r\n\r\n<p>OPPO Reno4 c&oacute; đầy đủ những t&iacute;nh năng chuy&ecirc;n nghiệp để quay được những đoạn video ấn tượng hơn bao giờ hết. T&iacute;nh năng quay video đ&ecirc;m ho&agrave;n to&agrave;n mới sử dụng thuật to&aacute;n video &aacute;nh trăng v&agrave; c&ocirc;ng nghệ lấy n&eacute;t Laser để t&aacute;i hiện ch&acirc;n thực vẻ đẹp về đ&ecirc;m m&agrave; những&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;kh&aacute;c kh&oacute; l&ograve;ng ghi lại được. Khả năng quay chống rung cũng được cải thiện nhờ thuật to&aacute;n chống rung 3.0, ổn định h&igrave;nh ảnh ở mọi g&oacute;c độ. Thậm ch&iacute; t&iacute;nh năng chống rung c&ograve;n c&oacute; thể hoạt động tr&ecirc;n cả camera trước; khi bạn đi bộ hay quay 360 độ, chất lượng video vẫn lu&ocirc;n ở mức ho&agrave;n hảo.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"360\" src=\"https://www.youtube.com/embed/N_C2EVc3TIQ\" width=\"640\"></iframe></p>\r\n\r\n<h3><strong>Trở th&agrave;nh nh&agrave; l&agrave;m phim chuy&ecirc;n nghiệp</strong></h3>\r\n\r\n<p>Kh&ocirc;ng chỉ quay video đơn thuần, Reno4 c&ograve;n cung cấp cho bạn những c&ocirc;ng cụ để trở th&agrave;nh một nh&agrave; l&agrave;m phim chuy&ecirc;n nghiệp. Chế độ quay phim 21:9 chuẩn khung h&igrave;nh phim chiếu rạp; c&aacute;c bộ lọc m&agrave;u phim cổ điển; th&ecirc;m phụ đề, nhạc phim đều được trang bị v&agrave; gi&uacute;p bạn chỉnh sửa video một c&aacute;ch dễ d&agrave;ng. Ch&iacute;nh bạn cũng c&oacute; thể tự sản xuất những đoạn phim th&uacute; vị, hấp dẫn v&agrave; mang phong c&aacute;ch ri&ecirc;ng biệt.</p>\r\n\r\n<p><img alt=\"làm phim OPPO Reno4\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-reno4-fpt-5.jpg\" /></p>\r\n\r\n<h3><strong>N&acirc;ng tầm nhiếp ảnh với bộ tứ&nbsp;camera đẳng cấp</strong></h3>\r\n\r\n<p>OPPO Reno4 n&acirc;ng khả năng chụp ảnh l&ecirc;n tầm cao mới nhờ 4&nbsp;camera đẳng cấp, bao gồm camera ch&iacute;nh độ ph&acirc;n giải cực cao 48MP; camera g&oacute;c rộng 8MP, camera đo chiều s&acirc;u 2MP v&agrave; camera macro 2MP. Sự kết hợp giữa 4 camera sẽ gi&uacute;p bạn chụp h&igrave;nh xuất sắc trong mọi ho&agrave;n cảnh, sẵn s&agrave;ng ghi lại những khoảnh khắc đ&aacute;ng nhớ trong cuộc sống.</p>\r\n\r\n<p><img alt=\"quay video OPPO Reno4\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-reno4-fpt-6.jpg\" /></p>\r\n\r\n<h3><strong>Chế độ chụp ch&acirc;n dung si&ecirc;u n&eacute;t AI, x&oacute;a ph&ocirc;ng tuyệt hảo cả trong đ&ecirc;m tối</strong></h3>\r\n\r\n<p>Chế độ chụp ch&acirc;n dung tr&ecirc;n OPPO Reno4 c&oacute; những n&eacute;t cải tiến r&otilde; rệt khi c&oacute; thể x&oacute;a ph&ocirc;ng được d&ugrave; l&agrave; khoảng c&aacute;ch gần hay xa v&agrave; x&oacute;a ph&ocirc;ng trong cả điều kiện &aacute;nh s&aacute;ng yếu. Đồng thời tr&iacute; tuệ nh&acirc;n tạo AI sẽ can thiệp để khu&ocirc;n mặt của bạn lu&ocirc;n r&otilde; n&eacute;t d&ugrave; chụp ở những m&ocirc;i trường phức tạp. Thật tuyệt vời khi bạn c&oacute; thể bắt trọn vẻ đẹp bằng những bức ảnh ở chế độ ch&acirc;n dung đ&ecirc;m độc đ&aacute;o.</p>\r\n\r\n<p><img alt=\"chân dung OPPO Reno4\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-reno4-fpt-7.jpg\" /></p>\r\n\r\n<h3><strong>Camera trước&nbsp;32MP AI, lu&ocirc;n tự tin tỏa s&aacute;ng</strong></h3>\r\n\r\n<p>B&ecirc;n cạnh camera trước&nbsp;độ ph&acirc;n giải si&ecirc;u cao 32MP, OPPO Reno4 c&ograve;n c&oacute; th&ecirc;m một cảm biến h&igrave;nh ảnh AI, mang đến vẻ đẹp rạng rỡ, tự nhi&ecirc;n hơn qua c&ocirc;ng nghệ l&agrave;m đẹp khu&ocirc;n mặt th&ocirc;ng minh.</p>\r\n\r\n<p><img alt=\"camera OPPO Reno4\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-reno4-fpt-8.jpg\" /></p>\r\n\r\n<h3><strong>Sức mạnh hiệu năng đẳng cấp</strong></h3>\r\n\r\n<p>OPPO Reno4 mang tr&ecirc;n m&igrave;nh sức mạnh si&ecirc;u việt khi trang bị bộ vi xử l&yacute; Snapdragon 720G, con chip sản xuất tr&ecirc;n tiến tr&igrave;nh 8nm v&agrave; l&agrave; bộ vi xử l&yacute; đơn nh&acirc;n mạnh bậc nhất ở ph&acirc;n kh&uacute;c tầm trung hiện nay. Ngo&agrave;i việc chạy tốt mọi hoạt động h&agrave;ng ng&agrave;y, Snapdragon 720G c&ograve;n dựa tr&ecirc;n nền tảng Snapdragon Elite Gaming tối ưu h&oacute;a cho chơi game, đồng thời hỗ trợ AI Engine thế hệ 5. Reno4 c&oacute; sẵn 8GB RAM v&agrave; 128GB bộ nhớ trong, cung cấp cho bạn khả năng xử l&yacute; đa nhiệm ho&agrave;n hảo c&ugrave;ng kh&ocirc;ng gian lưu trữ thoải m&aacute;i.</p>\r\n\r\n<p><img alt=\"OPPO Reno4 cấu hình \" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-reno4-fpt-9.jpg\" /></p>\r\n\r\n<h3><strong>Tốc độ sạc cực nhanh</strong></h3>\r\n\r\n<p><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/qua-trinh-phat-trien-vooc-cong-nghe-sac-nhanh-nhat-the-gioi-cua-oppo-123395\">C&ocirc;ng nghệ sạc si&ecirc;u nhanh SuperVOOC 4.0</a>&nbsp;c&ocirc;ng suất 30W gi&uacute;p bạn c&oacute; thể sạc đầy ho&agrave;n to&agrave;n 100% vi&ecirc;n pin 4.015 mAh của OPPO Reno4 chỉ trong 56 ph&uacute;t. Ấn tượng hơn nữa, khi bạn c&oacute; việc gấp th&igrave; chỉ cần cắm sạc 20&nbsp;ph&uacute;t, m&aacute;y sẽ l&ecirc;n từ 0 &ndash; 50% pin. Tốc độ sạc si&ecirc;u nhanh gi&uacute;p OPPO Reno4 lu&ocirc;n sẵn s&agrave;ng cho mọi hoạt động.</p>\r\n\r\n<p><img alt=\"sạc nhanh OPPO Reno4\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-reno4-fpt-10.jpg\" /></p>', '2020-11-16', '2020-12-01', 3, 0, 5, '\"màu đen\",\"màu tím\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>OPPO</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>160.3 x 73.9 x 7.7 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>Khoảng 165g (Bao gồm pin)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>8 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>128 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>AMOLED, 60GHz, Gorilla Glass 3+, 1080 x 2400 (FHD+), 16 triệu m&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.4 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>1080 x 2400 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>ColorOS 7.2, nền tảng Android 10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm SM7125 Snapdragon 720G (8 nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core (2x2.3 GHz Kryo 465 Gold &amp; 6x1.8 GHz Kryo 465 Silver)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 618</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>48 MP (IMX586) + 8 MP + 2 MP + 2 MP, 4 camera</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>32 MP (IMX616) + Cảm biến th&ocirc;ng minh AI</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>Trước: 1080p@30fps, gyro-EIS<br />\r\n			Sau: 4K@30fps, 1080p@30/60/120fps; gyro-EIS, HDR</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat15 800/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.1, A2DP, LE, aptX HD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>Yes, with dual-band A-GPS, GLONASS, BDS, GALILEO, QZSS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>3.1, Type-C 1.0 reversible connector, USB On-The-Go</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến gia tốc, cảm biến tiệm cận, con quay hồi chuyển, cảm biến s&aacute;ng, la b&agrave;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Po 4015 mAh battery, Fast charging 30W, 60% in 15 min, 100% in 36 min SuperVOOC 2.0</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>'),
(9, 19, 'vivo-v20-8gb-128gb', 1, 'Vivo V20 8GB -128GB', 7190000, '637370823498134889_vivo-v20-den-127.png', 18, '<h3>Đ&aacute;nh gi&aacute; chi tiết Vivo V20 8GB -128GB</h3>\r\n\r\n<p><strong><a href=\"https://fptshop.com.vn/dien-thoai/vivo-v20\" target=\"_blank\" title=\"Điện thoại Vivo V20\" type=\"Điện thoại Vivo V20\">Vivo V20</a>&nbsp;l&agrave; mẫu smartphone đầy năng động cho giới trẻ khi c&oacute; thiết kế si&ecirc;u mỏng, ho&agrave;n thiện dạng k&iacute;nh mờ tuyệt đẹp v&agrave; khả năng chụp ảnh xuất sắc, cho bạn thỏa sức s&aacute;ng tạo.</strong></p>\r\n\r\n<p><img alt=\"Điện thoại Vivo V20\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-v20-mo-ta-1.jpg\" title=\"Điện thoại Vivo V20\" /></p>\r\n\r\n<h3><strong>Vivo V20 - Smartphone mỏng nhất thế giới</strong></h3>\r\n\r\n<p>Trong số những smartphone ra mắt từ đầu năm 2020 đến nay, Vivo V20 ch&iacute;nh l&agrave; chiếc&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\" title=\"Tham khảo điện thoại chính hãng giá tốt tại FPTShop\" type=\"Tham khảo điện thoại chính hãng giá tốt tại FPTShop\">điện thoại</a>&nbsp;mỏng nhất thế giới. Mặc d&ugrave; t&iacute;ch hợp những cảm biến camera h&agrave;ng đầu, nhưng Vivo V20 c&oacute; độ mỏng đ&aacute;ng kinh ngạc chỉ 7.38mm. Tr&ecirc;n tay bạn sẽ l&agrave; một kiệt t&aacute;c được thiết kế thanh mảnh, ho&agrave;n thiện tỉ mỉ đến từng chi tiết. Ấn tượng hơn nữa l&agrave; mặt lưng l&agrave;m từ k&iacute;nh mờ cao cấp AG, vừa cho vẻ đẹp sang trọng, lại vừa cho cảm gi&aacute;c cầm nắm mượt m&agrave; v&agrave; kh&ocirc;ng b&aacute;m dấu v&acirc;n tay.</p>\r\n\r\n<p><img alt=\"Vivo V20 là Smartphone mỏng nhất thế giới\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-v20-mo-ta-2.jpg\" title=\"Smartphone mỏng nhất thế giới\" /></p>\r\n\r\n<h3><strong>Hiển thị hấp dẫn tr&ecirc;n m&agrave;n h&igrave;nh viền si&ecirc;u mỏng</strong></h3>\r\n\r\n<p>Để tăng trải nghiệm hiển thị của người d&ugrave;ng,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/vivo\" title=\"Xem thêm điện thoại Vivo chính hãng giá ưu đãi tại FPTShop\" type=\"Xem thêm điện thoại Vivo chính hãng giá ưu đãi tại FPTShop\">Vivo</a>&nbsp;V20 đ&atilde; cố gắng thu hẹp viền m&agrave;n h&igrave;nh đến hết mức c&oacute; thể. Kh&ocirc;ng chỉ viền tr&ecirc;n v&agrave; hai cạnh b&ecirc;n m&agrave; phần viền dưới m&agrave;n h&igrave;nh cũng được l&agrave;m mỏng đ&aacute;ng kể. Kết quả l&agrave; bạn sẽ c&oacute; một m&agrave;n h&igrave;nh lớn 6,44 inch c&ocirc;ng nghệ AMOLED cao cấp, độ ph&acirc;n giải Full HD+ 2400 x 1080 pixels sắc n&eacute;t. Những trải nghiệm xem ảnh, video, chơi game sẽ hấp dẫn hơn rất nhiều, đồng thời k&iacute;ch thước m&aacute;y cũng gọn hơn nhờ m&agrave;n h&igrave;nh viền mỏng.</p>\r\n\r\n<p><img alt=\"màn hình Vivo V20\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-v20-mo-ta-3.jpg\" title=\"Hiển thị hấp dẫn trên màn hình viền siêu mỏng\" /></p>\r\n\r\n<h3><strong>Camera selfie 44MP si&ecirc;u sắc n&eacute;t</strong></h3>\r\n\r\n<p>D&ugrave; rất kh&oacute; tin nhưng bạn kh&ocirc;ng nhầm đ&acirc;u, camera trước của Vivo V20 c&oacute; độ ph&acirc;n giải l&ecirc;n tới 44MP, vượt trội khi so s&aacute;nh với bất cứ smartphone n&agrave;o kh&aacute;c hiện nay. Với độ ph&acirc;n giải đỉnh cao, Vivo V20 c&oacute; thể chụp ảnh selfie v&ocirc; c&ugrave;ng sắc n&eacute;t. Chưa hết, khả năng nhận diện v&agrave; lấy n&eacute;t th&ocirc;ng minh theo &aacute;nh mắt người gi&uacute;p những bức ảnh selfie của bạn lu&ocirc;n sinh động, tr&agrave;n đầy sức sống.</p>\r\n\r\n<p><img alt=\"Camera selfie Vivo V20\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-v20-mo-ta-6.jpg\" title=\"Camera selfie 44MP siêu sắc nét\" /></p>\r\n\r\n<h3><strong>Livestream v&agrave; quay vlog chất lượng cao với Vivo V20</strong></h3>\r\n\r\n<p>Camera trước Vivo V20 kh&ocirc;ng chỉ chụp ảnh selfie m&agrave; c&ograve;n l&agrave;m được nhiều hơn những g&igrave; bạn nghĩ. Bạn c&oacute; thể quay những video l&agrave;m đẹp &ldquo;sống ảo&rdquo;, livestream tr&ecirc;n mạng x&atilde; hội hay thậm ch&iacute; l&agrave; quay những đoạn vlog độ ph&acirc;n giải 4K đầy chất lượng. Độ ph&acirc;n giải cao, khả năng lấy n&eacute;t nhanh ch&oacute;ng, t&iacute;nh năng nhận diện mắt người gi&uacute;p camera trước của Vivo V20 trở n&ecirc;n hữu &iacute;ch hơn bao giờ hết.</p>\r\n\r\n<p><img alt=\"Livestream Vivo V20\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-v20-mo-ta-4.jpg\" title=\"Livestream và quay vlog chất lượng cao\" /></p>\r\n\r\n<h3><strong>Bộ 3 camera sau 64MP</strong></h3>\r\n\r\n<p>Camera trước đ&atilde; xuất sắc như thế, tất nhi&ecirc;n camera sau Vivo V20 cũng kh&ocirc;ng hề k&eacute;m cạnh. Bạn sẽ c&oacute; tới 3 cảm biến camera sau, trong đ&oacute; nổi bật nhất l&agrave; camera ch&iacute;nh độ ph&acirc;n giải &ldquo;khủng&rdquo; 64MP khẩu độ lớn f/1.89. B&ecirc;n cạnh đ&oacute; l&agrave; camera g&oacute;c si&ecirc;u rộng 8MP v&agrave; camera mono 2MP. Với 3 camera, Vivo V20 sẽ c&oacute; đầy đủ t&iacute;nh năng chụp h&igrave;nh, từ chụp ng&agrave;y, chụp đ&ecirc;m cho đến chụp g&oacute;c si&ecirc;u rộng 120 độ, chụp si&ecirc;u cận, chụp ch&acirc;n dung x&oacute;a ph&ocirc;ng hay chụp ảnh mono đen trắng đầy nghệ thuật, cho bạn thỏa sức s&aacute;ng tạo trong nhiếp ảnh.</p>\r\n\r\n<p><img alt=\"camera Vivo V20\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-v20-mo-ta-5.jpg\" title=\"Bộ 3 camera sau 64MP\" /></p>\r\n\r\n<h3><strong>Si&ecirc;u chụp đ&ecirc;m, chụp cảnh v&agrave; ch&acirc;n dung trong đ&ecirc;m tối</strong></h3>\r\n\r\n<p>M&agrave;n đ&ecirc;m sẽ l&agrave; nơi bạn bắt trọn những cảnh đẹp bằng Vivo V20. Loạt cảm biến camera chất lượng c&ugrave;ng t&iacute;nh năng si&ecirc;u chụp đ&ecirc;m AI gi&uacute;p bạn c&oacute; thể chụp những cảnh đẹp lung linh trong đ&ecirc;m tối. Thậm ch&iacute; bạn c&oacute; thể chụp ch&acirc;n dung đ&ecirc;m, tha hồ &ldquo;sống ảo&rdquo; trong những qu&aacute;n caf&eacute; hay đứng b&ecirc;n con s&ocirc;ng đầy thơ mộng giữa trời đ&ecirc;m, Vivo V20 sẽ lưu giữ những khoảnh khắc đẹp nhất của bạn.</p>\r\n\r\n<p><img alt=\"chụp đêm Vivo V20\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-v20-mo-ta-7.jpg\" title=\"Siêu chụp đêm, chụp cảnh và chân dung trong đêm tối\" /></p>\r\n\r\n<h3><strong>Phục chế ảnh cũ với Vivo V20</strong></h3>\r\n\r\n<p>Đ&acirc;y l&agrave; một t&iacute;nh năng rất th&uacute; vị v&agrave; hữu &iacute;ch tr&ecirc;n Vivo V20. Tuổi thơ ch&uacute;ng ta lu&ocirc;n c&oacute; những bức ảnh cũ, nhưng nếu bạn muốn chụp lại để đưa l&ecirc;n mạng x&atilde; hội th&igrave; chất lượng sẽ bị giảm đi kh&aacute; nhiều. Với t&iacute;nh năng phục chế ảnh cũ của Vivo 20, mọi thứ sẽ được phục hồi sắc n&eacute;t v&agrave; thậm ch&iacute; c&ograve;n chi tiết hơn cả ảnh gốc, để bạn c&oacute; thể &ldquo;khoe&rdquo; những khoảnh khắc ng&agrave;y b&eacute; của m&igrave;nh v&agrave; người th&acirc;n tr&ecirc;n mạng x&atilde; hội.</p>\r\n\r\n<p><img alt=\"Phục chế ảnh cũ với Vivo V20\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-v20-mo-ta-8.jpg\" title=\"Phục chế ảnh cũ\" /></p>\r\n\r\n<h3><strong>Vivo V20 đ&aacute;p ứng mượt m&agrave; mọi ứng dụng</strong></h3>\r\n\r\n<p>Vivo V20 c&oacute; hiệu năng rất tuyệt vời khi trang bị bộ vi xử l&yacute; Qualcomm Snapdragon 720G mạnh mẽ, c&ugrave;ng với 8GB RAM v&agrave; 128GB bộ nhớ trong. Bạn c&oacute; thể mở bất cứ ứng dụng n&agrave;o, thoải m&aacute;i c&agrave;i đặt v&agrave; chạy nhiều ứng dụng c&ugrave;ng l&uacute;c, lưu trữ mọi thứ m&agrave; m&aacute;y vẫn hết sức mượt m&agrave;. Nếu bạn th&iacute;ch chơi game, Vivo V20 cũng ho&agrave;n th&agrave;nh xuất sắc nhiệm vụ với cấu h&igrave;nh mạnh mẽ v&agrave; chế độ tr&ograve; chơi chuy&ecirc;n dụng, cho bạn&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/choi-game\" title=\"Tham khảo các dòng điện thoại chơi game tốt\" type=\"Tham khảo các dòng điện thoại chơi game tốt\">chơi game</a>&nbsp;đồ họa cao một c&aacute;ch ổn định, kh&ocirc;ng bị lag giật.</p>\r\n\r\n<p><img alt=\"Vivo V20 Đáp ứng mượt mà mọi ứng dụng\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-v20-mo-ta-9.jpg\" title=\"Đáp ứng mượt mà mọi ứng dụng\" /></p>\r\n\r\n<h3><strong>Sạc nhanh si&ecirc;u tốc</strong></h3>\r\n\r\n<p>Pin của Vivo V20 c&oacute;&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai?dung-luong-pin=sieu-trau-tren-4000-mah\" title=\"Tham khảo điện thoại dung lượng pin 4000 mAh\" type=\"Tham khảo điện thoại dung lượng pin 4000 mAh\">dung lượng 4000 mAh</a>, đủ để cho bạn sử dụng thoải m&aacute;i trọn vẹn một ng&agrave;y. M&aacute;y c&ograve;n được trang bị&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai?tinh-nang-dac-biet=sac-nhanh&amp;sort=ban-chay-nhat\" title=\"Tham khảo điện thoại có công nghệ sạc nhanh\" type=\"Tham khảo điện thoại có công nghệ sạc nhanh\">c&ocirc;ng nghệ sạc nhanh</a>&nbsp;si&ecirc;u tốc c&ocirc;ng suất l&ecirc;n tới 33W, nhanh ch&oacute;ng sạc được 50% chỉ sau khoảng 20 ph&uacute;t.</p>\r\n\r\n<p><img alt=\"Sạc nhanh siêu tốc trên Vivo V20\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-v20-mo-ta-10.jpg\" title=\"Sạc nhanh siêu tốc\" /></p>', '2020-11-16', '2021-01-11', 3, 0, 5, '\"màu đen\",\"màu đỏ\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Vivo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>161.3 x 74.2 x 7.4 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>171 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>8 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>128 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>AMOLED, 16 triệu m&agrave;u, HDR10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.44 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>1080 x 2400 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 11, Funtouch 10.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm SM7125 Snapdragon 720G (8 nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core (2x2.3 GHz Kryo 465 Gold &amp; 6x1.8 GHz Kryo 465 Silver)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 618</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>64 MP, f/1.9, 26mm (wide), 1/1.72&quot;, 0.8&micro;m, PDAF<br />\r\n			8 MP, f/2.2, 120˚, 16mm (ultrawide), 1/4.0&quot;, 1.12&micro;m<br />\r\n			2 MP, f/2.4, (depth)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>44 MP, f/2.0, (wide), AF</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>4K@30fps, 1080p@30/60fps, gyro-EIS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat16 1024/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.1, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS, GALILEO, BDS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>2.0, Type-C 1.0 reversible connector, USB On-The-Go</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến tiệm cận, gia tốc kế, la b&agrave;n, con quay hồi chuyển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Po 4000 mAh, sạc nhanh 33W</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>');
INSERT INTO `sanpham` (`sp_id`, `th_id`, `sp_nhan`, `kho_id`, `sp_ten`, `sp_dongianhap`, `sp_hinh`, `sp_soluong`, `sp_thongtin`, `sp_ngaytaomoi`, `sp_ngaycapnhat`, `khuyenmai_id`, `sp_hienthi`, `ncc_id`, `sp_mausac`, `xx_id`, `sp_tskt`) VALUES
(10, 18, 'iphone-8-plus-3gb-128gb', 1, 'iPhone 8 Plus 3GB-128GB', 12000000, '637201410155294678_ip-8-pl-128-xam-113.png', 0, '<h3>Đ&aacute;nh gi&aacute; chi tiết iPhone 8 Plus 128GB</h3>\r\n\r\n<p><strong>Phi&ecirc;n bản&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/iphone-8-plus-128gb\" target=\"_blank\">iPhone 8 Plus 128GB</a>&nbsp;c&oacute; thể n&oacute;i l&agrave; bản lựa chọn bộ nhớ tối ưu nhất, ph&ugrave; hợp với tất cả mọi người. Tất nhi&ecirc;n kh&ocirc;ng thể kh&ocirc;ng kể đến những điều tuyệt vời m&agrave;&nbsp;<a href=\"https://fptshop.com.vn/apple\">Apple</a>&nbsp;mang lại cho người d&ugrave;ng.</strong></p>\r\n\r\n<p><strong><img alt=\"iPhone 8 Plus 128GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-8-plus-1.jpg\" /></strong></p>\r\n\r\n<h3><strong>Kiểu d&aacute;ng cao cấp, sự kết hợp tuyệt vời giữa k&iacute;nh v&agrave; kim loại</strong></h3>\r\n\r\n<p>iPhone 8 Plus 128 GB mang đến vẻ đẹp cao cấp, đơn giản nhưng vẫn đầy tinh tế, đặc trưng của Apple. Với sự bổ sung của mặt lưng k&iacute;nh b&ecirc;n cạnh khung kim loại cứng c&aacute;p, iPhone 8 Plus vừa sang trọng, lại vừa rất cứng c&aacute;p. Kiểu d&aacute;ng mỏng, sự bo tr&ograve;n mềm mại cho cảm gi&aacute;c cầm nắm ho&agrave;n hảo tr&ecirc;n tay. Bạn sẽ c&oacute; một sản phẩm thời trang, đẳng cấp v&agrave; mang đậm phong c&aacute;ch.</p>\r\n\r\n<p><img alt=\"thiết kế iPhone 8 Plus 128GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-8-plus-2.jpg\" /></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh lớn chuẩn Retina, n&acirc;ng cao trải nghiệm</strong></h3>\r\n\r\n<p>Sỡ hữu m&agrave;n h&igrave;nh lớn 5,5 inch độ ph&acirc;n giải Full HD chuẩn 16:9 truyền thống, iPhone 8 Plus 128GB l&agrave; sự lựa chọn quen thuộc của người d&ugrave;ng. Sẽ kh&ocirc;ng mất thời gian để bạn l&agrave;m quen với m&agrave;n h&igrave;nh n&agrave;y khi đ&acirc;y vẫn l&agrave; chuẩn phổ biến nhất hiện nay. Với mật độ điểm ảnh 401ppi, vượt&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/man-hinh-retina-la-gi-tai-sao-chi-san-pham-apple-co-man-hinh-retina-123078\">chuẩn Retina</a>&nbsp;c&ugrave;ng c&ocirc;ng nghệ m&agrave;n h&igrave;nh IPS LCD cao cấp, iPhone 8 Plus hiển thị h&igrave;nh ảnh trong trẻo, m&agrave;u sắc ch&iacute;nh x&aacute;c v&agrave; độ ch&acirc;n thực đ&aacute;ng kinh ngạc. M&agrave;n h&igrave;nh lớn của iPhone 8 Plus hiển thị xuất sắc cả văn bản, h&igrave;nh ảnh v&agrave; video, để bạn c&oacute; được sự trực quan nhất kể cả khi l&agrave;m việc hay giải tr&iacute;.</p>\r\n\r\n<p><img alt=\"màn hình iPhone 8 Plus 128GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-8-plus-3.jpg\" /></p>\r\n\r\n<h3><strong>Chế độ m&agrave;n h&igrave;nh True-tone v&agrave; 3D Touch</strong></h3>\r\n\r\n<p>Tr&ecirc;n m&agrave;n h&igrave;nh iPhone 8 Plus 128GB, bạn sẽ thấy sự tiện lợi của c&ocirc;ng nghệ True-tone v&agrave; 3D Touch. Với True-tone, m&agrave;u sắc sẽ thay đổi dựa theo điều kiện &aacute;nh s&aacute;ng, để h&igrave;nh ảnh lu&ocirc;n tự nhi&ecirc;n v&agrave; dịu cho mắt. Trong khi đ&oacute; 3D Touch cho ph&eacute;p bạn th&ecirc;m một thao t&aacute;c l&agrave; nhấn v&agrave;o m&agrave;n h&igrave;nh để đưa ra những t&ugrave;y chọn nhanh, dễ d&agrave;ng hơn khi sử dụng&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>.</p>\r\n\r\n<p><img alt=\"3D iPhone 8 Plus 128GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-8-plus-4.jpg\" /></p>\r\n\r\n<h3><strong>Camera k&eacute;p đẳng cấp, chụp đ&ecirc;m tuyệt hảo</strong></h3>\r\n\r\n<p>iPhone 8 Plus 128GB sở hữu 2 camera sau, bao gồm một camera g&oacute;c rộng v&agrave; một camera tele. Cảm biến camera ch&iacute;nh g&oacute;c rộng c&oacute; độ ph&acirc;n giải 12MP, khẩu độ lớn f/1.8 v&agrave; hỗ trợ chống rung quang học OIS. Với một cảm biến chất lượng v&agrave; thuật to&aacute;n th&ocirc;ng minh, iPhone 8 Plus c&oacute; khả năng chụp ảnh tuyệt vời, đặc biệt l&agrave; sự ch&acirc;n thực trong m&agrave;u sắc. Ngay cả trong điều kiện thiếu s&aacute;ng, iPhone 8 Plus cũng l&agrave;m tốt phần việc của m&igrave;nh với độ chi tiết đ&aacute;ng kinh ngạc. Giờ đ&acirc;y trong những chuyến du lịch của bạn kh&ocirc;ng cần phải mang theo m&aacute;y ảnh nữa, một chiếc iPhone 8 Plus l&agrave; đủ để lưu lại những khoảnh khắc đ&aacute;ng nhớ.</p>\r\n\r\n<p><img alt=\"camera iPhone 8 Plus 128GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-8-plus-5.jpg\" /></p>\r\n\r\n<h3><strong>Chụp ảnh x&oacute;a ph&ocirc;ng ấn tượng</strong></h3>\r\n\r\n<p>Khả năng&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/tim-hieu-ve-cong-nghe-chup-xoa-phong-la-gi-63770\">chụp ảnh x&oacute;a ph&ocirc;ng</a>&nbsp;của iPhone 8 Plus đ&atilde; được n&acirc;ng l&ecirc;n một tầm cao mới. Những hiệu ứng &aacute;nh s&aacute;ng Studio, khả năng x&oacute;a ph&ocirc;ng ch&iacute;nh x&aacute;c đến từng sợi t&oacute;c khiến cho chủ thể trở n&ecirc;n đẹp v&agrave; bức ảnh chuy&ecirc;n nghiệp hơn bao giờ hết. Thật tuyệt khi bạn c&oacute; thể tạo n&ecirc;n một bức ảnh ch&acirc;n dung đẳng cấp chỉ bằng chiếc điện thoại iPhone 8 Plus của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"xóa phông iPhone 8 Plus 128GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-8-plus-6.jpg\" /></p>\r\n\r\n<h3><strong>Camera trước 7MP, tự tin selfie v&agrave; livestream</strong></h3>\r\n\r\n<p>Camera trước của iPhone 8 Plus 128GB vẫn đề cao sự ch&acirc;n thực, thay v&igrave; cố gắng l&agrave;m mịn da qu&aacute; đ&agrave; như nhiều camera của c&aacute;c điện thoại gần đ&acirc;y. Nhờ thế bạn vẫn giữ được vẻ đẹp tự nhi&ecirc;n với m&agrave;u da ch&iacute;nh x&aacute;c v&agrave; nước ảnh tươi s&aacute;ng. Kết hợp với bộ vi xử l&yacute; mạnh mẽ, bạn c&oacute; thể nhanh ch&oacute;ng chụp ảnh selfie hoặc livestream một c&aacute;ch mượt m&agrave;, tự tin tr&ecirc;n mạng x&atilde; hội.</p>\r\n\r\n<p><img alt=\"camera trước iPhone 8 Plus 128GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-8-plus-7.jpg\" /></p>\r\n\r\n<h3><strong>Hiệu suất đ&aacute;ng kinh ngạc, thoải m&aacute;i sử dụng l&acirc;u d&agrave;i</strong></h3>\r\n\r\n<p>Bộ vi xử l&yacute;&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/tin-moi/chip-di-dong-manh-nhat-the-gioi-la-apple-a11-bionic-vay-bionic-nghia-la-gi-60531\">Apple A11 Bionic</a>&nbsp;mạnh mẽ của iPhone 8 Plus kết hợp c&ugrave;ng hệ điều h&agrave;nh iOS tạo th&agrave;nh một sức mạnh đ&aacute;ng kinh ngạc, đủ để bạn l&agrave;m bất cứ điều g&igrave;, kể cả những t&aacute;c vụ nặng nhất. Từ những thao t&aacute;c vuốt chạm đơn thuần cho đến những tựa game 3D h&agrave;ng đầu, iPhone 8 Plus đều xử l&yacute; một c&aacute;ch trơn tru. Phi&ecirc;n bản iPhone 8 Plus 128GB cung cấp cho người d&ugrave;ng bộ nhớ lớn, tha hồ lưu trữ ảnh, video, c&agrave;i đặt ứng dụng. Với việc được hỗ trợ cập nhật phần mềm l&acirc;u d&agrave;i v&agrave; sự tương th&iacute;ch tuyệt đối với hệ điều h&agrave;nh iOS, bạn ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m sử dụng iPhone 8 Plus trong nhiều năm nữa m&agrave; kh&ocirc;ng sợ lỗi thời.</p>\r\n\r\n<p><img alt=\"cấu hình iPhone 8 Plus 128GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-8-plus-8.jpg\" /></p>\r\n\r\n<h3><strong>Thời lượng pin xuất sắc</strong></h3>\r\n\r\n<p>iPhone 8 Plus 128GB l&agrave; một trong những chiếc điện thoại c&oacute; thời lượng pin tốt nhất hiện nay. Khả năng tối ưu tuyệt vời của Apple v&agrave; phần cứng xuất sắc gi&uacute;p iPhone 8 Plus c&oacute; thể sử dụng trong 2 ng&agrave;y sau mỗi lần sạc đầy. Ngo&agrave;i ra, iPhone 8 Plus c&ograve;n tương th&iacute;ch cả sạc nhanh v&agrave; sạc kh&ocirc;ng d&acirc;y, gi&uacute;p việc sạc pin của bạn trở n&ecirc;n đơn giản, tiện lợi hơn.</p>\r\n\r\n<p><img alt=\"thời lượng pin iPhone 8 Plus 128GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-8-plus-9.jpg\" /></p>\r\n\r\n<h3><strong>Ph&iacute;m Home &ldquo;thần th&aacute;nh&rdquo;</strong></h3>\r\n\r\n<p>C&aacute;ch bạn sử dụng v&agrave; tương t&aacute;c với iPhone 8 Plus 128GB trở n&ecirc;n dễ d&agrave;ng hơn bao giờ hết nhờ ph&iacute;m Home vật l&yacute; quen thuộc. D&ugrave; bạn c&oacute; đang ở đ&acirc;u, chỉ cần nhấn v&agrave;o ph&iacute;m Home, điện thoại sẽ ngay lập tức trở về m&agrave;n h&igrave;nh ch&iacute;nh, v&ocirc; c&ugrave;ng trực quan, đơn giản. Ngo&agrave;i ra, ph&iacute;m Home n&agrave;y c&ograve;n t&iacute;ch hợp cảm biến v&acirc;n tay Touch ID để bạn thay thế mật khẩu khi mở kh&oacute;a m&aacute;y, bảo mật ở c&aacute;c ứng dụng, thậm ch&iacute; l&agrave; cả những ứng dụng thanh to&aacute;n, v&iacute; điện tử hay ng&acirc;n h&agrave;ng. Một ph&iacute;m Home vật l&yacute; quen thuộc sẽ gi&uacute;p bạn l&agrave;m chủ được chiếc điện thoại của m&igrave;nh v&agrave; thao t&aacute;c cực nhanh.</p>\r\n\r\n<p><img alt=\"phím Home iPhone 8 Plus 128GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-8-plus-10.jpg\" /></p>\r\n\r\n<h3><strong>Loa ngo&agrave;i Stereo cực đ&atilde;</strong></h3>\r\n\r\n<p>iPhone 8 Plus sở hữu kết cấu 2 loa ngo&agrave;i Stereo, cho chất lượng &acirc;m thanh sắc n&eacute;t v&agrave; cao cấp. &Acirc;m thanh ph&aacute;t ra từ iPhone 8 Plus rất lớn, nhưng kh&ocirc;ng hề bị hiện tượng r&egrave; hay m&eacute;o tiếng. Chất &acirc;m trong trẻo, &acirc;m trầm mạnh mẽ gi&uacute;p bạn giải tr&iacute; tốt hơn khi nghe nhạc, xem phim v&agrave; chơi game.</p>\r\n\r\n<p><img alt=\"loa ngoài iPhone 8 Plus 128GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-8-plus-11.jpg\" /></p>', '2020-11-16', '2020-12-01', 3, 1, 5, '\"màu vàng\",\"màu đen\",\"màu trắng\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Apple</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>158.4 x 78.1 x 7.5 mm (6.24 x 3.07 x 0.30 in)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>202 g (7.13 oz)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>3 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>128 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>Nano-SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>Cảm ứng điện dung LED-backlit IPS LCD, 16 triệu m&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>5.5 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>1080 x 1920 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>iOS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>11</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Apple A11 Bionic APL1W72</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>2x 2.39 GHz Monsoon &amp; 4x 2.39 GHz Mistral</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Apple GPU (3 l&otilde;i đồ họa)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>Kh&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>12 MP (f/1.8, 28mm, OIS) + 12 MP (f/2.8, 57mm), tự động lấy n&eacute;t nhận diện theo giai đoạn, zoom quang 2x, 4 LED flash (2 tone)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>7 MP, f/2.2, 1080p@30fps, 720p@240fps, nhận diện khu&ocirc;n mặt, HDR, panorama</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>2160p@24/30/60fps, 1080p@30/60/120/240fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat16 1024/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.0, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS, BDS, GALILEO</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>2.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>V&acirc;n tay, gia tốc, la b&agrave;n, khoảng c&aacute;ch, con quay quy hồi, phong vũ biểu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-ion 2691 mAh</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>'),
(11, 11, 'realme-5i-4gb-64gb', 1, 'Realme 5i 4GB-64GB', 3600000, 'realme-5i-4gb-green-amee-thumb-400x40023.jpg', 32, '<h3>Đ&aacute;nh gi&aacute; chi tiết Realme 5i 4GB-64GB</h3>\r\n\r\n<p><strong>Realme 5i sở hữu khả năng chụp ảnh đ&aacute;ng kinh ngạc với bộ 4 camera đẳng cấp, đi c&ugrave;ng vi&ecirc;n pin cực khỏe trong tầm gi&aacute; v&ocirc; c&ugrave;ng hấp dẫn.</strong></p>\r\n\r\n<p><strong><img alt=\"Realme 5i\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/realme-5i-1.jpg\" /></strong></p>\r\n\r\n<h3><strong>Đơn giản nhưng đầy phong c&aacute;ch</strong></h3>\r\n\r\n<p>Thiết kế Realme 5i lấy cảm hứng từ thi&ecirc;n nhi&ecirc;n, tr&agrave;n đầy năng lượng v&agrave; mang đến phong c&aacute;ch tươi trẻ cho người d&ugrave;ng. Realme gọi đ&acirc;y l&agrave; thiết kế &ldquo;V&acirc;n s&aacute;ng &aacute;nh dương&rdquo; mới với những m&agrave;u sắc tươi s&aacute;ng v&agrave; khả năng phản chiếu &aacute;nh s&aacute;ng nhẹ nh&agrave;ng, tinh tế. Lớp vỏ gương ph&iacute;a sau m&aacute;y được đ&aacute;nh b&oacute;ng vả xử l&yacute; bởi c&ocirc;ng nghệ h&agrave;ng đầu từ Đức. Cả hai phi&ecirc;n bản m&agrave;u l&agrave; xanh nước biển v&agrave; xanh l&aacute; c&acirc;y đều thể hiện sức trẻ, tr&agrave;n đầy nhiệt huyết, cho bạn hứng th&uacute; khởi đầu c&ocirc;ng việc v&agrave;o mỗi ng&agrave;y.</p>\r\n\r\n<p><img alt=\"thiết kế Realme 5i\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/realme-5i-2.jpg\" /></p>\r\n\r\n<h3><strong>4 camera si&ecirc;u việt, đầy đủ t&iacute;nh năng chụp h&igrave;nh</strong></h3>\r\n\r\n<p>Chụp h&igrave;nh đang l&agrave; t&iacute;nh năng m&agrave; người d&ugrave;ng ng&agrave;y c&agrave;ng quan t&acirc;m tr&ecirc;n smartphone. Realme 5i hiểu điều đ&oacute; v&agrave; trang bị tới 4 camera để bạn c&oacute; thể chụp tốt trong mọi ho&agrave;n cảnh. Với 4 vai tr&ograve; ri&ecirc;ng biệt, camera Realme 5i l&agrave; phương tiện tuyệt vời để lưu giữ những khoảnh khắc đ&aacute;ng nhớ. Bạn sẽ c&oacute; một camera ch&iacute;nh chất lượng cao chụp h&igrave;nh trong điều kiện th&ocirc;ng thường; camera g&oacute;c si&ecirc;u rộng 119 độ cho khung h&igrave;nh rộng hơn; camera đo độ s&acirc;u hỗ trợ chụp ảnh ch&acirc;n dung x&oacute;a ph&ocirc;ng sắc n&eacute;t v&agrave; cuối c&ugrave;ng l&agrave; camera si&ecirc;u cận, lấy n&eacute;t được những vật thể nhỏ ở khoảng c&aacute;ch si&ecirc;u gần chỉ 4cm.</p>\r\n\r\n<p><img alt=\"camera Realme 5i\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/realme-5i-3.jpg\" /></p>\r\n\r\n<h3><strong>Quay phim chống rung chuẩn mực</strong></h3>\r\n\r\n<p>Ở những điện thoại th&ocirc;ng thường, quay video c&aacute;c cảnh h&agrave;nh động thường xảy ra hiện tượng nh&ograve;e h&igrave;nh, vỡ n&eacute;t. Nhưng tr&ecirc;n Realme 5i với khả năng chống rung hiệu quả, bạn c&oacute; thể quay phim mượt m&agrave;, kể cả những khung h&igrave;nh tốc độ cao. Thử quay những đoạn clip của ri&ecirc;ng bạn hay thậm ch&iacute; tập t&agrave;nh l&agrave;m vlogger, Realme 5i sẽ l&agrave;m bạn phải kinh ngạc.</p>\r\n\r\n<p><img alt=\"quay phim Realme 5i\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/realme-5i-4.jpg\" /></p>\r\n\r\n<h3><strong>Dung lượng pin 5000 mAh, bước tiến mới về năng lượng</strong></h3>\r\n\r\n<p>L&agrave; chiếc điện thoại c&oacute; thời lượng pin lớn nhất từ trước đến nay của h&atilde;ng, Realme 5i thực sự l&agrave; bước đột ph&aacute; mới về năng lượng smartphone. Dung lượng pin 5000 mAh cho ph&eacute;p điện thoại c&oacute; thời gian chờ l&ecirc;n tới 30 ng&agrave;y; xem Youtube li&ecirc;n tục trong gần 20 giờ; chơi game trong khoảng 10 giờ v&agrave; thoải m&aacute;i sử dụng hơn 2 ng&agrave;y mới cần phải sạc pin. Thậm ch&iacute; Realme 5i c&ograve;n hỗ trợ sạc ngược cho c&aacute;c điện thoại kh&aacute;c, đ&oacute;ng vai tr&ograve; l&agrave; một cục pin dự ph&ograve;ng khi cần.</p>\r\n\r\n<p><img alt=\"pin Realme 5i\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/realme-5i-5.jpg\" /></p>\r\n\r\n<h3><strong>Sức mạnh hiệu năng tuyệt vời</strong></h3>\r\n\r\n<p>Realme 5i l&agrave; chiếc điện thoại mạnh mẽ h&agrave;ng đầu trong tầm gi&aacute;. Bộ n&atilde;o của m&aacute;y ch&iacute;nh l&agrave; con chip Snapdragon 665 AIE sản xuất tr&ecirc;n tiến tr&igrave;nh mới 11nm, kh&ocirc;ng chỉ cực mạnh với 8 nh&acirc;n m&agrave; c&ograve;n rất tiết kiệm điện năng. Ngo&agrave;i ra m&aacute;y c&ograve;n sở hữu 4GB RAM v&agrave; 64GB bộ nhớ trong. Cả tốc độ, đồ họa, bộ nhớ của realme 5i đều rất xuất sắc, gi&uacute;p điện thoại chạy mượt ở mọi ứng dụng, kể cả những tựa game nặng hiện nay.</p>\r\n\r\n<p><img alt=\"hiệu năng Realme 5i\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/realme-5i-6.jpg\" /></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh lớn, trải nghiệm h&igrave;nh ảnh ch&acirc;n thực</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh realme 5i c&oacute; k&iacute;ch thước lớn tới 6,5 inch, hiển thị được nhiều hơn, cho bạn thấy những nội dung trực quan v&agrave; ch&acirc;n thực hơn bao giờ hết. M&agrave;n h&igrave;nh n&agrave;y được thiết kế dưới dạng &ldquo;giọt sương&rdquo;, viền m&agrave;n h&igrave;nh mỏng để trải nghiệm h&igrave;nh ảnh bất tận, mọi thứ như nổi l&ecirc;n ngay trước mắt. Đồng thời với viền m&agrave;n h&igrave;nh mỏng, m&aacute;y cũng sẽ gọn g&agrave;ng hơn rất nhiều, dễ d&agrave;ng cầm nắm v&agrave; thao t&aacute;c.</p>\r\n\r\n<p><img alt=\"màn hình Realme 5i\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/realme-5i-7.jpg\" /></p>\r\n\r\n<h3><strong>Bền vững qua năm th&aacute;ng</strong></h3>\r\n\r\n<p>Độ bền l&agrave; yếu tố rất được ch&uacute; trọng tr&ecirc;n realme 5i. Thiết kế của m&aacute;y c&oacute; thể chống lại những nguy cơ thường nhật từ nước nhờ v&agrave;o lớp chống thấm k&iacute;n, bảo vệ c&aacute;c ph&iacute;m bấm v&agrave; c&aacute;c cổng kết nối. Lỡ bị văng nước l&ecirc;n điện thoại, m&aacute;y vẫn c&oacute; thể sống khỏe. B&ecirc;n cạnh đ&oacute;, hệ thống sạc pin của realme 5i được bảo vệ 4 lớp, chống ch&aacute;y nổ để bạn c&oacute; thể y&ecirc;n t&acirc;m sử dụng.</p>\r\n\r\n<p><img alt=\"chống nước Realme 5i\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/realme-5i-8.jpg\" /></p>\r\n\r\n<p><em>*realme 5i c&oacute; thiết kế chống văng nước, kh&ocirc;ng ho&agrave;n to&agrave;n l&agrave; chống nước, v&igrave; thế người d&ugrave;ng kh&ocirc;ng n&ecirc;n cố t&igrave;nh cho m&aacute;y v&agrave;o nước, mọi hư hại do điện thoại v&agrave;o nước sẽ kh&ocirc;ng được bảo h&agrave;nh*</em></p>\r\n\r\n<p>R&uacute;t gọn&nbsp;<em>▴</em></p>', '2020-11-16', '2020-12-01', 3, 0, 5, '\"màu xanh lá\",\"màu xanh\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Realme</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>D&agrave;i 165.4 mm - Ngang 75.6 mm - D&agrave;y 9.3 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>198 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>4 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>64 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>M&agrave;n h&igrave;nh giọt sương cải tiến</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.52 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>720 x 1600 pixel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 9.0 (Pie)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Snapdragon 665 AIE 8 nh&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>4 nh&acirc;n 2.0 GHz &amp; 4 nh&acirc;n 1.8 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 610</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>MicroSD, hỗ trợ tối đa 256 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>Ch&iacute;nh 12 MP &amp; Phụ 8 MP, 2 MP, 2 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>8 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps, Quay phim 4K 2160p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>A2DP, LE, v5.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>BDS, A-GPS, GLONASS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>Micro USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Mở kh&oacute;a bằng v&acirc;n tay, Mở kho&aacute; khu&ocirc;n mặt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>5000 mAh</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>'),
(12, 15, 'vsmart-joy-4-4gb-64gb', 1, 'Vsmart Joy 4 4GB-64GB', 3500000, '637359404161479456_vsmart-joy-4-den-145.png', 12, '<h3>Đ&aacute;nh gi&aacute; chi tiết Vsmart Joy 4 4GB-64GB</h3>\r\n\r\n<p><strong><a href=\"https://fptshop.com.vn/dien-thoai/vsmart-joy-4-4gb-64gb\" target=\"_blank\">Vsmart Joy 4 4GB-64GB</a>&nbsp;mang đến cho người d&ugrave;ng khả năng đa nhiệm tốt hơn, trải nghiệm mượt m&agrave; hơn. Kết hợp c&ugrave;ng bộ vi xử l&yacute; Snapdragon 655 mạnh mẽ v&agrave; m&agrave;n h&igrave;nh lớn sắc n&eacute;t, bạn sẽ c&oacute; những ph&uacute;t gi&acirc;y giải tr&iacute; tuyệt vời.</strong></p>\r\n\r\n<p><strong><img alt=\"Vsmart Joy 4\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-joy-4-2.jpg\" /></strong></p>\r\n\r\n<h3><strong>Selfie chuẩn thần th&aacute;i</strong></h3>\r\n\r\n<p>Camera trước độ ph&acirc;n giải cao 13MP v&agrave; t&iacute;nh năng l&agrave;m đẹp th&ocirc;ng minh Beauty AI sẽ gi&uacute;p bạn tự tin tỏa s&aacute;ng với những bức ảnh chuẩn &ldquo;thần th&aacute;i&rdquo;. Ảnh chụp sắc n&eacute;t c&ugrave;ng tr&iacute; tuệ nh&acirc;n tạo AI, kh&eacute;o l&eacute;o chỉnh sửa ảnh dựa tr&ecirc;n vẻ đẹp khu&ocirc;n mặt của bạn để lu&ocirc;n đẹp rạng rỡ trong mọi khung h&igrave;nh. Camera chất lượng cũng gi&uacute;p bạn c&oacute; được trải nghiệm livestream, quay tiktok, vlog ấn tượng hơn.</p>\r\n\r\n<p><img alt=\"camera selfie Vsmart Joy 4\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-joy-4-12.jpg\" /></p>\r\n\r\n<h3><strong>Hiệu năng mạnh mẽ h&agrave;ng đầu</strong></h3>\r\n\r\n<p>Vsmart Joy 4 l&agrave; chiếc&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;gi&aacute; rẻ hiếm hoi c&oacute; sẵn 4GB RAM v&agrave; 64GB bộ nhớ trong. Những th&ocirc;ng số n&agrave;y đảm bảo bạn c&oacute; thể mở nhiều ứng dụng c&ugrave;ng l&uacute;c m&agrave; kh&ocirc;ng xảy ra hiện tượng lag giật, đồng thời cho kh&ocirc;ng gian lưu trữ lớn. Nhưng ấn tượng hơn cả vẫn l&agrave; bộ vi xử l&yacute; Snapdragon 655 cực mạnh với 8 nh&acirc;n Kryo 260, tốc độ tối đa l&ecirc;n tới 2.0 GHz đi c&ugrave;ng GPU đồ họa Adreno 610. Tất cả c&aacute;c ứng dụng đều chạy mượt m&agrave; tr&ecirc;n Vsmart Joy 4. Kh&ocirc;ng chỉ vậy, hiệu năng mạnh mẽ c&ograve;n được thể hiện khi chơi game. Tha hồ tận hưởng những tựa game thời thượng, đồ họa sắc n&eacute;t v&agrave; hiệu ứng ch&acirc;n thực.</p>\r\n\r\n<p><img alt=\"cấu hình Vsmart Joy 4\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-joy-4-11.jpg\" /></p>\r\n\r\n<h3><strong>Tận hưởng h&igrave;nh ảnh sắc n&eacute;t, sống động đến kh&oacute; tin</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh Vsmart Joy 4 xuất sắc ở mọi phương diện, từ kiểu d&aacute;ng cho đến độ ph&acirc;n giải. Bạn sẽ được tận hưởng mọi thứ tr&ecirc;n một m&agrave;n h&igrave;nh viền mỏng dạng &ldquo;đục lỗ&rdquo;, với camera trước nằm trong khu vực tấm k&iacute;nh m&agrave;n h&igrave;nh, cho h&igrave;nh ảnh hiển thị lớn v&agrave; ấn tượng hơn rất nhiều. Đặc biệt, chất lượng hiển thị của m&agrave;n h&igrave;nh l&agrave; hết sức tuyệt vời với k&iacute;ch thước 6,53 inch đi c&ugrave;ng độ ph&acirc;n giải Full HD+ 1080x2340 pixels v&ocirc; c&ugrave;ng sắc n&eacute;t. Mọi nội dung giải tr&iacute; đều trở n&ecirc;n hấp dẫn hơn tr&ecirc;n m&agrave;n h&igrave;nh Vsmart Joy 4.</p>\r\n\r\n<p><img alt=\"màn hình Vsmart Joy 4\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-joy-4-4.jpg\" /></p>\r\n\r\n<h3><strong>L&agrave;m hết sức, chơi hết m&igrave;nh</strong></h3>\r\n\r\n<p>Bạn kh&ocirc;ng cần phải qu&aacute; lo về vấn đề hết pin sẽ l&agrave;m gi&aacute;n đoạn c&ocirc;ng việc hay giải tr&iacute; khi Vsmart Joy 4 sở hữu vi&ecirc;n pin dung lượng l&ecirc;n tới 5000 mAh. Thoải m&aacute;i sử dụng trọn vẹn cả ng&agrave;y d&agrave;i v&agrave; nhanh ch&oacute;ng sạc đầy khi c&oacute; việc cần. C&ocirc;ng nghệ sạc nhanh QuickCharge 3.0 c&ocirc;ng suất tới 18W sẽ đảm bảo điện thoại lu&ocirc;n c&oacute; đầy đủ năng lượng.</p>\r\n\r\n<p><img alt=\"pin Vsmart Joy 4\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-joy-4-9.jpg\" /></p>\r\n\r\n<h3><strong>Camera chuy&ecirc;n nghiệp, thỏa sức s&aacute;ng tạo</strong></h3>\r\n\r\n<p>Trang bị 4 camera với 4 t&iacute;nh năng ri&ecirc;ng biệt, Vsmart Joy 4 c&oacute; thể kết hợp v&agrave; bổ trợ c&aacute;c ống k&iacute;nh để mang đến những bức ảnh th&uacute; vị trong mọi ho&agrave;n cảnh. Camera ch&iacute;nh độ ph&acirc;n giải cao 16MP, khẩu độ lớn f/1.8, chụp ảnh sắc n&eacute;t kể cả trong điều kiện thiếu s&aacute;ng; camera g&oacute;c si&ecirc;u rộng 8MP, thu được nhiều khung cảnh hơn trong một khung h&igrave;nh; camera x&oacute;a ph&ocirc;ng cho bạn những bức ảnh ch&acirc;n dung ảo diệu v&agrave; cuối c&ugrave;ng l&agrave; camera si&ecirc;u cận cảnh macro, để bạn kh&aacute;m ph&aacute; những vật thể lạ ở khoảng c&aacute;ch si&ecirc;u gần.</p>\r\n\r\n<p><img alt=\"camera Vsmart Joy 4\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-joy-4-6.jpg\" /></p>', '2020-11-16', '2020-12-01', 2, 0, 5, '\"màu đen\",\"màu xanh\"', 5, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Vsmart</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>Đang cập nhật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>Đang cập nhật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>4 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>64 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>IPS LCD, 16 triệu m&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.5 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>1080 x 2400 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 10, VOS 3.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm SDM665 Snapdragon 665 (11 nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core (4x2.0 GHz Kryo 260 Gold &amp; 4x1.8 GHz Kryo 260 Silver)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 610</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>16 MP, f/1.8, 26mm (wide), 1/2.0&quot;, 0.8&micro;m, PDAF<br />\r\n			8 MP, f/2.2, 13mm (ultrawide), 1/4.0&quot;, 1.12&micro;m<br />\r\n			2 MP, f/2.4, (macro)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>13 MP, f/2.0, (wide), 1/3.1&quot;, 1.12&micro;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>1080p@30/60/120fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat15 800/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>4.2, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS, BDS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến gia tốc, cảm biến tiệm cận, cảm biến s&aacute;ng, con quay hồi chuyển, la b&agrave;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Po 5000 mAh battery<br />\r\n			Sạc nhanh 18W</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>'),
(13, 16, 'nokia-83-5g-8gb-128gb', 1, 'Nokia 8.3 5G 8GB-128GB', 12000000, '637217889289047006_nokia-8-3-5g-1 (1)22.png', 11, '<h3>Đ&aacute;nh gi&aacute; chi tiết Nokia 8.3 5G</h3>\r\n\r\n<p><strong>Đ&oacute;n đầu tương lai với kết nối 5G nhanh nhất hiện nay,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/nokia-8-3-5g\" title=\"Điện thoại Nokia 8.3\" type=\"Điện thoại Nokia 8.3\">Nokia 8.3</a>&nbsp;cho bạn những trải nghiệm h&agrave;ng đầu trong thế giới c&ocirc;ng nghệ, đặc biệt l&agrave; khả năng quay phim chuy&ecirc;n nghiệp với ống k&iacute;nh ZEISS cao cấp.</strong></p>\r\n\r\n<p><strong><img alt=\"Điện thoại Nokia 8.3 chính hãng\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/nokia-83-5g-1.jpg\" title=\"Điện thoại Nokia 8.3 5G chính hãng\" /></strong></p>\r\n\r\n<h3><strong>4 camera 64MP, chụp ảnh sắc n&eacute;t đến từng chi tiết</strong></h3>\r\n\r\n<p>Nokia 8.3 khẳng định vị thế trong lĩnh vực nhiếp ảnh smartphone với việc trang bị ống k&iacute;nh ZEISS cho cả camera sau v&agrave; camera trước. 4 camera sau ống k&iacute;nh ZEISS 64MP với đầy đủ t&iacute;nh năng chụp ảnh cận cảnh, to&agrave;n cảnh, chế độ ch&acirc;n dung mang đến những bức ảnh đầy chuy&ecirc;n nghiệp, sắc n&eacute;t như những g&igrave; bạn thấy ngo&agrave;i đời thực.</p>\r\n\r\n<p><img alt=\"camera Nokia 8.3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/nokia-83-5g-2.jpg\" /></p>\r\n\r\n<h3><strong>Th&aacute;ch thức m&agrave;n đ&ecirc;m với camera Nokia 8.3</strong></h3>\r\n\r\n<p>Điều kiện thiếu s&aacute;ng kh&ocirc;ng phải l&agrave; vấn đề với camera Nokia 8.3. Với ống k&iacute;nh ZEISS 64MP khẩu độ lớn f/1.89 v&agrave; k&iacute;ch thước điểm ảnh l&ecirc;n tới 2,8um, Nokia 8.3 dễ d&agrave;ng thu được lượng &aacute;nh s&aacute;ng lớn nhất để bức ảnh vẫn r&otilde; n&eacute;t d&ugrave; l&agrave; trong đ&ecirc;m tối, cho bạn thoải m&aacute;i s&aacute;ng tạo v&agrave; bắt trọn vẻ đẹp về đ&ecirc;m.</p>\r\n\r\n<p><img alt=\"chụp đêm Nokia 8.3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/nokia-83-5g-3.jpg\" /></p>\r\n\r\n<h3><strong>Trở th&agrave;nh đạo diễn v&agrave; nh&agrave; quay phim chuy&ecirc;n nghiệp</strong></h3>\r\n\r\n<p>D&ugrave; l&agrave; chụp ảnh hay quay video, Nokia 8.3 cũng tỏ ra xuất sắc với phần cứng camera chất lượng v&agrave; những kinh nghiệm trong sản xuất h&igrave;nh ảnh trước đ&acirc;y. Bạn c&oacute; thể quay những đoạn video chuẩn điện ảnh, sau đ&oacute; nhanh ch&oacute;ng chỉnh sửa, xuất bản v&agrave; chia sẻ bằng những c&ocirc;ng cụ chuy&ecirc;n nghiệp tr&ecirc;n m&aacute;y.</p>\r\n\r\n<p>Trở th&agrave;nh một chuy&ecirc;n gia thực thụ với c&aacute;c c&ocirc;ng cụ ph&acirc;n loại dải m&agrave;u c&ugrave;ng 10 bộ lọc kh&aacute;c nhau, để đoạn phim th&ecirc;m phần sống động v&agrave; c&oacute; sắc th&aacute;i ri&ecirc;ng. Hơn thế nữa, &acirc;m thanh OZO tr&ecirc;n Nokia 8.3 c&oacute; thể thu &acirc;m 360 độ, cho mọi thứ ch&acirc;n thực hơn bao giờ hết.</p>\r\n\r\n<p><img alt=\"quay video Nokia 8.3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/nokia-83-5g-4.jpg\" /></p>\r\n\r\n<h3><strong>Nắm bắt từng chuyển động</strong></h3>\r\n\r\n<p>Kh&ocirc;ng chỉ những đoạn phim th&ocirc;ng thường, Nokia 8.3 c&ograve;n hỗ trợ chế độ quay video chuyển động nhanh, để những đoạn phim h&agrave;nh động trở n&ecirc;n mượt m&agrave; hơn. Tốc độ khung h&igrave;nh lu&ocirc;n được đảm bảo ở mức 60fps, giảm thiểu hiện tượng mờ nh&ograve;e, giật h&igrave;nh để bạn c&oacute; những thước phim h&agrave;nh động gay cấn v&agrave; th&uacute; vị.</p>\r\n\r\n<p><img alt=\"chụp ảnh Nokia 8.3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/nokia-83-5g-5.jpg\" /></p>\r\n\r\n<h3><strong>Tận hưởng điều kỳ diệu của mạng 5G</strong></h3>\r\n\r\n<p>Bộ vi xử l&yacute; Snapdragon 765G tr&ecirc;n Nokia 8.3 kh&ocirc;ng chỉ cực mạnh m&agrave; đ&acirc;y c&ograve;n l&agrave; con chip hỗ trợ kết nối 5G, mạng di động nhanh nhất thế giới hiện nay. Với Nokia 8.3, bạn đ&atilde; sẵn s&agrave;ng để trải nghiệm tốc độ mạng 5G nhanh si&ecirc;u tốc, thoải m&aacute;i xem phim trực tuyến, chia sẻ nội dung m&agrave; kh&ocirc;ng hề c&oacute; độ trễ.</p>\r\n\r\n<p><img alt=\"mạng 5G Nokia 8.3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/nokia-83-5g-6.jpg\" /></p>\r\n\r\n<h3><strong>Đắm ch&igrave;m trong m&agrave;n h&igrave;nh si&ecirc;u lớn của Nokia 8.3</strong></h3>\r\n\r\n<p>L&agrave; một trong những chiếc&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\" title=\"Tham khảo điện thoại chính hãng giá tốt tại FPTShop\" type=\"Tham khảo điện thoại chính hãng giá tốt tại FPTShop\">điện thoại</a>&nbsp;c&oacute; m&agrave;n h&igrave;nh lớn nhất tr&ecirc;n thị trường, Nokia 8.3 sở hữu m&agrave;n h&igrave;nh PureView 6.81 inch độ ph&acirc;n giải Full HD+ sắc n&eacute;t, thiết kế tr&agrave;n viền tuyệt đẹp v&agrave; vẫn c&oacute; logo Nokia l&agrave;m điểm nhấn ở mặt trước. C&ugrave;ng thưởng thức những bộ phim bom tấn v&agrave; c&aacute;c nội dung hấp dẫn tr&ecirc;n m&agrave;n h&igrave;nh chất lượng đỉnh cao.</p>\r\n\r\n<p><img alt=\"màn hình Nokia 8.3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/nokia-83-5g-11.jpg\" /></p>\r\n\r\n<h3><strong>Hệ điều h&agrave;nh Android nguy&ecirc;n bản mượt m&agrave;</strong></h3>\r\n\r\n<p><a href=\"https://fptshop.com.vn/dien-thoai/nokia\" title=\"Điện thoại Nokia chính hãng giá tốt\" type=\"Điện thoại Nokia chính hãng giá tốt\">Nokia</a>&nbsp;8.3 vừa sở hữu sức mạnh hiệu năng xuất sắc, lại vừa chạy&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/android\" title=\"Tham khảo điện thoại sử dụng hệ điều hành Android\" type=\"Tham khảo điện thoại sử dụng hệ điều hành Android\">hệ điều h&agrave;nh Android</a>&nbsp;nguy&ecirc;n bản, sự kết hợp n&agrave;y mang đến trải nghiệm mượt m&agrave; hơn bao giờ hết cho người d&ugrave;ng. Một chiếc điện thoại giao diện hiện đại, dễ sử dụng, si&ecirc;u mượt v&agrave; lu&ocirc;n cập nhật hệ điều h&agrave;nh sớm nhất l&agrave; sự kh&aacute;c biệt của Nokia 8.3 so với c&aacute;c đối thủ.</p>\r\n\r\n<p><img alt=\"hệ điều hành Android của Nokia 8.3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/nokia-83-5g-9.jpg\" /></p>\r\n\r\n<h3><strong>Trải nghiệm nhiều hơn với Nokia 8.3</strong></h3>\r\n\r\n<p>Để cuộc vui của bạn kh&ocirc;ng bị gi&aacute;n đoạn, Nokia 8.3 c&oacute;&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai?dung-luong-pin=sieu-trau-tren-4000-mah&amp;sort=ban-chay-nhat\" title=\"Tham khảo điện thoại có dung lượng pin lớn 4500 mAh\" type=\"Tham khảo điện thoại có dung lượng pin lớn 4500 mAh\">dung lượng pin lớn 4500 mAh</a>, thoải m&aacute;i sử dụng trong 2 ng&agrave;y sau một lần sạc đầy. Điện thoại cũng hỗ trợ sạc nhanh 18W, nhanh ch&oacute;ng phục hồi năng lượng, sẵn s&agrave;ng cho mọi thử th&aacute;ch.</p>\r\n\r\n<p><img alt=\"Dung lượng pin Nokia 8.3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/nokia-83-5g-10.jpg\" /></p>\r\n\r\n<h3><strong>Thiết kế tinh xảo, nghệ thuật đậm chất Bắc &Acirc;u</strong></h3>\r\n\r\n<p>Cảm nhận hơi thở Bắc &Acirc;u lịch l&atilde;m trong từng đường n&eacute;t của Nokia 8.3. Từng đường cong mềm mại, cụm camera tr&ograve;n tinh tế cho đến to&agrave;n th&acirc;n được l&agrave;m bằng k&iacute;nh với m&agrave;u sắc đặc biệt &ndash; Xanh Thi&ecirc;n H&agrave;, tất cả đều tạo n&ecirc;n sự cổ điển, sang trọng.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ vậy, thiết kế Nokia 8.3 c&ograve;n mang đến sự tiện dụng nhất cho người d&ugrave;ng với cảm gi&aacute;c cầm nắm mượt m&agrave;; cảm biến v&acirc;n tay cạnh b&ecirc;n thao t&aacute;c nhanh ch&oacute;ng, mở kh&oacute;a m&aacute;y trong chớp mắt.</p>\r\n\r\n<p><img alt=\"thiết kế Nokia 8.3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/nokia-83-5g-12.jpg\" /></p>', '2020-11-16', '2020-12-01', 1, 0, 5, '\"màu xanh\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Nokia</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>171.9 x 78.6 x 9 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>220 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>8 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>128 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>IPS LCD capacitive touchscreen, 16M colors</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.8 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>1080 x 2400 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 10, Android One</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm SDM765 Snapdragon 765G (7 nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core (1x2.4 GHz Kryo 475 Prime &amp; 1x2.2 GHz Kryo 475 Gold &amp; 6x1.8 GHz Kryo 475 Silver)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 620</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>64 MP, f/1.9, (wide), PDAF<br />\r\n			12 MP, f/2.2, 13mm (ultrawide), AF<br />\r\n			2 MP, (macro)<br />\r\n			2 MP, (depth)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>24 MP, f/2.0, (wide)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>Trước: 1080p@30fps<br />\r\n			Sau: 4K@30fps, 1080p@30fps, gyro-EIS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat16 1024/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5G</td>\r\n			<td>mmWave, Sub-6 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.0, A2DP, EDR, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS, BDS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>2.0, Type-C 1.0 reversible connector, USB On-The-Go</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến gia tốc, cảm biến tiệm cận, cảm biến s&aacute;ng, con quay hồi chuyển, la b&agrave;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Po 4500 mAh battery, Fast charging 18W</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>');
INSERT INTO `sanpham` (`sp_id`, `th_id`, `sp_nhan`, `kho_id`, `sp_ten`, `sp_dongianhap`, `sp_hinh`, `sp_soluong`, `sp_thongtin`, `sp_ngaytaomoi`, `sp_ngaycapnhat`, `khuyenmai_id`, `sp_hienthi`, `ncc_id`, `sp_mausac`, `xx_id`, `sp_tskt`) VALUES
(14, 20, 'samsung-galaxy-note-20-ultra-5g-12gb-256gb', 1, 'Samsung Galaxy Note 20 Ultra 5G 12GB-256GB', 20000000, '637322682441632129_ss-note-20-ultra-gold-122.png', 12, '<h3>Đ&aacute;nh gi&aacute; chi tiết Samsung Galaxy Note 20 Ultra 5G</h3>\r\n\r\n<p><strong>Đ&oacute;n ch&agrave;o kỷ nguy&ecirc;n mới c&ugrave;ng&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-note-20-ultra-5g\">Samsung Galaxy Note20 Ultra 5G</a>, nơi bạn sẽ được trải nghiệm tốc độ, sự thoải m&aacute;i v&agrave; đẳng cấp tr&ecirc;n một chiếc&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;to&agrave;n năng, hội tụ của những c&ocirc;ng nghệ tinh t&uacute;y nhất.</strong></p>\r\n\r\n<p><strong><img alt=\"Samsung Galaxy Note20 Ultra 5G\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-note20-ultra-5g-4.jpg\" /></strong></p>\r\n\r\n<h3><strong>Kiệt t&aacute;c smartphone</strong></h3>\r\n\r\n<p>Samsung Galaxy Note20 Ultra 5G l&agrave; chiếc điện thoại c&oacute; được sự ho&agrave;n thiện tỉ mỉ nhất hiện nay. Sở hữu m&agrave;n h&igrave;nh lớn tới 6,9 inch nhưng m&aacute;y vẫn rất dễ d&agrave;ng sử dụng, thao t&aacute;c, cầm nắm nhờ phần khung viền cong mượt m&agrave;, liền lạc một c&aacute;ch ho&agrave;n hảo. Khung điện thoại l&agrave;m từ kim loại sắc sảo, cắt kim cương s&aacute;ng b&oacute;ng v&agrave; cả những đường phay xước ph&aacute; c&aacute;ch. Trong khi đ&oacute; phần mặt trước v&agrave; sau m&aacute;y được bảo vệ bằng k&iacute;nh cường lực&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/tin-moi/corning-trinh-lang-kinh-cuong-luc-gorilla-glass-victus-roi-tu-2-met-van-song-sot-123754\">Corning Gorilla Glass Victus</a>&nbsp;v&ocirc; c&ugrave;ng bền vững.</p>\r\n\r\n<p><img alt=\"thiết kế Samsung Galaxy Note20 Ultra 5G\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-note20-ultra-5g-10.jpg\" /></p>\r\n\r\n<p>Note20 Ultra 5G c&ograve;n tạo điểm nhấn bằng lớp sơn l&igrave;, gi&uacute;p mặt lưng đẹp sang trọng nhưng kh&ocirc;ng hề b&aacute;m bẩn, mồ h&ocirc;i hay dấu v&acirc;n tay. Chiếc điện thoại của bạn sẽ lu&ocirc;n mới, đẹp tỏa s&aacute;ng với ba m&agrave;u sắc Trắng huyền b&iacute;, Đen huyền b&iacute; v&agrave; m&agrave;u đặc biệt m&agrave;u Đồng &aacute;nh kim huyền b&iacute; chỉ c&oacute; tr&ecirc;n Note20 series.</p>\r\n\r\n<h3><strong>H&igrave;nh ảnh vượt qua mọi giới hạn</strong></h3>\r\n\r\n<p>Đến với chiếc smartphone c&oacute; m&agrave;n h&igrave;nh lớn nhất v&agrave; đẹp nhất thế giới hiện nay, bạn thật sự đắm ch&igrave;m trong những h&igrave;nh ảnh ấn tượng tr&ecirc;n Note20 Ultra 5G. M&agrave;n h&igrave;nh v&ocirc; cực Infinity-O 6,9 inch c&ocirc;ng nghệ Dynamic AMOLED 2x cực đỉnh, hỗ trợ&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/hdr10-la-gi-va-tai-sao-no-se-giup-man-hinh-galaxy-s10-tot-hon-80396\">HDR10+</a>&nbsp;v&agrave; độ ph&acirc;n giải QHD+ si&ecirc;u cao, mang tới độ chi tiết, m&agrave;u sắc, độ tương phản tr&ecirc;n cả tuyệt vời. Kh&ocirc;ng thể kh&ocirc;ng nhắc đến tần số qu&eacute;t 120Hz v&agrave; tần số lấy mẫu cảm ứng 240Hz, gi&uacute;p mọi thao t&aacute;c cảm ứng của bạn tr&ecirc;n Note20 Ultra 5G mượt m&agrave; hơn bao giờ hết.</p>\r\n\r\n<p><img alt=\"màn hình Samsung Galaxy Note20 Ultra 5G\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-note20-ultra-5g-11.jpg\" /></p>\r\n\r\n<h3><strong>B&uacute;t S Pen thế hệ mới đầy quyền lực</strong></h3>\r\n\r\n<p>S Pen mới tr&ecirc;n Note20 Ultra 5G đ&atilde; c&oacute; sự cải tiến để mang tới trải nghiệm viết, vẽ mượt m&agrave; v&agrave; ch&iacute;nh x&aacute;c nhất từ trước tới nay. Kết hợp th&ecirc;m m&agrave;n h&igrave;nh 120Hz, những thao t&aacute;c của bạn với S Pen thực sự ch&acirc;n thực như b&uacute;t viết tr&ecirc;n giấy. Bạn c&oacute; thể ghi ch&uacute; ở bất cứ đ&acirc;u, bất cứ l&uacute;c n&agrave;o, để c&ocirc;ng việc lu&ocirc;n diễn ra tr&ocirc;i chảy v&agrave; kịp thời. Tất nhi&ecirc;n với kết nối Bluetooth, S Pen c&ograve;n c&oacute; thể ra lệnh cho điện thoại từ xa một c&aacute;ch tiện lợi.</p>\r\n\r\n<p><img alt=\"S Pen Samsung Galaxy Note20 Ultra 5G\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-note20-ultra-5g-1.jpg\" /></p>\r\n\r\n<h3><strong>Ghi ch&uacute; đơn giản v&agrave; th&ocirc;ng minh hơn</strong></h3>\r\n\r\n<p>Với S Pen, bạn c&oacute; thể chuyển chữ viết tay sang dạng văn bản một c&aacute;ch dễ d&agrave;ng. Chỉ với một thao t&aacute;c chạm, tất cả c&aacute;c k&yacute; hiệu v&agrave; ghi ch&uacute; sẽ chuyển sang văn bản hết sức th&ocirc;ng minh. D&ugrave; bạn ghi ch&uacute; nguệch ngoạc, Note20 Ultra 5G vẫn nhận diện được v&agrave; sắp xếp th&agrave;nh những h&agrave;ng chữ viết thẳng h&agrave;ng đẹp mắt.</p>\r\n\r\n<p><img alt=\"S Pen Samsung Galaxy Note20 Ultra 5G\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-note20-ultra-5g-3.jpg\" /></p>\r\n\r\n<h3><strong>Ghi ch&uacute; liền mạch tr&ecirc;n mọi thiết bị</strong></h3>\r\n\r\n<p>Sự đồng bộ liền mạch của ứng dụng Samsung Notes gi&uacute;p cho hoạt động ghi ch&uacute; của bạn trở n&ecirc;n chuy&ecirc;n nghiệp v&agrave; tiện lợi hơn. Sau khi ghi ch&uacute; tr&ecirc;n điện thoại, bạn c&oacute; thể mở ứng dụng Samsung Notes tr&ecirc;n&nbsp;<a href=\"https://fptshop.com.vn/may-tinh-bang\">m&aacute;y t&iacute;nh bảng</a>&nbsp;hay m&aacute;y t&iacute;nh để c&oacute; được kh&ocirc;ng gian l&agrave;m việc lớn, nhiều c&ocirc;ng cụ chỉnh sửa v&agrave; chia sẻ dễ d&agrave;ng. Sự phối hợp nhịp nh&agrave;ng giữa điện thoại v&agrave; m&aacute;y t&iacute;nh bảng gi&uacute;p bạn ho&agrave;n th&agrave;nh c&ocirc;ng việc th&ocirc;ng minh, hiệu quả hơn.</p>\r\n\r\n<h3><strong>Kết nối 5G si&ecirc;u tốc, mở ra kỷ nguy&ecirc;n của tốc độ</strong></h3>\r\n\r\n<p>Samsung Galaxy Note20 Ultra 5G hỗ trợ&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/mang-5g-la-gi-tong-quan-ve-mang-khong-day-nhanh-nhat-the-gioi-hien-nay-50246\">kết nối 5G</a>&nbsp;si&ecirc;u tốc, cho ph&eacute;p bạn kết nối mạng tốc độ cực nhanh mọi l&uacute;c mọi nơi. Điện thoại cũng hỗ trợ chuẩn Wi-Fi 6 mới nhất v&agrave; t&iacute;nh năng Wi-Fi Optimizer, gi&uacute;p bắt Wi-Fi nhanh hơn, s&oacute;ng khỏe v&agrave; ổn định hơn. Tha hồ đến với những trải nghiệm tuyệt vời m&agrave; kh&ocirc;ng cần phải lo lắng về đường truyền mạng.</p>\r\n\r\n<p><img alt=\"5G Samsung Galaxy Note20 Ultra 5G\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-note20-ultra-5g-13.jpg\" /></p>\r\n\r\n<h3><strong>M&aacute;y t&iacute;nh để b&agrave;n trong h&igrave;nh d&aacute;ng điện thoại</strong></h3>\r\n\r\n<p>Sức mạnh của Samsung Galaxy Note20 Ultra 5G kh&ocirc;ng thua k&eacute;m g&igrave; một chiếc m&aacute;y t&iacute;nh để b&agrave;n với cấu h&igrave;nh đ&aacute;ng kinh ngạc. Bạn sẽ c&oacute; bộ vi xử l&yacute;&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/tim-hieu-sau-hon-ve-exynos-990-tren-samsung-galaxy-s20-111786\">Exynos 990</a>&nbsp;sản xuất tr&ecirc;n tiến tr&igrave;nh 7nm+ ti&ecirc;n tiến nhất hiện nay; bộ nhớ RAM l&ecirc;n tới 12GB v&agrave; dung lượng lưu trữ 256GB.&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/samsung\">Samsung</a>&nbsp;c&ograve;n trang bị hệ thống l&agrave;m m&aacute;t n&acirc;ng cao để lu&ocirc;n đảm bảo hiệu năng tốt nhất cho thiết bị. Kết hợp th&ecirc;m m&agrave;n h&igrave;nh 120Hz si&ecirc;u mượt, Note20 Ultra sẽ ph&aacute;t huy hết sức mạnh từ những t&aacute;c vụ sử dụng thường ng&agrave;y cho đến những tựa game đồ họa nặng.</p>\r\n\r\n<p><img alt=\"cấu hình Samsung Galaxy Note20 Ultra 5G\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-note20-ultra-5g-14.jpg\" /></p>\r\n\r\n<h3><strong>Thời lượng pin cực d&agrave;i</strong></h3>\r\n\r\n<p>Bạn ho&agrave;n to&agrave;n c&oacute; thể tin tưởng v&agrave;o thời lượng pin của Samsung Galaxy Note20 Ultra 5G. Vi&ecirc;n pin dung lượng cao 4500mAh được tối ưu th&ocirc;ng minh dựa tr&ecirc;n th&oacute;i quen sử dụng người d&ugrave;ng sẽ mang đến thời lượng pin thoải m&aacute;i suốt cả ng&agrave;y. Tha hồ l&agrave;m việc, giải tr&iacute; liền mạch, kh&ocirc;ng sợ gi&aacute;n đoạn tr&ecirc;n Note20 Ultra.</p>\r\n\r\n<p><img alt=\"pin Samsung Galaxy Note20 Ultra 5G\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-note20-ultra-5g-9.jpg\" /></p>\r\n\r\n<h3><strong>Sạc nhanh trong chớp mắt, lu&ocirc;n sẵn s&agrave;ng trải nghiệm</strong></h3>\r\n\r\n<p>Nhanh ch&oacute;ng sạc đầy v&agrave; tiếp tục trải nghiệm nhờ bộ sạc si&ecirc;u nhanh 25W c&oacute; sẵn trong hộp. Bạn sẽ chỉ mất 30 ph&uacute;t để sạc được 50% pin cho Samsung Galaxy Note20 Ultra 5G, gi&uacute;p chiếc điện thoại lu&ocirc;n tr&agrave;n đầy năng lượng.</p>\r\n\r\n<p><img alt=\"pin Samsung Galaxy Note20 Ultra\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-note20-ultra-9.jpg\" /></p>\r\n\r\n<h3><strong>Chụp ảnh sắc n&eacute;t đến kh&ocirc;ng tưởng</strong></h3>\r\n\r\n<p>Độ sắc n&eacute;t của những bức ảnh tr&ecirc;n Samsung Galaxy Note20 Ultra 5G đ&atilde; vượt xa mọi giới hạn với camera ch&iacute;nh độ ph&acirc;n giải l&ecirc;n tới 108MP hỗ trợ&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/tim-hieu-tinh-nang-chong-rung-quang-hoc-la-gi-63290\">chống rung quang học OIS</a>. Ngo&agrave;i ra Note20 Ultra 5G c&ograve;n c&oacute; camera 12MP Tele OIS, camera 12MP g&oacute;c si&ecirc;u rộng v&agrave; cảm biến lấy n&eacute;t Laser. Kết quả l&agrave; bạn sẽ c&oacute; những bức ảnh sắc n&eacute;t, ch&acirc;n thực như những g&igrave; mắt người chứng kiến. Ấn tượng hơn nữa, t&iacute;nh năng si&ecirc;u zoom cho ph&eacute;p ph&oacute;ng to ảnh tới 50 lần, đưa cảnh vật từ rất xa đến ngay trước mắt bạn một c&aacute;ch đầy kỳ diệu.</p>\r\n\r\n<p><img alt=\"camera Samsung Galaxy Note20 Ultra 5G\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-note20-ultra-5g-8.jpg\" /></p>\r\n\r\n<h3><strong>Đạo diễn những thước phim chuy&ecirc;n nghiệp</strong></h3>\r\n\r\n<p>Bạn đ&atilde; sẵn s&agrave;ng s&aacute;ng tạo những bộ phim chuy&ecirc;n nghiệp, chuẩn điện ảnh ngay tr&ecirc;n chiếc điện thoại Samsung Galaxy Note20 Ultra 5G của m&igrave;nh. Khả năng quay video độ ph&acirc;n giải l&ecirc;n tới 8K, sắc n&eacute;t gấp 4 lần chuẩn UltraHD 4K, mang đến những thước phim sắc n&eacute;t, chi tiết đến bất ngờ. C&aacute;c t&ugrave;y chọn tỉ lệ 16:9 v&agrave; 21:9 đa dạng tạo n&ecirc;n trải nghiệm điện ảnh đ&iacute;ch thực. Hơn nữa, chế độ Pro cho ph&eacute;p bạn điều chỉnh tốc độ thu ph&oacute;ng trong khi quay, tạo n&ecirc;n những g&oacute;c quay ấn tượng.</p>\r\n\r\n<p><img alt=\"quay video Samsung Galaxy Note20 Ultra\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-note20-ultra-8.jpg\" /></p>\r\n\r\n<h3><strong>Th&ecirc;m hiệu ứng, th&ecirc;m kh&aacute;c biệt</strong></h3>\r\n\r\n<p>Mức độ ho&agrave;n thiện video đ&atilde; l&ecirc;n một tầm cao mới ở Note20 Ultra 5G. Bạn c&oacute; thể quay phim 120fps, l&agrave;m chậm khung h&igrave;nh mượt m&agrave;; quay video x&oacute;a ph&ocirc;ng với c&aacute;c hiệu ứng đầy nghệ thuật. Tất nhi&ecirc;n kh&ocirc;ng thể kh&ocirc;ng nhắc đến khả năng quay video chống rung si&ecirc;u ổn định với t&iacute;nh năng Super Steady. Cảm biến camera cao cấp, c&ocirc;ng nghệ chống rung quang học OIS, ổn định h&igrave;nh ảnh AI n&acirc;ng cao gi&uacute;p những cảnh quay h&agrave;nh động nhanh trở n&ecirc;n mượt m&agrave; v&agrave; sắc n&eacute;t.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"360\" src=\"https://www.youtube.com/embed/0h4_sJbnRsI\" width=\"640\"></iframe></p>', '2020-11-16', '2020-12-01', 2, 0, 5, '\"màu vàng\"', 5, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Samsung</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>164.8 x 77.2 x 8.1 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>208 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>12 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>256 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>Dynamic AMOLED 2X capacitive touchscreen, 16M colorsDynamic AMOLED 2X, 16M colors, Corning Gorilla Glass Victus, HDR10+, Always-on display, 120Hz@FHD/60Hz@QHD refresh rate</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.9 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>1440 x 3088 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 10, One UI 2.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Exynos 990 (7 nm+)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core (2x2.73 GHz Mongoose M5 &amp; 2x2.50 GHz Cortex-A76 &amp; 4x2.0 GHz Cortex-A55)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Mali-G77 MP11</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>Kh&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>108 MP, f/1.8, 26mm (wide), 1/1.33&quot;, 0.8&micro;m, PDAF, Laser AF, OIS<br />\r\n			12 MP, f/3.0, 103mm (periscope telephoto), 1.0&micro;m, PDAF, OIS, 5x optical zoom, 50x hybrid zoom<br />\r\n			12 MP, f/2.2, 13mm (ultrawide), 1/2.55&quot;, 1.4&micro;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>10 MP, f/2.2, 26mm (wide), 1/3.2&quot;, 1.22&micro;m, Dual Pixel PDAF</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>Trước: 4K@30/60fps, 1080p@30fps<br />\r\n			Sau: 8K@24fps, 4K@30/60fps, 1080p@30/60/240fps, 720p@960fps, HDR10+, stereo sound rec., gyro-EIS &amp; OIS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (6CA) Cat18 1200/200 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5G</td>\r\n			<td>mmWave, Sub-6 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.0, A2DP, LE, aptX</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS, BDS, GALILEO</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>3.2, Type-C 1.0 reversible connector, USB On-The-Go</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay si&ecirc;u &acirc;m, cảm biến gia tốc, cảm biến tiệm cận, cảm biến s&aacute;ng, con quay hồi chuyển, la b&agrave;n, cảm biến &aacute;p kế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Non-removable Li-Ion 4500 mAh battery<br />\r\n			Fast charging 25W<br />\r\n			USB Power Delivery 3.0<br />\r\n			Fast Qi/PMA wireless charging<br />\r\n			Reverse wireless charging 9W</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>'),
(15, 15, 'vsmart-live-4-6gb-64gb', 1, 'Vsmart Live 4 6GB-64GB', 4690000, '637338568495583618_vsmart-live-4-den-181.png', 47, '<h3>Đ&aacute;nh gi&aacute; chi tiết Vsmart Live 4 6GB-64GB</h3>\r\n\r\n<p><strong><a href=\"https://fptshop.com.vn/dien-thoai/vsmart-live-4\" target=\"_blank\">Vsmart Live 4 6GB-64GB</a>&nbsp;sở hữu cấu h&igrave;nh cực đỉnh, đưa bạn đến trải nghiệm giải tr&iacute; bất tận với dung lượng pin lớn, m&agrave;n h&igrave;nh tuyệt đẹp v&agrave; 4 camera sau AI đầy ấn tượng.</strong></p>\r\n\r\n<p><strong><img alt=\"Vsmart Live 4 \" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-live-4-1.jpg\" /></strong></p>\r\n\r\n<h3><strong>Sức mạnh cấu h&igrave;nh đỉnh cao</strong></h3>\r\n\r\n<p>Vsmart Live 4 6GB-64GB&nbsp;trang bị cấu h&igrave;nh khiến tất cả đều phải ngước nh&igrave;n. Bộ vi xử l&yacute; Snapdragon 675 cực mạnh từ nh&agrave; sản xuất Qualcomm danh tiếng, mang tới trải nghiệm mượt m&agrave; trong từng thao t&aacute;c vuốt chạm ở mọi ứng dụng. Ngo&agrave;i ra, đ&acirc;y c&ograve;n l&agrave; một con chip m&agrave; c&aacute;c game thủ rất y&ecirc;u th&iacute;ch khi xử l&yacute; c&aacute;c tựa game 3D một c&aacute;ch xuất sắc. Dung lượng RAM 6GB v&agrave; bộ nhớ trong 64GB đủ sức để m&aacute;y hoạt động ổn định, tha hồ cho bạn c&agrave;i đặt, mở nhiều ứng dụng c&ugrave;ng l&uacute;c.</p>\r\n\r\n<p><img alt=\"cấu hình Vsmart Live 4 \" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-live-4-2.jpg\" /></p>\r\n\r\n<h3><strong>Thời lượng pin &ldquo;khủng&rdquo;, tốc độ sạc si&ecirc;u nhanh</strong></h3>\r\n\r\n<p>Vi&ecirc;n pin dung lượng tới 5000 mAh đảm bảo năng lượng cho bạn sử dụng Live 4 6GB-64GB suốt cả ng&agrave;y d&agrave;i. Chưa hết, m&aacute;y c&ograve;n hỗ trợ c&ocirc;ng nghệ sạc nhanh Quick Charge 3.0 cho c&ocirc;ng suất cao 18W, nhanh ch&oacute;ng sạc đầy để&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;lu&ocirc;n đồng h&agrave;nh b&ecirc;n bạn. Thoải m&aacute;i &ldquo;c&agrave;y&rdquo; những bộ phim d&agrave;i tập hoặc &ldquo;chiến game&rdquo; online, Vsmart Live 4 sẽ c&ugrave;ng bạn giải tr&iacute; hết m&igrave;nh.</p>\r\n\r\n<p><img alt=\"pin Vsmart Live 4 \" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-live-4-3.jpg\" /></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh lớn 6,5&nbsp;inch tr&agrave;n viền tinh tế</strong></h3>\r\n\r\n<p>Kh&ocirc;ng gian giải tr&iacute; của Vsmart Live 4 chưa bao giờ &ldquo;đ&atilde;&rdquo; đến thế với m&agrave;n h&igrave;nh si&ecirc;u tr&agrave;n viền k&iacute;ch thước lớn tới 6,5&nbsp;inch, độ ph&acirc;n giải Full HD+ v&ocirc; c&ugrave;ng sắc n&eacute;t. Camera trước được &ldquo;đục lỗ&rdquo; một c&aacute;ch tinh tế trong m&agrave;n h&igrave;nh, đảm bảo mang đến trải nghiệm trọn vẹn cho người d&ugrave;ng. Giờ đ&acirc;y trải nghiệm xem phim, chơi game của bạn sẽ hấp dẫn hơn bao giờ hết.</p>\r\n\r\n<h3><strong>Bộ 4 camera sau 48MP AI xuất sắc</strong></h3>\r\n\r\n<p>Vsmart Live 4 n&acirc;ng tầm trải nghiệm nhiếp ảnh bằng bộ tứ camera sau đầy chuy&ecirc;n nghiệp. Bạn sẽ c&oacute; camera ch&iacute;nh 48MP si&ecirc;u sắc n&eacute;t, chuy&ecirc;n gia chụp đ&ecirc;m; camera g&oacute;c rộng 8MP; camera chụp cận cảnh macro 2MP v&agrave; camera hỗ trợ chụp x&oacute;a ph&ocirc;ng 5MP. Sự kết hợp của 4 camera n&agrave;y đủ để mang đến những bức ảnh tuyệt đẹp v&agrave; chuy&ecirc;n nghiệp với loạt t&iacute;nh năng th&uacute; vị.</p>\r\n\r\n<p><img alt=\"camera Vsmart Live 4 \" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-live-4-5.jpg\" /></p>\r\n\r\n<h3><strong>Kiến tạo nghệ thuật trong m&agrave;n đ&ecirc;m</strong></h3>\r\n\r\n<p>Cảm biến camera ch&iacute;nh của Vsmart Live 4 c&oacute; độ ph&acirc;n giải cao 48MP v&agrave; khẩu độ lớn f/1.9, l&yacute; tưởng cho chụp ảnh thiếu s&aacute;ng. Ngo&agrave;i ra sự hỗ trợ của tr&iacute; tuệ nh&acirc;n tạo AI sẽ gi&uacute;p bạn x&oacute;a tan đ&ecirc;m tối, chụp những bức ảnh đẹp lung linh trong m&agrave;n đ&ecirc;m, với độ n&eacute;t cao, &iacute;t nhiễu v&agrave; m&agrave;u sắc sống động.</p>\r\n\r\n<p><img alt=\"chụp đêm Vsmart Live 4 \" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-live-4-6.jpg\" /></p>\r\n\r\n<h3><strong>Chụp ảnh x&oacute;a ph&ocirc;ng ảo diệu</strong></h3>\r\n\r\n<p>Sự kết hợp giữa camera ch&iacute;nh 48MP v&agrave; camera x&oacute;a ph&ocirc;ng 5MP sẽ mang đến những bức ảnh x&oacute;a ph&ocirc;ng, l&agrave;m mờ hậu cảnh đầy chuy&ecirc;n nghiệp. B&agrave;n c&ograve;n c&oacute; thể chỉnh độ mờ của ph&ocirc;ng nền theo &yacute; th&iacute;ch, t&aacute;ch biệt hẳn với chủ thể để c&oacute; được bức ảnh như chụp từ m&aacute;y ảnh DSLR.</p>\r\n\r\n<p><img alt=\"xóa phông Vsmart Live 4 \" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-live-4-7.jpg\" /></p>\r\n\r\n<h3><strong>Thiết kế hiện đại, thời thượng</strong></h3>\r\n\r\n<p>Vsmart Live 4 c&oacute; một kiểu d&aacute;ng rất hiện đại v&agrave; tương lai với độ ho&agrave;n thiện cao cấp đến từng đường n&eacute;t. Cụm camera h&igrave;nh chữ nhật đặt dọc cực &ldquo;ngầu&rdquo; tạo n&ecirc;n điểm nhấn trong thiết kế m&aacute;y, trong khi đ&oacute; logo Vsmart &ldquo;rực lửa&rdquo; thể hiện tinh thần Việt. Phần mặt trước kh&ocirc;ng k&eacute;m phần ấn tượng với m&agrave;n h&igrave;nh &ldquo;kh&ocirc;ng viền&rdquo; tinh tế. C&aacute;c lựa chọn m&agrave;u sắc l&agrave; Đen lam ngọc, Xanh lục bảo v&agrave; Trắng tinh thạch cũng rất sang trọng, thời trang.</p>\r\n\r\n<p><img alt=\"thiết kế Vsmart Live 4 \" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-live-4-8.jpg\" /></p>\r\n\r\n<h3><strong>Cảm biến v&acirc;n tay si&ecirc;u tốc</strong></h3>\r\n\r\n<p>Cảm biến v&acirc;n tay một chạm ở mặt lưng cho ph&eacute;p c&aacute;c thao t&aacute;c s&aacute;ng m&agrave;n h&igrave;nh, mở kh&oacute;a m&aacute;y chỉ mất đ&uacute;ng một c&uacute; chạm. Tốc độ nhận diện nhanh v&agrave; ch&iacute;nh x&aacute;c tạo n&ecirc;n phương thức bảo mật an to&agrave;n, tiện lợi. Ngo&agrave;i mật khẩu của Vsmart Live 4, bạn cũng c&oacute; thể sử dụng cảm biến v&acirc;n tay để thay mật khẩu trong nhiều ứng dụng kh&aacute;c.</p>\r\n\r\n<p><img alt=\"vân tay Vsmart Live 4 \" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-live-4-9.jpg\" /></p>', '2020-11-16', '2020-12-01', NULL, 0, 5, '\"màu đen\",\"màu xanh\",\"màu trắng\"', 5, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Vsmart</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>162.4 x 76.5 x 8.9 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>217g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>6 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>64 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>M&agrave;n h&igrave;nh LTPS LCD đục lỗ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.5 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>1920 x 1080 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 10, VOS 3.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Snapdragon 675 8 nh&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>2 nh&acirc;n 2.0 GHz &amp; 6 nh&acirc;n 1.7 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 612</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>Kh&ocirc;ng hỗ trợ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>Camera ch&iacute;nh 48MP<br />\r\n			Camera g&oacute;c si&ecirc;u rộng 8MP<br />\r\n			Camera x&oacute;a ph&ocirc;ng 5MP<br />\r\n			Camera macro 2MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>13MP, quay phim 4K 30FPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>4K 30FPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat16 1024/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.0, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS, BDS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>Type-C</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến gia tốc, cảm biến tiệm cận, cảm biến s&aacute;ng, con quay hồi chuyển, la b&agrave;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Po 5000 mAh mAh battery, sạc nhanh 18W</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>'),
(16, 15, 'vsmart-aris-6gb-64gb', 1, 'Vsmart Aris 6GB-64GB', 5000000, '637359469441710404_vsmart-aris-green-172.png', 25, '<h3>Đ&aacute;nh gi&aacute; chi tiết Vsmart Aris 6GB-64GB</h3>\r\n\r\n<p><strong>Trang bị cấu h&igrave;nh mạnh mẽ, bộ tứ camera huyền ảo trong một thiết kế cao cấp,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/vsmart-aris-6gb-64gb\">Vsmart Aris</a>&nbsp;tiếp tục mang đến cho người d&ugrave;ng một lựa chọn smartphone đ&aacute;ng tin cậy ở mức gi&aacute; b&aacute;n hấp dẫn.</strong></p>\r\n\r\n<p><strong><img alt=\"Vsmart Aris\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-aris-1.jpg\" /></strong></p>\r\n\r\n<h3><strong>Vẻ đẹp tinh tế của Vsmart Aris từ kim loại v&agrave; k&iacute;nh</strong></h3>\r\n\r\n<p>Thiết kế của Vsmart Aris kh&ocirc;ng chỉ sang trọng, cao cấp m&agrave; c&ograve;n mang đến cảm gi&aacute;c cầm nắm, thao t&aacute;c rất thoải m&aacute;i. Được l&agrave;m từ khung kim loại cứng c&aacute;p v&agrave; mặt lưng k&iacute;nh nh&aacute;m cao cấp, Vsmart Aris đẹp tỏa s&aacute;ng ngay tr&ecirc;n tay bạn. Mặt lưng k&iacute;nh nh&aacute;m vừa cho vẻ đẹp b&oacute;ng bẩy, lại vừa kh&ocirc;ng b&aacute;m mồ h&ocirc;i, dấu v&acirc;n tay. Cảm biến v&acirc;n tay được đặt kh&eacute;o l&eacute;o tr&ecirc;n ph&iacute;m nguồn ở cạnh b&ecirc;n, gi&uacute;p bạn mở kh&oacute;a an to&agrave;n v&agrave; nhanh ch&oacute;ng chỉ sau một c&uacute; chạm.</p>\r\n\r\n<p><img alt=\"thiết kế Vsmart Aris\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-aris-2.jpg\" /></p>\r\n\r\n<h3><strong>H&igrave;nh ảnh tuyệt đẹp tr&ecirc;n m&agrave;n h&igrave;nh Super AMOLED cao cấp</strong></h3>\r\n\r\n<p>Vsmart Aris mang tr&ecirc;n m&igrave;nh m&agrave;n h&igrave;nh lớn 6,39 inch, độ ph&acirc;n giải Full HD+ sắc n&eacute;t v&agrave; c&ocirc;ng nghệ Super AMOLED cao cấp. M&aacute;y được thiết kế viền si&ecirc;u mỏng dạng giọt nước, cho hiệu ứng thị gi&aacute;c tuyệt vời. Chất lượng m&agrave;n h&igrave;nh xuất sắc cho m&agrave;u sắc sống động, độ tương phản v&agrave; chi tiết cao. Từng h&igrave;nh ảnh, bộ phim, trang web hay c&aacute;c tựa game đều được t&aacute;i hiện một c&aacute;ch tuyệt vời.</p>\r\n\r\n<p><img alt=\"màn hình Vsmart Aris\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-aris-3.jpg\" /></p>\r\n\r\n<h3><strong>Bảo mật lượng tử đầu ti&ecirc;n tr&ecirc;n thế giới</strong></h3>\r\n\r\n<p>Vsmart Aris l&agrave; chiếc&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\" title=\"Điện thoại chính hãng giá tốt\" type=\"Điện thoại chính hãng giá tốt\">điện thoại</a>&nbsp;đi ti&ecirc;n phong với c&ocirc;ng nghệ bảo mật lượng tử. Nhờ con chip bảo mật Quantis QRNG, mọi th&ocirc;ng tin quan trọng của bạn tr&ecirc;n smartphone đều được m&atilde; h&oacute;a theo nguy&ecirc;n tắc sử dụng &aacute;nh s&aacute;ng v&agrave; vật l&yacute; lượng tử, mang đến sự an to&agrave;n tuyệt đối. Những m&atilde; số ngẫu nhi&ecirc;n tạo th&agrave;nh từ &aacute;nh s&aacute;ng v&agrave; vật l&yacute; điện tử kh&ocirc;ng thể giải m&atilde; ngược, để th&ocirc;ng tin của bạn kh&ocirc;ng thể bị x&acirc;m phạm.</p>\r\n\r\n<p><img alt=\"bảo mật Vsmart Aris\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-aris-4.jpg\" /></p>\r\n\r\n<h3><strong>Cấu h&igrave;nh đỉnh cao, vượt qua mọi thử th&aacute;ch</strong></h3>\r\n\r\n<p>Được trang bị bộ vi xử l&yacute; Snapdragon 730 cực mạnh từ Qualcomm,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/vsmart\" title=\"Tham khảo điện thoại Vsmart chính hãng giá rẻ\" type=\"Tham khảo điện thoại Vsmart chính hãng giá rẻ\">Vsmart</a>&nbsp;Aris c&oacute; thể chạy tốt mọi ứng dụng, kể cả những game 3D nặng nhất hiện nay. Việc sản xuất tr&ecirc;n tiến tr&igrave;nh 8nm cũng gi&uacute;p điện thoại ti&ecirc;u hao &iacute;t năng lượng hơn. Kh&ocirc;ng chỉ vậy, với 6GB RAM v&agrave; 64GB bộ nhớ trong, Vsmart Aris cho khả năng chạy đa nhiệm mượt m&agrave;, thoải m&aacute;i c&agrave;i đặt, mở nhiều ứng dụng c&ugrave;ng l&uacute;c m&agrave; kh&ocirc;ng lo hết t&agrave;i nguy&ecirc;n trong m&aacute;y.</p>\r\n\r\n<p><img alt=\"cấu hình Vsmart Aris\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-aris-5.jpg\" /></p>\r\n\r\n<h3><strong>Vsmart Aris lu&ocirc;n tr&agrave;n đầy năng lượng</strong></h3>\r\n\r\n<p>Vsmart Aris sở hữu vi&ecirc;n&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai?dung-luong-pin=tu-3000-4000-mah\" title=\"Xem điện thoại có pin dung lượng 4000mAh\" type=\"Xem điện thoại có pin dung lượng 4000mAh\">pin dung lượng 4000mAh</a>, đủ để bạn sử dụng thoải m&aacute;i trọn vẹn cả ng&agrave;y d&agrave;i. Hơn nữa,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai?tinh-nang-dac-biet=sac-nhanh\" title=\"Tham khảo điện thoại có tính năng sạc nhanh\" type=\"Tham khảo điện thoại có tính năng sạc nhanh\">c&ocirc;ng nghệ sạc nhanh</a>&nbsp;18W gi&uacute;p nhanh ch&oacute;ng sạc đầy năng lượng, để bạn lu&ocirc;n c&oacute; đầy đủ năng lượng, đặc biệt trong những l&uacute;c c&oacute; việc gấp cần sạc pin nhanh.</p>\r\n\r\n<p><img alt=\"pin Vsmart Aris\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-aris-6.jpg\" /></p>\r\n\r\n<h3><strong>Chụp ảnh v&agrave; quay video chuy&ecirc;n nghiệp với Vsmart Aris</strong></h3>\r\n\r\n<p>Thỏa m&atilde;n niềm đam m&ecirc; nhiếp ảnh của bạn với v&ocirc; v&agrave;n t&iacute;nh năng chụp ảnh tr&ecirc;n Vsmart Aris. Bạn sẽ c&oacute; tới 4 camera với 4 vai tr&ograve; ri&ecirc;ng biệt c&ugrave;ng sự kết hợp th&ocirc;ng minh để chụp ảnh chuy&ecirc;n nghiệp hơn. Camera ch&iacute;nh 64MP chịu tr&aacute;ch nhiệm chụp ảnh ch&iacute;nh; camera g&oacute;c rộng 8MP để chụp những cảnh si&ecirc;u rộng; camera Tele 8MP cho khả năng&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai?camera=zoom-quang-hoc\" title=\"Tham khảo điện thoại có tính năng zoom quang học\" type=\"Tham khảo điện thoại có tính năng zoom quang học\">zoom quang</a>&nbsp;2x v&agrave; hỗ trợ chụp ảnh x&oacute;a ph&ocirc;ng; cuối c&ugrave;ng l&agrave; camera macro 2MP để chụp ảnh si&ecirc;u cận cảnh.</p>\r\n\r\n<p><img alt=\"quay video Vsmart Aris\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-aris-8.jpg\" /></p>\r\n\r\n<h3><strong>Chụp ảnh xuất sắc kể cả trong đ&ecirc;m tối</strong></h3>\r\n\r\n<p>Độ ph&acirc;n giải l&ecirc;n tới 64MP gi&uacute;p Vsmart Aris c&oacute; khả năng chụp ảnh sắc n&eacute;t. Thuật to&aacute;n th&ocirc;ng minh sẽ gh&eacute;p 4 điểm ảnh l&agrave;m 1 để bức ảnh cuối c&ugrave;ng c&oacute; k&iacute;ch thước 16MP, nhưng độ s&aacute;ng v&agrave; độ chi tiết vượt trội. V&igrave; thế d&ugrave; l&agrave; trong điều kiện thiếu s&aacute;ng, Vsmart Aris vẫn mang đến những t&aacute;c phẩm ảnh chụp chất lượng d&agrave;nh cho bạn.</p>\r\n\r\n<p><img alt=\"chụp ảnh Vsmart Aris\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-aris-7.jpg\" /></p>\r\n\r\n<h3><strong>Tỏa s&aacute;ng tr&ecirc;n camera selfie 20MP</strong></h3>\r\n\r\n<p>Kh&ocirc;ng thua k&eacute;m g&igrave; camera trước, camera sau của Vsmart Aris cũng c&oacute; độ ph&acirc;n giải cao tới 20MP, mang đến những h&igrave;nh ảnh selfie chất lượng. T&iacute;nh năng l&agrave;m đẹp khu&ocirc;n mặt th&ocirc;ng minh AI sẽ gi&uacute;p hiệu chỉnh l&agrave;n da tự nhi&ecirc;n, kh&eacute;o l&eacute;o l&agrave;m mờ nhược điểm v&agrave; t&ocirc;n vinh vẻ đẹp của ri&ecirc;ng bạn, để lu&ocirc;n tỏa s&aacute;ng trong mọi khung h&igrave;nh.</p>\r\n\r\n<p><img alt=\"camera Vsmart Aris\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-aris-9.jpg\" /></p>', '2020-11-16', '2020-12-01', 3, 0, 5, '\"màu xanh lá\",\"màu đen\"', 5, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Vsmart</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>Đang cập nhật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>Đang cập nhật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>6 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>64 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>Super Amoled, 16 triệu m&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.39 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>1080 x 1620 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 10, VOS 3.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Snapdragon 730G 8 nh&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Qualcomm&reg; Kryo&trade; 470</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Qualcomm&reg; Adreno&trade; 618</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>64MP + 8MP + 8MP + 2MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>20MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat16 1024/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.1, A2DP, LE, aptX HD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>3.1, Type-C 1.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến gia tốc, cảm biến tiệm cận, cảm biến s&aacute;ng, con quay hồi chuyển, la b&agrave;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>4,000mAh, sạc nhanh Quick Charge 3.0 18W</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>'),
(17, 19, 'vivo-y50-8gb-128gb', 1, 'Vivo Y50 8GB - 128GB', 6000000, '637231522786002614_vivo-y50-den-188.png', 30, '<h3>Đ&aacute;nh gi&aacute; chi tiết Vivo Y50 8GB - 128GB</h3>\r\n\r\n<p><strong><a href=\"https://fptshop.com.vn/dien-thoai/vivo-y50\" target=\"_blank\">Vivo Y50</a>&nbsp;sở hữu tốc độ đ&aacute;ng kinh ngạc, m&agrave;n h&igrave;nh tr&agrave;n viền bắt mắt với camera trước nằm ngay trong khu vực m&agrave;n h&igrave;nh c&ugrave;ng 4 camera sau chuy&ecirc;n nghiệp, sẽ l&agrave; chiếc điện thoại rất hấp dẫn đang chờ đ&oacute;n bạn.</strong></p>\r\n\r\n<p><strong><img alt=\"Vivo Y50\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y50-1.jpg\" /></strong></p>\r\n\r\n<h3><strong>Tận hưởng cả thế giới dưới m&agrave;n h&igrave;nh tuyệt mỹ</strong></h3>\r\n\r\n<p>Kh&ocirc;ng như c&aacute;c smartphone kh&aacute;c c&ograve;n đang loay hoay với &ldquo;tai thỏ&rdquo; hay &ldquo;giọt nước&rdquo;, Vivo Y50 đ&atilde; đưa camera trước nằm ngay trong khu vực tấm k&iacute;nh m&agrave;n h&igrave;nh, mang đến trải nghiệm xem ấn tượng hơn. Bạn sẽ được tận hưởng một m&agrave;n h&igrave;nh lớn 6,53 inch độ ph&acirc;n giải Full HD+ sắc n&eacute;t, h&igrave;nh ảnh tr&agrave;n ra cả 4 cạnh, cho tỉ lệ m&agrave;n h&igrave;nh tr&ecirc;n th&acirc;n m&aacute;y l&ecirc;n tới 90,77%. To&agrave;n bộ h&igrave;nh ảnh như nổi l&ecirc;n trước mắt bạn với sự trực quan ho&agrave;n hảo, cho bạn một thế giới thị gi&aacute;c đầy sống động.</p>\r\n\r\n<p><img alt=\"màn hình Vivo Y50\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y50-3.jpg\" /></p>\r\n\r\n<h3><strong>Thiết kế cong 3D tinh tế</strong></h3>\r\n\r\n<p>D&ugrave; tổng thể điện thoại Vivo Y50 vẫn thiết kế dạng thanh vu&ocirc;ng vu&ocirc;ng vắn, hiện đại nhưng Vivo đ&atilde; kh&eacute;o l&eacute;o l&agrave;m cong c&aacute;c cạnh theo dạng 3D tinh tế, mỏng dần về 2 cạnh để tạo cảm gi&aacute;c liền lạc, thoải m&aacute;i khi cầm tr&ecirc;n tay hay thao t&aacute;c vuốt chạm mượt m&agrave; hơn. Vivo Y50 c&ograve;n được phối m&agrave;u độc đ&aacute;o với kết cấu v&acirc;n s&aacute;ng chuyển m&agrave;u, tạo n&ecirc;n kết cấu đa lớp của cả hai m&agrave;u sắc l&agrave; Đen Huyền B&iacute; v&agrave; Xanh T&iacute;m Kh&oacute;i. D&ugrave; kh&ocirc;ng qu&aacute; m&agrave;u m&egrave;, nhưng Vivo Y50 vẫn đủ ấn tượng v&agrave; c&aacute; t&iacute;nh để ai cũng phải ngước nh&igrave;n.</p>\r\n\r\n<p><img alt=\"thiết kế Vivo Y50\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y50-2.jpg\" /></p>\r\n\r\n<h3><strong>Trải nghiệm tốc độ đ&aacute;ng kinh ngạc</strong></h3>\r\n\r\n<p>Vivo Y50 hội tụ đủ những yếu tố để mang đến cho bạn trải nghiệm tốc độ v&agrave; mượt m&agrave; nhất. Bộ vi xử l&yacute; Snapdragon 665 cực mạnh kết hợp c&ugrave;ng 8GB RAM v&agrave; 128GB bộ nhớ trong l&agrave; một combo ho&agrave;n hảo kh&ocirc;ng chỉ cho những t&aacute;c vụ th&ocirc;ng thường trong cuộc sống m&agrave; c&ograve;n đ&aacute;p ứng tốt nhu cầu của những game thủ chuy&ecirc;n nghiệp. Mọi thao t&aacute;c đều diễn ra nhanh trong chớp mắt, kh&ocirc;ng để bạn phải chờ đợi, gi&uacute;p c&ocirc;ng việc của bạn trở n&ecirc;n tr&ocirc;i chảy c&ograve;n c&aacute;c hoạt động giải tr&iacute; trở n&ecirc;n th&uacute; vị hơn.</p>\r\n\r\n<p><img alt=\"tốc độ Vivo Y50\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y50-4.jpg\" /></p>\r\n\r\n<h3><strong>Dung lượng pin si&ecirc;u khủng 5000 mAh</strong></h3>\r\n\r\n<p>Thoải m&aacute;i sử dụng suốt cả ng&agrave;y, tự tin mang điện thoại ra ngo&agrave;i trong những buổi đi d&atilde; ngoại m&agrave; kh&ocirc;ng lo hết pin nhờ vi&ecirc;n pin dung lượng l&ecirc;n tới 5000 mAh. Vivo Y50 lu&ocirc;n đồng h&agrave;nh b&ecirc;n bạn, v&ocirc; c&ugrave;ng bền bỉ v&agrave; đ&aacute;ng tin cậy.</p>\r\n\r\n<p><img alt=\"pin Vivo Y50\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y50-7.jpg\" /></p>\r\n\r\n<h3><strong>4 camera sau AI chức năng ri&ecirc;ng biệt</strong></h3>\r\n\r\n<p>Để hoạt động chụp ảnh của bạn trở n&ecirc;n th&uacute; vị nhất, Vivo Y50 mang tr&ecirc;n m&igrave;nh tới 4 camera sau AI, trong đ&oacute; mỗi camera đều c&oacute; chức năng ri&ecirc;ng biệt, thỏa m&atilde;n niềm đam m&ecirc; nhiếp ảnh. Camera ch&iacute;nh 13MP c&oacute; vai tr&ograve; chụp ảnh trong bối cảnh th&ocirc;ng thường; camera g&oacute;c si&ecirc;u rộng 8MP cho g&oacute;c rộng 120 độ, th&iacute;ch hợp khi chụp phong cảnh rộng; camera chụp si&ecirc;u cận 2MP cho ph&eacute;p bạn chụp những vật thể nhỏ ở khoảng c&aacute;ch si&ecirc;u gần chỉ 4cm; cuối c&ugrave;ng l&agrave; camera x&oacute;a ph&ocirc;ng hỗ trợ l&agrave;m mờ hậu cảnh, mang đến những bức ảnh ch&acirc;n dung đầy chuy&ecirc;n nghiệp.</p>\r\n\r\n<p><img alt=\"camera Vivo Y50\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y50-8.jpg\" /></p>\r\n\r\n<h3><strong>Si&ecirc;u chụp đ&ecirc;m ở cả camera trước v&agrave; sau</strong></h3>\r\n\r\n<p>Chế độ si&ecirc;u chụp đ&ecirc;m th&ocirc;ng minh tr&ecirc;n Vivo Y50 đ&atilde; được n&acirc;ng l&ecirc;n tầm cao mới khi &aacute;p dụng cho cả camera trước v&agrave; camera sau. Chế độ n&agrave;y sẽ nhận biết &aacute;nh s&aacute;ng m&ocirc;i trường xung quanh, qua đ&oacute; cải thiện độ s&aacute;ng v&agrave; độ sắc n&eacute;t của ảnh, giảm hiện tượng nhiễu hay ch&aacute;y s&aacute;ng, để bức ảnh trở n&ecirc;n đẹp lung linh trong đ&ecirc;m tối. Tha hồ chụp những cảnh đẹp hoặc selfie trong điều kiện thiếu s&aacute;ng với Vivo Y50.</p>\r\n\r\n<p><img alt=\"chụp đêm Vivo Y50\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y50-5.jpg\" /></p>\r\n\r\n<h3><strong>Quay video si&ecirc;u chống rung</strong></h3>\r\n\r\n<p>Phần cứng camera xuất sắc kết hợp th&ecirc;m thuật to&aacute;n chống rung h&agrave;ng đầu gi&uacute;p Vivo Y50 c&oacute; khả năng quay video si&ecirc;u chống rung cực đỉnh. Bạn c&oacute; thể quay video ổn định v&agrave; sắc n&eacute;t kể cả khi chuyển động, kh&ocirc;ng k&eacute;m g&igrave; c&aacute;c bộ phim chuy&ecirc;n nghiệp.</p>\r\n\r\n<p><img alt=\"video Vivo Y50\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y50-6.jpg\" /></p>', '2020-11-16', '2020-12-01', NULL, 0, 5, '\"màu đen\",\"màu xanh\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Vivo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>162 x 76.5 x 9.1 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>197 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>8 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>128 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>IPS LCD capacitive touchscreen, 16M colors</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.53 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>1080 x 2400 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 10, Funtouch 10.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm SM6125 Snapdragon 665 (11 nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core (4x2.0 GHz Kryo 260 Gold &amp; 4x1.8 GHz Kryo 260 Silver)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 610</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>microSDX</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>13 MP, f/2.2, (wide), PDAF<br />\r\n			8 MP, f/2.2, 13mm (ultrawide), 1/4.0&quot;, 1.12&micro;m<br />\r\n			2 MP, f/2.4, (macro)<br />\r\n			2 MP, f/2.4, (depth)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>16 MP, f/2.0, (wide)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>1080p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat15 800/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n, dual-band, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.0, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS, GALILEO</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>2.0, Type-C 1.0 reversible connector, USB On-The-Go</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến tiệm cận, gia tốc kế, la b&agrave;n, con quay hồi chuyển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Po 5000 mAh battery, Fast charging 15W</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>');
INSERT INTO `sanpham` (`sp_id`, `th_id`, `sp_nhan`, `kho_id`, `sp_ten`, `sp_dongianhap`, `sp_hinh`, `sp_soluong`, `sp_thongtin`, `sp_ngaytaomoi`, `sp_ngaycapnhat`, `khuyenmai_id`, `sp_hienthi`, `ncc_id`, `sp_mausac`, `xx_id`, `sp_tskt`) VALUES
(19, 19, 'vivo-y11-3gb-32gb', 2, 'Vivo Y11 3GB-32GB', 2000000, 'vivo-y11-400-460-400x46068.png', 35, '<h3>Đ&aacute;nh gi&aacute; chi tiết Vivo Y11</h3>\r\n\r\n<p><strong>Thiết kế tuyệt đẹp tr&agrave;n đầy cảm hứng v&agrave; vi&ecirc;n pin dung lượng cao 5000 mAh, Vivo Y11 mang đến cho bạn những trải nghiệm tuyệt vời trong suốt cả ng&agrave;y d&agrave;i năng động.</strong></p>\r\n\r\n<p><strong><img alt=\"Vivo Y11\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y11-1.jpg\" /></strong></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh tr&agrave;n Halo 6,35 inch rộng lớn</strong></h3>\r\n\r\n<p>Vivo Y11 sẽ đưa bạn tới những điều rộng lớn hơn nhờ m&agrave;n h&igrave;nh lớn 6,35 inch tr&agrave;n viền Halo đẹp mắt. Viền m&agrave;n h&igrave;nh si&ecirc;u mỏng gi&uacute;p h&igrave;nh ảnh như nổi l&ecirc;n trước mắt, kh&ocirc;ng c&oacute; giới hạn, cho trải nghiệm thị gi&aacute;c vượt trội. Mọi nội dung bạn thấy đều lớn hơn, g&oacute;c nh&igrave;n rộng hơn, mở ra một thế giới giải tr&iacute; đầy th&uacute; vị.</p>\r\n\r\n<p><img alt=\"màn hình Vivo Y11\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y11-2.jpg\" /></p>\r\n\r\n<h3><strong>M&agrave;u sắc huyền ảo</strong></h3>\r\n\r\n<p>Thiết kế của Vivo Y11 lấy cảm hứng từ những vi&ecirc;n ngọc qu&yacute; s&aacute;ng lấp l&aacute;nh. Trải qua qu&aacute; tr&igrave;nh chế t&aacute;c thủ c&ocirc;ng tỉ mỉ, mặt lưng của Vivo Y11 c&oacute; khả năng chuyển m&agrave;u đẹp một c&aacute;ch huyền ảo. Cả hai phi&ecirc;n bản m&agrave;u l&agrave; Đỏ San H&ocirc; v&agrave; Xanh Ngọc B&iacute;ch đều tạo hiệu ứng đẹp lấp l&aacute;nh, nổi bật v&agrave; sang trọng.</p>\r\n\r\n<p><img alt=\"màu sắc Vivo Y11\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y11-3.jpg\" /></p>\r\n\r\n<h3><strong>Camera k&eacute;p AI, chụp ảnh th&ocirc;ng minh</strong></h3>\r\n\r\n<p>Camera sau của Vivo Y11 l&agrave; một cụm camera k&eacute;p, bao gồm camera ch&iacute;nh 13MP v&agrave; camera hỗ trợ x&oacute;a ph&ocirc;ng 2MP. Nhờ sự hỗ trợ của tr&iacute; tuệ nh&acirc;n tạo AI, camera Vivo Y11 c&oacute; thể chụp được những bức ảnh đẹp, sắc n&eacute;t v&agrave; rất c&oacute; hồn. Dễ d&agrave;ng lưu lại những khoảnh khắc ấn tượng chỉ bằng c&aacute;ch đưa m&aacute;y l&ecirc;n v&agrave; chụp bằng Vivo Y11.</p>\r\n\r\n<p><img alt=\"camera Vivo Y11\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y11-4.jpg\" /></p>\r\n\r\n<h3><strong>Selfie đẹp tự nhi&ecirc;n</strong></h3>\r\n\r\n<p>Bạn sẽ trở n&ecirc;n đẹp lung linh khi xuất hiện từ camera selfie tr&ecirc;n Vivo Y11. Độ ph&acirc;n giải cao 8MP cho camera trước v&agrave; c&ocirc;ng nghệ l&agrave;m đẹp khu&ocirc;n mặt AI Face Beauty độc quyền sẽ hỗ trợ c&acirc;n chỉnh từng chi tiết tr&ecirc;n gương mặt. Selfie chưa bao giờ tuyệt vời đến thế.</p>\r\n\r\n<p><img alt=\"selfie Vivo Y11\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y11-5.jpg\" /></p>\r\n\r\n<h3><strong>Pin si&ecirc;u khủng 5000 mAh, năng lượng bền bỉ</strong></h3>\r\n\r\n<p>Thời lượng pin Vivo Y11 rất tuyệt vời nhờ vi&ecirc;n pin dung lượng si&ecirc;u khủng dung lượng l&ecirc;n tới 5000 mAh. Kết hợp với hệ thống quản l&yacute; năng lượng th&ocirc;ng minh, bạn c&oacute; thể sử dụng thỏa th&iacute;ch cả ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng lo hết pin.</p>\r\n\r\n<p><img alt=\"pin Vivo Y11\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y11-6.jpg\" /></p>\r\n\r\n<h3><strong>Nhận diện v&acirc;n tay ti&ecirc;n tiến</strong></h3>\r\n\r\n<p>Với cảm biến v&acirc;n tay tr&ecirc;n mặt lưng, bạn c&oacute; thể nhanh ch&oacute;ng mở kh&oacute;a một c&aacute;ch tiện lợi v&agrave; an to&agrave;n. Thao t&aacute;c mở kh&oacute;a diễn ra ho&agrave;n to&agrave;n tự nhi&ecirc;n khi chỉ cần cầm m&aacute;y l&ecirc;n, ng&oacute;n trỏ của bạn sẽ chạm v&agrave;o cảm biến v&agrave; mở kh&oacute;a m&aacute;y ngay lập tức.</p>\r\n\r\n<p><img alt=\"vân tay Vivo Y11\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y11-7.jpg\" /></p>\r\n\r\n<h3><strong>Mượt m&agrave; trong mọi t&aacute;c vụ</strong></h3>\r\n\r\n<p>Vivo Y11 được trang bị bộ vi xử l&yacute; Snapdragon 439 mạnh mẽ với 8 nh&acirc;n xung nhịp l&ecirc;n đến 1,95GHz, sản xuất tr&ecirc;n tiến tr&igrave;nh 12nm ti&ecirc;n tiến, xử l&yacute; mượt m&agrave; mọi t&aacute;c vụ. Điện thoại đi k&egrave;m 3GB RAM v&agrave; 32GB bộ nhớ trong, đủ để bạn chạy đa nhiệm hiệu quả. Vivo Y11 sử dụng hệ điều h&agrave;nh Funtouch OS 9.1 dựa tr&ecirc;n nền Android 9.0, mang đến giao diện nhẹ nh&agrave;ng dễ sử dụng v&agrave; nhiều t&iacute;nh năng hấp dẫn.</p>\r\n\r\n<p><img alt=\"hiệu năng Vivo Y11\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y11-8.jpg\" /></p>', '2020-12-01', '2020-12-01', NULL, 0, 6, '\"màu đỏ\",\"màu xanh\",\"màu xanh nước biển\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Vivo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>159.4 x 76.8 x 8.9 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>190.5 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>3 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>32 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>IPS LCD capacitive touchscreen, 16M colors</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.35 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>720 x 1544 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 9.0 (Pie), Funtouch 9.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm SDM439 Snapdragon 439 (12 nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core (4x1.95 GHz Cortex-A53 &amp; 4x1.45 GHz Cortex A53)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 505</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>13 MP, f/2.2, PDAF<br />\r\n			2 MP, f/2.4, (depth)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>8 MP, f/1.8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>1080p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat15 800/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 b/g/n, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>4.0, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS, GALILEO, BDS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>microUSB 2.0, USB On-The-Go</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Po 5000 mAh</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>'),
(20, 14, 'oppo-a53-4gb-128gb', 2, 'Oppo A53 4GB-128GB', 3000000, '_0001_photo_2020-08-28_08-34-3336.jpg', 5, '<h3>Đ&aacute;nh gi&aacute; chi tiết Oppo A53 4GB-128GB</h3>\r\n\r\n<p><strong>Mượt m&agrave; hơn bao giờ hết với m&agrave;n h&igrave;nh 90Hz, sạc nhanh si&ecirc;u tốc 18W v&agrave; camera 16MP selfie tuyệt đẹp,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/oppo-a53-4gb-128gb\">OPPO A53</a>&nbsp;mang đến cho người d&ugrave;ng những bất ngờ th&uacute; vị trong tầm gi&aacute; hấp dẫn.</strong></p>\r\n\r\n<p><strong><img alt=\"OPPO A53\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a53.jpg\" /></strong></p>\r\n\r\n<h3><strong>Cảm nhận sự mượt m&agrave; tr&ecirc;n m&agrave;n h&igrave;nh 90Hz của OPPO A53</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh OPPO A53 trở n&ecirc;n nổi bật với thiết kế viền mỏng dạng &ldquo;đục lỗ&rdquo; kiểu mới, mang đến trải nghiệm hiển thị &ldquo;tr&agrave;n viền&rdquo; đẹp mắt hơn. Kh&ocirc;ng chỉ vậy, với tần số qu&eacute;t l&ecirc;n tới 90Hz, cao gấp rưỡi so với m&agrave;n h&igrave;nh&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">smartphone</a>&nbsp;th&ocirc;ng thường, tất cả những g&igrave; bạn thấy hay những thao t&aacute;c vuốt chạm tr&ecirc;n OPPO A53 đều trở n&ecirc;n mượt m&agrave; hơn. Kể cả chơi game lẫn c&aacute;c t&aacute;c vụ thường ng&agrave;y, sự mượt m&agrave; của OPPO A53 mang đến cho bạn rất nhiều niềm vui khi sử dụng điện thoại.</p>\r\n\r\n<p><img alt=\"màn hình OPPO A53\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a53-1.jpg\" /></p>\r\n\r\n<h3><strong>Vũ điệu của &aacute;nh s&aacute;ng</strong></h3>\r\n\r\n<p><a href=\"https://fptshop.com.vn/dien-thoai/oppo\">OPPO</a>&nbsp;đ&atilde; ứng dụng kh&eacute;o l&eacute;o sự biến h&oacute;a của &aacute;nh s&aacute;ng để tạo n&ecirc;n một thiết kế rực rỡ nhưng vẫn rất thanh lịch v&agrave; hiện đại tr&ecirc;n OPPO A53. Lấy cảm hứng từ mặt biển lấp l&aacute;nh dưới &aacute;nh nắng, OPPO A53 c&oacute; mặt lưng phản chiếu &aacute;nh s&aacute;ng sống động, cho vẻ đẹp cuốn h&uacute;t. Hai phi&ecirc;n bản m&agrave;u cơ bản Đen v&agrave; Xanh đều c&oacute; những n&eacute;t đẹp ri&ecirc;ng, ph&ugrave; hợp với c&aacute; t&iacute;nh người d&ugrave;ng.</p>\r\n\r\n<p><img alt=\"thiết kế OPPO A53\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a53-2.jpg\" /></p>\r\n\r\n<h3><strong>Vi&ecirc;n pin dung lượng tới 5000 mAh tr&ecirc;n OPPO A53 4GB</strong></h3>\r\n\r\n<p>OPPO A53 c&oacute; kiểu d&aacute;ng vừa vặn trong l&ograve;ng b&agrave;n tay nhờ những đường cong hợp l&yacute;, độ mỏng chỉ 8,4mm v&agrave; trọng lượng 186 gram. Tuy nhi&ecirc;n b&ecirc;n trong thiết kế thanh mảnh đ&oacute; lại l&agrave; vi&ecirc;n pin dung lượng cao 5000 mAh, để bạn sử dụng thỏa sức trọn một ng&agrave;y. OPPO A53 c&ograve;n hỗ trợ sạc nhanh c&ocirc;ng suất tới 18W, chỉ cần 15-20 ph&uacute;t sạc để d&ugrave;ng th&ecirc;m nửa ng&agrave;y. B&ecirc;n cạnh đ&oacute; l&agrave; khả năng tối ưu h&oacute;a pin với chế độ chờ khi ngủ, c&ugrave;ng chế độ si&ecirc;u tiết kiệm điện, để bạn lu&ocirc;n c&oacute; được thời lượng pin tốt nhất v&agrave; sự chủ động khi d&ugrave;ng điện thoại.</p>\r\n\r\n<p><img alt=\"pin OPPO A53\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a53-10.jpg\" /></p>\r\n\r\n<h3><strong>Hiệu suất tối đa</strong></h3>\r\n\r\n<p>OPPO A53 mang đến hiệu suất tối đa nhờ một cấu h&igrave;nh mạnh mẽ. Bộ vi xử l&yacute;&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/tin-moi/oppo-a53-voi-chip-snapdragon-460-pin-5000-mah-chinh-thuc-ra-mat-124810\">Snapdragon 460</a>&nbsp;sản xuất tr&ecirc;n tiến tr&igrave;nh 11nm ti&ecirc;n tiến, với 8 nh&acirc;n Kryo trứ danh từ Qualcomm cho tốc độ cực nhanh. GPU đồ họa Adreno 610 l&agrave; l&yacute; tưởng để chơi game 3D, chỉnh sửa ảnh hay video. Điện thoại cũng sở hữu 4GB RAM v&agrave; bộ nhớ trong l&ecirc;n tới 128GB, cho trải nghiệm liền mạch c&ugrave;ng kh&ocirc;ng gian lưu trữ rộng lớn.</p>\r\n\r\n<p><img alt=\"cấu hình OPPO A53\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a53-8.jpg\" /></p>\r\n\r\n<h3><strong>&Acirc;m thanh 3D sống động từ loa k&eacute;p</strong></h3>\r\n\r\n<p>Trải nghiệm loa ngo&agrave;i tr&ecirc;n OPPO A53 sẽ l&agrave;m bạn phải kinh ngạc nhờ hệ thống loa k&eacute;p stereo. Với &acirc;m thanh nổi 3D c&ocirc;ng nghệ từ Dirac, bạn sẽ c&oacute; được chất &acirc;m tuyệt vời, &acirc;m trầm mạnh mẽ, &acirc;m lượng lớn v&agrave; chi tiết. Những t&aacute;c vụ như nghe nhạc, xem phim, chơi game đều trở n&ecirc;n hấp dẫn hơn.</p>\r\n\r\n<p><img alt=\"âm thanh OPPO A53\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a53-5.jpg\" /></p>\r\n\r\n<h3><strong>Nh&acirc;n 3 ống k&iacute;nh, nh&acirc;n 3 khả năng nhiếp ảnh</strong></h3>\r\n\r\n<p>Trang bị tới 3 camera AI, bao gồm camera ch&iacute;nh 13MP, camera đo độ s&acirc;u 2MP v&agrave; camera macro 2MP, OPPO A53 c&oacute; khả năng nhiếp ảnh chuy&ecirc;n nghiệp với loạt t&iacute;nh năng th&uacute; vị. Bạn c&oacute; thể chụp ảnh sắc n&eacute;t cả đ&ecirc;m lẫn ng&agrave;y;&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/tim-hieu-ve-cong-nghe-chup-xoa-phong-la-gi-63770\">chụp ảnh x&oacute;a ph&ocirc;ng</a>&nbsp;ho&agrave;n hảo v&agrave; chụp si&ecirc;u cận cảnh những vật thể nhỏ ở cự li chỉ v&agrave;i cm. Tha hồ s&aacute;ng tạo với những bức ảnh từ OPPO A53.</p>\r\n\r\n<p><img alt=\"camera OPPO A53\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a53-6.jpg\" /></p>\r\n\r\n<h3><strong>Selfie đẹp tự nhi&ecirc;n</strong></h3>\r\n\r\n<p>Camera selfie tiếp tục l&agrave; thế mạnh của OPPO A53 khi điện thoại sở hữu camera trước 16MP, khẩu độ f/2.0, g&oacute;c rộng v&agrave; hỗ trợ chụp ảnh HDR. Kết hợp th&ecirc;m tr&iacute; tuệ nh&acirc;n tạo AI, bạn sẽ c&oacute; được khả năng l&agrave;m đẹp tự nhi&ecirc;n, tối ưu h&oacute;a v&agrave; t&ocirc;n vinh vẻ đẹp ch&acirc;n thực, những n&eacute;t đẹp của ri&ecirc;ng bạn.</p>\r\n\r\n<p><img alt=\"selfie OPPO A53\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a53-7.jpg\" /></p>', '2020-12-01', '2020-12-01', NULL, 0, 6, '\"màu xanh\",\"màu đen\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>OPPO</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>163.9 x 75.1 x 8.4 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>186 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>4 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>128 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>IPS LCD, 16triệu m&agrave;u, Gorilla Glass 3, 90Hz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.5 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>720 x 1600 pixel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 10, ColorOS 7.2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm SM4250 Snapdragon 460 (11 nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core (4x1.8 GHz Kryo 240 &amp; 4x1.6 GHz Kryo 240)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 610</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>Hỗ trợ thẻ nhớ tối đa 256GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>13 MP, f/2.2, 25mm (wide), 1/3.06&quot;, 1.12&micro;m, PDAF<br />\r\n			2 MP, f/2.4, (macro)<br />\r\n			2 MP, f/2.4, (depth)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>16 MP, f/2.0, (wide), 1/3.06&quot;, 1.0&micro;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>1080p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat15 800/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.0, A2DP, LE, aptX HD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS, GALILEO, BDS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>2.0, Type-C 1.0 reversible connector, USB On-The-Go</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến tiệm cận, gia tốc kế, la b&agrave;n, con quay hồi chuyển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Po 5000 mAh, sạc nhanh 18W</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>'),
(21, 14, 'oppo-a52-6gb-128gb', 2, 'Oppo A52 6GB-128GB', 3000000, '637353320105195905_oppo-a52-den-160.png', 17, '<h3>Đ&aacute;nh gi&aacute; chi tiết Oppo A52 6GB-128GB</h3>\r\n\r\n<p><strong>C&ugrave;ng&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/oppo-a52\">OPPO A52</a>&nbsp;tận hưởng cuộc sống, cho mỗi khoảnh khắc của bạn trở n&ecirc;n đ&aacute;ng nhớ hơn với m&agrave;n h&igrave;nh Neo tuyệt đẹp, trải nghiệm mượt m&agrave; v&agrave; bộ tứ camera đỉnh cao.</strong></p>\r\n\r\n<p><strong><img alt=\"OPPO A52\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a52.jpg\" /></strong></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh Neo ho&agrave;n to&agrave;n mới</strong></h3>\r\n\r\n<p>OPPO A52 sở hữu m&agrave;n h&igrave;nh lớn 6,5 inch v&agrave; độ ph&acirc;n giải Full HD+ 2400x1080 pixels sắc n&eacute;t. Kh&ocirc;ng chỉ xuất sắc ở chất lượng hiển thị, điểm nhấn m&agrave;n h&igrave;nh OPPO A52 c&ograve;n đến từ c&aacute;ch thiết kế. C&aacute;c viền m&agrave;n h&igrave;nh si&ecirc;u mỏng v&agrave; camera trước đặt kh&eacute;o l&eacute;o ngay trong tấm k&iacute;nh m&agrave;n h&igrave;nh, tạo n&ecirc;n trải nghiệm xem ấn tượng nhất. OPPO gọi đ&acirc;y l&agrave; thiết kế m&agrave;n h&igrave;nh Neo, m&agrave;n h&igrave;nh sẽ mang đến những điều kh&aacute;c biệt, đặc biệt l&agrave; khi chơi game hay xem phim.</p>\r\n\r\n<p><img alt=\"màn hình OPPO A52\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a52-1.jpg\" /></p>\r\n\r\n<h3><strong>Tỏa s&aacute;ng trong l&ograve;ng b&agrave;n tay</strong></h3>\r\n\r\n<p>Lấy cảm hứng từ bầu trời đ&ecirc;m v&agrave; những ch&ograve;m sao lấp l&aacute;nh, OPPO A52 đẹp một c&aacute;ch thanh lịch với th&acirc;n m&aacute;y thanh mảnh, c&aacute;c g&oacute;c cạnh ho&agrave;n thiện liền lạc c&ugrave;ng cụm camera chữ nhật hiện đại. Bạn sẽ nh&igrave;n thấy những vầng h&agrave;o quang tỏa ra từ cụm camera n&agrave;y, tạo n&ecirc;n vẻ đẹp độc đ&aacute;o, d&ugrave; l&agrave; ở phi&ecirc;n bản m&agrave;u đen Twillight Black hay Trắng Stream White.</p>\r\n\r\n<p><img alt=\"thiết kế OPPO A52\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a52-2.jpg\" /></p>\r\n\r\n<h3><strong>Cảm biến v&acirc;n tay cạnh b&ecirc;n tiện lợi</strong></h3>\r\n\r\n<p>OPPO A52 đ&atilde; kh&eacute;o l&eacute;o &ldquo;giấu&rdquo; cảm biến v&acirc;n tay v&agrave;o phần cạnh b&ecirc;n, rất dễ để bạn thao t&aacute;c, đồng thời kh&ocirc;ng chiếm kh&ocirc;ng gian ở mặt lưng như những chiếc&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;kh&aacute;c. Chỉ cần một c&uacute; chạm, điện thoại sẽ ngay lập tức s&aacute;ng m&agrave;n h&igrave;nh v&agrave; mở kh&oacute;a, hết sức tiện lợi.</p>\r\n\r\n<p><img alt=\"vân tay OPPO A52\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a52-3.jpg\" /></p>\r\n\r\n<h3><strong>Kh&aacute;m ph&aacute; vẻ đẹp trong m&agrave;n đ&ecirc;m</strong></h3>\r\n\r\n<p>Mang tr&ecirc;n m&igrave;nh tới 4 camera AI, trong đ&oacute; camera ch&iacute;nh l&agrave; một cảm biến rất chất lượng, OPPO A52 tự tin bắt trọn vẻ đẹp của m&agrave;n đ&ecirc;m. Cảm biến camera ch&iacute;nh 12MP khẩu độ lớn f/1.8 v&agrave; chế độ si&ecirc;u chụp đ&ecirc;m 2.0 sẽ mang đến nhiều &aacute;nh s&aacute;ng hơn, tạo n&ecirc;n h&igrave;nh ảnh chi tiết, sắc n&eacute;t, ch&acirc;n thực ngay cả trong đ&ecirc;m tối.</p>\r\n\r\n<p><img alt=\"camera OPPO A52\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a52-4(2).jpg\" /></p>\r\n\r\n<h3><strong>Mang cả thế giới v&agrave;o trong một khung h&igrave;nh</strong></h3>\r\n\r\n<p>Camera g&oacute;c si&ecirc;u rộng 8MP tr&ecirc;n OPPO A52 cho g&oacute;c chụp l&ecirc;n tới 119 độ, mang nhiều khung cảnh hơn v&agrave;o trong khung h&igrave;nh. Bạn sẽ c&oacute; thể chụp những bức ảnh g&oacute;c si&ecirc;u rộng đầy th&uacute; vị.</p>\r\n\r\n<h3><strong>L&agrave;m đẹp khu&ocirc;n mặt AI, t&ocirc;n vinh n&eacute;t đẹp tự nhi&ecirc;n</strong></h3>\r\n\r\n<p>Với t&iacute;nh năng l&agrave;m đẹp khu&ocirc;n mặt độc quyền từ&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/oppo\">OPPO</a>, điện thoại sẽ tự động điều chỉnh m&agrave;u da để khu&ocirc;n mặt kh&ocirc;ng chỉ đẹp hơn m&agrave; c&ograve;n ph&ugrave; hợp với điều kiện hậu cảnh v&agrave; &aacute;nh s&aacute;ng ph&iacute;a sau. Bạn cũng c&oacute; thể th&ecirc;m v&agrave;o một số hiệu ứng để bức ảnh th&ecirc;m phần &ldquo;ảo diệu&rdquo;. Tr&ecirc;n hết, n&eacute;t đẹp ch&acirc;n thực chủ thể lu&ocirc;n được t&ocirc;n vinh v&agrave; giữ lại nhờ&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/cong-nghe-ai-la-gi-tim-hieu-ve-cong-nghe-ai-63382\">tr&iacute; tuệ nh&acirc;n tạo AI</a>.</p>\r\n\r\n<p><img alt=\"làm đẹp khuôn mặt OPPO A52\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a52-6.jpg\" /></p>\r\n\r\n<h3><strong>Quay video chuy&ecirc;n nghiệp</strong></h3>\r\n\r\n<p>OPPO A52 hỗ trợ t&iacute;nh năng quay video chống rung, cho h&igrave;nh ảnh ổn định, giảm thiểu hiện tượng rung lắc khi quay video. Bạn cũng c&oacute; những t&iacute;nh năng hữu &iacute;ch như quay video g&oacute;c rộng, hay video chuyển động chậm 120fps để tạo n&ecirc;n những thước phim th&uacute; vị. Đặc biệt, OPPO A52 c&ograve;n c&oacute; khả năng quay video 4K si&ecirc;u sắc n&eacute;t, ph&aacute;t h&igrave;nh ảnh chi tiết l&ecirc;n những m&agrave;n h&igrave;nh lớn như TV 4K.</p>\r\n\r\n<p><img alt=\"video OPPO A52\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a52-8.jpg\" /></p>\r\n\r\n<h3><strong>Chạy mượt mọi t&aacute;c vụ</strong></h3>\r\n\r\n<p>OPPO A52 c&oacute; đủ sức mạnh để chạy mượt m&agrave; tất cả ứng dụng. Bộ vi xử l&yacute; Snapdragon 665 mạnh mẽ, kết hợp c&ugrave;ng 4GB RAM LPDDR4x v&agrave; 128GB bộ nhớ UFS 2.1 si&ecirc;u tốc, tạo n&ecirc;n khả năng xử l&yacute; trơn tru, nhanh ch&oacute;ng. D&ugrave; l&agrave; những t&aacute;c vụ h&agrave;ng ng&agrave;y như v&agrave;o mạng x&atilde; hội, duyệt web, xem phim trực tuyến hay chơi những game 3D đồ họa cao, OPPO A52 vẫn lu&ocirc;n ho&agrave;n th&agrave;nh xuất sắc nhiệm vụ.</p>\r\n\r\n<p><img alt=\"cấu hình OPPO A52\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a52-10.jpg\" /></p>\r\n\r\n<h3><strong>Th&ecirc;m năng lượng, th&ecirc;m niềm vui</strong></h3>\r\n\r\n<p>Vi&ecirc;n pin dung lượng cao 5000 mAh kết hợp c&ugrave;ng t&iacute;nh năng sạc nhanh 18W sẽ gi&uacute;p OPPO A52 lu&ocirc;n tr&agrave;n đầy năng lượng, phục vụ tốt cho cả c&ocirc;ng việc v&agrave; giải tr&iacute; của bạn trong suốt cả ng&agrave;y. Bạn sẽ chỉ mất khoảng 20 &ndash; 30 ph&uacute;t sạc để c&oacute; th&ecirc;m một buổi sử dụng với OPPO A52.</p>\r\n\r\n<p><img alt=\"pin OPPO A52\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a52-7.jpg\" /></p>\r\n\r\n<h3><strong>Loa k&eacute;p Stereo sống động</strong></h3>\r\n\r\n<p>Loa ngo&agrave;i l&agrave; phương tiện m&agrave; bạn thường xuy&ecirc;n sử dụng trong mọi hoạt động giải tr&iacute;. OPPO A52 hiểu điều đ&oacute; v&agrave; trang bị loa k&eacute;p Stereo c&ugrave;ng hiệu ứng &acirc;m thanh Dirac 2.0 để bạn c&oacute; thể nghe nhạc, chơi game, xem phim sống động hơn bao giờ hết. Thoải m&aacute;i đắm ch&igrave;m trong thế giới giải tr&iacute; của ri&ecirc;ng bạn ở bất cứ đ&acirc;u.</p>\r\n\r\n<p><img alt=\"loa stereo OPPO A52\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a52-11.jpg\" /></p>', '2020-12-01', '2020-12-01', NULL, 0, 6, '\"màu đen\",\"màu trắng\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>OPPO</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>162 x 75.5 x 8.9 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>192 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>6 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>128 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>LTPS IPS LCD, 16 triệu m&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.5 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>1176 x 2400 pixel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 10, ColorOS 7.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm SM6125 Snapdragon 665 (11 nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core (4x2.0 GHz Kryo 260 Gold &amp; 4x1.8 GHz Kryo 260 Silver)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 610</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>12 MP, f/1.7, (wide), 1/2.8&quot;, 1.25&micro;m, PDAF<br />\r\n			8 MP, f/2.2, 119˚ (ultrawide), 1/4.0&quot;, 1.12&micro;m<br />\r\n			2 MP, f/2.4, (macro)<br />\r\n			2 MP, f/2.4, (depth)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>16 MP, f/2.0, (wide), 1/3.06&quot;, 1.0&micro;m - Global</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>Trước: 1080p@30fps<br />\r\n			Sau: 4K@30fps, 1080p@30/60/120fps, gyro-EIS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat15 800/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.0, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS, GALILEO, BDS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>2.0, Type-C 1.0 reversible connector, USB On-The-Go</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến tiệm cận, gia tốc kế, la b&agrave;n, con quay hồi chuyển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Po 5000 mAh, sạc nhanh 18W</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>'),
(22, 22, 'xiaomi-mi-10t-pro-5g-8gb-256gb', 2, 'Xiaomi Mi 10T Pro 5G 8GB-256GB', 10000000, 'xiaomi-mi-10t-pro_2_20.jpg', 44, '<h3>Đ&aacute;nh gi&aacute; chi tiết Xiaomi Mi 10T Pro 5G 8GB-256GB</h3>\r\n\r\n<p><strong>Cấu h&igrave;nh mạnh mẽ tuyệt đỉnh, camera b&ugrave;ng nổ s&aacute;ng tạo v&agrave; kết nối 5G cho tương lai, Xiaomi Mi 10T Pro 5G sở hữu những t&iacute;nh năng xuất sắc nhất, nhưng lại c&oacute; mức gi&aacute; rẻ đến bất ngờ ở ph&acirc;n kh&uacute;c smartphone cao cấp.</strong></p>\r\n\r\n<p><strong><img alt=\"Xiaomi Mi 10T Pro 5G\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/xiaomi-mi-10t-pro-1.jpg\" /></strong></p>\r\n\r\n<h3><strong>S&aacute;ng tạo v&ocirc; tận với bộ 3 camera AI 108MP</strong></h3>\r\n\r\n<p>Cụm camera của Xiaomi Mi 10T Pro 5G hết sức chuy&ecirc;n nghiệp với 3 cảm biến camera sau, trong đ&oacute; camera ch&iacute;nh độ ph&acirc;n giải si&ecirc;u cao 108MP; camera g&oacute;c si&ecirc;u rộng 13MP v&agrave; camera macro 5MP. Bạn sẽ bất ngờ với những g&igrave; camera Mi 10T Pro c&oacute; thể l&agrave;m được.</p>\r\n\r\n<p><img alt=\"camera Xiaomi Mi 10T Pro 5G\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/xiaomi-mi-10t-pro-2.jpg\" /></p>\r\n\r\n<h3><strong>Mỗi bức ảnh l&agrave; một kiệt t&aacute;c</strong></h3>\r\n\r\n<p>Xiaomi Mi 10T Pro sử dụng si&ecirc;u cảm biến Samsung HMX, độ ph&acirc;n giải l&ecirc;n tới 108MP, k&iacute;ch thước điểm ảnh 4 trong 1 l&agrave; 1,6um, khẩu độ f/1.69, ống k&iacute;nh 7 lớp thấu k&iacute;nh v&agrave; chống rung quang học OIS. Phần cứng camera qu&aacute; tuyệt vời gi&uacute;p cho những bức ảnh của bạn trở n&ecirc;n sắc n&eacute;t hơn bao giờ hết. Đơn giản chỉ cần đưa m&aacute;y l&ecirc;n v&agrave; chụp, độ chi tiết đ&aacute;ng kinh ngạc từ Mi 10T Pro sẽ tạo n&ecirc;n những t&aacute;c phẩm nghệ thuật của ri&ecirc;ng bạn.</p>\r\n\r\n<p><img alt=\"ảnh chụp Xiaomi Mi 10T Pro 5G\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/xiaomi-mi-10t-pro-3.jpg\" /></p>\r\n\r\n<h3><strong>Chế độ chụp đ&ecirc;m 2.0, thể hiện phong c&aacute;ch trong đ&ecirc;m tối</strong></h3>\r\n\r\n<p>Những &aacute;nh đ&egrave;n lung linh, bầu trời đ&ecirc;m huyền ảo hay d&ograve;ng s&ocirc;ng lấp l&aacute;nh sẽ l&agrave; những cảm hứng bất tận để bạn s&aacute;ng tạo tr&ecirc;n Xiaomi Mi 10T Pro 5G. Chế độ chụp đ&ecirc;m 2.0 cho ảnh chụp r&otilde; r&agrave;ng v&agrave; sống động d&ugrave; chỉ c&oacute; một ch&uacute;t &aacute;nh s&aacute;ng. Ngo&agrave;i ra bạn c&ograve;n c&oacute; thể &aacute;p dụng th&ecirc;m những bộ lọc m&agrave;u để h&igrave;nh ảnh th&ecirc;m phần &quot;ảo diệu&quot;. Chế độ chụp đ&ecirc;m c&oacute; mặt tr&ecirc;n cả camera trước v&agrave; sau, gi&uacute;p bạn tự tin selfie đ&ecirc;m tuyệt đẹp.</p>\r\n\r\n<p><img alt=\"chụp đêm Xiaomi Mi 10T Pro 5G\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/xiaomi-mi-10t-pro-4.jpg\" /></p>\r\n\r\n<h3><strong>Quay video 8K chất lượng chuy&ecirc;n nghiệp</strong></h3>\r\n\r\n<p>Phần cứng camera mạnh mẽ cho ph&eacute;p Xiaomi Mi 10T Pro 5G c&oacute; thể quay video độ ph&acirc;n giải l&ecirc;n tới 8K, v&ocirc; c&ugrave;ng sắc n&eacute;t kể cả khi bạn thưởng thức tr&ecirc;n m&agrave;n h&igrave;nh lớn cả trăm inch. Sự s&aacute;ng tạo c&ograve;n trở n&ecirc;n kh&ocirc;ng giới hạn khi bạn c&oacute; thể quay video &quot;ph&acirc;n th&acirc;n&quot;, hai h&igrave;nh ảnh kh&aacute;c nhau của bạn c&ugrave;ng l&uacute;c xuất hiện trong một khung h&igrave;nh. C&aacute;c chế độ quay vlog v&agrave; quay video l&agrave;m đẹp cũng c&oacute; sẵn để bạn thỏa sức s&aacute;ng tạo.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"360\" src=\"https://www.youtube.com/embed/lOeqMXxUUJc\" width=\"640\"></iframe></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh 144Hz mượt chưa từng thấy</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh lớn 6.67 inch DotDisplay độ ph&acirc;n giải Full HD+ mở ra một thế giới đầy sinh động trước mắt bạn. Kh&ocirc;ng chỉ đẹp, m&agrave;n h&igrave;nh Xiaomi Mi 10T Pro 5G c&ograve;n l&agrave; m&agrave;n h&igrave;nh smartphone c&oacute; tần số qu&eacute;t cao nhất thế giới với 144Hz v&agrave; hỗ trợ AdaptiveSync th&ocirc;ng minh. Kết quả l&agrave; bạn sẽ được tận hưởng m&agrave;n h&igrave;nh mượt chưa từng thấy, kể cả trong qu&aacute; tr&igrave;nh sử dụng thường ng&agrave;y hay chơi game tốc độ khung h&igrave;nh cao. Mọi thứ đều rất kh&aacute;c biệt v&agrave; bạn c&oacute; thể cảm nhận được độ mượt qua từng thao t&aacute;c vuốt chạm l&ecirc;n m&agrave;n h&igrave;nh.</p>\r\n\r\n<p><img alt=\"màn hình Xiaomi Mi 10T Pro 5G\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/xiaomi-mi-10t-pro-5.jpg\" /></p>\r\n\r\n<h3><strong>Sức mạnh h&agrave;ng đầu</strong></h3>\r\n\r\n<p>Xứng tầm si&ecirc;u phẩm, Xiaomi Mi 10T Pro 5G trang bị cấu h&igrave;nh &iacute;t ai b&igrave; kịp. Bộ vi xử l&yacute; Qualcomm Snapdragon 865 5G cho hiệu suất vượt trội, giải quyết mọi việc trong chớp mắt, chơi game 3D đồ họa cao một c&aacute;ch nhẹ nh&agrave;ng. 8GB RAM LPDDR5 v&agrave; bộ nhớ flash UFS 3.1 256GB mang đến kh&ocirc;ng gian l&agrave;m việc, lưu trữ rộng lớn, thoải m&aacute;i cho mọi nhu cầu.</p>\r\n\r\n<p><img alt=\"cấu hình Xiaomi Mi 10T Pro 5G\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/xiaomi-mi-10t-pro-6.jpg\" /></p>\r\n\r\n<h3><strong>Kết nối 5G, tương lai đang ch&agrave;o đ&oacute;n bạn</strong></h3>\r\n\r\n<p>Xiaomi Mi 10T Pro 5G l&agrave; một trong những chiếc điện thoại đi ti&ecirc;n phong trong việc hỗ trợ kết nối 5G tại Việt Nam. Bạn đ&atilde; sẵn s&agrave;ng cho trải nghiệm mạng di động kh&ocirc;ng d&acirc;y nhanh nhất thế giới. Tải tệp tin, xem video trực tuyến, chơi game online, gọi video cho bạn b&egrave;, tất cả đều hết sức mượt m&agrave; v&agrave; kh&ocirc;ng hề c&oacute; độ trễ.</p>\r\n\r\n<p><img alt=\"kết nối Xiaomi Mi 10T Pro 5G\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/xiaomi-mi-10t-pro-7.jpg\" /></p>\r\n\r\n<h3><strong>Thời lượng pin khủng, c&ocirc;ng nghệ sạc si&ecirc;u nhanh</strong></h3>\r\n\r\n<p>Mang tr&ecirc;n m&igrave;nh vi&ecirc;n pin dung lượng cao tới 5000mAh, Xiaomi Mi 10T Pro 5G cho bạn nhiều trải nghiệm hơn, thoải m&aacute;i sử dụng trong suốt cả ng&agrave;y. C&ocirc;ng nghệ sạc nhanh Mi Fast vừa cho hiệu suất sạc an to&agrave;n, vừa cho tốc độ sạc cực nhanh với c&ocirc;ng suất lớn 33W. Chỉ mất chưa đầy 1 giờ đồng hồ để bạn ho&agrave;n to&agrave;n sạc đầy 100% pin Mi 10T Pro.</p>\r\n\r\n<p><img alt=\"pin Xiaomi Mi 10T Pro 5G\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/xiaomi-mi-10t-pro-8.jpg\" /></p>\r\n\r\n<h3><strong>Thiết kế đẳng cấp, sang trọng, hiện đại</strong></h3>\r\n\r\n<p>Xiaomi Mi 10T Pro 5G c&oacute; hai phi&ecirc;n bản m&agrave;u l&agrave; Đen v&agrave; Bạc. Đ&acirc;y đều l&agrave; những m&agrave;u sắc cơ bản với vẻ đẹp đơn giản, hiện đại nhưng kh&ocirc;ng k&eacute;m phần đẳng cấp. Ho&agrave;n thiện từ kim loại v&agrave; k&iacute;nh với độ tinh xảo tuyệt vời, Xiaomi Mi 10T Pro 5G b&oacute;ng bẩy tựa như gốm, tỏa s&aacute;ng trong l&ograve;ng b&agrave;n tay bạn. Ngo&agrave;i ra, Mi 10T Pro c&ograve;n đi k&egrave;m ốp lưng kh&aacute;ng khuẩn ion bạc v&agrave; d&aacute;n m&agrave;n h&igrave;nh kh&aacute;ng khuẩn, loại bỏ hơn 99% vi khuẩn trong tiếp x&uacute;c h&agrave;ng ng&agrave;y, bảo vệ sức khỏe của bạn.</p>\r\n\r\n<p><img alt=\"thiết kế Xiaomi Mi 10T Pro 5G\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/xiaomi-mi-10t-pro-9.jpg\" /></p>', '2020-12-01', '2020-12-01', NULL, 0, 6, '\"màu đen\",\"màu trắng\",\"màu xanh\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Xiaomi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>165.1 x 76.4 x 9.3 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>218 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>8 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>256 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>IPS LCD, 16 triệu m&agrave;u, HDR10+, tần số qu&eacute;t 144Hz , độ s&aacute;ng tối đa 500nits</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.67 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>1080 x 2400 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 10, MIUI 12</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm SM8250 Snapdragon 865 (7 nm+)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core (1x2.84 GHz Kryo 585 &amp; 3x2.42 GHz Kryo 585 &amp; 4x1.80 GHz Kryo 585)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 650</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>Kh&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>108 MP, f/1.7, 26mm (wide), 1/1.33&quot;, 0.8&micro;m, PDAF, OIS<br />\r\n			13 MP, f/2.4, 123˚ (ultrawide), 1.12&micro;m<br />\r\n			5 MP, f/2.4, (macro), AF</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>20 MP, f/2.2, 27mm (wide), 1/3.4&quot;, 0.8&micro;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>8K@30fps, 4K@30/60fps, 1080p@30/60/120/240/960fps; gyro-EIS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat16 1024/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5G</td>\r\n			<td>mmWave, Sub-6 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct, DLNA, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.1, A2DP, LE, aptX HD, aptX Adaptive</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS, BDS, GALILEO, QZSS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hồng ngoại</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>2.0, Type-C 1.0 reversible connector, USB On-The-Go</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến tiệm cận, gia tốc kế, la b&agrave;n, con quay hồi chuyển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Po 5000 mAh, sạc nhanh 33W, Power Delivery 3.0</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>'),
(23, 22, 'xiaomi-redmi-9-3gb-32gb', 2, 'Xiaomi Redmi 9 3GB-32GB', 2000000, '637276369083465913_xiaomi-redmi-9-xam-116.png', 28, '<h3>Đ&aacute;nh gi&aacute; chi tiết Xiaomi Redmi 9 3GB-32GB</h3>\r\n\r\n<p><strong>M&agrave;n h&igrave;nh lớn 6,53 inch Full HD sắc n&eacute;t, 4 camera AI th&ocirc;ng minh, cấu h&igrave;nh mạnh mẽ v&agrave; thời lượng pin cực d&agrave;i,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/xiaomi-redmi-9\">Redmi 9</a>&nbsp;mang đến cho bạn trải nghiệm đầy đủ của một chiếc smartphone gi&aacute; rẻ, nhưng t&iacute;nh năng kh&ocirc;ng hề rẻ.</strong></p>\r\n\r\n<p><strong><img alt=\"Redmi 9\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/redmi-9.jpg\" /></strong></p>\r\n\r\n<h3><strong>4 Camera AI, Redmi 9 nắm giữ từng khoảnh khắc</strong></h3>\r\n\r\n<p>Với 4 camera sau AI, Redmi 9 gi&uacute;p bạn lưu giữ lại những khoảnh khắc th&uacute; vị trong cuộc sống. Camera ch&iacute;nh 13MP g&oacute;c rộng cho khả năng chụp ảnh xuất sắc cả ng&agrave;y lẫn đ&ecirc;m; camera g&oacute;c si&ecirc;u rộng 8MP c&oacute; thể chụp những bức ảnh g&oacute;c rộng tới 118 độ, mang nhiều cảnh vật hơn v&agrave;o khung h&igrave;nh; camera đo độ s&acirc;u 2MP hỗ trợ chụp ảnh x&oacute;a ph&ocirc;ng chuy&ecirc;n nghiệp, v&agrave; cuối c&ugrave;ng l&agrave; camera chụp si&ecirc;u cận macro 5MP, c&oacute; khả năng nấy n&eacute;t ở khoảng c&aacute;ch cực gần chỉ 4cm.</p>\r\n\r\n<p><img alt=\"camera Redmi 9\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/redmi-9-1.jpg\" /></p>\r\n\r\n<h3><strong>Camera Macro kh&aacute;m ph&aacute; thế giới vi m&ocirc; c&ugrave;ng Xiaomi&nbsp;Redmi 9</strong></h3>\r\n\r\n<p>Nhờ camera macro, Redmi 9 c&oacute; thể lấy n&eacute;t được những vật thể nhỏ ở khoảng c&aacute;ch cực gần. Tha hồ để bạn kh&aacute;m ph&aacute; c&aacute;c chi tiết th&uacute; vị của thế giới vi m&ocirc;.</p>\r\n\r\n<p><img alt=\"ảnh macro Redmi 9\" src=\"https://img.fpt.shop/f_png/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/redmi-9-2.png\" /></p>\r\n\r\n<h3><strong>Mang cả thế giới rộng lớn v&agrave;o khung h&igrave;nh</strong></h3>\r\n\r\n<p>Camera g&oacute;c si&ecirc;u rộng của Redmi 9 cho g&oacute;c rộng tới 118 độ, dễ d&agrave;ng đưa cả phong cảnh rộng lớn v&agrave;o trong khung h&igrave;nh, gi&uacute;p lưu giữ những điều kỳ vĩ, những vẻ đẹp bất tận của thế giới.</p>\r\n\r\n<p><img alt=\"góc siêu rộng Redmi 9\" src=\"https://img.fpt.shop/f_png/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/redmi-9-4.png\" /></p>\r\n\r\n<h3><strong>Chụp ảnh selfie theo c&aacute;ch của ri&ecirc;ng bạn</strong></h3>\r\n\r\n<p>Camera selfie của Redmi 9 c&oacute; độ ph&acirc;n giải 8MP, hỗ trợ HDR, cho bạn những bức h&igrave;nh selfie đẹp lung linh. Hơn thế nữa, bạn c&ograve;n c&oacute; thể tự chụp selfie từ xa bằng c&aacute;ch hẹn giờ chụp, ra lệnh chụp bằng thao t&aacute;c vẫy tay. Kh&ocirc;ng cần phải nhờ ai chụp hộ, chỉ m&igrave;nh bạn l&agrave; đủ tự tạo n&ecirc;n những bức ảnh &ldquo;sống ảo&rdquo; đầy c&aacute; t&iacute;nh.</p>\r\n\r\n<p><img alt=\"ảnh selfie Redmi 9\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/redmi-9-10.JPG\" /></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh Redmi 9&nbsp;đẹp m&atilde;n nh&atilde;n, bảo vệ đ&ocirc;i mắt của bạn</strong></h3>\r\n\r\n<p>Bạn sẽ được tận hưởng m&agrave;n h&igrave;nh lớn tới 6,53 inch, độ ph&acirc;n giải Full HD sắc n&eacute;t tr&ecirc;n Redmi 9. M&agrave;n h&igrave;nh viền mỏng mang lại hiệu ứng thị gi&aacute;c hấp dẫn, h&igrave;nh ảnh sống động v&agrave; trong trẻo. Với t&iacute;nh năng lọc &aacute;nh s&aacute;ng xanh th&ocirc;ng minh, đ&ocirc;i mắt bạn sẽ kh&ocirc;ng bị mệt mỏi d&ugrave; sử dụng điện thoại trong thời gian d&agrave;i.</p>\r\n\r\n<p><img alt=\"màn hình Redmi 9\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/redmi-9-5.JPG\" /></p>\r\n\r\n<h3><strong>Xiaomi Redmi 9 được th&ecirc;m sức mạnh hiệu năng, th&ecirc;m niềm vui</strong></h3>\r\n\r\n<p>So với thế hệ trước, Redmi 9 đ&atilde; c&oacute; sức mạnh vượt trội, thậm ch&iacute; l&agrave; hơn gấp đ&ocirc;i về hiệu năng. Bộ vi xử l&yacute; Helio G80 với 8 nh&acirc;n mạnh mẽ, kết hợp GPU đồ họa Mali-G52 MC2 950 MHz, kh&ocirc;ng chỉ mang đến trải nghiệm si&ecirc;u mượt ở mọi ứng dụng m&agrave; c&ograve;n chơi game cực đỉnh. RAM 3GB, bộ nhớ trong 32GB v&agrave; hỗ trợ thẻ nhớ gi&uacute;p bạn ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về kh&ocirc;ng gian lưu trữ.</p>\r\n\r\n<p><img alt=\"cấu hình Redmi 9 &amp; chip\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/redmi-9-6.JPG\" /></p>\r\n\r\n<h3><strong>Trải nghiệm liền mạch, kh&ocirc;ng gi&aacute;n đoạn</strong></h3>\r\n\r\n<p>Redmi 9 trang bị vi&ecirc;n pin dung lượng l&ecirc;n tới 5020mAh, đủ để bạn trải nghiệm giải tr&iacute; liền mạch, kh&ocirc;ng bị gi&aacute;n đoạn v&igrave; nỗi lo hết pin. Vi&ecirc;n pin &ldquo;khủng&rdquo; của Redmi 9 c&oacute; thể xem video li&ecirc;n tục trong 19 giờ, gọi thoại trong 31 giờ, nghe nhạc trong 185 giờ. B&ecirc;n cạnh thời lượng pin d&agrave;i, Redmi 9 c&ograve;n c&oacute; tốc độ sạc cực nhanh với c&ocirc;ng nghệ sạc nhanh 18W, nhanh ch&oacute;ng nạp đầy năng lượng chỉ sau v&agrave;i chục ph&uacute;t.</p>\r\n\r\n<p><img alt=\"pin Redmi 9\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/redmi-9-7.JPG\" /></p>\r\n\r\n<h3><strong>Thiết kế Redmi 9&nbsp;độc đ&aacute;o, 3 m&agrave;u sắc trẻ trung phong c&aacute;ch</strong></h3>\r\n\r\n<p>Thiết kế Redmi 9 l&agrave; sự kết hợp giữa t&iacute;nh thời trang, tiện dụng v&agrave; sự độc đ&aacute;o. C&aacute;c phần g&oacute;c cạnh đều được bo tr&ograve;n mềm mại, dễ d&agrave;ng cầm nắm v&agrave; thao t&aacute;c. Phần mặt lưng nổi bật với khu vực camera h&igrave;nh tr&ograve;n, trục dọc 4 ống k&iacute;nh v&agrave; họa tiết ngăn chặn b&aacute;m bẩn, dấu v&acirc;n tay để chiếc điện thoại lu&ocirc;n mới đẹp, kh&ocirc;ng bị trơn trượt. 3 lựa chọn m&agrave;u sắc&nbsp;<strong>X&aacute;m Carbon</strong>,&nbsp;<strong>T&iacute;m Ho&agrave;ng H&ocirc;n</strong>&nbsp;v&agrave;&nbsp;<strong>Xanh Đại Dương</strong>&nbsp;đều c&oacute; c&aacute; t&iacute;nh ri&ecirc;ng biệt, ph&ugrave; hợp cho sở th&iacute;ch mỗi người d&ugrave;ng.</p>\r\n\r\n<p><img alt=\"thiết kế Redmi 9\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/redmi-9-9.JPG\" /></p>', '2020-12-01', '2020-12-01', NULL, 0, 6, '\"màu đen\",\"màu xanh lá\",\"màu tím\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Xiaomi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>164.9 x 77 x 9 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>196 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>2 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>32 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>IPS LCD capacitive touchscreen, 16M colors</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.53 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>720 x 1600 pixel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 10, MIUI 12</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>MediaTek Helio G35 (12 nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core 2.3 GHz Cortex-A53</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>PowerVR GE8320 (680 MHz)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>13 MP, f/1.8, (wide), 1/3.1&quot;, 1.12&micro;m, PDAF<br />\r\n			5 MP, f/2.4, (macro)<br />\r\n			2 MP, f/2.4, (depth)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>5 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>1080p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat15 800/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.0, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hồng ngoại</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>2.0, Type-C 1.0 reversible connector, USB On-The-Go</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến gia tốc, cảm biến tiệm cận, cảm biến s&aacute;ng, con quay hồi chuyển, la b&agrave;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Po 5000 mAh battery</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>');
INSERT INTO `sanpham` (`sp_id`, `th_id`, `sp_nhan`, `kho_id`, `sp_ten`, `sp_dongianhap`, `sp_hinh`, `sp_soluong`, `sp_thongtin`, `sp_ngaytaomoi`, `sp_ngaycapnhat`, `khuyenmai_id`, `sp_hienthi`, `ncc_id`, `sp_mausac`, `xx_id`, `sp_tskt`) VALUES
(24, 22, 'xiaomi-redmi-9c-3gb-64gb', 2, 'Xiaomi Redmi 9C 3GB-64GB', 2000000, '637308302848062480_xiaomi-redmi-9c-xanh-165.png', 11, '<h3>Đ&aacute;nh gi&aacute; chi tiết Xiaomi Redmi 9C 3GB-64GB</h3>\r\n\r\n<p><strong>Phi&ecirc;n bản&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/xiaomi-redmi-9c-64gb\">Xiaomi Redmi 9C 64GB</a>&nbsp;được n&acirc;ng cấp cả về dung lượng RAM v&agrave; bộ nhớ trong, mang đến cho bạn trải nghiệm mượt m&agrave; hơn, trong một thiết kế hiện đại, trẻ trung c&ugrave;ng thời lượng pin cực đỉnh.</strong></p>\r\n\r\n<p><strong><img alt=\"Xiaomi Redmi 9C 64GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/redmi-9c-64gb-1.jpg\" /></strong></p>\r\n\r\n<h3><strong>Dung lượng pin l&ecirc;n tới 5000 mAh</strong></h3>\r\n\r\n<p>Redmi 9C mang tr&ecirc;n m&igrave;nh vi&ecirc;n pin dung lượng cao h&agrave;ng đầu hiện nay với con số l&ecirc;n tới 5000 mAh. Bạn c&oacute; thể sử dụng thoải m&aacute;i trong hơn 2 ng&agrave;y sau một lần sạc đầy. Kh&ocirc;ng chỉ dung lượng cao, m&agrave; pin Xiaomi Redmi 9C c&ograve;n rất bền với chu kỳ sạc l&ecirc;n tới 1000 lần. Nghĩa l&agrave; sau 2,5 năm, pin của bạn cũng kh&ocirc;ng xuống cấp nhiều, giảm thiểu hiện tượng chai pin.</p>\r\n\r\n<p><img alt=\"pin Xiaomi Redmi 9C 64GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/redmi-9c-64gb-2.jpg\" /></p>\r\n\r\n<h3><strong>Th&ecirc;m bộ nhớ, th&ecirc;m sức mạnh</strong></h3>\r\n\r\n<p>Phi&ecirc;n bản Xiaomi Redmi 9C 64GB c&oacute; 3GB RAM v&agrave; bộ nhớ trong rất lớn 64GB, thoải m&aacute;i để bạn lưu trữ cũng như chạy đa nhiệm. Bộ vi xử l&yacute; Helio G35 tr&ecirc;n Xiaomi Redmi 9C c&oacute; sức mạnh vượt trội so với c&aacute;c đối thủ c&ugrave;ng tầm gi&aacute; nhờ tiến tr&igrave;nh 12nm, 8 nh&acirc;n tốc độ xung nhịp tối đa 2,3GHz v&agrave; GPU đồ họa PowerVR8320. Những t&aacute;c vụ thường ng&agrave;y đều diễn ra một c&aacute;ch mượt m&agrave;, nhanh ch&oacute;ng. Đồng thời bạn cũng c&oacute; thể giải tr&iacute; với những tựa game y&ecirc;u th&iacute;ch.</p>\r\n\r\n<p><img alt=\"cấu hình Xiaomi Redmi 9C 64GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/redmi-9c-64gb-3.jpg\" /></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh lớn tr&agrave;n viền cực đ&atilde;</strong></h3>\r\n\r\n<p>Sở hữu m&agrave;n h&igrave;nh cực lớn với k&iacute;ch thước 6,53 inch ho&agrave;n thiện kh&ocirc;ng viền dạng &ldquo;giọt nước&rdquo;, bạn sẽ được tha hồ đắm ch&igrave;m v&agrave;o những h&igrave;nh ảnh lớn, đẹp v&agrave; sắc n&eacute;t tr&ecirc;n Xiaomi Redmi 9C. Những trải nghiệm như đọc b&aacute;o, v&agrave;o mạng x&atilde; hội, xem phim, chơi game đều trở n&ecirc;n hấp dẫn hơn. Ngo&agrave;i ra, m&agrave;n h&igrave;nh c&ograve;n c&oacute; chế độ giảm &aacute;nh s&aacute;ng xanh, chứng nhận bảo vệ mắt, để bạn c&oacute; thể sử dụng điện thoại l&acirc;u d&agrave;i m&agrave; kh&ocirc;ng bị mỏi mắt hay mất ngủ.</p>\r\n\r\n<p><img alt=\"màn hình Xiaomi Redmi 9C 64GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/redmi-9c-64gb-4.jpg\" /></p>\r\n\r\n<h3><strong>Chụp ảnh thời thượng bằng 3 camera sau AI</strong></h3>\r\n\r\n<p>Redmi 9C g&acirc;y bất ngờ trong tầm gi&aacute; rẻ khi trang bị tới 3 camera, mang đến trải nghiệm nhiếp ảnh thực sự chuy&ecirc;n nghiệp cho người d&ugrave;ng. Bạn sẽ c&oacute; camera ch&iacute;nh 13MP, camera x&oacute;a ph&ocirc;ng 2MP v&agrave; camera chụp si&ecirc;u cận macro 2MP. Kết hợp c&ugrave;ng đ&egrave;n flash LED, ch&uacute;ng ta c&oacute; một cụm camera h&igrave;nh vu&ocirc;ng s&agrave;nh điệu, đ&uacute;ng xu hướng thời thượng.</p>\r\n\r\n<p><img alt=\"camera AI Xiaomi Redmi 9C 64GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/redmi-9c-64gb-5.jpg\" /></p>\r\n\r\n<h3><strong>Ảnh ch&acirc;n dung x&oacute;a ph&ocirc;ng đầy s&aacute;ng tạo</strong></h3>\r\n\r\n<p>Camera ch&iacute;nh 13MP v&agrave; camera x&oacute;a ph&ocirc;ng 2MP của Xiaomi Redmi 9C gi&uacute;p bạn chụp được những bức ảnh ch&acirc;n dung x&oacute;a ph&ocirc;ng, l&agrave;m nổi bật chủ thể v&agrave; l&agrave;m mờ hậu cảnh đầy ảo diệu. Cho bạn vẻ đẹp rực rỡ v&agrave; lu&ocirc;n tỏa s&aacute;ng trong mọi khung h&igrave;nh.</p>\r\n\r\n<p><img alt=\"ảnh chân dung Xiaomi Redmi 9C 64GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/xiaomi-redmi-9c-4.jpg\" /></p>\r\n\r\n<h3><strong>Lấy n&eacute;t si&ecirc;u cận cảnh</strong></h3>\r\n\r\n<p>Những vật thể d&ugrave; nhỏ cũng đều c&oacute; n&eacute;t đẹp ri&ecirc;ng của n&oacute;. Với camera chụp si&ecirc;u cận cảnh, Redmi 9C c&oacute; thể lấy n&eacute;t ở cực ly cực gần, để bạn lưu giữ những cảnh đẹp hiếm c&oacute; như nhụy hoa, giọt sương tr&ecirc;n chiếc l&aacute;, mặt đồng hồ hay nhiều vật thể nhỏ th&uacute; vị kh&aacute;c.</p>\r\n\r\n<p><img alt=\"lấy nét Xiaomi Redmi 9C 64GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/xiaomi-redmi-9c-5.jpg\" /></p>\r\n\r\n<h3><strong>Tự tin chụp ảnh selfie</strong></h3>\r\n\r\n<p>Camera trước của Redmi 9C t&iacute;ch hợp c&ocirc;ng nghệ l&agrave;m đẹp AI 5.0, chế độ ch&acirc;n dung AI v&agrave; hỗ trợ HDR, gi&uacute;p bạn lu&ocirc;n tự tin khi những n&eacute;t đẹp sẽ được l&agrave;m nổi bật, đồng thời những khuyết điểm được x&oacute;a đi một c&aacute;ch kh&eacute;o l&eacute;o. Kh&ocirc;ng chỉ vậy, Redmi 9C c&ograve;n c&oacute; nhiều thao t&aacute;c chụp ảnh th&ocirc;ng minh như vẫy tay để chụp, chỉ cần hướng l&ograve;ng tay của bạn v&agrave;o camera để hẹn giờ chụp selfie.</p>\r\n\r\n<p><img alt=\"selfie Xiaomi Redmi 9C 64GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/xiaomi-redmi-9c-6.jpg\" /></p>\r\n\r\n<h3><strong>Mở kh&oacute;a bằng cả khu&ocirc;n mặt v&agrave; v&acirc;n tay</strong></h3>\r\n\r\n<p>D&ugrave; trong tầm gi&aacute; rẻ, nhưng Redmi 9C 64GB vẫn t&iacute;ch hợp hai phương ph&aacute;p mở kh&oacute;a sinh trắc học ti&ecirc;n tiến nhất hiện nay l&agrave; nhận dạng khu&ocirc;n mặt v&agrave; cảm biến v&acirc;n tay. Chỉ cần một c&uacute; chạm hoặc đưa&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;l&ecirc;n ngang tầm mắt, Redmi 9C sẽ sẵn s&agrave;ng đồng h&agrave;nh c&ugrave;ng bạn ngay lập tức.</p>\r\n\r\n<p><img alt=\"vân tay Xiaomi Redmi 9C 64GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/redmi-9c-64gb-7.jpg\" /></p>\r\n\r\n<h3><strong>Thể hiện c&aacute; t&iacute;nh với kiểu d&aacute;ng tươi trẻ</strong></h3>\r\n\r\n<p>Redmi 9C mang tr&ecirc;n m&igrave;nh thiết kế tao nh&atilde; với kiểu d&aacute;ng vu&ocirc;ng vắn, cụm camera vu&ocirc;ng đậm c&aacute; t&iacute;nh. Phần mặt lưng m&aacute;y được l&agrave;m họa tiết đường v&acirc;n sang trọng, cho cảm gi&aacute;c cầm nắm chắc chắn hơn, đồng thời kh&ocirc;ng b&aacute;n bẩn v&agrave; dấu v&acirc;n tay. Bạn sẽ c&oacute; 3 lựa chọn m&agrave;u sắc l&agrave; X&aacute;m, Xanh v&agrave; Cam, những m&agrave;u sắc hết sức trẻ trung, tr&agrave;n đầy sức sống v&agrave; đậm c&aacute; t&iacute;nh.</p>\r\n\r\n<p><img alt=\"thiết kế Xiaomi Redmi 9C 64GB\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/redmi-9c-64gb-8.jpg\" /></p>', '2020-12-01', '2020-12-01', NULL, 0, 6, '\"màu xanh\",\"màu đen\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Xiaomi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>164.9 x 77 x 9 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>196 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>3 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>64 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>IPS LCD capacitive touchscreen, 16M colors</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.53 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>720 x 1600 pixel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 10, MIUI 12</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>MediaTek Helio G35 (12 nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core 2.3 GHz Cortex-A53</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>PowerVR GE8320 (680 MHz)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>13 MP, f/1.8, (wide), 1/3.1&quot;, 1.12&micro;m, PDAF<br />\r\n			5 MP, f/2.4, (macro)<br />\r\n			2 MP, f/2.4, (depth)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>5 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>1080p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat15 800/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.0, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hồng ngoại</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>2.0, Type-C 1.0 reversible connector, USB On-The-Go</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến gia tốc, cảm biến tiệm cận, cảm biến s&aacute;ng, con quay hồi chuyển, la b&agrave;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Po 5000 mAh battery</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>'),
(25, 20, 'samsung-galaxy-a71-8gb-128gb', 2, 'Samsung Galaxy A71 8GB-128GB', 6000000, '637293809325763596_ss-a71-den-2-152.png', 31, '<h3>Đ&aacute;nh gi&aacute; chi tiết Samsung Galaxy A71</h3>\r\n\r\n<p><strong>Một sản phẩm thực sự đột ph&aacute;,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-a71\">Samsung Galaxy A71</a>&nbsp;l&agrave; tổng h&ograve;a của những c&ocirc;ng nghệ cao cấp nhất hiện nay với bộ 4 camera sau 64MP, m&agrave;n h&igrave;nh 6,7 inch Full HD+ m&atilde;n nh&atilde;n v&agrave; thời lượng pin tr&ecirc;n cả tuyệt vời.</strong></p>\r\n\r\n<p><strong><img alt=\"Samsung Galaxy A71\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-a71-1.jpg\" /></strong></p>\r\n\r\n<h3><strong>Bộ 4 camera, chụp nhiều hơn, lưu giữ nhiều hơn</strong></h3>\r\n\r\n<p>Những khoảnh khắc của bạn sẽ được lưu giữ ho&agrave;n hảo qua bộ 4 camera đẳng cấp của Samsung Galaxy A71. Từ camera ch&iacute;nh 64MP cho đến camera g&oacute;c si&ecirc;u rộng 12MP, hay camera đo chiều s&acirc;u 5MP v&agrave; camera Macro cận cảnh 5MP, tất cả đều sẵn s&agrave;ng cho niềm đam m&ecirc; nhiếp ảnh, mang đến rất nhiều niềm vui trong cuộc sống.</p>\r\n\r\n<p><img alt=\"camera Samsung Galaxy A71\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-a71-2.jpg\" /></p>\r\n\r\n<h3><strong>Mở rộng khung h&igrave;nh, bắt trọn cả thế giới</strong></h3>\r\n\r\n<p>Với g&oacute;c nh&igrave;n rộng tới 123 độ, camera g&oacute;c si&ecirc;u rộng của Galaxy A71 đủ khả năng để bắt trọn những khung cảnh h&ugrave;ng vĩ của thi&ecirc;n nhi&ecirc;n, hay vẻ đẹp của to&agrave;n th&agrave;nh phố nh&igrave;n từ tr&ecirc;n cao. Sẽ c&oacute; th&ecirc;m lựa chọn để bạn lưu lại những nơi m&igrave;nh đ&atilde; từng đi một c&aacute;ch trực quan v&agrave; độc đ&aacute;o.</p>\r\n\r\n<p><img alt=\"Samsung Galaxy A71 góc siêu rộng\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-a71-3.jpg\" /></p>\r\n\r\n<h3><strong>Camera Macro cận cảnh, gần gũi những điều nhỏ b&eacute; nhất</strong></h3>\r\n\r\n<p>Camera 5MP Macro 40mm cho ph&eacute;p bạn chụp ở khoảng c&aacute;ch si&ecirc;u gần chỉ v&agrave;i cm. Bạn sẽ thấy r&otilde; từng chi tiết nhỏ của những vật thể như l&aacute; c&acirc;y, b&ocirc;ng hoa, &hellip; hay bất cứ điều g&igrave; th&uacute; vị m&agrave; camera th&ocirc;ng thường c&oacute; thể bỏ lỡ. Thậm ch&iacute; bạn c&ograve;n c&oacute; thể điều chỉnh độ mờ để l&agrave;m chủ thể th&ecirc;m phần nổi bật.</p>\r\n\r\n<p><img alt=\"camera macro Samsung Galaxy A71\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-a71-4.jpg\" /></p>\r\n\r\n<h3><strong>Chụp ảnh x&oacute;a ph&ocirc;ng bẳng cả camera trước v&agrave; sau</strong></h3>\r\n\r\n<p>Cảm biến độ s&acirc;u 5MP kết hợp c&ugrave;ng camera ch&iacute;nh 64MP sẽ n&acirc;ng tầm ảnh chụp x&oacute;a ph&ocirc;ng với độ mờ ho&agrave;n hảo, chủ thể nổi bật v&agrave; x&oacute;a ph&ocirc;ng ch&iacute;nh x&aacute;c. Kh&ocirc;ng chỉ camera sau, camera trước 32MP của Galaxy A71 cũng l&agrave;m được điều đ&oacute; bằng những h&igrave;nh ảnh v&ocirc; c&ugrave;ng sắc n&eacute;t với trung t&acirc;m của bức ảnh ch&iacute;nh l&agrave; bạn v&agrave; phần nền l&agrave;m mờ &ldquo;ảo diệu&rdquo;.</p>\r\n\r\n<p><img alt=\"Samsung Galaxy A71 xóa phông\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-a71-5.jpg\" /></p>\r\n\r\n<h3><strong>T&iacute;nh năng si&ecirc;u chống rung, quay video h&agrave;nh động cực &ldquo;ngầu&rdquo;</strong></h3>\r\n\r\n<p>Kh&ocirc;ng chỉ chụp ảnh, Galaxy A71 c&ograve;n c&oacute; khả năng quay được những đoạn video h&agrave;nh động chuy&ecirc;n nghiệp nhờ t&iacute;nh năng chống rung Super Steady. D&ugrave; bạn c&oacute; đang chơi thể thao hay những hoạt động th&uacute; vị thế n&agrave;o đi chăng nữa, A71 cũng mang đến những đoạn video mượt m&agrave;, để bạn sống trọn với những cảm x&uacute;c mỗi khi xem lại.</p>\r\n\r\n<p><img alt=\"Samsung Galaxy A71 siêu chống rung\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-a71-6.jpg\" /></p>\r\n\r\n<h3><strong>Lu&ocirc;n tr&agrave;n đầy năng lượng</strong></h3>\r\n\r\n<p>Samsung Galaxy A71 lu&ocirc;n sẵn s&agrave;ng năng lượng để b&ecirc;n bạn ở mọi nẻo đường. Vi&ecirc;n pin dung lượng cực lớn 4500 mAh cho ph&eacute;p bạn thỏa sức sử dụng cả ng&agrave;y ở cường độ cao. Tha hồ chơi game, xem phim, nghe gọi hay l&agrave;m bất cứ điều g&igrave; bạn muốn. Hơn nữa, Galaxy A71 t&iacute;ch hợp t&iacute;nh năng sạc nhanh si&ecirc;u tốc 25W, chỉ cần 10 ph&uacute;t sạc để bạn c&oacute; 3h li&ecirc;n lạc, 3h xem phim, 10h nghe nhạc, cho trải nghiệm giải tr&iacute; xuy&ecirc;n suốt.</p>\r\n\r\n<p><img alt=\"pin Samsung Galaxy A71\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-a71-7.jpg\" /></p>\r\n\r\n<h3><strong>Sức mạnh hiệu năng đỉnh cao</strong></h3>\r\n\r\n<p>Galaxy A71 được sản xuất để đ&aacute;p ứng được mọi y&ecirc;u cầu của bạn nhờ hiệu năng mạnh mẽ đỉnh cao. Bộ vi xử l&yacute; Snapdragon 730 sản xuất tr&ecirc;n tiến tr&igrave;nh 8nm ti&ecirc;n tiến, 8 nh&acirc;n cực mạnh v&agrave; GPU Adreno 618 kh&ocirc;ng chỉ chạy mượt ở những t&aacute;c vụ thường nhật m&agrave; c&ograve;n biến Galaxy A71 trở th&agrave;nh một &ldquo;cỗ m&aacute;y chơi game&rdquo; l&yacute; tưởng. 8GB RAM v&agrave; 128GB bộ nhớ trong đủ để bạn c&oacute; được kh&ocirc;ng gian lưu trữ thoải m&aacute;i, mở được nhiều ứng dụng c&ugrave;ng l&uacute;c. Hiệu năng của Galaxy A71 c&oacute; thể sử dụng l&acirc;u d&agrave;i m&agrave; kh&ocirc;ng lo bị lỗi thời.</p>\r\n\r\n<p><img alt=\"hiệu năng Samsung Galaxy A71\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-a71-8.jpg\" /></p>\r\n\r\n<h3><strong>Trải nghiệm h&igrave;nh ảnh chuẩn điện ảnh</strong></h3>\r\n\r\n<p>Trước mắt bạn sẽ l&agrave; m&agrave;n h&igrave;nh lớn tới 6,7 inch được thiết kế theo dạng tr&agrave;n viền v&ocirc; cực Infinity-O tuyệt đẹp. H&igrave;nh ảnh xuất sắc v&agrave; viền si&ecirc;u mỏng của Galaxy A71 gi&uacute;p mọi thứ dường như vượt khỏi kh&ocirc;ng gian m&agrave;n h&igrave;nh, sống động hơn bao giờ hết. Độ ph&acirc;n giải Full HD+ v&agrave;&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/man-hinh-super-amoled-la-gi-vi-sao-day-la-con-bai-chien-luoc-cua-samsung-57061\">c&ocirc;ng nghệ Super AMOLED</a>&nbsp;cho trải nghiệm h&igrave;nh ảnh chuẩn điện ảnh, với chất lượng c&ograve;n hơn cả những g&igrave; bạn thấy trong rạp chiếu phim.</p>\r\n\r\n<p><img alt=\"màn hình Samsung Galaxy A71\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-a71-9.jpg\" /></p>\r\n\r\n<h3><strong>Mỏng nhẹ, thời trang v&agrave; tinh tế</strong></h3>\r\n\r\n<p>D&ugrave; mang tr&ecirc;n m&igrave;nh m&agrave;n h&igrave;nh rất lớn nhưng Samsung Galaxy A71 vẫn l&agrave; smartphone mỏng nhẹ bậc nhất ph&acirc;n kh&uacute;c với độ mỏng chỉ 7,7mm v&agrave; trọng lượng 179 gram. Thiết kế thời thượng, tinh tế đến từng đường n&eacute;t với kiểu d&aacute;ng hiện đại, họa tiết kim cương độc đ&aacute;o v&agrave; những đường bo cong kh&eacute;o l&eacute;o tạo n&ecirc;n sản phẩm kh&ocirc;ng chỉ đẹp m&agrave; c&ograve;n cho cảm gi&aacute;c cầm nắm tối ưu trong tay. Bạn sẽ c&oacute; 3 lựa chọn m&agrave;u sắc l&agrave; Xanh Crush Đa Sắc, Bạc Crush &Aacute;nh Kim v&agrave; Đen Crush Kim Cương.</p>\r\n\r\n<p><img alt=\"thiết kế Samsung Galaxy A71\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-a71-10.jpg\" /></p>\r\n\r\n<h3><strong>Ch&igrave;a kh&oacute;a nằm trong tay bạn</strong></h3>\r\n\r\n<p>Samsung Galaxy A71 sở hữu lớp bảo mật Samsung Knox chuẩn quốc ph&ograve;ng, ngăn chặn rủi ro mất th&ocirc;ng tin khi bị d&iacute;nh m&atilde; độc hay c&aacute;c tệp tin nguy hại. Hơn nữa, bạn c&ograve;n c&oacute; phương ph&aacute;p bảo mật rất đơn giản l&agrave; cảm biến v&acirc;n tay trong m&agrave;n h&igrave;nh. Chỉ cần một c&uacute; chạm l&ecirc;n m&agrave;n h&igrave;nh,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;ngay lập tức mở kh&oacute;a v&agrave; sẵn s&agrave;ng cho mọi hoạt động.</p>\r\n\r\n<p><img alt=\"vân tay Samsung Galaxy A71\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-a71-11.jpg\" /></p>', '2020-12-01', '2020-12-01', NULL, 0, 6, '\"màu đen\",\"màu xanh\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Samsung</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>163.6 x 76 x 7.7 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>179 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>128 GB, 8 GB RAM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>128 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>Super Amoled</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.7 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>1080 x 2400 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm Snapdragon 730</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>2 Nh&acirc;n 2.2Ghz,6 nh&acirc;n 1.8Ghz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 618</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>MicroSD 1 TB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>Camera ch&iacute;nh 64MP<br />\r\n			Camera g&oacute;c si&ecirc;u rộng 12MP<br />\r\n			2 Camera g&oacute;c rộng 5MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>32 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>4K 30fps,Full HD 30/240fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.0, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS, GALILEO, BDS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>Type C</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến tiệm cận, gia tốc kế, la b&agrave;n, con quay hồi chuyển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>4500 mAh</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>'),
(26, 20, 'samsung-galaxy-m51-6gb-128gb', 2, 'Samsung Galaxy M51 6GB-128GB', 7000000, 'samsung-galaxy-m51-white-400x400-400x4003.png', 17, '<h2>Đặc điểm nổi bật của Samsung Galaxy M51</h2>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/217536/Slider/-samsung-galaxy-m51-thumbvideo.jpg\" /><img src=\"https://www.thegioididong.com/Content/desktop/images/V4/icon-yt.png\" /></p>\r\n\r\n<p>Bộ sản phẩm chuẩn: Hộp, Sạc, S&aacute;ch hướng dẫn, C&aacute;p, C&acirc;y lấy sim</p>\r\n\r\n<h2><a href=\"https://www.thegioididong.com/dtdd-samsung\" target=\"_blank\" title=\"Tham khảo thêm về các dòng điện thoại Samsung trên thegioididong.com\" type=\"Tham khảo thêm về các dòng điện thoại Samsung trên thegioididong.com\">Samsung</a>&nbsp;lại tiếp tục cho ra mắt chiếc smartphone mới thuộc thế hệ&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung-galaxy-m\" target=\"_blank\" title=\"Tham khảo thêm các điện thoại dòng Galaxy M tại thegioididong.com\" type=\"Tham khảo thêm các điện thoại dòng Galaxy M tại thegioididong.com\">Galaxy M</a>&nbsp;với t&ecirc;n gọi l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-m51\" title=\"Tham khảo giá bán điện thoại Samsung Galaxy M51 bán tại thegioididong.com\">Samsung&nbsp;Galaxy M51</a>. Thiết kế mới n&agrave;y tuy nằm trong ph&acirc;n kh&uacute;c tầm trung nhưng được Samsung n&acirc;ng cấp v&agrave; cải tiến với camera g&oacute;c si&ecirc;u rộng, dung lượng pin si&ecirc;u khủng c&ugrave;ng vẻ ngo&agrave;i sang trọng v&agrave; thời thượng.</h2>\r\n\r\n<h3>Thiết kế hiện đại v&agrave; đẳng cấp.</h3>\r\n\r\n<p>Ấn tượng ban đầu với&nbsp;<a href=\"https://www.thegioididong.com/dtdd-tu-6-inch\" target=\"_blank\" title=\"Tham khảo thêm các dòng smartphone có kích thước màn hình từ 6 inch trở lên tại thegioididong.com\" type=\"Tham khảo thêm các dòng smartphone có kích thước màn hình từ 6 inch trở lên tại thegioididong.com\">m&agrave;n h&igrave;nh</a>&nbsp;của Galaxy M51 l&agrave; kiểu m&agrave;n h&igrave;nh Infinity-O rộng 6.7 inch. Kiểu thiết kế n&agrave;y đưa camera selfie thu gọn hơn chỉ bằng một h&igrave;nh tr&ograve;n nhỏ c&ugrave;ng thiết kế&nbsp;<a href=\"https://www.thegioididong.com/dtdd-man-hinh-tran-vien\" target=\"_blank\" title=\"Tham khảo thêm các dòng smartphone có màn hình tràn viền tại thegioididong.com\" type=\"Tham khảo thêm các dòng smartphone có màn hình tràn viền tại thegioididong.com\">m&agrave;n h&igrave;nh tr&agrave;n viền</a>&nbsp;l&agrave;m tăng khả năng hiển thị h&igrave;nh ảnh hơn.</p>\r\n\r\n<p>Ngo&agrave;i ra, m&aacute;y c&ograve;n sở hữu c&ocirc;ng nghệ m&agrave;n h&igrave;nh Super AMOLED Plus&nbsp;mang đến chất lượng hiển thị sắc n&eacute;t, h&igrave;nh ảnh tươi tắn cho bạn tận hưởng c&aacute;c chương tr&igrave;nh giải tr&iacute; hấp dẫn, thưởng thức c&aacute;c bộ phim bom tấn, chơi những tựa game y&ecirc;u th&iacute;ch v&ocirc; c&ugrave;ng bắt mắt.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/217536/samsung-galaxy-m51-274020-094023.jpg\" onclick=\"return false;\"><img alt=\"Sở hữu màn hình tràn viền với độ phân giải cao | Samsung Galaxy M51\" src=\"https://cdn.tgdd.vn/Products/Images/42/217536/samsung-galaxy-m51-274020-094023.jpg\" title=\"Sở hữu màn hình tràn viền với độ phân giải cao | Samsung Galaxy M51\" /></a></p>\r\n\r\n<p>Mặt lưng của m&aacute;y được thiết kế m&agrave;u gradient, chất liệu vỏ l&agrave;m bằng nhựa n&ecirc;n m&aacute;y rất nhẹ chỉ c&oacute; trọng lượng 213 g v&agrave; với độ mỏng 9.5 mm. B&ecirc;n cạnh đ&oacute;, c&aacute;c cạnh của m&aacute;y bo cong &ocirc;m s&aacute;t phần khung viền mang lại cảm gi&aacute;c vừa chắc chắn m&agrave; rất nhẹ nh&agrave;ng khi cầm nắm tr&ecirc;n tay.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/217536/samsung-galaxy-m51-274020-094029.jpg\" onclick=\"return false;\"><img alt=\"Thiết kê mặt lưng bóng bẩy, sang trọng | Galaxy M51\" src=\"https://cdn.tgdd.vn/Products/Images/42/217536/samsung-galaxy-m51-274020-094029.jpg\" title=\"Thiết kê mặt lưng bóng bẩy, sang trọng | Galaxy M51\" /></a></p>\r\n\r\n<h3>Camera đột ph&aacute; th&aacute;ch thức mọi g&oacute;c độ</h3>\r\n\r\n<p>Tuy l&agrave; chiếc điện thoại nằm trong ph&acirc;n kh&uacute;c tầm trung nhưng lại sở hữu tới 4 camera sau với độ ph&acirc;n giải cực k&igrave; ấn tượng. Camera cảm biến ch&iacute;nh với độ ph&acirc;n giải l&ecirc;n đến 64 MP mang đến những bức ảnh cực kỳ r&otilde; n&eacute;t ngay cả trong điều kiện thiếu s&aacute;ng.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/217536/samsung-galaxy-m51-274020-094041.jpg\" onclick=\"return false;\"><img alt=\"Sở hữu 4 camera sau với độ phân giải cực kì ấn tượng | Samsung Galaxy M51\" src=\"https://cdn.tgdd.vn/Products/Images/42/217536/samsung-galaxy-m51-274020-094041.jpg\" title=\"Sở hữu 4 camera sau với độ phân giải cực kì ấn tượng | Samsung Galaxy M51\" /></a></p>\r\n\r\n<p>Kế đến l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\" target=\"_blank\" title=\"Tham khảo các mẫu điện thoại có camera góc siêu rộng tại thegioididong.com\" type=\"Tham khảo các mẫu điện thoại có camera góc siêu rộng tại thegioididong.com\">camera g&oacute;c si&ecirc;u rộng</a>&nbsp;(Ultra wide) với độ ph&acirc;n giải 12 MP kết hợp c&ugrave;ng camera ch&iacute;nh 64 MP cho khả năng chụp bao qu&aacute;t l&ecirc;n tới 123 độ, h&igrave;nh ảnh sắc n&eacute;t. Những khung cảnh n&uacute;i rừng h&ugrave;ng vĩ giờ đ&acirc;y c&oacute; thể g&oacute;i gọn trong chiếc camera của Samsung Galaxy M51.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/217536/samsung-galaxy-m51-272420-102407.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp góc siêu rộng từ camera | Samsung Galaxy M51\" src=\"https://cdn.tgdd.vn/Products/Images/42/217536/samsung-galaxy-m51-272420-102407.jpg\" title=\"Ảnh chụp góc siêu rộng từ camera | Samsung Galaxy M51\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh những bức ảnh g&oacute;c rộng, m&aacute;y c&ograve;n c&oacute; khả năng chụp cận cảnh với những chi tiết nhỏ v&agrave; hỗ trợ&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-xoa-phong\" target=\"_blank\" title=\"Tham khảo thêm các dòng smartphone có camera chụp hình xoá phông tại thegioididong.com\" type=\"Tham khảo thêm các dòng smartphone có camera chụp hình xoá phông tại thegioididong.com\">xo&aacute; ph&ocirc;ng</a>&nbsp;lấy độ s&acirc;u trường ảnh với hai camera bao gồm&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-macro\" target=\"_blank\" title=\"Tham khảo thêm các mẫu smartphone có camera macro chụp cận cảnh tại thegioididong.com\" type=\"Tham khảo thêm các mẫu smartphone có camera macro chụp cận cảnh tại thegioididong.com\">camera macro</a>&nbsp;chụp cận cảnh với độ ph&acirc;n giải l&agrave; 5 MP v&agrave;&nbsp;camera đo chiều s&acirc;u c&oacute; độ ph&acirc;n giải 5 MP.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/217536/samsung-galaxy-m51-272420-102412.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp cận cảnh macro từ camera | Samsung Galaxy M51\" src=\"https://cdn.tgdd.vn/Products/Images/42/217536/samsung-galaxy-m51-272420-102412.jpg\" title=\"Ảnh chụp cận cảnh macro từ camera | Samsung Galaxy M51\" /></a></p>\r\n\r\n<p>Ngo&agrave;i việc mang đến những bức ảnh đầy ấn tượng, bộ tứ camera của Galaxy M51 cũng mang đến chất lượng quay video 4K cực k&igrave; sắc n&eacute;t, m&agrave;u sắc sống động sẽ lưu giữ được những khoảnh khắc kỉ niệm đ&aacute;ng nhớ.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/217536/samsung-galaxy-m51-800-533-7.jpg\" onclick=\"return false;\"><img alt=\"Chất lượng quay video 4K cực kì sắc nét từ camera | Samsung Galaxy M51\" src=\"https://cdn.tgdd.vn/Products/Images/42/217536/samsung-galaxy-m51-800-533-7.jpg\" title=\"Chất lượng quay video 4K cực kì sắc nét từ camera | Samsung Galaxy M51\" /></a></p>\r\n\r\n<p>Camera selfie của Galaxy M51 cũng kh&ocirc;ng k&eacute;m phần chất lượng khi sở hữu độ ph&acirc;n giải tới 32 MP, với t&iacute;nh năng chụp ảnh HDR, tự l&agrave;m đẹp khu&ocirc;n mặt gi&uacute;p những bức ảnh ch&acirc;n dung hoặc những tấm ảnh chụp ngo&agrave;i trời cho chất lượng tốt hơn, r&otilde; n&eacute;t hơn gi&uacute;p bạn tự tin toả s&aacute;ng trong mọi khung h&igrave;nh.</p>\r\n\r\n<p>Ngo&agrave;i ra t&iacute;nh năng lựa chọn g&oacute;c selfie th&ocirc;ng minh, m&aacute;y sẽ tự động chuyển sang chế độ chụp g&oacute;c rộng khi selfie với nh&oacute;m bạn mang mọi người gắn kết với nhau hơn qua từng khoảnh khắc selfie.&nbsp;Về khả năng quay video, camera selfie c&ograve;n c&oacute; khả năng quay video cho chất lượng h&igrave;nh ảnh Full HD.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/217536/samsung-galaxy-m51-800-533-8.jpg\" onclick=\"return false;\"><img alt=\"Camera selfie với độ phân giải lên đến 32 MP | Samsung Galaxy M51\" src=\"https://cdn.tgdd.vn/Products/Images/42/217536/samsung-galaxy-m51-800-533-8.jpg\" title=\"Camera selfie với độ phân giải lên đến 32 MP | Samsung Galaxy M51\" /></a></p>\r\n\r\n<h3>Pin si&ecirc;u khủng, sử dụng thoải m&aacute;i cả ng&agrave;y lẫn đ&ecirc;m</h3>\r\n\r\n<p>Được n&acirc;ng cấp vi&ecirc;n pin khủng l&ecirc;n đến 7000 mAh xứng đ&aacute;ng l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-pin-khung\" target=\"_blank\" title=\"Tham khảo thêm các dòng smartphone có dung lượng pin trên 5000 mAh tại thegioididong.com\" type=\"Tham khảo thêm các dòng smartphone có dung lượng pin trên 5000 mAh tại thegioididong.com\">điện thoại pin tr&acirc;u</a>&nbsp;nhất trong ph&acirc;n kh&uacute;c&nbsp;<a href=\"https://www.thegioididong.com/dtdd?p=tu-4-7-trieu\" target=\"_blank\" title=\"Tham khảo thêm các dòng điện thoại tầm trung kinh doanh tại thegioididong.com\" type=\"Tham khảo thêm các dòng điện thoại tầm trung kinh doanh tại thegioididong.com\">điện thoại tầm trung</a>&nbsp;mang đến cho bạn cả ng&agrave;y d&agrave;i sử dụng kết hợp c&ocirc;ng nghệ&nbsp;<a href=\"https://www.thegioididong.com/dtdd-sac-pin-nhanh\" target=\"_blank\" title=\"Tham khảo các mẫu điện thoại có công nghệ sạc pin nhanh tại thegioididong.com\" type=\"Tham khảo các mẫu điện thoại có công nghệ sạc pin nhanh tại thegioididong.com\">sạc pin nhanh</a>&nbsp;25 W gi&uacute;p bạn nạp lại pin cho m&aacute;y rất nhanh v&agrave; hiệu quả.</p>\r\n\r\n<p>Với lượng pin được sạc đầy 100% bạn sẽ c&oacute; thể đ&agrave;m thoại li&ecirc;n tục 64 giờ, sử dụng internet, xem video l&ecirc;n đến 24 giờ hoặc nghe nhạc li&ecirc;n tục trong khoảng 182 giờ. Giờ đ&acirc;y, bạn sẽ kh&ocirc;ng phải lo lắng về việc sạc pin trước hay mang theo cục sạc dự ph&ograve;ng khi rời khỏi nh&agrave;.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/217536/samsung-galaxy-m51-800-533-9.jpg\" onclick=\"return false;\"><img alt=\"Dung lượng pin khủng cùng công nghệ sạc nhanh | Samsung Galaxy M51\" src=\"https://cdn.tgdd.vn/Products/Images/42/217536/samsung-galaxy-m51-800-533-9.jpg\" title=\"Dung lượng pin khủng cùng công nghệ sạc nhanh | Samsung Galaxy M51\" /></a></p>\r\n\r\n<p>Tuyệt vời hơn, Galaxy M51 c&ograve;n c&oacute; t&iacute;nh năng reverse charging, nghĩa l&agrave; Galaxy M51 cũng c&oacute; thể biến th&agrave;nh một cục sạc dự ph&ograve;ng đa năng nếu như một chiếc điện thoại kh&aacute;c của bạn cần được sạc pin.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/217536/samsung-galaxy-m51-800-533-10.jpg\" onclick=\"return false;\"><img alt=\"Tính năng reverse charging mới | Samsung Galaxy M51\" src=\"https://cdn.tgdd.vn/Products/Images/42/217536/samsung-galaxy-m51-800-533-10.jpg\" title=\"Tính năng reverse charging mới | Samsung Galaxy M51\" /></a></p>\r\n\r\n<h3>Hiệu năng mạnh mẽ vượt trội</h3>\r\n\r\n<p>Galaxy M51 sở hữu con chip&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-chip-qualcomm-snapdragon-730-1174819\" target=\"_blank\" title=\"Tìm hiểu chip Qualcomm Snapdragon 730 tại website thegioididong.com\" type=\"Tìm hiểu chip Qualcomm Snapdragon 730 tại website thegioididong.com\">Snapdragon 730 8 nh&acirc;n của Qualcomm</a>&nbsp;với&nbsp;<a href=\"https://www.thegioididong.com/dtdd-ram-8gb-tro-len\" target=\"_blank\" title=\"Tham khảo thêm các dòng smartphone có dung lượng RAM 8GB trở lên tại thegioididong.com\">RAM&nbsp;8 GB</a>, tốc độ xử l&yacute; l&ecirc;n tới 2.2 GHz gi&uacute;p bạn tiết kiệm điện năng cho m&aacute;y đồng thời tăng tốc độ phản hồi cho bạn trải nghiệm mượt m&agrave; hơn khi d&ugrave;ng nhiều t&aacute;c vụ c&ugrave;ng l&uacute;c.</p>\r\n\r\n<p>Samsung Galaxy M51&nbsp;c&ograve;n sở hữu bộ nhớ trong với&nbsp;<a href=\"https://www.thegioididong.com/dtdd-rom-128-den-256gb\" target=\"_blank\" title=\"Tham khảo thêm các dòng smartphone có bộ nhớ trong từ 128GB đến 256GB tại thegioididong.com\" type=\"Tham khảo thêm các dòng smartphone có bộ nhớ trong từ 128GB đến 256GB tại thegioididong.com\">dung lượng 128 GB</a>,&nbsp;cho kh&ocirc;ng gian lưu trữ rộng lớn hơn, thoải m&aacute;i hơn khi lưu phim ảnh, video, game...</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/217536/samsung-galaxy-m51-271120-101154.jpg\" onclick=\"return false;\"><img alt=\"Sở hữu con chip Snapdragon 730 8 nhân | Samsung Galaxy M51\" src=\"https://cdn.tgdd.vn/Products/Images/42/217536/samsung-galaxy-m51-271120-101154.jpg\" title=\"Sở hữu con chip Snapdragon 730 8 nhân | Samsung Galaxy M51\" /></a></p>\r\n\r\n<p>Chip đồ hoạ Adreno 618 gi&uacute;p&nbsp;<a href=\"https://www.thegioididong.com/dtdd-choi-game\" target=\"_blank\" title=\"Tham khảo điện thoại chơi game - cấu hình cao tại Thegioididong.com \">điện thoại chơi game</a>&nbsp;th&ecirc;m t&iacute;nh ch&acirc;n thực với đồ họa phong ph&uacute; hơn, xử l&yacute; chất lượng h&igrave;nh ảnh v&agrave; chơi tr&ograve; chơi HDR với nhiều sắc th&aacute;i m&agrave;u.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/217536/samsung-galaxy-m51-274020-094053.jpg\" onclick=\"return false;\"><img alt=\"Hỗ trợ thẻ nhớ ngoài | Samsung Galaxy M51\" src=\"https://cdn.tgdd.vn/Products/Images/42/217536/samsung-galaxy-m51-274020-094053.jpg\" title=\"Hỗ trợ thẻ nhớ ngoài | Samsung Galaxy M51\" /></a></p>\r\n\r\n<h3>Linh hoạt hơn với hai hệ thống bảo mật</h3>\r\n\r\n<p>Bạn c&oacute; thể ho&agrave;n to&agrave;n an t&acirc;m khi sử dụng Samsung Galaxy M51 bởi chiếc điện thoại n&agrave;y được trang bị đến 2 hệ thống bảo mật bao gồm&nbsp;<a href=\"https://www.thegioididong.com/dtdd-bao-mat-van-tay\" target=\"_blank\" title=\"Tham khảo thêm các dòng điện thoại cảm biến vân tay tại thegioididong.com\" type=\"Tham khảo thêm các dòng điện thoại cảm biến vân tay tại thegioididong.com\">bảo mật v&acirc;n tay</a>&nbsp;được đặt b&ecirc;n khung viền của m&aacute;y v&agrave; t&iacute;nh năng&nbsp;<a href=\"https://www.thegioididong.com/dtdd-bao-mat-khuon-mat\" target=\"_blank\" title=\"Tham khảo thêm các dòng điện thoại có bảo mật khuôn mặt tại thegioididong.com\" type=\"Tham khảo thêm các dòng điện thoại có bảo mật khuôn mặt tại thegioididong.com\">bảo mật khu&ocirc;n mặt</a>. Với 2 hệ thống bảo mật được t&iacute;ch hợp trong c&ugrave;ng một chiếc điện thoại, bạn sẽ linh động được c&aacute;ch mở kho&aacute; hơn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/217536/samsung-galaxy-m51-274120-094105.jpg\" onclick=\"return false;\"><img alt=\"Tích hợp bảo mật vân tay cạnh viền | Samsung Galaxy M51\" src=\"https://cdn.tgdd.vn/Products/Images/42/217536/samsung-galaxy-m51-274120-094105.jpg\" title=\"Tích hợp bảo mật vân tay cạnh viền | Samsung Galaxy M51\" /></a></p>\r\n\r\n<p>Nh&igrave;n tổng thể, Samsung Galaxy M51 c&oacute; mức gi&aacute; hợp l&yacute; c&ograve;n được sở hữu những t&iacute;nh năng hiện đại về thiết kế đồng thời nổi bật về chất lượng chắc chắn sẽ kh&ocirc;ng l&agrave;m thất vọng người d&ugrave;ng y&ecirc;u c&ocirc;ng nghệ khi lựa chọn Galaxy M51.</p>', '2020-12-01', '2020-12-01', NULL, 0, 6, '\"màu đen\",\"màu trắng\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Samsung</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>162.6 x 77.5 x 8.5 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>6 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>128 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>IPS LCD capacitive touchscreen, 16M colors, Corning Gorilla Glass 3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.67 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>1080 x 2340 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 10, One UI 2.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm SDM730 Snapdragon 730 (8 nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core (2x2.2 GHz Kryo 470 Gold &amp; 6x1.8 GHz Kryo 470 Silver)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 618</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>64 MP, f/2.0, 26mm (wide), 1/1.72&quot;, 0.8&micro;m, PDAF<br />\r\n			12 MP, f/2.2, (ultrawide)<br />\r\n			5 MP, f/2.2, (depth)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>32 MP, f/2.0, 26mm (wide), 1/2.8&quot;, 0.8&micro;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>4K@30fps, 1080p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat15 800/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.0, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS, GALILEO, BDS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>2.0, Type-C 1.0 reversible connector</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến tiệm cận, gia tốc kế, la b&agrave;n, con quay hồi chuyển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Po 7000 mAh, Fast charging 25W</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>');
INSERT INTO `sanpham` (`sp_id`, `th_id`, `sp_nhan`, `kho_id`, `sp_ten`, `sp_dongianhap`, `sp_hinh`, `sp_soluong`, `sp_thongtin`, `sp_ngaytaomoi`, `sp_ngaycapnhat`, `khuyenmai_id`, `sp_hienthi`, `ncc_id`, `sp_mausac`, `xx_id`, `sp_tskt`) VALUES
(27, 14, 'oppo-a93-8gb-128gb', 2, 'OPPO A93 8GB-128GB', 5000000, '637365326869325321_oppo-A93-den-164.png', 27, '<h3>Đ&aacute;nh gi&aacute; chi tiết OPPO A93 8GB-128GB</h3>\r\n\r\n<p><strong>Sở hữu tới 6 camera AI,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/oppo-a93\" title=\"Điện thoại OPPO A93 chính hãng\" type=\"Điện thoại OPPO A93 chính hãng\">OPPO A93</a>&nbsp;n&acirc;ng tầm nhiếp ảnh với khả năng chụp ảnh v&agrave; quay video chuy&ecirc;n nghiệp, c&ugrave;ng với đ&oacute; l&agrave; sức mạnh cấu h&igrave;nh đỉnh cao, tất cả được g&oacute;i gọn trong một thiết kế si&ecirc;u mỏng thời trang, m&ecirc; hoặc mọi &aacute;nh nh&igrave;n.</strong></p>\r\n\r\n<p><strong><img alt=\"Điện thoại OPPO A93\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a93-1.jpg\" /></strong></p>\r\n\r\n<h3><strong>T&aacute;c phẩm nghệ thuật tr&ecirc;n tay bạn</strong></h3>\r\n\r\n<p>Kh&ocirc;ng đơn thuần l&agrave; một chiếc&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\" title=\"Mua điện thoại chính hãng, giá ưu đãi tại FPTShop\" type=\"Mua điện thoại chính hãng, giá ưu đãi tại FPTShop\">điện thoại</a>, vẻ đẹp của OPPO A93 chắc chắn sẽ khiến bạn phải m&ecirc; đắm. Một thiết kế si&ecirc;u mỏng nhẹ đầy tinh tế với c&aacute;c g&oacute;c cạnh bo tr&ograve;n, kh&ocirc;ng chỉ hấp dẫn khi nh&igrave;n v&agrave;o m&agrave; c&ograve;n rất mượt m&agrave; v&agrave; dễ chịu khi cầm tr&ecirc;n tay. Phần mặt trước m&agrave;n h&igrave;nh viền mỏng v&agrave; mặt lưng ho&agrave;n thiện từ chất liệu b&oacute;ng mờ tuyệt đẹp, kh&ocirc;ng hề b&aacute;m dấu v&acirc;n tay, tạo n&ecirc;n một chiếc điện thoại sang trọng, tr&agrave;n đầy cảm hứng.</p>\r\n\r\n<p><img alt=\"thiết kế OPPO A93\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a93-2.jpg\" /></p>\r\n\r\n<h3><strong>6 camera ch&acirc;n dung AI, t&ocirc;n vinh vẻ đẹp của bạn</strong></h3>\r\n\r\n<p>OPPO A93 l&agrave; chiếc&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/oppo-a-series\" title=\"Điện thoại OPPO A Series\" type=\"Điện thoại OPPO A Series\">điện thoại OPPO&nbsp;d&ograve;ng A</a>&nbsp;đầu ti&ecirc;n trang bị tới 6 camera, mang tới cho người d&ugrave;ng trải nghiệm chụp ảnh v&agrave; quay video cao cấp. Bạn sẽ c&oacute; 4 camera sau bao gồm camera ch&iacute;nh 48MP khẩu độ f/1.7, camera g&oacute;c si&ecirc;u rộng 8MP, 2 camera đo độ s&acirc;u 2MP v&agrave; 2 camera trước 16MP + 2MP. Sẽ c&oacute; rất nhiều t&iacute;nh năng, đặc biệt l&agrave; khả năng chụp ảnh ch&acirc;n dung ấn tượng đang chờ đ&oacute;n bạn.</p>\r\n\r\n<p><img alt=\"camera OPPO A93\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a93-3.jpg\" /></p>\r\n\r\n<h3><strong>Tự tin tỏa s&aacute;ng, kh&ocirc;ng ngại m&agrave;n đ&ecirc;m</strong></h3>\r\n\r\n<p>Với những cảm biến chất lượng v&agrave; tr&iacute; tuệ nh&acirc;n tạo AI, m&agrave;n đ&ecirc;m đ&atilde; kh&ocirc;ng c&ograve;n l&agrave; điều kiện đ&aacute;ng ngại khi chụp ảnh bằng&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/oppo\" title=\"Xem thêm điện thoại OPPO chính hãng giá ưu đãi tại FPTShop\" type=\"Xem thêm điện thoại OPPO chính hãng giá ưu đãi tại FPTShop\">OPPO</a>&nbsp;A93, d&ugrave; l&agrave; camera trước hay sau. Camera sau với t&iacute;nh năng ch&acirc;n dung đ&ecirc;m AI, biến những &aacute;nh đ&egrave;n lung linh trở th&agrave;nh ph&ocirc;ng nền cho vẻ đẹp rạng rỡ của bạn. Trong khi đ&oacute; t&iacute;nh năng ch&acirc;n dung selfie đ&ecirc;m AI của camera trước cũng mang đến hiệu quả tương tự khi kết hợp HDR, nhận diện khu&ocirc;n mặt v&agrave; c&ocirc;ng nghệ hạn chế lớp s&aacute;ng để bức ảnh selfie trở n&ecirc;n ho&agrave;n hảo trong đ&ecirc;m tối.</p>\r\n\r\n<p><img alt=\"chụp đêm OPPO A93\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a93-4.jpg\" /></p>\r\n\r\n<h3><strong>Ảnh ch&acirc;n dung chưa bao giờ th&uacute; vị đến thế</strong></h3>\r\n\r\n<p>B&ecirc;n cạnh t&iacute;nh năng chụp ch&acirc;n dung đ&ecirc;m AI, OPPO A93 c&ograve;n n&acirc;ng sự s&aacute;ng tạo của ảnh ch&acirc;n dung l&ecirc;n một tầm cao mới. T&iacute;nh năng ch&acirc;n dung m&agrave;u AI sẽ gi&uacute;p bạn trở n&ecirc;n nổi bật hơn khi thể hiện m&agrave;u sắc trước hậu cảnh l&agrave;m mờ đen trắng đầy nghệ thuật; t&iacute;nh năng ch&acirc;n dung si&ecirc;u r&otilde; n&eacute;t AI cho h&igrave;nh ảnh sắc n&eacute;t hơn ở điều kiện thiếu s&aacute;ng; ngo&agrave;i ra hiệu ứng x&oacute;a ph&ocirc;ng của OPPO A93 l&agrave; từ phần cứng, kết hợp l&agrave;m đẹp khu&ocirc;n mặt AI, gi&uacute;p cho h&igrave;nh ảnh chất lượng chuy&ecirc;n nghiệp như chụp bằng m&aacute;y ảnh.</p>\r\n\r\n<p><img alt=\"chụp chân dung OPPO A93\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a93-5.jpg\" /></p>\r\n\r\n<h3><strong>Quay phim chống rung mượt m&agrave;</strong></h3>\r\n\r\n<p>Thỏa sức s&aacute;ng tạo, lưu lại khoảnh khắc hay l&agrave;m vlog nhờ khả năng chống rung tuyệt vời khi quay video tr&ecirc;n OPPO A93. T&iacute;nh năng chống rung ở camera trước v&agrave; si&ecirc;u chống rung ở camera sau cho h&igrave;nh ảnh mượt m&agrave;, ngay cả khi bạn đang chuyển động nhanh hay vừa di chuyển vừa quay. Những thước phim đầy chất lượng sẽ được tạo ra từ ch&iacute;nh bạn.</p>\r\n\r\n<p><img alt=\"chống rung OPPO A93\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a93-6.jpg\" /></p>\r\n\r\n<h3><strong>Cấu h&igrave;nh cực mạnh, mở mọi ứng dụng trong chớp mắt</strong></h3>\r\n\r\n<p>OPPO A93 c&oacute; cấu h&igrave;nh vượt trội khi được trang bị bộ vi xử l&yacute; Helio P95 với 8 nh&acirc;n, tốc độ tối đa 2.2GHz, chạy mượt mọi ứng dụng, d&ugrave; c&oacute; l&agrave; tr&igrave;nh chỉnh sửa ảnh, video hay những game 3D nặng nhất hiện nay. B&ecirc;n cạnh đ&oacute;, OPPO A93 c&ograve;n sở hữu tới 8GB RAM v&agrave; 128GB bộ nhớ trong, cho khả năng chạy tốt nhiều ứng dụng c&ugrave;ng l&uacute;c, đồng thời thoải m&aacute;i c&agrave;i đặt ứng dụng, lưu trữ tệp tin, b&agrave;i h&aacute;t, ảnh, video. Hiệu năng của OPPO A93 c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng cả những người kh&oacute; t&iacute;nh nhất.</p>\r\n\r\n<p><img alt=\"cáu hình OPPO A93\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a93-7.jpg\" /></p>\r\n\r\n<h3><strong>Chỉ 5 ph&uacute;t sạc cho 2 giờ đ&agrave;m thoại</strong></h3>\r\n\r\n<p>C&ocirc;ng nghệ sạc nhanh 18W tr&ecirc;n OPPO A93 c&oacute; thể mang lại 2 giờ đ&agrave;m thoại chỉ sau vỏn vẹn 5 ph&uacute;t sạc, gi&uacute;p c&ocirc;ng việc của bạn kh&ocirc;ng bị gi&aacute;n đoạn. Kh&ocirc;ng chỉ sạc nhanh m&agrave; qu&aacute; tr&igrave;nh sạc c&ograve;n rất an to&agrave;n, c&oacute; thể tối ưu h&oacute;a sạc qua đ&ecirc;m m&agrave; kh&ocirc;ng ảnh hưởng đến tuổi thọ của pin. Đồng thời bạn cũng c&oacute; chế độ si&ecirc;u tiết kiệm pin để k&eacute;o d&agrave;i thời gian sử dụng tối đa khi dung lượng pin c&ograve;n thấp.</p>\r\n\r\n<p><img alt=\"sạc nhanh OPPO A93\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a93-8.jpg\" /></p>\r\n\r\n<h3><strong>Cảm biến v&acirc;n tay trong m&agrave;n h&igrave;nh cực nhạy</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh OPPO A93 được thiết kế tối giản với cụm camera selfie k&eacute;p nằm ngay trong tấm k&iacute;nh m&agrave;n h&igrave;nh, cho kh&ocirc;ng gian hiển thị tốt nhất. Với k&iacute;ch thước 6.43 inch độ ph&acirc;n giải Full HD+, c&ocirc;ng nghệ AMOLED cao cấp, OPPO A93 mang đến những h&igrave;nh ảnh ch&acirc;n thực, sống động. Chưa hết, cảm biến v&acirc;n tay trong m&agrave;n h&igrave;nh c&ograve;n gi&uacute;p bạn dễ d&agrave;ng thao t&aacute;c mở kh&oacute;a m&aacute;y, đăng nhập v&agrave;o ứng dụng trong chớp mắt.</p>\r\n\r\n<p><img alt=\"màn hình OPPO A93\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/oppo-a93-9.jpg\" /></p>', '2020-12-01', '2020-12-01', NULL, 0, 6, '\"màu đen\",\"màu trắng\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>OPPO</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>7.48mm x 73.8mm x 160.1mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>164 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>8 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>128 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>Super AMOLED, 16t triệu m&agrave;u, Corning Gorilla Glass 3+, độ s&aacute;ng 430 nits</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.43 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>1080 x 2400 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 10, ColorOS 7.2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Mediatek Helio P95 (12 nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core (2x2.2 GHz Cortex-A75 &amp; 6x2.0 GHz Cortex-A55)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>PowerVR GM9446</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>48 MP, f/1.8, 26mm (wide), 1/2.0&quot;, 0.8&micro;m, PDAF<br />\r\n			8 MP, f/2.2, 119˚ (ultrawide), 1/4.0&quot;, 1.12&micro;m<br />\r\n			2 MP, f/2.4, (depth)<br />\r\n			2 MP, f/2.4, (depth)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>16 MP, f/2.4, (wide), 1/3&quot;, 1.0&micro;m<br />\r\n			2 MP, f/2.4, (depth)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>Trước: 1080p@30fps<br />\r\n			Sau: 4K@30fps, 1080p@30/120fps, gyro-EIS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat16 1024/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.1, A2DP, LE, aptX HD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS, GALILEO, BDS, QZSS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>2.0, Type-C 1.0 reversible connector, USB On-The-Go</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến tiệm cận, gia tốc kế, la b&agrave;n, con quay hồi chuyển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>4000mAh<br />\r\n			Sạc si&ecirc;u nhanh 18W</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>'),
(28, 20, 'samsung-galaxy-a51-6gb-128gb', 2, 'Samsung Galaxy A51 6GB-128GB', 5000000, '637196211269575512_ss-a51-den-157.png', 26, '<h3>Đ&aacute;nh gi&aacute; chi tiết Samsung Galaxy A51</h3>\r\n\r\n<p><strong>Tự h&agrave;o l&agrave; smartphone đầu ti&ecirc;n tr&ecirc;n thế giới được t&iacute;ch hợp camera Macro hỗ trợ chụp ảnh cận cảnh,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-a51\">Galaxy A51</a>&nbsp;đem tới trải nghiệm chụp h&igrave;nh vượt ngo&agrave;i mong đợi với khả năng t&aacute;i tạo đến từng chi tiết nhỏ nhất. Ngo&agrave;i ra, sự ưu việt của m&agrave;n h&igrave;nh v&ocirc; cực kết hợp với cấu h&igrave;nh mạnh mẽ v&agrave;&nbsp;</strong><strong>vi&ecirc;n pin lớn</strong><strong>&nbsp;4.000&nbsp;</strong><strong>mAh sạc si&ecirc;u nhanh</strong><strong>&nbsp;khiến Galaxy A51 c&oacute; thể l&agrave;m vừa l&ograve;ng bất cứ ai ngay từ lần trải nghiệm đầu ti&ecirc;n.</strong></p>\r\n\r\n<p><img alt=\"Mô tả sản phẩm Samsung Galaxy A51 1\" id=\"Mô tả sản phẩm Samsung Galaxy A51 112\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/AnhNQ/02/Mo-ta-san-pham-samsung-galaxy-a51-3.jpg\" /></p>\r\n\r\n<h3><strong>Khắc họa</strong><strong>&nbsp;từng đường n&eacute;t chi tiết&nbsp;</strong><strong>nhờ camera</strong><strong>&nbsp;Macro</strong></h3>\r\n\r\n<p>Mặt lưng của Galaxy A51 đ&aacute;nh dấu sự xuất hiện của 4 camera sau, trong đ&oacute; đ&aacute;ng ch&uacute; &yacute; nhất l&agrave; camera Macro hỗ trợ chụp ph&oacute;ng đại vật thể v&agrave; lấy n&eacute;t chủ thể ở phạm vi cực gần, nhờ vậy, mọi khu&ocirc;n h&igrave;nh bạn chụp từ thiết bị đều được t&aacute;i tạo ho&agrave;n hảo cả về m&agrave;u sắc, chi tiết đến từng đường n&eacute;t nhỏ nhất. Đ&acirc;y l&agrave; chiếc smartphone đầu ti&ecirc;n tr&ecirc;n thế giới sở hữu t&iacute;nh năng ưu việt n&agrave;y, bạn sẽ c&oacute; cảm nhận như đang cầm tr&ecirc;n tay một chiếc m&aacute;y ảnh chuy&ecirc;n nghiệp thực thụ khi sở hữu Samsung Galaxy A51.</p>\r\n\r\n<p><img alt=\"Khắc họa từng đường nét chi tiết nhờ camera Macro 1\" id=\"Khắc họa từng đường nét chi tiết nhờ camera Macro 11\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/AnhNQ/02/Mo-ta-san-pham-samsung-galaxy-a51-0.jpg\" /></p>\r\n\r\n<h3><strong>Chiều l&ograve;ng mọi t&iacute;n đồ chụp ảnh với 4 camera sau</strong></h3>\r\n\r\n<p>Bốn camera của Galaxy A51 gồm camera ch&iacute;nh 48MP gi&uacute;p t&aacute;i hiện h&igrave;nh ảnh ch&acirc;n thực, camera Macro hỗ trợ chụp cận cảnh tối ưu, một camera g&oacute;c si&ecirc;u rộng 123 độ v&agrave; cuối c&ugrave;ng l&agrave; camera cảm biến độ s&acirc;u trường ảnh l&agrave;m nổi bật c&aacute;c đối tượng trong khu&ocirc;n h&igrave;nh.&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/samsung\">Samsung</a>&nbsp;đ&atilde; kh&eacute;o l&eacute;o &aacute;p dụng c&ocirc;ng nghệ tr&iacute; tuệ nh&acirc;n tạo (AI) để kết hợp linh hoạt th&ocirc;ng tin ghi nhận từ bộ 4 camera n&agrave;y nhằm đưa ra h&igrave;nh ảnh sau c&ugrave;ng đạt chất lượng ưng &yacute;. Ngo&agrave;i ra, sự g&oacute;p mặt của AI c&ograve;n gi&uacute;p chiếc điện thoại Galaxy A51 nhận diện được 30 chủ thể v&agrave; dễ d&agrave;ng t&ugrave;y chỉnh th&ocirc;ng số để c&oacute; được kết quả tốt nhất.</p>\r\n\r\n<p><img alt=\"Chiều lòng mọi tín đồ chụp ảnh với 4 camera sau 1\" id=\"Chiều lòng mọi tín đồ chụp ảnh với 4 camera sau 11\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/AnhNQ/02/Mo-ta-san-pham-samsung-galaxy-a51-1.jpg\" /></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh v&ocirc; cực đột ph&aacute; mọi giới hạn</strong></h3>\r\n\r\n<p>Chẳng cần phải bỏ ra số tiền đắt đỏ để sở hữu một chiếc smartphone m&agrave;n h&igrave;nh v&ocirc; cực, Galaxy A51 sẽ khiến bạn kinh ngạc với chất lượng h&igrave;nh ảnh sắc n&eacute;t m&agrave; m&agrave;n h&igrave;nh Infinity-O 6.5 inch Full HD+ đem lại.&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/man-hinh-super-amoled-la-gi-vi-sao-day-la-con-bai-chien-luoc-cua-samsung-57061\">C&ocirc;ng nghệ Super AMOLED</a>&nbsp;từ l&acirc;u đ&atilde; l&agrave;m n&ecirc;n t&ecirc;n tuổi của nh&agrave; sản xuất xứ H&agrave;n nhờ khả năng hiển thị rực rỡ sống động, t&aacute;i tạo h&igrave;nh ảnh c&oacute; chiều s&acirc;u m&agrave; vẫn tiết kiệm năng lượng hiệu quả. M&agrave;n h&igrave;nh Galaxy A51 được thiết kế tr&agrave;n s&aacute;t c&aacute;c m&eacute;p viền v&agrave; gần như chiếm trọn mặt trước, camera selfie được đưa v&agrave;o trong kh&ocirc;ng gian hiển thị theo đ&uacute;ng xu hướng đang được ưa chuộng nhất thị trường di động hiện nay.</p>\r\n\r\n<p><img alt=\"Màn hình vô cực đột phá mọi giới hạn 1\" id=\"Màn hình vô cực đột phá mọi giới hạn 11\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/AnhNQ/02/Mo-ta-san-pham-samsung-galaxy-a51-2.jpg\" /></p>\r\n\r\n<h3><strong>Ngỡ ng&agrave;ng trước thiết kế mỏng nhẹ tinh tế</strong></h3>\r\n\r\n<p>Từ l&acirc;u, những chiếc điện thoại Galaxy A của Samsung đ&atilde; nổi danh nhờ ngoại h&igrave;nh đẹp mắt v&agrave; Galaxy A51 cũng kh&ocirc;ng phải ngoại lệ. Trải nghiệm thực tế cho thấy A51 đem tới cảm gi&aacute;c cầm nắm hết sức tuyệt vời với th&acirc;n m&aacute;y mỏng 7.9 mm v&agrave; mặt lưng được vuốt cong hai m&eacute;p, tr&aacute;nh tạo n&ecirc;n cảm gi&aacute;c cấn tay khi sử dụng. Sự phối trộn m&agrave;u sắc tinh tế tr&ecirc;n mặt lưng kết hợp với họa tiết cắt kim cương gi&uacute;p ph&ocirc; diễn trọn vẹn vẻ đẹp thiết bị.</p>\r\n\r\n<p><img alt=\"Ngỡ ngàng trước thiết kế mỏng nhẹ tinh tế 1\" id=\"Ngỡ ngàng trước thiết kế mỏng nhẹ tinh tế 11\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/AnhNQ/02/Mo-ta-san-pham-samsung-galaxy-a51-5.jpg\" /></p>\r\n\r\n<h3><strong>Tiết kiệm thời gian của bạn với c&ocirc;ng nghệ sạc si&ecirc;u tốc</strong></h3>\r\n\r\n<p>Cung cấp năng lượng hoạt động cho Galaxy A51 hoạt động l&agrave; vi&ecirc;n pin lớn tới 4.000 mAh chuẩn Li-Po. Tuy dung lượng pin lớn nhưng bạn sẽ kh&ocirc;ng cần phải chờ đợi l&acirc;u trong qu&aacute; tr&igrave;nh nạp năng lượng nhờ sự hỗ trợ của c&ocirc;ng nghệ sạc nhanh si&ecirc;u tốc 15W. Theo ước t&iacute;nh của nh&agrave; sản xuất, chỉ với 10 ph&uacute;t sạc, chiếc điện thoại Galaxy A51 sẽ c&oacute; đủ điện năng gọi điện li&ecirc;n tục trong 3 giờ, xem video trong 3 giờ hoặc nghe nhạc suốt 10 giờ. Đ&acirc;y l&agrave; lợi thế lớn gi&uacute;p n&acirc;ng cao trải nghiệm người d&ugrave;ng trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p><img alt=\"Tiết kiệm thời gian của bạn với công nghệ sạc siêu tốc 1\" id=\"Tiết kiệm thời gian của bạn với công nghệ sạc siêu tốc 11\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/AnhNQ/02/Mo-ta-san-pham-samsung-galaxy-a51-8.jpg\" /></p>\r\n\r\n<h3><strong>Cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh tiện dụng</strong></h3>\r\n\r\n<p>Một điểm cộng kh&ocirc;ng thể bỏ qua của Samsung Galaxy A51 l&agrave; t&iacute;nh năng cảm biến v&acirc;n tay nh&uacute;ng dưới m&agrave;n h&igrave;nh. Chỉ với một lần chạm nhẹ, chiếc smartphone của bạn sẽ tự động nhận diện chủ nh&acirc;n v&agrave; mở kh&oacute;a v&agrave;o m&agrave;n h&igrave;nh ch&iacute;nh. Kh&ocirc;ng chỉ vậy, c&ocirc;ng nghệ cảm biến v&acirc;n tay c&ograve;n c&oacute; thể x&aacute;c thực danh t&iacute;nh v&agrave; gi&uacute;p bạn đăng nhập v&agrave;o c&aacute;c ứng dụng một c&aacute;ch nhanh ch&oacute;ng.</p>\r\n\r\n<p><img alt=\"Cảm biến vân tay dưới màn hình tiện dụng 1\" id=\"Cảm biến vân tay dưới màn hình tiện dụng 11\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/AnhNQ/02/Mo-ta-san-pham-samsung-galaxy-a51-4.jpg\" /></p>\r\n\r\n<h3><strong>Chơi game thỏa th&iacute;ch nhờ hiệu năng mạnh mẽ</strong></h3>\r\n\r\n<p>L&agrave;m n&ecirc;n sức mạnh hiệu năng của Galaxy A51 l&agrave; bộ vi xử l&yacute; t&aacute;m nh&acirc;n Exynos 9611, kết hợp với bộ RAM 6GB c&ugrave;ng dung lượng lưu trữ 128GB. Sản phẩm c&oacute; thể xử l&yacute; những t&aacute;c vụ phức tạp v&agrave; c&aacute;c tựa game nặng một c&aacute;ch mượt m&agrave;. Kh&ocirc;ng chỉ vậy, c&ocirc;ng nghệ Neuro Game Booster cũng hỗ trợ chơi game với trải nghiệm tốt nhất để bạn c&oacute; được kh&ocirc;ng gian giải tr&iacute; ưng &yacute; với Galaxy A51.</p>', '2020-12-01', '2020-12-01', NULL, 0, 6, '\"màu đen\",\"màu trắng\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Samsung</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>128 GB, 6 GB RAM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>128 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>Super AMOLED</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.5 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>1080 x 2340 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Exynos 9611</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Mali GPU</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>512GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>Triple Rear Camera (48MP + 12MP + 5MP)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>32MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>Quay phim FullHD 1080p@30fps, Quay phim 4K 2160p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.0, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>4000 mAh</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>'),
(29, 19, 'vivo-y1s-2gb-32gb', 2, 'Vivo Y1s 2GB-32GB', 1000000, '637304087398642440_vivo-y1s-den-195.png', 16, '<h3>Đ&aacute;nh gi&aacute; chi tiết Vivo Y1s 2GB-32GB</h3>\r\n\r\n<p><strong>Kh&ocirc;ng cần phải bỏ ra số tiền lớn, bạn vẫn c&oacute; thể &ldquo;chơi mướt, lướt cả ng&agrave;y&rdquo; với&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/vivo-y1s-2gb-32gb\" target=\"_blank\">Vivo Y1s</a>, chiếc điện thoại c&oacute; m&agrave;n h&igrave;nh tr&agrave;n Halo tuyệt đẹp, dung lượng pin &ldquo;khủng&rdquo; v&agrave; bộ nhớ trong lớn 32GB.</strong></p>\r\n\r\n<p><strong><img alt=\"Vivo Y1s\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y1s-1.jpg\" /></strong></p>\r\n\r\n<h3><strong>H&igrave;nh ảnh sống động tr&ecirc;n m&agrave;n h&igrave;nh tr&agrave;n Halo</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh Vivo Y1s c&oacute; k&iacute;ch thước lớn 6,22 inch được chế t&aacute;c theo dạng viền cạnh si&ecirc;u mỏng. Với tỉ lệ m&agrave;n h&igrave;nh chiếm tới 88,6% mặt trước, bạn sẽ được tận hưởng g&oacute;c nh&igrave;n rộng, h&igrave;nh ảnh sống động khi xem phim hay chơi game. Hơn nữa, m&agrave;n h&igrave;nh n&agrave;y cũng c&oacute; chế độ bảo vệ mắt, lọc bỏ &aacute;nh s&aacute;ng xanh để ngăn t&igrave;nh trạng mỏi mắt khi sử dụng l&acirc;u hay sử dụng trong m&ocirc;i trường thiếu s&aacute;ng.</p>\r\n\r\n<p><img alt=\"màn hình Vivo Y1s\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y1s-2.jpg\" /></p>\r\n\r\n<h3><strong>Gọn nhẹ trong l&ograve;ng b&agrave;n tay</strong></h3>\r\n\r\n<p>Thiết kế Vivo Y1s 2GB-32GB&nbsp;rất th&acirc;n thiện với người d&ugrave;ng nhờ những đường cong 3D tinh tế v&agrave; độ mỏng nhẹ đ&aacute;ng kinh ngạc. M&aacute;y c&oacute; trọng lượng chỉ 161 gram v&agrave; độ d&agrave;y vỏn vẹn 8,28mm. Sự mỏng nhẹ gi&uacute;p bạn c&oacute; thể cầm nắm v&agrave; thao t&aacute;c với&nbsp;Y1s một c&aacute;ch dễ d&agrave;ng.</p>\r\n\r\n<p><img alt=\"thiết kế Vivo Y1s\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y1s-3.jpg\" /></p>\r\n\r\n<h3><strong>M&agrave;u sắc huyền ảo hấp dẫn</strong></h3>\r\n\r\n<p>Vivo Y1s c&oacute; hai phi&ecirc;n bản m&agrave;u lấy cảm hứng từ thi&ecirc;n nhi&ecirc;n đặc biệt hấp dẫn. M&agrave;u Xanh quang cực l&agrave; sự pha trộn kh&eacute;o l&eacute;o giữa ba m&agrave;u Trắng, Xanh v&agrave; T&iacute;m tạo n&ecirc;n sự huyền ảo, tựa như một d&ograve;ng s&ocirc;ng băng tan chảy h&ograve;a v&agrave;o đại dương. Trong khi đ&oacute; m&agrave;u Đen lục bảo tựa như một khung rừng s&acirc;u thẳm với c&ocirc;ng nghệ phun sơn nano cao cấp, tạo n&ecirc;n &aacute;nh xanh đen tuyệt đẹp.</p>\r\n\r\n<p><img alt=\"màu sắc Vivo Y1s\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y1s-4.jpg\" /></p>\r\n\r\n<h3><strong>Camera l&agrave;m đẹp th&ocirc;ng minh AI</strong></h3>\r\n\r\n<p>Sở hữu camera ch&iacute;nh 13MP v&agrave; camera trước 5MP, Vivo Y1s gi&uacute;p bạn dễ d&agrave;ng lưu lại những khoảnh khắc đ&aacute;ng nhớ. Cả hai camera đều được hỗ trợ l&agrave;m đẹp khu&ocirc;n mặt bằng tr&iacute; tuệ nh&acirc;n tạo AI, cho bạn xuất hiện rạng rỡ trong mọi khung h&igrave;nh với vẻ đẹp tự nhi&ecirc;n. Những khuyết điểm được x&oacute;a đi kh&eacute;o l&eacute;o v&agrave; c&aacute;c n&eacute;t đẹp của bạn được l&agrave;m đẹp nổi bật, mang đến sự tự tin cho người chụp.</p>\r\n\r\n<p><img alt=\"camera Vivo Y1s\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y1s-5.jpg\" /></p>\r\n\r\n<h3><strong>Sử dụng suốt cả ng&agrave;y d&agrave;i</strong></h3>\r\n\r\n<p>Vi&ecirc;n pin dung lượng cao 4030mAh kết hợp với hệ thống quản l&yacute; năng lượng th&ocirc;ng minh độc quyền từ Vivo gi&uacute;p người d&ugrave;ng c&oacute; thể thoải m&aacute;i sử dụng suốt cả ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng lo hết pin. Tha hồ xem video, chơi game, v&agrave;o mạng, lướt Facebook hay l&agrave;m bất cứ điều g&igrave; bạn muốn.</p>\r\n\r\n<p><img alt=\"pin Vivo Y1s\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y1s-6.jpg\" /></p>\r\n\r\n<h3><strong>Dung lượng cao 32GB</strong></h3>\r\n\r\n<p>Trong khi hầu hết những chiếc smartphone gi&aacute; rẻ kh&aacute;c chỉ c&oacute; bộ nhớ trong 16GB th&igrave; Vivo Y1s lại c&oacute; sẵn tới 32GB, thoải m&aacute;i để bạn lưu trữ nhiều hơn những h&igrave;nh ảnh, dữ liệu v&agrave; ứng dụng. Tất nhi&ecirc;n điện thoại cũng hỗ trợ khe cắm thẻ nhớ ngo&agrave;i dung lượng tối đa tới 256GB, cho bạn khả năng mở rộng bộ nhớ dễ d&agrave;ng khi cần.</p>\r\n\r\n<p><img alt=\"dung lượng Vivo Y1s\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y1s-7.jpg\" /></p>\r\n\r\n<h3><strong>Nhận diện khu&ocirc;n mặt th&ocirc;ng minh</strong></h3>\r\n\r\n<p>Bảo mật bằng sinh trắc học đang l&agrave; xu hướng hiện nay. Điện thoại Vivo Y1s trang bị t&iacute;nh năng mở kh&oacute;a bằng nhận diện khu&ocirc;n mặt tiện lợi. Đơn giản l&agrave; bạn chỉ cần nhấc m&aacute;y l&ecirc;n, điện thoại sẽ nhận diện v&agrave; mở kh&oacute;a ngay lập tức m&agrave; kh&ocirc;ng phải nhập mật khẩu phức tạp.</p>\r\n\r\n<p><img alt=\"khuôn mặt Vivo Y1s\" src=\"https://img.fpt.shop/f_png/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-y1s-8.png\" /></p>', '2020-12-01', '2020-12-01', NULL, 0, 6, '\"màu đen\",\"màu trắng\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Vivo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>159.4 x 76.8 x 8.9 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>190.5 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>3 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>32 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>IPS LCD capacitive touchscreen, 16M colors</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.35 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>720 x 1544 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 9.0 (Pie), Funtouch 9.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm SDM439 Snapdragon 439 (12 nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core (4x1.95 GHz Cortex-A53 &amp; 4x1.45 GHz Cortex A53)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 505</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>13 MP, f/2.2, PDAF<br />\r\n			2 MP, f/2.4, (depth)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>8 MP, f/1.8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>1080p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat15 800/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 b/g/n, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>4.0, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS, GALILEO, BDS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>microUSB 2.0, USB On-The-Go</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Po 5000 mAh</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>'),
(30, 19, 'vivo-u10-4gb-64gb', 2, 'Vivo U10 4GB-64GB', 5000000, '637147814667049735_vivo-u10-den-17.png', 17, '<h3>Đ&aacute;nh gi&aacute; chi tiết Vivo U10 4GB-64GB</h3>\r\n\r\n<p><strong>Vivo U10 sở hữu hiệu năng v&agrave; thời lượng pin đ&aacute;ng kinh ngạc ở ph&acirc;n kh&uacute;c gi&aacute; rẻ, mang đến cho bạn một chiếc điện thoại mạnh mẽ, bền bỉ, sẵn s&agrave;ng đương đầu với mọi thử th&aacute;ch.</strong></p>\r\n\r\n<p><strong><img alt=\"Vivo U10\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-u10-1.jpg\" /></strong></p>\r\n\r\n<h3><strong>Cấu h&igrave;nh cực đỉnh, mạnh mẽ qua thời gian</strong></h3>\r\n\r\n<p>Vivo U10 trang bị cấu h&igrave;nh mạnh mẽ bậc nhất trong tầm gi&aacute; với bộ vi xử l&yacute; Qualcomm Snapdragon 655 AIE. Đ&acirc;y l&agrave; con chip sản xuất tr&ecirc;n tiến tr&igrave;nh 11nm với 8 nh&acirc;n Kryo cực mạnh c&ugrave;ng GPU đồ họa Adreno 610 cao cấp. B&ecirc;n cạnh đ&oacute; l&agrave; 4GB RAM c&ugrave;ng 64GB bộ nhớ trong. Cấu h&igrave;nh n&agrave;y gi&uacute;p Vivo U10 chạy cực nhanh ở mọi t&aacute;c vụ, lu&ocirc;n lu&ocirc;n mượt m&agrave; d&ugrave; bạn c&oacute; sử dụng li&ecirc;n tục trong thời gian d&agrave;i. Kể cả khi mở nhiều ứng dụng c&ugrave;ng l&uacute;c, Vivo U10 vẫn đ&aacute;p ứng ho&agrave;n hảo.</p>\r\n\r\n<p><img alt=\"cấu hình Vivo U10\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-u10-4.jpg\" /></p>\r\n\r\n<h3><strong>Chế độ chơi game chuy&ecirc;n nghiệp</strong></h3>\r\n\r\n<p>Chơi game tr&ecirc;n smartphone đang l&agrave; hoạt động ng&agrave;y c&agrave;ng phổ biến hiện nay. Vivo U10 hiểu điều đ&oacute; v&agrave; mang đến sự tối ưu tốt nhất cho những game thủ. B&ecirc;n cạnh cấu h&igrave;nh xuất sắc, Vivo U10 c&ograve;n c&oacute; chế độ chuy&ecirc;n chơi game mang t&ecirc;n Ultra Game Mode. Ở chế độ n&agrave;y, điện thoại sẽ tr&aacute;nh l&agrave;m phiền bằng c&aacute;ch ẩn đi c&aacute;c th&ocirc;ng b&aacute;o, tối ưu h&oacute;a hiệu năng, đồng thời đưa v&agrave;o rất nhiều chế độ th&uacute; vị. Bạn c&oacute; thể k&iacute;ch hoạt giảm &aacute;nh s&aacute;ng xanh để bảo vệ mắt; rung 4D; thay đổi giọng n&oacute;i khi chat voice v&agrave; rất nhiều t&iacute;nh năng kh&aacute;c, đặc biệt l&agrave; ở những tựa game được tối ưu như PUBG Mobile.</p>\r\n\r\n<p><img alt=\"chơi game Vivo U10\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-u10-6.jpg\" /></p>\r\n\r\n<h3><strong>Dung lượng pin si&ecirc;u khủng 5000 mAh, trải nghiệm v&ocirc; hạn</strong></h3>\r\n\r\n<p>Vivo U10 mang tr&ecirc;n m&igrave;nh vi&ecirc;n pin dung lượng cực lớn 5000 mAh, cho bạn trải nghiệm bất tận m&agrave; kh&ocirc;ng phải lo về thời lượng pin. Vivo U10 c&oacute; thể lướt Facebook li&ecirc;n tục trong 15 giờ, xem Youtube trong 12 giờ, hay chơi game PUBG Mobile li&ecirc;n tục trong 7 giờ đồng hồ. Ở điều kiện sử dụng th&ocirc;ng thường, trung b&igrave;nh 2 ng&agrave;y bạn mới cần phải sạc điện thoại một lần. Thời lượng pin tốt gi&uacute;p c&ocirc;ng việc v&agrave; hoạt động giải tr&iacute; của bạn diễn ra liền mạch, hiệu quả hơn.</p>\r\n\r\n<p><img alt=\"pin Vivo U10\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-u10-3.jpg\" /></p>\r\n\r\n<h3><strong>Sạc k&eacute;p si&ecirc;u nhanh</strong></h3>\r\n\r\n<p>Tin được kh&ocirc;ng, bạn chỉ mất 10 ph&uacute;t sạc để c&oacute; th&ecirc;m 4,5 giờ nghe gọi tr&ecirc;n Vivo U10. C&ocirc;ng nghệ sạc k&eacute;p si&ecirc;u nhanh 18W nhanh ch&oacute;ng cung cấp năng lượng cho điện thoại Vivo U10 của bạn chỉ trong một thời gian ngắn, lu&ocirc;n lu&ocirc;n sẵn s&agrave;ng cho cuộc sống năng động h&agrave;ng ng&agrave;y.</p>\r\n\r\n<p><img alt=\"sạc kép Vivo U10\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-u10-2.jpg\" /></p>\r\n\r\n<h3><strong>Bộ ba camera, bắt trọn mọi khoảnh khắc</strong></h3>\r\n\r\n<p>C&ugrave;ng thử t&agrave;i nhiếp ảnh tr&ecirc;n Vivo U10. Với 3 camera sau bao gồm camera ch&iacute;nh 13MP, camera g&oacute;c si&ecirc;u rộng 8MP v&agrave; camera x&oacute;a ph&ocirc;ng 2MP, Vivo U10 c&oacute; thể chụp ảnh xuất sắc ở mọi ho&agrave;n cảnh. Những bức ảnh g&oacute;c si&ecirc;u rộng c&oacute; khung h&igrave;nh gấp đối th&ocirc;ng thường, lưu lại cảnh vật rộng lớn v&agrave; bao qu&aacute;t hơn. Trong đ&oacute; ảnh chụp ch&acirc;n dung x&oacute;a ph&ocirc;ng l&agrave; t&iacute;nh năng kh&ocirc;ng thể thiếu để &ldquo;sống ảo&rdquo; với chủ thể được l&agrave;m nổi bật v&agrave; hậu cảnh nền mờ đẹp mắt.</p>\r\n\r\n<p><img alt=\"3 camera Vivo U10\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-u10-5.jpg\" /></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh lớn 6,35 inch</strong></h3>\r\n\r\n<p>Vivo U10 c&oacute; thiết kế trẻ trung, hiện đại với điểm nhấn nổi bật l&agrave; m&agrave;n h&igrave;nh lớn viền mỏng 6,35 inch. D&ugrave; sở hữu m&agrave;n h&igrave;nh lớn v&agrave; vi&ecirc;n pin dung lượng cao nhưng Vivo U10 vẫn kh&aacute; gọn g&agrave;ng, dễ d&agrave;ng cầm nắm thao t&aacute;c. Hai phi&ecirc;n bản m&agrave;u đen v&agrave; xanh đều rất thanh lịch, ph&ugrave; hợp cho mọi đối tượng, đặc biệt l&agrave; giới trẻ.</p>\r\n\r\n<p><img alt=\"màn hình Vivo U10\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vivo-u10-7.jpg\" /></p>', '2020-12-01', '2020-12-01', 2, 0, 6, '\"màu đen\",\"màu xanh\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Vivo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>159.4 x 76.8 x 8.9 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>190.5 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>4 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>64 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>IPS LCD capacitive touchscreen, 16M colors</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.35 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>720 x 1544 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 9.0 (Pie), Funtouch 9.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm SDM665 Snapdragon 665 (11 nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core (4x2.0 GHz Kryo 260 Gold &amp; 4x1.8 GHz Kryo 260 Silver)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 610</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>13 MP, f/2.2, (wide), PDAF<br />\r\n			8 MP, f/2.2, 13mm (ultrawide)<br />\r\n			2 MP, f/2.4, (depth)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>8 MP, f/1.8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>1080p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat16 1024/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.0, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>microUSB 2.0, USB On-The-Go</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến tiệm cận, gia tốc kế, la b&agrave;n, con quay hồi chuyển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Po 5000 mAh battery, Fast charging 18W</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>'),
(31, 22, 'xiaomi-poco-x3-nfc-6gb-128gb', 2, 'Xiaomi Poco X3 NFC 6GB-128GB', 5100000, '637350931610367785_xiaomi-poco-x3-xam-171.png', 18, '<h3>Đ&aacute;nh gi&aacute; chi tiết Xiaomi Poco X3 NFC 6GB-128GB</h3>\r\n\r\n<p><strong>Trải nghiệm sức mạnh v&agrave; tốc độ kh&oacute; tin tr&ecirc;n&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/poco-x3-nfc-6gb-128gb\">POCO X3 NFC</a>, chiếc điện thoại c&oacute; cấu h&igrave;nh vượt trội so với mọi đối thủ c&ugrave;ng ph&acirc;n kh&uacute;c. Kh&ocirc;ng chỉ đ&aacute;p ứng tốt c&aacute;c nhu cầu cơ bản, POCO X3 NFC c&ograve;n l&agrave; một cỗ m&aacute;y chơi game chuy&ecirc;n nghiệp ngay tr&ecirc;n tay bạn.</strong></p>\r\n\r\n<p><strong><img alt=\"POCO X3 NFC\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/poco-x3-nfc-5.jpg\" /></strong></p>\r\n\r\n<h3><strong>Hiệu năng tr&ecirc;n&nbsp;POCO X3 NFC&nbsp;d&agrave;nh cho game thủ</strong></h3>\r\n\r\n<p>Sức mạnh đ&aacute;ng kinh ngạc của POCO X3 NFC đến từ Snapdragon 732G, con chip mới nhất từ nh&agrave; Qualcomm. Chữ G trong Snapdragon 732G mang &yacute; nghĩa n&acirc;ng cao trải nghiệm gaming. Đ&acirc;y l&agrave; con chip cực mạnh với 8 nh&acirc;n, tốc độ tối đa 2.3GHz v&agrave; sản xuất tr&ecirc;n tiến tr&igrave;nh 8nm, đồng thời hỗ trợ bởi tr&iacute; tuệ nh&acirc;n tạo AI. Ngo&agrave;i ra bạn c&ograve;n c&oacute; 6GB RAM LPDDR4X v&agrave; bộ nhớ trong 128GB UFS2.1. Kết quả l&agrave; POCO X3 NFC c&oacute; hiệu năng cực mạnh, lu&ocirc;n chạy mượt m&agrave; d&ugrave; bạn đang mở nhiều ứng dụng c&ugrave;ng l&uacute;c. Hơn thế nữa, điện thoại c&oacute; thể &ldquo;chiến&rdquo; tốt mọi tựa game mobile đ&igrave;nh đ&aacute;m hiện nay.</p>\r\n\r\n<p><img alt=\"cấu hình POCO X3 NFC\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/poco-x3-nfc-2.jpg\" /></p>\r\n\r\n<h3><strong>Tản nhiệt 3D, lu&ocirc;n ở tốc độ cao nhất</strong></h3>\r\n\r\n<p>Để một thiết bị lu&ocirc;n duy tr&igrave; được sức mạnh hiệu năng tối ưu, tản nhiệt l&agrave; yếu tố rất quan trọng. POCO X3 NFC sở hữu t&iacute;nh năng tản nhiệt h&agrave;ng đầu nhờ diện t&iacute;ch tản nhiệt lớn hơn 70%, sử dụng ống dẫn nhiệt bằng đồng, cho ph&eacute;p CPU hạ nhiệt nhanh hơn. Ngo&agrave;i ra việc sử dụng th&ecirc;m một lớp Graphit ngăn c&aacute;ch CPU với m&agrave;n h&igrave;nh, bạn sẽ kh&ocirc;ng c&ograve;n cảm nhận được hiện tượng m&agrave;n h&igrave;nh bị n&oacute;ng l&ecirc;n. Giải ph&aacute;p tản nhiệt mới gi&uacute;p POCO X3 NFC c&oacute; hiệu quả tản nhiệt tốt hơn 20% v&agrave; thấp hơn 6 độ tr&ecirc;n CPU.</p>\r\n\r\n<p><img alt=\"tản nhiệt POCO X3 NFC\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/poco-x3-nfc-3.jpg\" /></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh tần số qu&eacute;t 120Hz, mượt m&agrave; chưa từng thấy</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh POCO X3 NFC tuyệt đẹp với k&iacute;ch thước lớn 6,67 inch, độ ph&acirc;n giải Full HD+ sắc n&eacute;t v&agrave; viền mỏng tinh tế. B&ecirc;n cạnh h&igrave;nh ảnh xuất sắc, bạn c&ograve;n c&oacute; thể cảm nhận được độ mượt m&agrave; kh&oacute; qu&ecirc;n tr&ecirc;n m&agrave;n h&igrave;nh n&agrave;y. B&iacute; mật nằm ở việc m&agrave;n h&igrave;nh POCO X3 NFC c&oacute; tốc độ l&agrave;m tươi 120Hz c&ugrave;ng tốc độ lấy mẫu cảm ứng 240Hz, gấp đ&ocirc;i so với những&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;th&ocirc;ng thường. Tần số qu&eacute;t cao kh&ocirc;ng chỉ gi&uacute;p mượt m&agrave; hơn ở mỗi thao t&aacute;c vuốt chạm m&agrave; cũng mang đến cho bạn rất nhiều lợi thế khi chơi game.</p>\r\n\r\n<p><img alt=\"màn hình POCO X3 NFC\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/poco-x3-nfc-4.jpg\" /></p>\r\n\r\n<h3><strong>Hiệu ứng &acirc;m thanh tuyệt đỉnh, t&iacute;nh năng rung độc đ&aacute;o</strong></h3>\r\n\r\n<p>Trải nghiệm xem phim, chơi game của bạn sẽ hấp dẫn hơn tr&ecirc;n POCO X3 NFC nhờ &acirc;m thanh Hi-Res Audio chất lượng cao v&agrave; giả lập &acirc;m thanh v&ograve;m như trong rạp chiếu phim. POCO X3 NFC c&ograve;n chiều l&ograve;ng c&aacute;c game thủ bằng động cơ rung tuyến t&iacute;nh trục Z cho cơ chế rung như khi bạn chơi game console. V&iacute; dụ khi bạn tăng tốc, chạy, bắn s&uacute;ng, m&aacute;y sẽ rung kh&aacute;c nhau, tạo n&ecirc;n trải nghiệm chơi game 4D đầy th&uacute; vị.</p>\r\n\r\n<p><img alt=\"âm thanh POCO X3 NFC\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/poco-x3-nfc-6.jpg\" /></p>\r\n\r\n<h3><strong>Nguồn năng lượng v&ocirc; tận</strong></h3>\r\n\r\n<p>Bạn sẽ kh&ocirc;ng lo bị gi&aacute;n đoạn khi sử dụng POCO X3 NFC nhờ vi&ecirc;n pin dung lượng l&ecirc;n tới 5160 mAh. Dung lượng pin n&agrave;y mang tới 10 giờ chơi game, 17 giờ xem video hay 153 giờ ph&aacute;t nhạc. Chưa hết, c&ocirc;ng nghệ sạc nhanh si&ecirc;u tốc 33Wcho khả năng sạc được 62% pin chỉ trong 30 ph&uacute;t, thỏa sức để bạn d&ugrave;ng th&ecirc;m 1 ng&agrave;y nữa.</p>\r\n\r\n<p><img alt=\"pin POCO X3 NFC\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/poco-x3-nfc-9.jpg\" /></p>\r\n\r\n<h3><strong>S&aacute;ng tạo kh&ocirc;ng ngừng tr&ecirc;n camera chuy&ecirc;n nghiệp</strong></h3>\r\n\r\n<p>Cụm camera sau của POCO X3 NFC kh&ocirc;ng chỉ chế t&aacute;c kh&aacute;c biệt m&agrave; c&ograve;n c&oacute; chất lượng chuy&ecirc;n nghiệp cho sự s&aacute;ng tạo của bạn trong nhiếp ảnh. 4 camera bao gồm camera ch&iacute;nh 64MP Sony IMX682; camera g&oacute;c si&ecirc;u rộng 13MP; camera macro 2MP v&agrave; camera đo độ s&acirc;u 2MP. Bạn sẽ c&oacute; đầy đủ t&iacute;nh năng chụp ảnh tr&ecirc;n POCO X3 NFC.</p>\r\n\r\n<p><img alt=\"camera POCO X3 NFC\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/poco-x3-nfc-10.jpg\" /></p>\r\n\r\n<h3><strong>Sắc n&eacute;t v&agrave; chi tiết</strong></h3>\r\n\r\n<p>Sử dụng cảm biến Sony IMX682 độ ph&acirc;n giải cao 64MP, POCO X3 NFC dễ d&agrave;ng chụp được những bức ảnh r&otilde; n&eacute;t v&agrave; chi tiết, ngay cả khi bạn zoom ảnh hay cắt một phần từ ảnh gốc. Sự hỗ trợ của tr&iacute; tuệ nh&acirc;n tạo AI cũng gi&uacute;p điện thoại chụp đ&ecirc;m tuyệt vời, để bạn ghi lại những vẻ đẹp lung linh trong m&agrave;n đ&ecirc;m.</p>\r\n\r\n<h3><strong>Thiết kế phong c&aacute;ch cho ri&ecirc;ng bạn</strong></h3>\r\n\r\n<p>Kh&ocirc;ng giống bất cứ chiếc điện thoại n&agrave;o kh&aacute;c tr&ecirc;n thị trường, POCO X3 NFC mang tr&ecirc;n m&igrave;nh vẻ đẹp mạnh mẽ, ph&aacute; c&aacute;ch v&agrave; c&oacute; ch&uacute;t g&igrave; đ&oacute; gai g&oacute;c, c&aacute; t&iacute;nh. Từ cụm camera cho đến dải m&agrave;u đậm v&agrave; logo POCO tr&ecirc;n mặt lưng, tất cả đều rất kh&aacute;c biệt. Hai phi&ecirc;n bản m&agrave;u l&agrave; X&aacute;m v&agrave; Xanh cũng hết sức độc đ&aacute;o, tạo phong c&aacute;ch ri&ecirc;ng cho bạn.</p>\r\n\r\n<p><img alt=\"thiết kế POCO X3 NFC\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/poco-x3-nfc-14.jpg\" /></p>', '2020-12-01', '2020-12-01', 2, 0, 6, '\"màu đen\",\"màu xanh\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Xiaomi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>165.3 x 76.8 x 9.4 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>215 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>6 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>128 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>IPS LCD, 16 triệu m&agrave;u, Corning Gorilla Glass 5, HDR10, tần số qu&eacute;t 120Hz, độ s&aacute;ng tối đa 450 nits</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.67 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>1080 x 2400 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 10, MIUI 12</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm SM7150-AC Snapdragon 732G (8 nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core (2x2.3 GHz Kryo 470 Gold &amp; 6x1.8 GHz Kryo 470 Silver)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 618</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>microSDXC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>Camera ch&iacute;nh: 64 MP, f/1.9, (wide), 1/1.73&quot;, 0.8&micro;m, PDAF<br />\r\n			Camera g&oacute;c si&ecirc;u rộng: 13 MP, f/2.2, 119˚ (ultrawide), 1.0&micro;m<br />\r\n			Camera macro: 2 MP, f/2.4<br />\r\n			Cảm biến x&oacute;a ph&ocirc;ng: 2 MP, f/2.4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>20 MP, f/2.2, (wide), 1/3.4&quot;, 0.8&micro;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>Trước: 1080p@30fps<br />\r\n			Sau: 4K@30fps, 1080p@30/120fps, 720p@960fps; gyro-EIS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (4CA) Cat16 1024/150 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>5.1, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>Yes, with A-GPS, GLONASS, BDS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hồng ngoại</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>2.0, Type-C 1.0 reversible connector, USB On-The-Go</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến tiệm cận, gia tốc kế, la b&agrave;n, con quay hồi chuyển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Po 5160 mAh<br />\r\n			Sạc nhanh 33W</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>');
INSERT INTO `sanpham` (`sp_id`, `th_id`, `sp_nhan`, `kho_id`, `sp_ten`, `sp_dongianhap`, `sp_hinh`, `sp_soluong`, `sp_thongtin`, `sp_ngaytaomoi`, `sp_ngaycapnhat`, `khuyenmai_id`, `sp_hienthi`, `ncc_id`, `sp_mausac`, `xx_id`, `sp_tskt`) VALUES
(32, 18, 'iphone-7-2gb-32gb', 2, 'iPhone 7 2GB-32GB', 5000000, 'images18.jpg', 16, '<h3>Đ&aacute;nh gi&aacute; chi tiết iPhone 7 32GB</h3>\r\n\r\n<p><strong><a href=\"https://fptshop.com.vn/dien-thoai/iphone-7\" target=\"_blank\">iPhone 7</a>&nbsp;dường như đ&atilde; gay sốt ngay từ khi ra mắt bởi những n&acirc;ng cấp đ&aacute;ng gi&aacute; về tốc độ xử l&yacute;, khả năng chụp ảnh, t&iacute;nh năng chống nước, bụi hiện đại... iPhone 7 đ&atilde; trở th&agrave;nh ước mơ của rất nhiều người đam m&ecirc; c&ocirc;ng nghệ, đặc biệt l&agrave; với phi&ecirc;n bản dung lượng 32 GB c&oacute; gi&aacute; th&agrave;nh hợp l&yacute; hơn cả.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Thiết kế thay đổi để ho&agrave;n thiện hơn&nbsp;</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"iphone-7\" longdesc=\"https://fptshop.com.vn/dien-thoai/iphone-7\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/Originals/2017/7/12/636354629203203857_HASP-IPHONE-7-32GB-00269739%20(18).jpg\" title=\"iphone-7\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dải ăng-ten bị chỉ tr&iacute;ch kh&aacute; nhiều tr&ecirc;n d&ograve;ng&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/apple-iphone\">iPhone</a>&nbsp;trước đ&oacute; đ&atilde; được loại bỏ, thay v&agrave;o đ&oacute; n&oacute; đ&atilde; được đưa l&ecirc;n s&aacute;t hai cạnh tr&ecirc;n dưới, đồng thời bỏ đi jack cắm tai nghe 3.5 mm. Điểm nhấn ấn tượng nhất về ngoại h&igrave;nh của iPhone 7 l&agrave; việc Apple bỏ đi m&agrave;u x&aacute;m kh&ocirc;ng gian từng rất được ưa chuộng tr&ecirc;n c&aacute;c model cũ để bổ sung th&ecirc;m t&ugrave;y chọn m&agrave;u đen mới l&agrave; đen mờ, ch&uacute;ng ta c&ograve;n c&oacute; m&agrave;u đen b&oacute;ng (Jet Black) nhưng với phi&ecirc;n bản từ 128 GB.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>M&agrave;n h&igrave;nh s&aacute;ng rực rỡ</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"iphone-7\" longdesc=\"https://fptshop.com.vn/dien-thoai/iphone-7\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/Originals/2017/7/12/636354629202735854_HASP-IPHONE-7-32GB-00269739%20(17).jpg\" title=\"iphone-7\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>iPhone 7 mặc d&ugrave; vẫn giữ nguy&ecirc;n k&iacute;ch thước cũng như độ ph&acirc;n giả m&agrave;n h&igrave;nh &nbsp;tương tự tr&ecirc;n iPhone 6s. &nbsp;Ch&uacute;ng ta sẽ&nbsp;c&oacute; m&agrave;n h&igrave;nh rộng 4.7 inch độ ph&acirc;n giải 750x1334 pixels.&nbsp;Tuy nhi&ecirc;n, tấm nền m&agrave;n h&igrave;nh mới đ&atilde; được bổ sung th&ecirc;m 25% độ s&aacute;ng, đạt mức cao nhất 625 nits c&ugrave;ng khả năng t&aacute;i tạo m&agrave;u sắc, gam m&agrave;u rộng hơn v&agrave; hỗ trợ th&ecirc;m c&ocirc;ng nghệ 3D Touch.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>N&uacute;t Home cảm ứng lực</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"iphone-7\" longdesc=\"https://fptshop.com.vn/dien-thoai/iphone-7\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/Originals/2017/7/12/636354629202423852_HASP-IPHONE-7-32GB-00269739%20(16).jpg\" title=\"iphone-7\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&oacute; thể lần đầu bấm ph&iacute;m Home mới n&agrave;y bạn sẽ chưa quen v&agrave; cảm thấy hơi kh&oacute; chịu, bởi v&igrave; giờ đ&acirc;y n&uacute;t Home ở vị tr&iacute; cũ đ&atilde; trở th&agrave;nh cảm ứng, khi bạn nhấn xuống n&oacute; vẫn cảm nhận được lực nhấn v&agrave; sẽ rung nhẹ để bạn biết rằng bạn đ&atilde; tương t&aacute;c. Apple đ&atilde; sử dụng Taptic Engine tr&ecirc;n Force Touch của Macbook cho chiếc iPhone mới n&agrave;y. Mặc d&ugrave; vậy ph&iacute;m Home vẫn c&oacute; cảm biến v&acirc;n tay Touch ID v&agrave; t&iacute;ch hợp nhiều t&iacute;nh năng bảo mật.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Camera chất lượng đột ph&aacute;</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"iphone-7\" longdesc=\"https://fptshop.com.vn/dien-thoai/iphone-7\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/Originals/2017/7/12/636354629202111850_HASP-IPHONE-7-32GB-00269739%20(15).jpg\" title=\"iphone-7\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>N&acirc;ng cấp về m&aacute;y ảnh ch&iacute;nh l&agrave; điểm đ&aacute;ng gi&aacute; tr&ecirc;n iPhone 7. Camera sau độ ph&acirc;n giải 12 MP với 6 ống k&iacute;nh, khẩu độ l&ecirc;n đến f/1.8 c&ugrave;ng t&iacute;nh năng ổn định h&igrave;nh ảnh quang học tự động.&nbsp;N&oacute; cũng bao gồm một đ&egrave;n flash 2 t&ocirc;ng m&agrave;u v&agrave; đ&egrave;n flash quad-LED.&nbsp;Camera trước độ ph&acirc;n giải 7 MP, chụp selfie tốt hơn v&agrave; tự động chống rung. B&ecirc;n cạnh đ&oacute;, iOS 10 cũng cho ph&eacute;p người d&ugrave;ng iPhone 7 chỉnh sửa, chọn lựa ảnh từ Live Photos, lưu ảnh ở định dạng RAW.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>T&iacute;nh năng chống nước ho&agrave;n hảo</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"iphone-7\" longdesc=\"https://fptshop.com.vn/dien-thoai/iphone-7\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/Originals/2017/7/12/636354629200863842_HASP-IPHONE-7-32GB-00269739%20(14).jpg\" title=\"iphone-7\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đ&acirc;y ch&iacute;nh l&agrave; t&iacute;nh năng được mong đợi nhiều nhất tr&ecirc;n iPhone thế hệ mới, v&agrave; đến iPhone 7 th&igrave; Apple đ&atilde; l&agrave;m h&agrave;i l&ograve;ng mọi người khi mang t&iacute;nh năng chống nước bụi l&ecirc;n sản phẩm của họ. Với ti&ecirc;u chuẩn chống nước IP67 sẽ gi&uacute;p iPhone mới c&oacute; thể sống ở độ s&acirc;u 1 m&eacute;t nước trong 30 ph&uacute;t, vậy l&agrave; từ nay bạn sẽ qu&ecirc;n đi nỗi lo về thấm nước tr&ecirc;n iPhone 7 khi đi trong trời mưa hay lỡ tay rớt nước.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hiệu năng vượt trội với chip A10 Fusion mới</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"iphone-7\" longdesc=\"https://fptshop.com.vn/dien-thoai/iphone-7\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/Originals/2017/7/12/636354629196807816_HASP-IPHONE-7-32GB-00269739%20(12).jpg\" title=\"iphone-7\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>iPhone 7 sử dụng chip A10 Fusion 4 lõi, 64-bit với tốc độ cực nhanh. Apple c&ocirc;ng bố con chip n&agrave;y c&oacute; hiệu năng xử l&yacute; cao hơn 40% so với chip A9 v&agrave; gấp 2 lần so với chip A8. Đặc biệt l&agrave; n&oacute; c&ograve;n cao gấp 120 lần so với iPhone đời đầu. Đi c&ugrave;ng đ&oacute; l&agrave; sự n&acirc;ng cấp về bộ nhớ trong, phi&ecirc;n bản 16 GB trước đ&acirc;y đ&atilde; bị loại bỏ, thay v&agrave;o đ&oacute; ch&uacute;ng ta sẽ c&oacute; bộ nhớ trong ban đầu từ 32 GB để thoải m&aacute;i lưu trữ. Phi&ecirc;n bản 32 GB được xem l&agrave; hợp l&yacute; v&agrave; vừa đủ cho đa số người d&ugrave;ng hiện nay.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>&Acirc;m thanh sống động c&ugrave;ng loa stereo</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loa ngo&agrave;i tr&ecirc;n iPhone 7 bất ngờ được n&acirc;ng cấp khi từ dạng đơn l&ecirc;n loa k&eacute;p Stereo, với một loa nằm ở cạnh đ&aacute;y v&agrave; một nằm ở cạnh tr&ecirc;n, cho &acirc;m lượng sống động gấp hai lần tr&ecirc;n iPhone 6s.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Tăng thời lượng sử dụng pin</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"iphone-7\" longdesc=\"https://fptshop.com.vn/dien-thoai/iphone-7\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/Originals/2017/7/12/636354629196963817_HASP-IPHONE-7-32GB-00269739%20(11).jpg\" title=\"iphone-7\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Vấn đề pin chưa bao giờ ngưng b&agrave;n t&aacute;n tr&ecirc;n mỗi sản phẩm. Theo c&ocirc;ng bố từ Apple, iPhone 7 c&oacute; khả năng sử dụng li&ecirc;n tục trong thời gian hơn 1 ng&agrave;y, với 40 giờ lướt web kh&ocirc;ng d&acirc;y v&agrave; 12 giờ sử dụng mạng LTE. Tăng hơn so với iPhone 6s v&agrave; đảm bảo sử dụng cho cả ng&agrave;y d&agrave;i.</p>', '2020-12-01', '2020-12-01', 2, 0, 6, '\"màu đen\",\"màu trắng\"', 7, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Apple</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>138 g (4.87 oz)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>32 GB, 2 GB RAM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>32 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>Nano-SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>Cảm ứng điện dung LED-backlit IPS LCD, 16 triệu m&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>4.7 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>750 x 1334 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>iOS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>11</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Apple A10 Fusion APL1W24</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>2x 2.34 GHz Hurricane + 2x 2.34 GHz Zephyr</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>PowerVR Series7XT Plus (6 l&otilde;i đồ họa)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>Kh&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>12 MP (f/1.8, 28mm, 1/3&quot;), tự động lấy n&eacute;t nhận diện theo giai đoạn, OIS, 4 LED flash (2 tone)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>7 MP (f/2.2, 32mm), 1080p@30fps, 720p@240fps, nhận diện khu&ocirc;n mặt, HDR, panorama</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>2160p@30fps, 1080p@30/60/120fps, 720p@240fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE-A (3CA) Cat9 450/50 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>4.2, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS, GALILEO, QZSS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>2.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>V&acirc;n tay, gia tốc, la b&agrave;n, khoảng c&aacute;ch, con quay quy hồi, phong vũ biểu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-ion 1960 mAh</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>\r\n\r\n<p>&quot;</p>'),
(33, 15, 'vsmart-star-3-2gb-16gb', 2, 'Vsmart Star 3 2GB - 16GB', 1000000, '637176388616279541_vsmart-star-3-xanh-175.png', 7, '<h3>Đ&aacute;nh gi&aacute; chi tiết Vsmart Star 3 2GB - 16GB</h3>\r\n\r\n<p><strong>Tự tin thể hiện phong c&aacute;ch với&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/vsmart-star-3-2gb-16gb\" target=\"_blank\">Vsmart Star 3</a>, chiếc điện thoại thời trang d&agrave;nh cho giới trẻ, mang đến t&iacute;nh năng chụp ảnh g&oacute;c si&ecirc;u rộng thời thượng v&agrave; nguồn năng lượng bất tận từ vi&ecirc;n pin dung lượng cao.</strong></p>\r\n\r\n<p><strong><img alt=\"Vsmart Star 3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-star-3-2.jpg\" /></strong></p>\r\n\r\n<h3><strong>Camera g&oacute;c si&ecirc;u rộng, cho những điều kỳ vĩ</strong></h3>\r\n\r\n<p>Vsmart Star 3 được trang bị camera k&eacute;p ở mặt sau. B&ecirc;n cạnh camera ch&iacute;nh 8MP,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;c&ograve;n c&oacute; camera g&oacute;c si&ecirc;u rộng 5MP với khả năng chụp g&oacute;c rộng l&ecirc;n tới 120 độ. Những khung h&igrave;nh từ camera g&oacute;c si&ecirc;u rộng sẽ thu được h&igrave;nh ảnh gấp đ&ocirc;i so với camera th&ocirc;ng thường. Nhờ đ&oacute; bạn c&oacute; thể chụp ảnh những khung cảnh rộng lớn, mang cả những điều kỳ vĩ v&agrave;o trong chiếc Vsmart Star 3 s&agrave;nh điệu.</p>\r\n\r\n<p><img alt=\"camera góc rộng Vsmart Star 3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-star-3-4.jpg\" /></p>\r\n\r\n<h3><strong>Chụp đ&ecirc;m sắc n&eacute;t</strong></h3>\r\n\r\n<p>Camera ch&iacute;nh của Vsmart Star 3 c&oacute; khẩu độ lớn f/1.9, kết hợp c&ugrave;ng tr&iacute; tuệ nh&acirc;n tạo AI gi&uacute;p thu s&aacute;ng tốt hơn, tăng cường hiệu quả khi chụp đ&ecirc;m. Giờ đ&acirc;y những bức ảnh trong điều kiện thiếu s&aacute;ng của bạn sẽ đẹp lung linh, trở n&ecirc;n ấn tượng hơn bao giờ hết.</p>\r\n\r\n<p><img alt=\"chụp đêm Vsmart Star 3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-star-3-5.jpg\" /></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh &ldquo;giọt nước&rdquo; viền mỏng hấp dẫn</strong></h3>\r\n\r\n<p>C&ugrave;ng trải nghiệm những nội dung sống động tr&ecirc;n m&agrave;n h&igrave;nh lớn 6,09 inch chất lượng IPS LCD của Vsmart Star 3. H&igrave;nh ảnh hiển thị sắc n&eacute;t, độ s&aacute;ng cao, g&oacute;c nh&igrave;n rộng v&agrave; đặc biệt l&agrave; viền m&agrave;n h&igrave;nh si&ecirc;u mỏng dạng &ldquo;giọt nước&rdquo;, gi&uacute;p mọi thứ sống động đ&aacute;ng kinh ngạc. D&ugrave; l&agrave; lướt web, FaceBook hay chơi game, xem phim, m&agrave;n h&igrave;nh Vsmart Star 3 cũng đem lại cho bạn sự th&uacute; vị nhờ khả năng hiển thị đẹp mắt.</p>\r\n\r\n<p><img alt=\"màn hình Vsmart Star 3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-star-3-6.jpg\" /></p>\r\n\r\n<h3><strong>Bảo mật ti&ecirc;n tiến bằng cảm biến v&acirc;n tay</strong></h3>\r\n\r\n<p>Cảm biến v&acirc;n tay một chạm tr&ecirc;n mặt sau điện thoại Vsmart Star 3 cho ph&eacute;p bạn mở kh&oacute;a một c&aacute;ch nhanh ch&oacute;ng v&agrave; tiện lợi. Đơn giản chỉ cần cầm điện thoại l&ecirc;n v&agrave; d&ugrave;ng ng&oacute;n trỏ chạm v&agrave;o khu vực cảm biến, điện thoại sẽ mở kh&oacute;a ngay lập tức. Phương thức bảo mật n&agrave;y kh&ocirc;ng chỉ mở kh&oacute;a m&agrave; n&oacute; c&ograve;n thay cho mật khẩu đăng nhập của bạn ở hầu hết c&aacute;c ứng dụng.</p>\r\n\r\n<p><img alt=\"vân tay Vsmart Star 3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-star-3-7.jpg\" /></p>\r\n\r\n<h3><strong>Lu&ocirc;n dồi d&agrave;o năng lượng</strong></h3>\r\n\r\n<p>Mang tr&ecirc;n m&igrave;nh vi&ecirc;n pin dung lượng cao 3500 mAh, Vsmart Star 3 đủ năng lượng để bạn sử dụng trong suốt cả ng&agrave;y d&agrave;i. Điện thoại c&ograve;n hỗ trợ sạc nhanh 10W qua cổng USB Type-C ti&ecirc;n tiến, lu&ocirc;n lu&ocirc;n sẵn s&agrave;ng c&ugrave;ng bạn chinh phục những thử th&aacute;ch.</p>\r\n\r\n<p><img alt=\"pin Vsmart Star 3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-star-3-3.jpg\" /></p>\r\n\r\n<h3><strong>Thiết kế trẻ trung v&agrave; hiện đại</strong></h3>\r\n\r\n<p>Vsmart Star 3 2GB-16GB được bo cong kh&eacute;o l&eacute;o ở mặt lưng, cho bạn cảm gi&aacute;c cầm nắm mượt m&agrave; với sự liền lạc v&agrave; &ocirc;m gọn trong l&ograve;ng b&agrave;n tay. C&oacute; tới 4 lựa chọn m&agrave;u tươi trẻ, ph&ugrave; hợp với c&aacute; t&iacute;nh của bạn. Kết hợp với phần m&agrave;n h&igrave;nh viền mỏng đẹp mắt, Vsmart Star 3 c&oacute; thiết kế chiếm được cảm t&igrave;nh của cả những người d&ugrave;ng kh&oacute; t&iacute;nh nhất.</p>\r\n\r\n<p><img alt=\"thiết kế Vsmart Star 3\" src=\"https://img.fpt.shop/f_jpg/cmpr_10/https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/vsmart-star-3-1.jpg\" /></p>', '2020-12-01', '2020-12-01', 2, 0, 6, '\"màu xanh\",\"màu đen\",\"màu đỏ\"', 5, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table id=\"tskt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Vsmart</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ đệm / Ram</td>\r\n			<td>2 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>16 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại SIM</td>\r\n			<td>2 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&agrave;n h&igrave;nh</td>\r\n			<td>IPS LCD, 16 triệu m&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.09 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phi&ecirc;n bản hệ điều h&agrave;nh</td>\r\n			<td>Android 9.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm Snapdragon 215 (28nm)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Quad-core (4x1.3 GHz Cortex-A53 )</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 308</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm thẻ nhớ</td>\r\n			<td>Hỗ trợ l&ecirc;n đến 64GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>Camera ch&iacute;nh: 8MP<br />\r\n			Camera phụ: 5MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước</td>\r\n			<td>8MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay video</td>\r\n			<td>Trước: 720P I Sau: 1080P 30FPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps, EV-DO Rev.A 3.1 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4G</td>\r\n			<td>LTE Cat4 150/50 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 b/g/n, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>4.2, A2DP, LE, aptX</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS, GLONASS, BDS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>USB Tpe-C 1.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Cảm biến v&acirc;n tay, cảm biến tiệm cận, la b&agrave;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>Li-Ion 3500 mAh</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&quot;</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ten` varchar(100) NOT NULL,
  `slider_hinh` varchar(255) NOT NULL,
  `slider_hienthi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ten`, `slider_hinh`, `slider_hienthi`) VALUES
(5, 'hinh4', '637420850488999861_F-H1_800x30078.png', 0),
(6, 'hinh1', '637414770507737849_OPPO-H139.png', 0),
(7, 'hinh2', '637420301348398104_F-H1_800x3006.png', 0),
(8, 'hinh3', '637420866007039262_F-H1_800x30041.png', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `tt_id` int(11) NOT NULL,
  `tt_ten` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thanhtoan`
--

INSERT INTO `thanhtoan` (`tt_id`, `tt_ten`) VALUES
(1, 'Tiền mặt'),
(2, 'Chuyển khoản');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `th_id` int(11) NOT NULL,
  `th_ten` varchar(100) NOT NULL,
  `th_nhan` varchar(100) NOT NULL,
  `th_hienthi` int(11) NOT NULL,
  `th_ngaytaomoi` date NOT NULL,
  `th_ngaycapnhat` date NOT NULL,
  `th_hinh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`th_id`, `th_ten`, `th_nhan`, `th_hienthi`, `th_ngaytaomoi`, `th_ngaycapnhat`, `th_hinh`) VALUES
(11, 'Realme', 'realme', 0, '2020-10-08', '2020-11-30', 'tải xuống (10)62.png'),
(14, 'Oppo', 'oppo', 0, '2020-11-04', '2020-11-30', 'tải xuống (7)53.png'),
(15, 'Vsmart', 'vsmart', 0, '2020-11-04', '2020-11-30', 'tải xuống (8)49.png'),
(16, 'Nokia', 'nokia', 0, '2020-11-04', '2020-11-30', 'nokia-logo14.png'),
(18, 'Apple (iPhone)', 'apple-iphone', 0, '2020-11-16', '2020-11-30', 'tải xuống (3)45.png'),
(19, 'Vivo', 'vivo', 0, '2020-11-16', '2020-11-30', 'tải xuống (5)0.png'),
(20, 'Samsung', 'samsung', 0, '2020-11-16', '2020-11-30', 'tải xuống (11)64.png'),
(22, 'Xiaomi', 'xiaomi', 0, '2020-12-01', '2020-12-01', 'tải xuống24.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `tintuc_id` int(11) NOT NULL,
  `tintuc_ten` varchar(255) NOT NULL,
  `tintuc_tomtat` text NOT NULL,
  `tintuc_noidung` text NOT NULL,
  `tintuc_hinh` varchar(255) NOT NULL,
  `tintuc_nhan` varchar(255) NOT NULL,
  `tintuc_hienthi` int(11) NOT NULL,
  `dmt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`tintuc_id`, `tintuc_ten`, `tintuc_tomtat`, `tintuc_noidung`, `tintuc_hinh`, `tintuc_nhan`, `tintuc_hienthi`, `dmt_id`) VALUES
(4, 'Làm sao báo iPhone bị mất trong Find My?', '<p>Bạn c&oacute; thể sử dụng ứng dụng Find My để th&ocirc;ng b&aacute;o iPhone, iPad, iPod touch, Apple Watch hoặc m&aacute;y Mac thất lạc l&agrave; đ&atilde; mất để người kh&aacute;c kh&ocirc;ng thể truy cập th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.</p>', '<h1>L&agrave;m sao b&aacute;o iPhone bị mất trong Find My?</h1>\r\n\r\n<p><img src=\"https://fptshop.com.vn/tin-tuc/images/user.png\" />&nbsp;Tuấn An&nbsp;-&nbsp;7 giờ trước&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/thu-thuat/lam-sao-bao-iphone-bi-mat-trong-find-my-128634#news-comment\">&nbsp;2&nbsp;B&igrave;nh luận</a></p>\r\n\r\n<h2>Bạn c&oacute; thể sử dụng ứng dụng Find My để th&ocirc;ng b&aacute;o iPhone, iPad, iPod touch, Apple Watch hoặc m&aacute;y Mac thất lạc l&agrave; đ&atilde; mất để người kh&aacute;c kh&ocirc;ng thể truy cập th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/thu-thuat/cach-nhan-thong-bao-vi-tri-cua-mot-nguoi-ban-khi-thay-doi-trong-find-my-128633\">C&aacute;ch nhận th&ocirc;ng b&aacute;o vị tr&iacute; của một người bạn khi thay đổi trong Find My</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/thu-thuat/cach-them-hoac-xoa-ban-be-trong-find-my-128632\">C&aacute;ch th&ecirc;m hoặc x&oacute;a bạn b&egrave; trong Find My</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/tin-moi/canh-sat-tai-uc-dung-ung-dung-find-my-de-truy-bat-toi-pham-114512\">Cảnh s&aacute;t tại &Uacute;c d&ugrave;ng ứng dụng Find My để truy bắt tội phạm</a></h3>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>Điều g&igrave; xảy ra khi bạn đ&aacute;nh dấu thiết bị l&agrave; đ&atilde; mất trong Find My?</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Một email x&aacute;c nhận được gửi đến địa chỉ email của bạn (email đăng k&yacute; Apple ID).</p>\r\n	</li>\r\n	<li>\r\n	<p>Bạn c&oacute; thể hiển thị th&ocirc;ng b&aacute;o t&ugrave;y chỉnh tr&ecirc;n M&agrave;n h&igrave;nh kh&oacute;a của thiết bị. V&iacute; dụ bạn c&oacute; thể th&ocirc;ng tin tr&ecirc;n m&agrave;n h&igrave;nh kho&aacute; l&agrave; thiết bị đ&atilde; bị mất hoặc c&aacute;ch li&ecirc;n lạc với bạn.</p>\r\n	</li>\r\n	<li>\r\n	<p>Thiết bị của bạn kh&ocirc;ng hiển thị cảnh b&aacute;o hoặc tạo ra tiếng ồn. Thiết bị của bạn vẫn c&oacute; thể nhận cuộc gọi&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;v&agrave; cuộc gọi FaceTime.</p>\r\n	</li>\r\n	<li>\r\n	<p>Apple&nbsp;Pay bị tắt cho thiết bị của bạn.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Đối với iPhone, iPad, iPod&nbsp;touch hoặc Apple&nbsp;Watch, bạn nh&igrave;n thấy vị tr&iacute; hiện tại của thiết bị tr&ecirc;n bản đồ, cũng như bất kỳ thay đổi n&agrave;o về vị tr&iacute; của thiết bị.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>Đ&aacute;nh dấu thiết bị l&agrave; đ&atilde; mất</strong></h2>\r\n\r\n<p>Nếu thiết bị của bạn đ&atilde; bị mất hoặc bị đ&aacute;nh cắp, bạn c&oacute; thể bật&nbsp;<strong>Chế độ mất</strong>&nbsp;cho iPhone, iPad, iPod&nbsp;touch hoặc Apple&nbsp;Watch hay kh&oacute;a m&aacute;y Mac của bạn trong ứng dụng&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/tags/find-my\">Find My</a>.</p>\r\n\r\n<p><img alt=\"Thông báo mất iPhone\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/128634/Originals/mat-iphone-1.jpg?imgeng=/cmpr_10\" /></p>\r\n\r\n<p><img alt=\"Find My\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/128634/Originals/mat-iphone-3.jpg?imgeng=/cmpr_10\" /></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Từ ứng dụng Find My bạn chạm v&agrave;o&nbsp;<em><strong>Thiết bị</strong></em>, sau đ&oacute; chạm v&agrave;o t&ecirc;n của thiết bị đ&atilde; mất.</p>\r\n	</li>\r\n	<li>\r\n	<p>Trong phần&nbsp;<strong>Đ&aacute;nh dấu l&agrave; Bị mất</strong>, chạm v&agrave;o&nbsp;<em><strong>K&iacute;ch hoạt</strong></em>.</p>\r\n	</li>\r\n	<li>\r\n	<p>L&agrave;m theo hướng dẫn tr&ecirc;n m&agrave;n h&igrave;nh, lưu &yacute; những điều sau:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p><em>Mật m&atilde;:&nbsp;</em>Nếu iPhone, iPad, iPod&nbsp;touch hoặc Apple&nbsp;Watch kh&ocirc;ng c&oacute; mật m&atilde;, bạn được y&ecirc;u cầu tạo mật m&atilde; ngay b&acirc;y giờ. Đối với m&aacute;y Mac, bạn phải tạo một mật m&atilde; dạng số, ngay cả khi bạn đ&atilde; thiết lập mật khẩu tr&ecirc;n m&aacute;y Mac. Mật m&atilde; n&agrave;y kh&aacute;c với mật khẩu của bạn v&agrave; chỉ được sử dụng khi bạn đ&aacute;nh dấu thiết bị l&agrave; đ&atilde; mất.</p>\r\n		</li>\r\n		<li>\r\n		<p><em>Th&ocirc;ng tin li&ecirc;n hệ:&nbsp;</em>Nếu bạn được y&ecirc;u cầu nhập số điện thoại, h&atilde;y nhập một số c&oacute; thể li&ecirc;n lạc được với bạn. Nếu bạn được y&ecirc;u cầu nhập th&ocirc;ng b&aacute;o, c&oacute; thể bạn muốn cho biết rằng thiết bị đ&atilde; bị mất hoặc c&aacute;ch li&ecirc;n lạc với bạn. Số v&agrave; th&ocirc;ng b&aacute;o xuất hiện tr&ecirc;n M&agrave;n h&igrave;nh kh&oacute;a của thiết bị.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Chạm v&agrave;o&nbsp;<em><strong>K&iacute;ch hoạt</strong></em>&nbsp;(đối với iPhone, iPad, iPod touch hoặc Apple&nbsp;Watch) hoặc&nbsp;<strong><em>Kh&oacute;a</em></strong>&nbsp;(đối với m&aacute;y Mac).</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Khi thiết bị đ&atilde; được đ&aacute;nh dấu l&agrave; đ&atilde; mất, bạn nh&igrave;n thấy&nbsp;<em><strong>Đ&atilde; k&iacute;ch hoạt</strong></em>&nbsp;trong phần&nbsp;<strong>Đ&aacute;nh dấu l&agrave; Bị mất</strong>. Nếu thiết bị kh&ocirc;ng được kết nối v&agrave;o mạng Wi-Fi hoặc mạng di động khi bạn đ&aacute;nh dấu l&agrave; bị mất, bạn nh&igrave;n thấy trạng th&aacute;i l&agrave;&nbsp;<strong>Đang chờ</strong>&nbsp;cho tới khi thiết bị kết nối trực tuyến trở lại.</p>\r\n\r\n<h2><strong>Thay đổi th&ocirc;ng b&aacute;o Chế độ mất</strong></h2>\r\n\r\n<p>Sau khi bạn đ&aacute;nh dấu iPhone, iPad, iPod&nbsp;touch hoặc Apple&nbsp;Watch l&agrave; đ&atilde; mất, bạn c&oacute; thể cập nhật c&agrave;i đặt th&ocirc;ng tin li&ecirc;n hệ hoặc th&ocirc;ng b&aacute;o email.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Chạm v&agrave;o&nbsp;<strong><em>Thiết bị</em></strong>, sau đ&oacute; chạm v&agrave;o t&ecirc;n của thiết bị đ&atilde; mất.</p>\r\n	</li>\r\n	<li>\r\n	<p>Trong phần&nbsp;<strong>Đ&aacute;nh dấu l&agrave; Bị mất</strong>, chạm v&agrave;o&nbsp;<strong><em>Đang chờ</em></strong>&nbsp;hoặc&nbsp;<strong><em>Đ&atilde; k&iacute;ch hoạt</em></strong>.</p>\r\n	</li>\r\n	<li>\r\n	<p>Thực hiện bất kỳ t&aacute;c vụ n&agrave;o sau đ&acirc;y:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p><em>Thay đổi th&ocirc;ng b&aacute;o Chế độ mất:&nbsp;</em>Thực hiện bất kỳ thay đổi n&agrave;o cho số điện thoại hoặc th&ocirc;ng b&aacute;o.</p>\r\n		</li>\r\n		<li>\r\n		<p><em>Nhận email cập nhật:&nbsp;</em>Bật&nbsp;<em><strong>Nhận email cập nhật</strong></em>&nbsp;nếu chưa được bật.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Chạm v&agrave;o&nbsp;<em><strong>Xong</strong></em>.</p>\r\n	</li>\r\n</ol>\r\n\r\n<h2><strong>Tắt Chế độ mất</strong></h2>\r\n\r\n<p>Khi bạn t&igrave;m thấy thiết bị đ&atilde; mất, h&atilde;y thực hiện một trong hai t&aacute;c vụ sau để tắt Chế độ mất:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nhập mật m&atilde; của bạn tr&ecirc;n thiết bị.</p>\r\n	</li>\r\n	<li>\r\n	<p>Trong Find My, chạm v&agrave;o t&ecirc;n của thiết bị, chạm v&agrave;o&nbsp;<strong><em>Đang chờ</em></strong>&nbsp;hoặc&nbsp;<strong><em>Đ&atilde; k&iacute;ch hoạt&nbsp;</em></strong>trong&nbsp;<strong>Đ&aacute;nh dấu l&agrave; Bị mất</strong>, chạm v&agrave;o&nbsp;<strong><em>Tắt Đ&aacute;nh dấu l&agrave; Bị mất</em></strong>, sau đ&oacute; chạm v&agrave;o&nbsp;<strong><em>Tắt</em></strong>.</p>\r\n	</li>\r\n</ul>', '637418233648094704_find-my-2-thumb84.jpg', 'lam-sao-bao-iphone-bi-mat-trong-find-my', 0, 3),
(5, 'Cách sửa lỗi ổ cứng thông dụng', '<p>Việc sử dụng ổ cứng trong một thời gian d&agrave;i sẽ để lại nhiều lỗi đi k&egrave;m. Vậy sửa lỗi ổ cứng sẽ bao gồm những c&aacute;ch n&agrave;o?</p>', '<h1>C&aacute;ch sửa lỗi ổ cứng th&ocirc;ng dụng</h1>\r\n\r\n<p><img src=\"https://fptshop.com.vn/tin-tuc/images/user.png\" />&nbsp;K.V&nbsp;-&nbsp;16 giờ trước&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/thu-thuat/cach-sua-loi-o-cung-thong-dung-128876#news-comment\">&nbsp;2&nbsp;B&igrave;nh luận</a></p>\r\n\r\n<div class=\"mucluc\">\r\n<h1>MỤC LỤC TIN TỨC</h1>\r\n</div>\r\n\r\n<div class=\"baiviet\">\r\n<ul>\r\n	<li><a href=\"http://localhost/laravelshop/public/tintuc/cach-sua-loi-o-cung-thong-dung#nguyennhan\">C&aacute;c nguy&ecirc;n nh&acirc;n g&acirc;y ra lỗi ổ cứng</a></li>\r\n	<li><a href=\"http://localhost/laravelshop/public/tintuc/cach-sua-loi-o-cung-thong-dung#trieuchung\">Triệu chứng của t&igrave;nh trạng lỗi ổ cứng</a></li>\r\n	<li><a href=\"http://localhost/laravelshop/public/tintuc/cach-sua-loi-o-cung-thong-dung#sualoi\">Sửa lỗi ổ cứng rất dễ d&agrave;ng với những c&aacute;ch sau đ&acirc;y</a></li>\r\n</ul>\r\n</div>\r\n\r\n<h2>Việc sử dụng ổ cứng trong một thời gian d&agrave;i sẽ để lại nhiều lỗi đi k&egrave;m. Vậy sửa lỗi ổ cứng sẽ bao gồm những c&aacute;ch n&agrave;o?</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/thu-thuat/huong-dan-sua-loi-may-tinh-khong-nhan-o-cung-128877\">Hướng dẫn sửa lỗi m&aacute;y t&iacute;nh kh&ocirc;ng nhận ổ cứng</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/thu-thuat/lam-sao-bao-iphone-bi-mat-trong-find-my-128634\">L&agrave;m sao b&aacute;o iPhone bị mất trong Find My?</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/thu-thuat/cach-tao-chu-ky-trong-email-office-365-nhanh-va-don-gian-nhat-128868\">C&aacute;ch tạo chữ k&yacute; trong email Office 365 nhanh v&agrave; đơn giản nhất</a></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Trong những linh kiện cấu th&agrave;nh n&ecirc;n một chiếc m&aacute;y t&iacute;nh ho&agrave;n chỉnh, ổ cứng đ&oacute;ng vai tr&ograve; quan trọng v&igrave; đ&acirc;y l&agrave; nơi lưu trữ dữ liệu của người d&ugrave;ng. Nếu ổ cứng bị lỗi th&igrave; người d&ugrave;ng sẽ ngay lập tức hứng chịu c&aacute;c hậu quả m&agrave; việc n&agrave;y mang lại. Nhẹ th&igrave; m&aacute;y treo, dữ liệu kh&ocirc;ng truy xuất được. Nặng th&igrave; mất dữ liệu, ổ cứng bị hỏng ho&agrave;n to&agrave;n.</p>\r\n\r\n<p>Trước hết, ch&uacute;ng ta cần biết tại sao lại c&oacute; t&igrave;nh trạng lỗi ổ cứng cũng như c&aacute;c triệu chứng của n&oacute;.</p>\r\n\r\n<div id=\"nguyennhan\">\r\n<h2><strong>C&aacute;c nguy&ecirc;n nh&acirc;n g&acirc;y ra lỗi ổ cứng</strong></h2>\r\n</div>\r\n\r\n<p><strong><img alt=\"sửa lỗi ổ cứng\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/128876/Originals/sua-loi-o-cung-2.jpg?imgeng=/cmpr_10\" style=\"height:279px; width:500px\" /></strong></p>\r\n\r\n<p>Lỗi ổ cứng xảy ra v&igrave; c&aacute;c nguy&ecirc;n nh&acirc;n sau đ&acirc;y:</p>\r\n\r\n<ul>\r\n	<li>C&aacute;c th&agrave;nh phần trong ổ cứng bị trục trặc, hoạt động kh&ocirc;ng ăn khớp.</li>\r\n	<li>M&aacute;y t&iacute;nh bị sụp nguồn đột ngột.</li>\r\n	<li>Ổ cứng bị nhiễm virus.</li>\r\n	<li>C&aacute;c phần mềm hoạt động kh&ocirc;ng ổn định.</li>\r\n</ul>\r\n\r\n<div id=\"trieuchung\">\r\n<h2><strong>Triệu chứng của t&igrave;nh trạng lỗi ổ cứng</strong></h2>\r\n</div>\r\n\r\n<p><strong><img alt=\"sửa lỗi ổ cứng\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/128876/Originals/sua-loi-o-cung-3.jpg?imgeng=/cmpr_10\" style=\"height:281px; width:500px\" /></strong></p>\r\n\r\n<p>Khi t&igrave;nh trạng lỗi ổ cứng xảy ra, n&oacute; sẽ c&oacute; c&aacute;c biểu hiện cụ thể sau đ&acirc;y:</p>\r\n\r\n<ul>\r\n	<li>D&ograve;ng th&ocirc;ng b&aacute;o Corrupted lu&ocirc;n hiện ra khi bạn truy xuất dữ liệu, đặc biệt l&agrave; khi giải c&aacute;c tập tin n&eacute;n.</li>\r\n	<li>Truy cập v&agrave;o BIOS th&igrave; bạn thấy BIOS nhận đủ ổ cứng nhưng v&agrave;o Windows th&igrave; lại kh&ocirc;ng.</li>\r\n	<li>Trong qu&aacute; tr&igrave;nh hoạt động, ổ cứng li&ecirc;n tục ph&aacute;t ra c&aacute;c &acirc;m thanh lạ c&oacute; thể nghe thấy được.</li>\r\n	<li>Windows kh&ocirc;ng thể chạy như b&igrave;nh thường, lỗi m&agrave;n h&igrave;nh xanh v&agrave; treo m&aacute;y li&ecirc;n tục xảy ra.</li>\r\n</ul>\r\n\r\n<p>Khi đ&atilde; biết được nguy&ecirc;n nh&acirc;n v&agrave; triệu chứng của t&igrave;nh trạng lỗi ổ cứng, hiển nhi&ecirc;n l&agrave; ch&uacute;ng ta phải đi t&igrave;m c&aacute;ch khắc phục.</p>\r\n\r\n<div id=\"sualoi\">\r\n<h2><strong>Sửa lỗi ổ cứng rất dễ d&agrave;ng với những c&aacute;ch sau đ&acirc;y</strong></h2>\r\n</div>\r\n\r\n<ul>\r\n	<li>Trước ti&ecirc;n, bạn h&atilde;y t&igrave;m đến c&ocirc;ng cụ CHKDSK (Check Disk) để sửa lỗi ổ cứng. Check Disk c&oacute; thể qu&eacute;t to&agrave;n bộ ổ cứng của bạn rồi sau đ&oacute; t&igrave;m, ph&aacute;t hiện v&agrave; sửa chữa c&aacute;c lỗi đang tồn tại trong n&agrave;y. Để gọi c&ocirc;ng cụ Check Disk, bạn h&atilde;y bấm&nbsp;<em><strong>Windows + R</strong></em>&nbsp;v&agrave; g&otilde;&nbsp;<em>CMD</em>&nbsp;rồi bấm Enter. Tiếp theo, bạn h&atilde;y g&otilde; c&acirc;u lệnh&nbsp;<em>chkdsk /f</em>&nbsp;rồi bấm Enter v&agrave; chờ đợi qu&aacute; tr&igrave;nh n&agrave;y ho&agrave;n tất.</li>\r\n	<li>Cũng tương tự như c&acirc;u lệnh CHKDSK được sử dụng trong Command Prompt, c&acirc;u lệnh WMIC được d&ugrave;ng để kiểm tra dữ liệu S.M.A.R.T của ổ cứng. Bạn h&atilde;y gọi Command Prompt l&ecirc;n bằng c&aacute;ch tương tự như tr&ecirc;n, sau đ&oacute; bấm&nbsp;<em>wmic</em>&nbsp;rồi tiếp tục Enter. Nhập tiếp c&acirc;u lệnh&nbsp;<em>diskdrive get status</em>&nbsp;rồi Enter. Nếu hiện ra OK th&igrave; ổ cứng của bạn đang hoạt động tốt.</li>\r\n	<li>Bạn cũng c&oacute; thể tận dụng c&ocirc;ng cụ Error checking ngay trong File Explorer để sửa lỗi ổ cứng. Truy cập v&agrave;o This PC, sau đ&oacute; click chuột phải v&agrave;o ph&acirc;n v&ugrave;ng ổ cứng mong muốn rồi chọn&nbsp;<em><strong>Properties</strong></em>. Chuyển qua tab&nbsp;<em><strong>Tools</strong></em>, bấm v&agrave;o n&uacute;t&nbsp;<em><strong>Check</strong></em>&nbsp;ở mục&nbsp;<em>Error checking</em>. Bấm tiếp&nbsp;<em><strong>Scan drive</strong></em>&nbsp;v&agrave; chờ đợi qu&aacute; tr&igrave;nh n&agrave;y ho&agrave;n tất.</li>\r\n</ul>\r\n\r\n<p><strong>Xem th&ecirc;m:&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/giai-tri/tam-biet-chiec-may-tinh-i-ach-voi-5-phan-mem-chong-phan-manh-o-cung-hieu-qua-nay-128757\">Tạm biệt chiếc m&aacute;y t&iacute;nh &igrave; ạch với 5 phần mềm chống ph&acirc;n mảnh ổ cứng hiệu quả n&agrave;y</a>&nbsp;-&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/thu-thuat/huong-dan-khac-phuc-loi-khong-gop-duoc-o-cung-tren-windows-10-128645\">Hướng dẫn khắc phục lỗi kh&ocirc;ng gộp được ổ cứng tr&ecirc;n Windows 10</a></strong></p>', '637422523144295613_sua-loi-o-cung65.jpg', 'cach-sua-loi-o-cung-thong-dung', 0, 3),
(6, 'Đã có thể xem video Youtube 8K trên Android TV', '<p>Giờ đ&acirc;y bạn đ&atilde; c&oacute; thể trải nghiệm video Youtube độ ph&acirc;n giải 8K si&ecirc;u n&eacute;t tr&ecirc;n chiếc Android TV 8K của m&igrave;nh.</p>', '<h1>Đ&atilde; c&oacute; thể xem video Youtube 8K tr&ecirc;n Android TV</h1>\r\n\r\n<p><img src=\"https://fptshop.com.vn/tin-tuc/images/user.png\" />&nbsp;L&ecirc; Ngọc Hồng Qu&acirc;n&nbsp;-&nbsp;6 giờ trước&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/tin-moi/da-co-the-xem-video-youtube-8k-tren-android-tv-128892#news-comment\">&nbsp;0&nbsp;B&igrave;nh luận</a></p>\r\n\r\n<h2>Giờ đ&acirc;y bạn đ&atilde; c&oacute; thể trải nghiệm video Youtube độ ph&acirc;n giải 8K si&ecirc;u n&eacute;t tr&ecirc;n chiếc Android TV 8K của m&igrave;nh.</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/tin-moi/apple-chuyen-day-chuyen-san-xuat-ipad-va-macbook-tu-trung-quoc-sang-viet-nam-127319\">Apple chuyển d&acirc;y chuyền sản xuất iPad v&agrave; MacBook từ Trung Quốc sang Việt Nam?</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/tin-moi/iphone-12-pro-max-chay-hang-tai-viet-nam-iphone-12-va-iphone-12-mini-luon-san-hang-128861\">iPhone 12 Pro Max ch&aacute;y h&agrave;ng tại Việt Nam, iPhone 12 v&agrave; iPhone 12 mini lu&ocirc;n sẵn h&agrave;ng</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/tin-moi/huawei-p50-series-se-co-camera-thau-kinh-long-128824\">B&aacute;o c&aacute;o: Huawei P50 series sẽ c&oacute; camera thấu k&iacute;nh lỏng với thời gian lấy n&eacute;t cực nhanh</a></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Chuẩn 4K đang dần trở n&ecirc;n phổ biến hiện nay v&agrave; rất nhiều nh&agrave; sản xuất đ&atilde; tiến xa hơn với những sản phẩm Android TV 8K. Tuy nhi&ecirc;n cũng như khi chuẩn 4K mới ra đời, thật kh&oacute; để bạn c&oacute; thể tận hưởng được sức mạnh của chiếc Android TV 8K của m&igrave;nh khi c&oacute; rất &iacute;t&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/tin-moi/moi-xem-video-8k-duoc-quay-boi-samsung-galaxy-s20-o-vong-bac-cuc-116444\" target=\"_blank\">video độ ph&acirc;n giải 8K</a>. Một tin rất vui cho người d&ugrave;ng khi ứng dụng xem video nổi tiếng Youtube đ&atilde; hỗ trợ ph&aacute;t c&aacute;c video độ ph&acirc;n giải 8K l&ecirc;n Android TV.</p>\r\n\r\n<p><img alt=\"Đã có thể xem video Youtube 8K trên Android TV\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/128892/Originals/8K-youtube.png?imgeng=/cmpr_10\" /></p>\r\n\r\n<p>Phi&ecirc;n bản Youtube d&agrave;nh cho Android TV mới nhất l&agrave; 2.12.08 đ&atilde; hỗ trợ chuẩn ph&acirc;n giải 8K. Đ&acirc;y l&agrave; độ ph&acirc;n giải truyền h&igrave;nh kỹ thuật số cao nhất hiện nay, với k&iacute;ch thước đầy đủ l&agrave; 7360 x 4320 pixels, tương đương 33,2 triệu điểm ảnh, sắc n&eacute;t gấp 4 lần chuẩn 4K v&agrave; gấp 16 lần chuẩn Full HD. Khi xem video 8K tr&ecirc;n Android TV hỗ trợ 8K, mắt bạn sẽ kh&ocirc;ng thể nh&igrave;n thấy điểm ảnh d&ugrave; ngồi ở cự ly gần, h&igrave;nh ảnh sắc n&eacute;t ho&agrave;n hảo đến từng chi tiết.</p>\r\n\r\n<p>Về bản cập nhật ứng dụng Youtube mới nhất cho Android TV 8K, b&ecirc;n cạnh t&iacute;nh năng hỗ trợ ph&aacute;t video 8K c&oacute; giới hạn cho TV chạy Android 10 trở l&ecirc;n, bản cập nhật n&agrave;y c&ograve;n c&oacute; một số thay đổi kh&aacute;c như hiển thị m&agrave;n h&igrave;nh Youtube Music; hỗ trợ Cast Connect; cải thiện lựa chọn độ ph&acirc;n giải; khắc phục sự cố ng&agrave;y giờ kh&ocirc;ng ch&iacute;nh x&aacute;c c&ugrave;ng một số cải tiến nhỏ.</p>\r\n\r\n<p><img alt=\"Đã có thể xem video Youtube 8K trên Android TV\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/128892/Originals/TV-8k.jpg?imgeng=/cmpr_10\" /></p>\r\n\r\n<p>D&ugrave; số người đang sở hữu một chiếc TV 8K hiện nay kh&ocirc;ng phải l&agrave; nhiều nhưng việc Youtube đ&atilde; hỗ trợ video 8K cho TV 8K cũng cho thấy sự ph&aacute;t triển của chuẩn h&igrave;nh ảnh mới, sẽ l&agrave; tương lai thay cho chuẩn 4K (UHD) hiện nay. Thậm ch&iacute; d&ograve;ng&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-s20\" target=\"_blank\">Galaxy S20</a>&nbsp;v&agrave;&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-note-20\">Note 20</a>&nbsp;của&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/samsung\" target=\"_blank\">Samsung</a>&nbsp;đều đ&atilde; hỗ trợ quay video 8K. Người d&ugrave;ng sẽ được thưởng thức những h&igrave;nh ảnh đẹp hơn, sắc n&eacute;t hơn tr&ecirc;n c&aacute;c thiết bị kỹ thuật số, đặc biệt l&agrave; TV.</p>\r\n\r\n<p>&quot;</p>', '637422911265197277_8k-youtube-cover19.jpg', 'da-co-the-xem-video-youtube-8k-tren-android-tv', 0, 3),
(7, 'Được trả góp 0% lãi suất khi mua Poco X3 NFC tại FPT Shop', '<div>Từ nay đến ng&agrave;y 30/11, bạn c&oacute; thể dễ d&agrave;ng sở hữu Xiaomi Poco X3 NFC với ưu đ&atilde;i trả g&oacute;p 0% l&atilde;i suất đi k&egrave;m bộ qu&agrave; thiết thực, bao gồm: bảo h&agrave;nh 18 th&aacute;ng v&agrave; giao h&agrave;ng tận nơi miễn ph&iacute;.</div>', '<h1>Được trả g&oacute;p 0% l&atilde;i suất khi mua Poco X3 NFC tại FPT Shop</h1>\r\n\r\n<p><img src=\"https://fptshop.com.vn/tin-tuc/images/user.png\" />&nbsp;AN&nbsp;-&nbsp;8 ng&agrave;y trước&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/tin-khuyen-mai/duoc-tra-gop-0-lai-suat-khi-mua-poco-x3-nfc-tai-fpt-shop-128596#news-comment\">&nbsp;0&nbsp;B&igrave;nh luận</a></p>\r\n\r\n<h2>Từ nay đến ng&agrave;y 30/11, bạn c&oacute; thể dễ d&agrave;ng sở hữu Xiaomi Poco X3 NFC với ưu đ&atilde;i trả g&oacute;p 0% l&atilde;i suất đi k&egrave;m bộ qu&agrave; thiết thực, bao gồm: bảo h&agrave;nh 18 th&aacute;ng v&agrave; giao h&agrave;ng tận nơi miễn ph&iacute;.</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/tin-khuyen-mai/don-giang-sinh-fpt-shop-giam-den-50-cho-dong-ho-thoi-trang-128919\">Săn đồng hồ ch&iacute;nh h&atilde;ng giảm đến 50% tại FPT Shop</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/tin-khuyen-mai/san-phu-kien-chinh-hang-chi-tu-79-000-dong-tai-fpt-shop-128268\">Săn phụ kiện ch&iacute;nh h&atilde;ng chỉ từ 79.000 đồng tại FPT Shop</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/tin-khuyen-mai/vivo-y19-giam-1-trieu-gia-chi-3-99-trieu-tai-fpt-shop-128246\">Vivo Y19: Giảm 1 triệu, gi&aacute; chỉ 3,99 triệu tại FPT Shop</a></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p><a href=\"https://fptshop.com.vn/dien-thoai/poco-x3-nfc-6gb-128gb\">Poco X3 NFC</a>&nbsp;l&agrave; chiếc smartphone tầm trung của thương hiệu Xiaomi. Được biết, đ&acirc;y l&agrave; smartphone đầu ti&ecirc;n tr&ecirc;n thế giới d&ugrave;ng chipset Snapdragon 732G vừa được Qualcomm ra mắt c&aacute;ch đ&acirc;y kh&ocirc;ng l&acirc;u. Ngo&agrave;i ra,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;c&ograve;n g&acirc;y ấn tượng với vi&ecirc;n pin &lsquo;khủng&rsquo; 5.160mAh hỗ trợ c&ocirc;ng nghệ sạc nhanh 33W.</p>\r\n\r\n<p>Sản phẩm hiện đang c&oacute; gi&aacute; b&aacute;n l&agrave; 6.990.000 đồng tại FPT Shop. Hấp dẫn hơn, FPT Shop sẽ gi&uacute;p bạn dễ d&agrave;ng sở hữu Poco X3 NFC bằng ưu đ&atilde;i trả g&oacute;p 0% l&atilde;i suất với khoản trả trước nhẹ nh&agrave;ng chỉ bằng 30% gi&aacute; m&aacute;y trong kỳ hạn 6 th&aacute;ng. Thủ tục trả g&oacute;p v&ocirc; c&ugrave;ng đơn giản v&agrave; nhanh ch&oacute;ng, chỉ với 2 loại giấy tờ cơ bản l&agrave; chứng minh nh&acirc;n d&acirc;n v&agrave; bằng l&aacute;i xe (hoặc sổ hộ khẩu) l&agrave; bạn đ&atilde; c&oacute; thể mang chiếc smartphone hiện đại n&agrave;y về nh&agrave;.</p>\r\n\r\n<p>Th&ecirc;m v&agrave;o đ&oacute;, khi mua sản phẩm tại FPT Shop, bạn sẽ được đổi mới trong v&ograve;ng 30 ng&agrave;y v&agrave; bảo h&agrave;nh 18 th&aacute;ng nếu m&aacute;y c&oacute; lỗi từ nh&agrave; sản xuất. Ch&iacute;nh thời gian bảo h&agrave;nh k&eacute;o d&agrave;i hơn so với th&ocirc;ng thường, kh&aacute;ch h&agrave;ng ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m sử dụng sản phẩm cũng như được hỗ trợ tối đa nếu m&aacute;y gặp lỗi kh&ocirc;ng mong muốn. Đặc biệt, điện thoại sẽ được bảo h&agrave;nh theo IMEI n&ecirc;n rất ch&iacute;nh x&aacute;c v&agrave; thuận tiện, bạn sẽ kh&ocirc;ng phải lo bị mất giấy tờ, h&oacute;a đơn. Ngo&agrave;i ra, bạn c&ograve;n được nhận ngay suất mua&nbsp;<a href=\"https://fptshop.com.vn/smartwatch\">đồng hồ th&ocirc;ng minh</a>&nbsp;Dream Action với gi&aacute; giảm 30%, gi&aacute; về tay chỉ c&ograve;n 899.000 đồng.</p>\r\n\r\n<p>Song song với nhiều ưu đ&atilde;i hấp dẫn, FPT Shop tiếp tục thực hiện giao h&agrave;ng tận nơi miễn ph&iacute; nhằm mang đến những trải nghiệm dịch vụ tốt nhất cho kh&aacute;ch h&agrave;ng. C&aacute;ch thức thanh to&aacute;n rất đa dạng, bạn c&oacute; thể lựa chọn thanh to&aacute;n trực tiếp khi nhận h&agrave;ng hoặc thanh to&aacute;n online qua thẻ.</p>\r\n\r\n<p>Để mua điện thoại với nhiều ưu đ&atilde;i nhất từ FPT Shop, bạn c&oacute; thể đến trực tiếp tại hệ thống hơn 620 cửa h&agrave;ng tr&ecirc;n to&agrave;n quốc, mua online ngay&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/poco-x3-nfc-6gb-128gb\">tại đ&acirc;y</a>&nbsp;hoặc gọi đến tổng đ&agrave;i miễn cước 1800 6601 để được hỗ trợ nhanh nhất.</p>\r\n\r\n<p><img alt=\"\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/128596/Originals/Hinh2_XiaomiT11_Kenh14.jpg?imgeng=/cmpr_10\" /></p>\r\n\r\n<p><em>Trong th&aacute;ng 11 n&agrave;y, chọn mua Poco X3 NFC tại FPT Shop, bạn được nhận ngay nhiều ưu đ&atilde;i thiết thực như: trả g&oacute;p 0% l&atilde;i suất, bảo h&agrave;nh 18 th&aacute;ng,&hellip;</em></p>\r\n\r\n<p><strong>Một số th&ocirc;ng tin nổi bật của Xiaomi Poco X3 NFC</strong></p>\r\n\r\n<p>Từ khi mới ra mắt, Poco X3 NFC đ&atilde; thu h&uacute;t được sự ch&uacute; &yacute; của người d&ugrave;ng ngay từ c&aacute;i nh&igrave;n đầu ti&ecirc;n khi sở hữu cấu h&igrave;nh vượt trội so với mọi đối thủ trong c&ugrave;ng ph&acirc;n kh&uacute;c. Cụ thể, điện thoại được trang bị chip Snapdragon 732G mới nhất từ nh&agrave; Qualcomm c&ugrave;ng 6GB RAM v&agrave; 128GB ROM. Nhờ đ&oacute;, bạn c&oacute; thể thoải m&aacute;i l&agrave;m việc đa nhiệm v&agrave; &lsquo;chiến&rsquo; tốt mọi tựa&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/giai-tri\">game</a>&nbsp;mobile đ&igrave;nh đ&aacute;m hiện nay. Ngo&agrave;i ra, m&aacute;y c&ograve;n c&oacute; t&iacute;nh năng tản nhiệt h&agrave;ng c&ugrave;ng lớp Graphit ngăn c&aacute;ch CPU với m&agrave;n h&igrave;nh. Như vậy, bạn sẽ kh&ocirc;ng c&ograve;n cảm nhận được hiện tượng m&agrave;n h&igrave;nh bị n&oacute;ng l&ecirc;n khi sử dụng điện thoại qu&aacute; l&acirc;u.</p>\r\n\r\n<p>Điểm đ&aacute;ng ch&uacute; &yacute;, sản phẩm sở hữu tốc độ l&agrave;m tươi 120Hz c&ugrave;ng tốc độ lấy mẫu cảm ứng đến 240Hz gấp đ&ocirc;i so với những điện thoại th&ocirc;ng thường. Ưu điểm n&agrave;y kh&ocirc;ng chỉ gi&uacute;p mỗi thao t&aacute;c vuốt chạm của bạn mượt m&agrave; hơn m&agrave; c&ograve;n mang đến rất nhiều lợi thế khi chơi game. Th&ecirc;m &acirc;m thanh Hi-Res Audio chất lượng cao v&agrave; giả lập &acirc;m thanh v&ograve;m như trong rạp chiếu phim, điện thoại Poco X3 NFC sẽ mang lại những trải nghiệm giải tr&iacute; hấp dẫn hơn bao giờ hết.</p>\r\n\r\n<p>Khả năng nhiếp ảnh của POCO X3 NFC cũng được người d&ugrave;ng đ&aacute;nh gi&aacute; cao nhờ bộ 4 camera sau đến 64MP với c&aacute;c t&iacute;nh năng chụp h&igrave;nh chuy&ecirc;n nghiệp như chụp g&oacute;c si&ecirc;u rộng đến 119 độ, chụp cận macro,...&nbsp; Đặc biệt, Poco X3 NFC sẽ l&agrave; chiếc smartphone l&yacute; tưởng cho những ai c&oacute; nhu cầu sử dụng điện thoại với cường độ cao khi m&aacute;y mang trong m&igrave;nh vi&ecirc;n pin dung lượng lớn đến 5.160 mAh v&agrave; t&iacute;ch hợp c&ocirc;ng nghệ sạc nhanh 33W. Bạn c&oacute; thể thoải m&aacute;i chơi game đến 10 giờ, xem video trong 17 giờ hay nghe nhạc trong 153 giờ. Hiện sản phẩm c&oacute; hai m&agrave;u X&aacute;m v&agrave; Xanh Blue để bạn lựa chọn ph&ugrave; hợp với sở th&iacute;ch của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/128596/Originals/Hinh1_XiaomiT11_Kenh14.jpg?imgeng=/cmpr_10\" /></p>\r\n\r\n<p><em>POCO X3 NFC sở hữu chip Snapdragon 732G v&agrave; tốc độ l&agrave;m tươi 120Hz vượt trội so với mọi đối thủ trong c&ugrave;ng ph&acirc;n kh&uacute;c.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Sản phẩm mua tại FPT Shop l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng,&nbsp;kh&aacute;ch h&agrave;ng c&oacute; thể chọn mua trực tiếp tại&nbsp;hệ thống hơn 620&nbsp;cửa hàng tr&ecirc;n to&agrave;n quốc,&nbsp;mua online&nbsp;hoặc gọi hotline 1800 6601 để được tư vấn, mua h&agrave;ng nhanh.</strong></p>\r\n\r\n<p>&quot;</p>', '637418062948301442_hinh1_xiaomit11_kenh1417.jpg', 'duoc-tra-gop-0-lai-suat-khi-mua-poco-x3-nfc-tai-fpt-shop', 0, 2),
(8, 'Vivo Y19: Giảm 1 triệu, giá chỉ 3,99 triệu tại FPT Shop', '<div>Sở hữu nhiều t&iacute;nh năng vượt trội, Vivo Y19 l&agrave; sự lựa chọn ho&agrave;n hảo của nhiều bạn trẻ hiện nay. Trong th&aacute;ng 11 n&agrave;y, khi mua m&aacute;y tại FPT Shop bạn sẽ được giảm ngay 1 triệu c&ugrave;ng nhiều ưu đ&atilde;i thiết thực kh&aacute;c.</div>', '<h1>Vivo Y19: Giảm 1 triệu, gi&aacute; chỉ 3,99 triệu tại FPT Shop</h1>\r\n\r\n<p><img src=\"https://fptshop.com.vn/tin-tuc/images/user.png\" />&nbsp;B&ugrave;i Trần Mỹ Huyền&nbsp;-&nbsp;16 ng&agrave;y trước&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/tin-khuyen-mai/vivo-y19-giam-1-trieu-gia-chi-3-99-trieu-tai-fpt-shop-128246#news-comment\">&nbsp;2&nbsp;B&igrave;nh luận</a></p>\r\n\r\n<h2>Sở hữu nhiều t&iacute;nh năng vượt trội, Vivo Y19 l&agrave; sự lựa chọn ho&agrave;n hảo của nhiều bạn trẻ hiện nay. Trong th&aacute;ng 11 n&agrave;y, khi mua m&aacute;y tại FPT Shop bạn sẽ được giảm ngay 1 triệu c&ugrave;ng nhiều ưu đ&atilde;i thiết thực kh&aacute;c.</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/tin-khuyen-mai/nhan-qua-799-000-dong-khi-mua-vivo-y19-tai-fpt-shop-126243\">Nhận qu&agrave; 799.000 đồng khi mua Vivo Y19 tại FPT Shop</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/tin-khuyen-mai/don-giang-sinh-fpt-shop-giam-den-50-cho-dong-ho-thoi-trang-128919\">Săn đồng hồ ch&iacute;nh h&atilde;ng giảm đến 50% tại FPT Shop</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/tin-khuyen-mai/duoc-tra-gop-0-lai-suat-khi-mua-poco-x3-nfc-tai-fpt-shop-128596\">Được trả g&oacute;p 0% l&atilde;i suất khi mua Poco X3 NFC tại FPT Shop</a></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p><a href=\"https://fptshop.com.vn/tim-kiem/vivo-y19\">Vivo Y19 (6GB-128GB</a>) thừa hưởng c&aacute;c t&iacute;nh năng chụp ảnh xuất sắc từ &lsquo;đ&agrave;n anh&rsquo; Vivo V17 Pro. Cụ thể, Y19 sở hữu bộ 3 camera sau AI với camera ch&iacute;nh 16MP, camera g&oacute;c si&ecirc;u rộng v&agrave; xo&aacute; ph&ocirc;ng 8MP. Ngo&agrave;i ra, m&aacute;y c&ograve;n c&oacute; khả năng chụp si&ecirc;u cận với khoảng c&aacute;ch lấy n&eacute;t 4cm mang đến những bức ảnh v&agrave; video sắc n&eacute;t rất th&iacute;ch hợp với những người đam m&ecirc; chụp ảnh v&agrave; quay phim bằng smartphone.</p>\r\n\r\n<p>Trong th&aacute;ng 11 n&agrave;y, bạn sẽ dễ d&agrave;ng sở hữu ngay chiếc điện thoại Vivo Y19 với mức gi&aacute; trong tầm tay, tiết kiệm đến 1.000.000 đồng tại FPT Shop. Cụ thể, bạn sẽ được giảm ngay 1.000.000 đồng, gi&aacute; về tay c&ograve;n 3.990.000 đồng. Kh&ocirc;ng k&eacute;m phần thiết thực, bạn c&ograve;n c&oacute; thể chọn mua ở mức gi&aacute; thường 4.990.000 đồng để nhận ưu đ&atilde;i, bao gồm: giảm gi&aacute; 500.000 đồng v&agrave; hưởng ưu đ&atilde;i trả g&oacute;p 0% l&atilde;i suất kỳ hạn đến 6 th&aacute;ng. Đồng thời, bạn c&ograve;n được tặng suất mua&nbsp;<a href=\"https://fptshop.com.vn/smartwatch\">đồng hồ th&ocirc;ng minh</a>&nbsp;Dream Action giảm đến 30%, gi&aacute; mới chỉ c&ograve;n 899.000 đồng khi mua k&egrave;m m&aacute;y.<br />\r\nĐể chọn mua sản phẩm Vivo Y19 ch&iacute;nh h&atilde;ng, bạn c&oacute; thể đến trực tiếp tại hơn 620 cửa h&agrave;ng FPT Shop tr&ecirc;n to&agrave;n quốc hoặc chọn mua online tại website&nbsp;<a href=\"https://fptshop.com.vn/tim-kiem/vivo-y19\">fptshop.com.vn</a>.</p>\r\n\r\n<p><img alt=\"\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/128246/Originals/VIVO-Y19-UNBOX%20(1%20of%201).png?imgeng=/cmpr_10\" /></p>\r\n\r\n<p><em>Vivo Y19 được giảm 1 triệu v&agrave; đang c&oacute; gi&aacute; 3,99 triệu tại FPT Shop.</em></p>\r\n\r\n<p>B&ecirc;n cạnh m&agrave;n h&igrave;nh tr&agrave;n viền halo 6,53 inch độ ph&acirc;n giải Full HD+ sắc n&eacute;t, Vivo Y19 vẫn được trang bị pin 5.000 mAh, sạc k&eacute;p si&ecirc;u nhanh 18W cho bạn thời gian sử dụng li&ecirc;n tục trong 17 giờ. Đặc biệt hơn, sản phẩm đ&atilde; được n&acirc;ng cấp về hiệu năng với chip MediaTek Helio P65 8 nh&acirc;n sản xuất tr&ecirc;n tiến tr&igrave;nh 12nm, kết hợp với hệ điều h&agrave;nh Funtouch OS 9.2 (Android 9). T&iacute;nh năng n&agrave;y gi&uacute;p bạn thoải m&aacute;i chơi&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/giai-tri\">game</a>, xem phim hay lướt web, to&agrave;n bộ c&aacute;c thao t&aacute;c đều diễn ra mượt m&agrave;.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/128246/Originals/VIVO-Y19-UNBOX%202.png?imgeng=/cmpr_10\" /></p>\r\n\r\n<p><em>Camera giọt nước 16MP của Vivo Y19 gi&uacute;p selfie đẹp nhờ c&aacute;c t&iacute;nh năng AI hỗ trợ.</em></p>\r\n\r\n<p>Hơn nữa, m&aacute;y c&oacute; dung lượng RAM lớn 6GB v&agrave; bộ nhớ trong 128G gi&uacute;p bạn c&oacute; thể mở c&ugrave;ng l&uacute;c nhiều ứng dụng m&agrave; kh&ocirc;ng bị treo hay khởi động lại, đồng thời mang lại kh&ocirc;ng gian lưu trữ lớn hơn so với c&aacute;c d&ograve;ng m&aacute;y kh&aacute;c.<br />\r\nVới mức gi&aacute; &lsquo;mềm&rsquo; dưới 4 triệu đồng tại FPT Shop, Vivo Y19 l&agrave; sự lựa chọn ho&agrave;n hảo cho c&aacute;c bạn học sinh, sinh vi&ecirc;n hay người d&ugrave;ng thường xuy&ecirc;n sử dụng smartphone cho c&aacute;c t&aacute;c vụ hằng ng&agrave;y.&nbsp;</p>\r\n\r\n<p><strong>L&yacute; do bạn n&ecirc;n chọn mua Vivo tại FPT Shop.</strong></p>\r\n\r\n<p>Chọn mua&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>, laptop, phụ kiện,&hellip; tại FPT Shop, bạn kh&ocirc;ng chỉ được tặng nhiều ưu đ&atilde;i hấp dẫn m&agrave; c&ograve;n hưởng th&ecirc;m những dịch vụ gi&uacute;p bạn dễ d&agrave;ng sở hữu m&oacute;n h&agrave;ng c&ocirc;ng nghệ y&ecirc;u th&iacute;ch cũng như an t&acirc;m sử dụng sản phẩm.<br />\r\nNgo&agrave;i việc trải nghiệm v&agrave; chọn mua sản phẩm trực tiếp tại hệ thống hơn 630 cửa h&agrave;ng tr&ecirc;n to&agrave;n quốc, bạn c&oacute; thể chọn mua online, FPT Shop sẽ giao h&agrave;ng tận nơi trong v&ograve;ng 60 ph&uacute;t.<br />\r\nKh&ocirc;ng những thế, sản phẩm tại FPT Shop sẽ được bảo h&agrave;nh theo IMEI n&ecirc;n rất ch&iacute;nh x&aacute;c v&agrave; thuận tiện, bạn sẽ kh&ocirc;ng phải lo bị mất giấy tờ, h&oacute;a đơn. Bạn sẽ được miễn ph&iacute; một đổi một trong 30 ng&agrave;y nếu sản phẩm bạn mua ph&aacute;t sinh lỗi do nh&agrave; sản xuất, ri&ecirc;ng với phụ kiện sẽ được bảo h&agrave;nh một đổi một trong một năm.<br />\r\nVới những kh&aacute;ch h&agrave;ng đang băn khoăn về vấn đề t&agrave;i ch&iacute;nh c&oacute; thể chọn mua trả g&oacute;p 0% l&atilde;i suất bởi thủ tục trả g&oacute;p tại FPT Shop rất đơn giản v&agrave; hồ sơ được duyệt nhanh, kh&ocirc;ng cần đến cửa h&agrave;ng. Đồng thời, FPT Shop c&oacute; nhiều h&igrave;nh thức trả g&oacute;p như trả g&oacute;p 0% l&atilde;i suất hay trả trước 0 đồng với nhiều nh&agrave; t&agrave;i ch&iacute;nh v&agrave; ng&acirc;n h&agrave;ng uy t&iacute;n cho bạn lựa chọn.&nbsp; Kh&aacute;ch h&agrave;ng chọn mua trả g&oacute;p tại FPT Shop sẽ được nhận đầy đủ ưu đ&atilde;i tương tự như mua sản phẩm trả thẳng, &aacute;p dụng với hầu hết sản phẩm.<br />\r\nĐặc biệt hơn, FPT Shop c&ograve;n c&oacute; chương tr&igrave;nh thu cũ đổi mới, trợ gi&aacute; 15%. Theo đ&oacute;, bạn chỉ cần mang m&aacute;y cũ Vivo đến FPT Shop, bạn c&oacute; thể l&ecirc;n đời tất cả sản phẩm điện thoại Vivo ch&iacute;nh h&atilde;ng mới toanh. Hầu hết c&aacute;c loại m&aacute;y cũ đều được thu mua, kể cả c&aacute;c m&aacute;y trầy, m&oacute;p, vỡ k&iacute;nh m&agrave;n h&igrave;nh, m&aacute;y c&ograve;n hay đ&atilde; hết hạn bảo h&agrave;nh, hoặc đ&atilde; bị từ chối bảo h&agrave;nh&hellip; chỉ cần bạn mang th&acirc;n m&aacute;y (kh&ocirc;ng cần sạc, tai nghe, hộp đi k&egrave;m) đến FPT Shop đều sẽ được trợ gi&aacute; thu cũ đổi mới th&ecirc;m đến 15%. Như vậy, bạn c&oacute; thể sở hữu sản phẩm c&ocirc;ng nghệ với chi ph&iacute; tiết kiệm m&agrave; vẫn nhận được nhiều ưu đ&atilde;i thiết thực từ FPT Shop.</p>\r\n\r\n<p><strong>Sản phẩm mua tại FPT Shop l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng, bạn c&oacute; thể chọn mua trực tiếp tại cửa h&agrave;ng, chọn mua online hoặc gọi hotline 1800 6601 để được tư vấn, mua h&agrave;ng nhanh.</strong></p>', '637410326801471760_vivo-y19-unbox-1-of-181.jpg', 'vivo-y19-giam-1-trieu-gia-chi-399-trieu-tai-fpt-shop', 0, 2),
(9, 'Vivo V20 SE chính thức lên kệ FPT Shop: giảm giá 500.000 đồng, giá chỉ 6.690.000 đồng', '<div>Từ ng&agrave;y 13 - 15/11, khi chọn mua sản phẩm Vivo V20 SE tại FPT Shop bạn sẽ nhận ưu đ&atilde;i giảm ngay 500.000 đồng, t&ugrave;y chọn trả g&oacute;p 0% l&atilde;i suất c&ugrave;ng nhiều phần qu&agrave; thiết thực kh&aacute;c.</div>', '<h1>Vivo V20 SE ch&iacute;nh thức l&ecirc;n kệ FPT Shop: giảm gi&aacute; 500.000 đồng, gi&aacute; chỉ 6.690.000 đồng</h1>\r\n\r\n<p><img src=\"https://fptshop.com.vn/tin-tuc/images/user.png\" />&nbsp;B&ugrave;i Trần Mỹ Huyền&nbsp;-&nbsp;16 ng&agrave;y trước&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/tin-khuyen-mai/vivo-v20-se-chinh-thuc-len-ke-fpt-shop-giam-gia-500-000-dong-gia-chi-6-690-000-dong-128186#news-comment\">&nbsp;2&nbsp;B&igrave;nh luận</a></p>\r\n\r\n<h2>Từ ng&agrave;y 13 - 15/11, khi chọn mua sản phẩm Vivo V20 SE tại FPT Shop bạn sẽ nhận ưu đ&atilde;i giảm ngay 500.000 đồng, t&ugrave;y chọn trả g&oacute;p 0% l&atilde;i suất c&ugrave;ng nhiều phần qu&agrave; thiết thực kh&aacute;c.</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/tin-khuyen-mai/don-giang-sinh-fpt-shop-giam-den-50-cho-dong-ho-thoi-trang-128919\">Săn đồng hồ ch&iacute;nh h&atilde;ng giảm đến 50% tại FPT Shop</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/tin-khuyen-mai/duoc-tra-gop-0-lai-suat-khi-mua-poco-x3-nfc-tai-fpt-shop-128596\">Được trả g&oacute;p 0% l&atilde;i suất khi mua Poco X3 NFC tại FPT Shop</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/tin-khuyen-mai/san-phu-kien-chinh-hang-chi-tu-79-000-dong-tai-fpt-shop-128268\">Săn phụ kiện ch&iacute;nh h&atilde;ng chỉ từ 79.000 đồng tại FPT Shop</a></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>L&agrave; sản phẩm mới nhất của Vivo trong th&aacute;ng 11,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/vivo-v20-se\">Vivo V20 SE (8GB - 128GB)</a>&nbsp;được t&iacute;ch hợp nhiều t&iacute;nh năng vượt trội so với đối thủ trong ph&acirc;n kh&uacute;c. Sản phẩm đang tr&ecirc;n kệ FPT Shop với gi&aacute; 7.190.000 đồng c&ugrave;ng 02 phi&ecirc;n bản m&agrave;u sắc thời trang: Xanh băng tuyết v&agrave; Đen thạch anh.</p>\r\n\r\n<p>Đặc biệt từ ng&agrave;y 13/11 đến 15/11, kh&aacute;ch h&agrave;ng chọn mua Vivo V20 SE tại FPT Shop sẽ được giảm gi&aacute; ngay 500.000 đồng, gi&aacute; về tay chỉ c&ograve;n 6.690.000 đồng. Kh&ocirc;ng k&eacute;m phần thiết thực, bạn sẽ được hỗ trợ mua trả g&oacute;p 0% l&atilde;i suất kỳ hạn đến 6 th&aacute;ng với khoản trả trước &lsquo;nhẹ nh&agrave;ng&rsquo; chỉ 669.000 đồng. Hơn nữa, thủ tục trả g&oacute;p v&ocirc; c&ugrave;ng đơn giản v&agrave; nhanh ch&oacute;ng, bạn c&ograve;n được hỗ trợ từ xa m&agrave; kh&ocirc;ng cần đến cửa h&agrave;ng. Kh&ocirc;ng k&eacute;m phần thiết thực, FPT Shop c&ograve;n tặng bạn suất mua&nbsp;<a href=\"https://fptshop.com.vn/smartwatch\">đồng hồ th&ocirc;ng minh</a>&nbsp;giảm 30%, gi&aacute; chỉ c&ograve;n 899.000 đồng mua k&egrave;m m&aacute;y.<br />\r\nĐể mua sản phẩm Vivo V20 SE ch&iacute;nh h&atilde;ng với nhiều ưu đ&atilde;i nhất từ FPT Shop, bạn c&oacute; thể đến hệ thống hơn 600 cửa h&agrave;ng, mua online&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/vivo-v20-se\">tại đ&acirc;y</a>.</p>\r\n\r\n<p><img alt=\"\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/128186/Originals/HASP-VIVO-V20-SE-2.png?imgeng=/cmpr_10\" /></p>\r\n\r\n<p><em>FPT Shop giảm ngay 500.000 đồng, trả g&oacute;p 0% l&atilde;i suất khi mua Vivo V20 SE.</em></p>\r\n\r\n<p>Vivo V20 SE sở hữu thiết kế bo cong 3D, mỏng nhẹ chỉ 7.83mm đi c&ugrave;ng chất liệu polymer cao cấp tạo cảm gi&aacute;c thoải m&aacute;i khi cầm tay. Được biết, d&ograve;ng m&aacute;y được n&acirc;ng tầm bởi thuật to&aacute;n HDR+ Morpho độc quyền của Vivo, c&ocirc;ng nghệ th&ocirc;ng minh gi&uacute;p l&agrave;m s&aacute;ng c&aacute;c điểm tối v&agrave; giảm hiện tượng ch&aacute;y s&aacute;ng, mang đến ảnh ch&acirc;n dung ban đ&ecirc;m r&otilde; n&eacute;t v&agrave; c&acirc;n bằng hơn. Đồng thời, V20 SE c&ograve;n kết hợp hiệu ứng th&ocirc;ng minh, gi&uacute;p ho&agrave;n thiện th&ecirc;m n&eacute;t đẹp của bạn trong m&ocirc;i trường thiếu s&aacute;ng. Ngo&agrave;i camera selfie si&ecirc;u chụp đ&ecirc;m 32MP, sản phẩm c&ograve;n trang bị bộ 3 camera 48MP, camera g&oacute;c si&ecirc;u rộng v&agrave; si&ecirc;u cận 8MP c&ugrave;ng camera x&oacute;a ph&ocirc;ng 2MP cho bạn thỏa sức s&aacute;ng tạo khi chụp h&igrave;nh, quay video 4K, quay video chống rung điện tử si&ecirc;u n&eacute;t.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/128186/Originals/HASP-VIVO-V20-SE-3.png?imgeng=/cmpr_10\" /></p>\r\n\r\n<p><em>Vivo V20 SE hội tụ c&aacute;c yếu tố thời trang cao cấp, dẫn đầu xu hướng.</em></p>\r\n\r\n<p>Vivo V20 SE cũng l&agrave; sự lựa chọn hợp l&yacute; cho những bạn thường xuy&ecirc;n sử dụng&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;bởi m&aacute;y được t&iacute;ch hợp vi&ecirc;n pin c&oacute; dung lượng đến 4.100 mAh v&agrave; hỗ trợ sạc si&ecirc;u tốc 33W độc quyền từ Vivo. Bạn c&oacute; thể sạc đầy 62% trong 30 ph&uacute;t v&agrave; ho&agrave;n th&agrave;nh 100% pin trong thời gian chưa đến một giờ.<br />\r\nD&ograve;ng m&aacute;y c&ograve;n l&agrave;m h&agrave;i l&ograve;ng người d&ugrave;ng khi mang tr&ecirc;n m&igrave;nh bộ vi xử l&yacute; Snapdragon 665, chip 8 nh&acirc;n Kryo 260 tốc độ tối đa 2.0GHz v&agrave; đi c&ugrave;ng GPU đồ họa Adreno 610 chuy&ecirc;n&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/giai-tri\">game</a>. Dung lượng bộ nhớ 8GB RAM v&agrave; 128GB bộ nhớ trong gi&uacute;p chạy mượt mọi ứng dụng, sử dụng nhanh ch&oacute;ng ở mọi thao t&aacute;c h&agrave;ng ng&agrave;y. Đặc biệt hơn, V20 SE c&ograve;n gi&uacute;p bạn loại bỏ tiếng ồn một c&aacute;ch th&ocirc;ng minh th&ocirc;ng qua hai micro v&agrave; thuật to&aacute;n khử tiếng ồn kết hợp thuật to&aacute;n xử l&yacute; AI. Th&ecirc;m v&agrave;o đ&oacute;, chế độ th&igrave; thầm của sản phẩm cho ph&eacute;p người d&ugrave;ng b&ecirc;n kia vẫn c&oacute; thể nghe r&otilde; giọng n&oacute;i của bạn ngay cả khi n&oacute;i nhỏ.</p>\r\n\r\n<p><strong>Điều g&igrave; khiến người d&ugrave;ng tin chọn mua Vivo tại FPT Shop?</strong><br />\r\n<br />\r\nChọn mua điện thoại Vivo V20 SE tại FPT Shop, bạn kh&ocirc;ng chỉ được tặng nhiều ưu đ&atilde;i hấp dẫn m&agrave; c&ograve;n hưởng th&ecirc;m những dịch vụ gi&uacute;p bạn dễ d&agrave;ng sở hữu m&oacute;n h&agrave;ng c&ocirc;ng nghệ y&ecirc;u th&iacute;ch cũng như an t&acirc;m sử dụng sản phẩm.<br />\r\nThứ nhất, ngo&agrave;i việc trải nghiệm v&agrave; chọn mua sản phẩm trực tiếp tại hệ thống hơn 620 cửa h&agrave;ng tr&ecirc;n to&agrave;n quốc, bạn c&oacute; thể chọn mua online FPT Shop sẽ giao h&agrave;ng tận nơi.&nbsp;<br />\r\nThứ hai, sản phẩm tại FPT Shop sẽ được bảo h&agrave;nh theo IMEI n&ecirc;n rất ch&iacute;nh x&aacute;c v&agrave; thuận tiện, bạn sẽ kh&ocirc;ng phải lo bị mất giấy tờ, h&oacute;a đơn. Bạn sẽ được miễn ph&iacute; một đổi một trong 30 ng&agrave;y nếu sản phẩm bạn mua ph&aacute;t sinh lỗi do nh&agrave; sản xuất. B&ecirc;n cạnh đ&oacute;, bạn c&ograve;n c&oacute; thể t&ugrave;y chọn mua m&aacute;y Vivo trả g&oacute;p tại FPT Shop. thủ tục trả g&oacute;p v&ocirc; c&ugrave;ng đơn giản c&ugrave;ng 15 ph&uacute;t x&eacute;t duyệt để rinh ngay một chiếc điện thoại mới toanh về nh&agrave;.<br />\r\nThứ ba, trong th&aacute;ng 11 n&agrave;y, chỉ cần mang m&aacute;y cũ đến FPT Shop, bạn c&oacute; thể l&ecirc;n đời tất cả sản phẩm điện thoại Vivo ch&iacute;nh h&atilde;ng mới toanh. Theo đ&oacute;, hầu hết c&aacute;c loại m&aacute;y cũ đều được thu mua, kể cả c&aacute;c m&aacute;y trầy, m&oacute;p, vỡ k&iacute;nh m&agrave;n h&igrave;nh, m&aacute;y c&ograve;n hay đ&atilde; hết hạn bảo h&agrave;nh, hoặc đ&atilde; bị từ chối bảo h&agrave;nh&hellip; chỉ cần bạn mang th&acirc;n m&aacute;y (kh&ocirc;ng cần sạc, tai nghe, hộp đi k&egrave;m) đến FPT Shop đều sẽ được trợ gi&aacute; thu cũ đổi mới th&ecirc;m đến 15%. Như vậy, bạn c&oacute; thể sở hữu sản phẩm c&ocirc;ng nghệ với chi ph&iacute; tiết kiệm m&agrave; vẫn nhận được nhiều ưu đ&atilde;i thiết thực từ FPT Shop.</p>\r\n\r\n<p><br />\r\n<strong>Sản phẩm mua tại FPT Shop l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng, được đổi trả miễn ph&iacute; trong 30 ng&agrave;y, bạn c&oacute; thể chọn mua trực tiếp tại cửa h&agrave;ng, chọn mua online hoặc gọi hotline 1800 6601 để được tư vấn, mua h&agrave;ng nhanh.</strong></p>', '637410308761085972_hasp-vivo-v20-se-243.jpg', 'vivo-v20-se-chinh-thuc-len-ke-fpt-shop-giam-gia-500000-dong-gia-chi-6690000-dong', 0, 2);
INSERT INTO `tintuc` (`tintuc_id`, `tintuc_ten`, `tintuc_tomtat`, `tintuc_noidung`, `tintuc_hinh`, `tintuc_nhan`, `tintuc_hienthi`, `dmt_id`) VALUES
(10, 'Xiaomi Poco X3 NFC: Chiếc smartphone hiếm có đối thủ trong phân khúc.', '<div>L&agrave; một chiếc smartphone tầm trung với điểm mạnh từ mặt thiết kế đẹp mắt, hiệu năng mạnh mẽ đ&aacute;p ứng tốt c&aacute;c nhu cầu đến thời lượng pin l&acirc;u d&agrave;i, Xiaomi Poco X3 NFC l&agrave; chiếc smartphone tầm trung rất đ&aacute;ng lựa chọn ở thời điểm hiện tại.</div>', '<h1>Xiaomi Poco X3 NFC: Chiếc smartphone hiếm c&oacute; đối thủ trong ph&acirc;n kh&uacute;c.</h1>\r\n\r\n<p><img src=\"https://fptshop.com.vn/tin-tuc/images/user.png\" />&nbsp;NHQ&nbsp;-&nbsp;18 ng&agrave;y trước&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/xiaomi-poco-x3-nfc-chiec-smartphone-hiem-co-doi-thu-trong-phan-khuc-128201#news-comment\">&nbsp;2&nbsp;B&igrave;nh luận</a></p>\r\n\r\n<h2>L&agrave; một chiếc smartphone tầm trung với điểm mạnh từ mặt thiết kế đẹp mắt, hiệu năng mạnh mẽ đ&aacute;p ứng tốt c&aacute;c nhu cầu đến thời lượng pin l&acirc;u d&agrave;i, Xiaomi Poco X3 NFC l&agrave; chiếc smartphone tầm trung rất đ&aacute;ng lựa chọn ở thời điểm hiện tại.</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/samsung-galaxy-a21s-la-chiec-smartphone-ban-chay-nhat-trong-phan-khuc-va-day-la-ly-do-128509\">Samsung Galaxy A21s l&agrave; chiếc smartphone b&aacute;n chạy nhất trong ph&acirc;n kh&uacute;c v&agrave; đ&acirc;y l&agrave; l&yacute; do</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/chi-con-hon-7-trieu-dong-day-la-thoi-diem-qua-tot-de-chon-mua-oppo-reno4-128030\">Chỉ c&ograve;n hơn 7 triệu đồng, đ&acirc;y l&agrave; thời điểm qu&aacute; tốt để chọn mua OPPO Reno4</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/giai-ma-suc-hut-cua-vivo-v20-trong-thoi-gian-qua-127995\">Giải m&atilde; sức h&uacute;t của vivo V20 trong thời gian qua</a></h3>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">Thiết kế tạo n&ecirc;n sự kh&aacute;c biệt</h2>\r\n\r\n<p dir=\"ltr\">C&agrave;ng ng&agrave;y c&aacute;c mẫu smartphone tầm trung đều cho thấy sự tương đồng về mặt thiết kế v&agrave; ngoại h&igrave;nh khiến người d&ugrave;ng cảm thấy bối rối khi lựa chọn bởi ch&uacute;ng kh&aacute; giống nhau. Ch&iacute;nh v&igrave; vậy,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/poco-x3-nfc-6gb-128gb\" id=\"Poco X3\" rel=\"dofollow\" target=\"_blank\" title=\"Poco X3\" type=\"Poco X3\">Poco X3 NFC</a>&nbsp;được trang bị vẻ ngo&agrave;i tạo n&ecirc;n sự kh&aacute;c biệt v&agrave; dễ d&agrave;ng nhận diện hơn. Điểm nhấn của chiếc m&aacute;y n&agrave;y ch&iacute;nh l&agrave; phần mặt lưng với d&ograve;ng chữ &ldquo;POCO&rdquo; nổi bật ở ch&iacute;nh giữa mặt lưng. Hệ thống camera ph&iacute;a sau cũng được s&aacute;ng tạo mới mẻ với 4 camera ph&iacute;a sau xếp trong một cụm đặt ở ch&iacute;nh giữa kh&aacute; lạ mắt. Ch&iacute;nh điều tr&ecirc;n đ&atilde; khiến chiếc m&aacute;y n&agrave;y nổi bật v&agrave; dễ d&agrave;ng nhận biết hơn.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Poco X3\" id=\"Poco X3\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/128201/Originals/gsmarena_021.jpg?imgeng=/cmpr_10\" title=\"Poco X3\" /></p>\r\n\r\n<p dir=\"ltr\">Mặt trước của m&aacute;y l&agrave; m&agrave;n h&igrave;nh 6.67 inches tấm nền IPS LCD c&oacute; tần số qu&eacute;t l&ecirc;n đến 120Hz mang đến trải nghiệm mượt m&agrave; v&agrave; khả năng phản hồi nhanh ch&oacute;ng, tăng th&ecirc;m cảm gi&aacute;c khi sử dụng cho người d&ugrave;ng. Camera selfie của m&aacute;y được đặt ch&iacute;nh giữa m&agrave;n h&igrave;nh nhưng c&oacute; diện t&iacute;ch kh&aacute; nhỏ mang đến năng hiển thị cũng như thẩm mỹ hơn cho chiếc m&aacute;y n&agrave;y.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Poco X3\" id=\"Poco X3\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/128201/Originals/HASP-Poco-X3-36.jpg?imgeng=/cmpr_10\" title=\"Poco X3\" /></p>\r\n\r\n<h2 dir=\"ltr\">Hiệu năng mạnh mẽ bậc nhất trong ph&acirc;n kh&uacute;c</h2>\r\n\r\n<p dir=\"ltr\">So s&aacute;nh với c&aacute;c chiếc m&aacute;y kh&aacute;c nằm trong ph&acirc;n kh&uacute;c, gần như kh&ocirc;ng c&oacute; sản phẩm n&agrave;o c&oacute; cấu h&igrave;nh mạnh mẽ hơn Poco X3 NFC. M&aacute;y được trang bị vi xử l&yacute;&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/tin-moi/qualcomm-ra-mat-chipset-snapdragon-732g-cho-smartphone-tam-trung-125255\" rel=\"dofollow\" target=\"_blank\" title=\"Snapdragon 732G\" type=\"Snapdragon 732G\">Qualcomm Snapdragon 732G</a>&nbsp;được sản xuất tr&ecirc;n tiến tr&igrave;nh 8nm, dung lượng RAM 6GB v&agrave; bộ nhớ lưu trữ 128GB. Hiệu năng của m&aacute;y c&oacute; thể đ&aacute;p ứng tốt c&aacute;c nhu cầu sử dụng của người d&ugrave;ng h&agrave;ng ng&agrave;y từ cơ bản đến chiến&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/giai-tri\">game</a>&nbsp;đều v&ocirc; c&ugrave;ng mượt m&agrave;.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Poco X3\" id=\"Poco X3\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/128201/Originals/poco-x3-nfc-7.jpg?imgeng=/cmpr_10\" title=\"Poco X3\" /></p>\r\n\r\n<p dir=\"ltr\">POCO X3 NFC c&ograve;n được t&iacute;ch hợp th&ecirc;m c&ocirc;ng nghệ l&agrave;m m&aacute;t LiquidCool 1.0 +, kết hợp ống dẫn nhiệt bằng đồng lớn với c&aacute;c tấm carbon tản nhiệt xếp chồng l&ecirc;n nhau nhằm giảm nhiệt độ vi xử l&yacute; của&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;l&ecirc;n đến 6 độ C c&ugrave;ng với Game Turbo 3.0 gi&uacute;p tối ưu hiệu năng khi chơi game v&agrave; m&agrave;n h&igrave;nh tần số qu&eacute;t 120Hz. Chắc chắn chiếc m&aacute;y n&agrave;y sẽ mang đến cho bạn những trải nghiệm chơi game cực đ&atilde;.</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Poco X3\" id=\"Poco X3\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/128201/Originals/HASP-Poco-X3-28.jpg?imgeng=/cmpr_10\" title=\"Poco X3\" /></p>\r\n\r\n<h2 dir=\"ltr\">Hệ thống camera chất lượng</h2>\r\n\r\n<p dir=\"ltr\">Khả năng chụp h&igrave;nh của Poco X3 NFC cũng kh&ocirc;ng hề k&eacute;m cạnh bất kỳ đối thủ n&agrave;o. M&aacute;y c&oacute; tới 4 camera ph&iacute;a sau bao gồm camera ch&iacute;nh độ ph&acirc;n giải cao 64MP, camera g&oacute;c si&ecirc;u rộng 13MP, camera macro 2MP v&agrave; cảm biến độ s&acirc;u 2MP mang đến c&aacute;c bức ảnh v&ocirc; c&ugrave;ng sắc n&eacute;t v&agrave; s&aacute;ng tạo với nhiều chế độ v&agrave; g&oacute;c độ chụp kh&aacute;c nhau.</p>\r\n\r\n<p dir=\"ltr\">Kh&ocirc;ng chỉ c&oacute; phần cứng camera khủng, Poco X3 NFC c&ograve;n sở hữu ứng dụng m&aacute;y ảnh rất đa năng với h&agrave;ng loạt chế độ chụp h&igrave;nh s&aacute;ng tạo như 6 t&ugrave;y chọn k&iacute;nh vạn hoa, chế độ Gold Vibes, chế độ Cyberpunk, nhiều bộ lọc ảnh mới cũng như chức năng thay đổi nền trời AI Skyscraping 3.0... Ngo&agrave;i ra, bạn c&ograve;n c&oacute; thể tận dụng khả năng quay video 4K cũng như c&aacute;c t&iacute;nh năng thu ph&oacute;ng video, tốc độ lấy n&eacute;t cao v&agrave; kh&oacute;a AE/AF để tạo ra c&aacute;c thước phim chuy&ecirc;n nghiệp tr&ecirc;n ch&iacute;nh chiếc m&aacute;y n&agrave;y.</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Poco X3\" id=\"Poco X3\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/128201/Originals/HASP-Poco-X3-27.jpg?imgeng=/cmpr_10\" title=\"Poco X3\" /></p>\r\n\r\n<h2 dir=\"ltr\">Thời lượng pin l&acirc;u d&agrave;i, t&iacute;ch hợp sạc nhanh</h2>\r\n\r\n<p dir=\"ltr\">Vi&ecirc;n pin của m&aacute;y c&oacute; dung lượng 5.160 mAh mang đến thời lượng sử dụng l&acirc;u d&agrave;i, l&ecirc;n đến 7-8 tiếng li&ecirc;n tục với nhiều t&aacute;c vụ hỗn hợp kh&aacute;c nhau. Thời lượng sử dụng l&acirc;u d&agrave;i gi&uacute;p cho người d&ugrave;ng c&oacute; thể thoải m&aacute;i sử dụng m&agrave; kh&ocirc;ng cần lo lắng về thời lượng pin. Poco X3 NFC c&ograve;n được trang bị c&ocirc;ng nghệ sạc nhanh 33W mang đến thời gian sạc v&ocirc; c&ugrave;ng nhanh ch&oacute;ng, chỉ cần 30 ph&uacute;t l&agrave; m&aacute;y đ&atilde; c&oacute; thể sạc được 62% pin v&agrave; khoảng 65 ph&uacute;t để sạc đầy pin.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Poco X3\" id=\"Poco X3\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/128201/Originals/gsmarena_005.jpg?imgeng=/cmpr_10\" title=\"Poco X3\" /></p>\r\n\r\n<p dir=\"ltr\">Mạnh mẽ về mặt hiệu năng với khả năng chiến game mượt m&agrave;, m&agrave;n h&igrave;nh 120Hz, thời lượng pin l&acirc;u d&agrave;i l&ecirc;n đến 2 ng&agrave;y cũng như camera v&agrave; thiết kế ấn tượng, Poco X3 NFC l&agrave; một sự lựa chọn kh&ocirc;ng thể bỏ qua trong ph&acirc;n kh&uacute;c tầm trung.</p>', '637408823045297662_hasp-poco-x3-1246.jpg', 'xiaomi-poco-x3-nfc-chiec-smartphone-hiem-co-doi-thu-trong-phan-khuc', 0, 1),
(11, 'So sánh cấu hình Samsung Galaxy F41 với Xiaomi POCO X3 và Realme 7 Pro', '<div>Gần đ&acirc;y, Samsung đ&atilde; giới thiệu smartphone đầu ti&ecirc;n thuộc d&ograve;ng F mới của h&atilde;ng, c&oacute; t&ecirc;n gọi l&agrave; Galaxy F41. D&ugrave; sở hữu mức gi&aacute; kh&aacute; phải chăng nhưng điện thoại n&agrave;y vẫn g&acirc;y ấn tượng với h&agrave;ng loạt t&iacute;nh năng hấp dẫn như m&agrave;n h&igrave;nh giọt nước bắt mắt, cấu h&igrave;nh phần cứng tốt v&agrave; pin 6,000 mAh.</div>', '<h1>So s&aacute;nh cấu h&igrave;nh Samsung Galaxy F41 với Xiaomi POCO X3 v&agrave; Realme 7 Pro</h1>\r\n\r\n<p><img src=\"https://fptshop.com.vn/tin-tuc/images/user.png\" />&nbsp;HN&nbsp;-&nbsp;v&agrave;o ng&agrave;y 13/10/2020&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/so-sanh-cau-hinh-samsung-galaxy-f41-voi-xiaomi-poco-x3-va-realme-7-pro-126778#news-comment\">&nbsp;0&nbsp;B&igrave;nh luận</a></p>\r\n\r\n<h2>Gần đ&acirc;y, Samsung đ&atilde; giới thiệu smartphone đầu ti&ecirc;n thuộc d&ograve;ng F mới của h&atilde;ng, c&oacute; t&ecirc;n gọi l&agrave; Galaxy F41. D&ugrave; sở hữu mức gi&aacute; kh&aacute; phải chăng nhưng điện thoại n&agrave;y vẫn g&acirc;y ấn tượng với h&agrave;ng loạt t&iacute;nh năng hấp dẫn như m&agrave;n h&igrave;nh giọt nước bắt mắt, cấu h&igrave;nh phần cứng tốt v&agrave; pin 6,000 mAh.</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/co-gi-thu-vi-tren-bo-ba-xiaomi-redmi-note-9-pro-5g-note-9-5g-moi-ra-mat-128782\">C&oacute; g&igrave; th&uacute; vị tr&ecirc;n bộ ba Xiaomi Redmi Note 9 Pro 5G, Note 9 5G v&agrave; Note 9 4G mới ra mắt?</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/tren-tay-xiaomi-poco-m3-pin-6-000-mah-hieu-nang-tot-128719\">Tr&ecirc;n tay Xiaomi POCO M3: Pin 6,000 mAh, hiệu năng tốt, gi&aacute; chỉ từ 3.5 triệu đồng</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/samsung-chinh-thuc-ra-mat-bo-doi-galaxy-a12-va-galaxy-a02s-128659\">Tất tần tật th&ocirc;ng tin bạn cần biết về bộ đ&ocirc;i Galaxy A12 v&agrave; A02s mới được Samsung ra mắt</a></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Vậy khi đặt l&ecirc;n b&agrave;n c&acirc;n so s&aacute;nh với 2 đối thủ kh&aacute;c ở c&ugrave;ng ph&acirc;n kh&uacute;c l&agrave;&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/poco-x3-nfc-6gb-128gb\" target=\"_blank\" title=\"POCO X3 NFC\" type=\"POCO X3 NFC\">POCO X3 NFC</a>&nbsp;v&agrave;&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/realme-7-pro\" target=\"_blank\" title=\"Realme 7 Pro\" type=\"Realme 7 Pro\">Realme 7 Pro</a>&nbsp;th&igrave; liệu&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-f41\" target=\"_blank\" title=\"Galaxy F41 chính hãng\" type=\"Galaxy F41 chính hãng\">Galaxy F41</a>&nbsp;c&oacute; đủ sức đ&aacute;nh bại?</p>\r\n\r\n<h2 dir=\"ltr\">Thiết kế</h2>\r\n\r\n<p dir=\"ltr\"><img alt=\"Realme 7 Pro\" id=\"Realme 7 Pro\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/126778/Originals/Realme-7-Pro-2.jpg?imgeng=/cmpr_10\" title=\"Realme 7 Pro\" /></p>\r\n\r\n<p dir=\"ltr\">Nếu bạn muốn một chiếc smartphone c&oacute; thiết kế thanh lịch v&agrave; hiện đại, bạn n&ecirc;n chọn Realme 7 Pro hoặc POCO X3 NFC. Smartphone của Realme g&acirc;y ấn tượng với th&acirc;n m&aacute;y mỏng v&agrave; kh&aacute; nhẹ, trong khi POCO X3 NFC sử dụng chất liệu ho&agrave;n thiện tốt hơn với khung nh&ocirc;m cao cấp.</p>\r\n\r\n<p dir=\"ltr\">Realme 7 Pro c&oacute; lớp phủ chống thấm nước, v&igrave; vậy bạn c&oacute; thể sử dụng n&oacute; dưới mưa m&agrave; kh&ocirc;ng gặp nhiều vấn đề. Bạn cũng c&oacute; thể l&agrave;m điều tương tự với POCO X3 NFC khi&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;n&agrave;y cũng đạt chứng nhận IP53. Smartphone c&ograve;n lại, Galaxy F41 được l&agrave;m ho&agrave;n to&agrave;n bằng nhựa v&agrave; m&aacute;y qu&eacute;t v&acirc;n tay gắn ở ph&iacute;a sau (kh&ocirc;ng giống như Realme 7 Pro được t&iacute;ch hợp trong m&agrave;n h&igrave;nh) v&agrave; sử dụng notch h&igrave;nh giọt nước thay v&igrave; thiết kế &ldquo;đục lỗ&rdquo;.</p>\r\n\r\n<h2 dir=\"ltr\">M&agrave;n h&igrave;nh</h2>\r\n\r\n<p dir=\"ltr\"><img alt=\"POCO X3\" id=\"POCO X3\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/126778/Originals/HASP-Poco-X3-28.jpg?imgeng=/cmpr_10\" title=\"POCO X3\" /></p>\r\n\r\n<p dir=\"ltr\">Nếu bạn muốn sở hữu một chiếc smartphone c&oacute; chất lượng hiển thị tốt th&igrave; Galaxy F41 v&agrave; Realme 7 Pro l&agrave; lựa chọn tốt hơn POCO X3 NFC v&igrave; hai thiết bị n&agrave;y sử dụng tấm nền AMOLED cao cấp hơn, gi&uacute;p hiển thị m&agrave;u sắc rực rỡ v&agrave; m&agrave;u đen s&acirc;u hơn.</p>\r\n\r\n<p dir=\"ltr\">Tuy nhi&ecirc;n, nếu l&agrave; một&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/giai-tri\">game</a>&nbsp;thủ th&igrave; bạn c&oacute; thể sẽ th&iacute;ch POCO X3 NFC hơn v&igrave; điện thoại n&agrave;y c&oacute; m&agrave;n h&igrave;nh 120Hz si&ecirc;u mượt v&agrave; thậm ch&iacute; l&agrave; tương th&iacute;ch với HDR10. Ngo&agrave;i ra, di động của&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/realme\" target=\"_blank\" title=\"Realme\" type=\"Realme\">Realme</a>&nbsp;cũng c&oacute; k&iacute;ch thước m&agrave;n h&igrave;nh lớn hơn Realme 7 Pro v&agrave; Galaxy F41 (6.67 inch so với 6.4 inch).</p>\r\n\r\n<h2 dir=\"ltr\">Th&ocirc;ng số kỹ thuật v&agrave; phần mềm</h2>\r\n\r\n<p dir=\"ltr\"><img alt=\"Samsung Galaxy F41\" id=\"Samsung Galaxy F41\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/126778/Originals/Samsung-Galaxy-F41-ra-mat-1.jpg?imgeng=/cmpr_10\" title=\"Samsung Galaxy F41\" /></p>\r\n\r\n<p dir=\"ltr\">Smartphone c&oacute; phần cứng tốt nhất v&agrave; hiệu năng vượt trội 2 đối thủ của n&oacute; l&agrave; POCO X3 NFC. Điện thoại n&agrave;y được trang bị bộ xử l&yacute; Snapdragon 732G, một phi&ecirc;n bản n&acirc;ng cấp của Snapdragon 730G. Trong hai mẫu m&aacute;y c&ograve;n lại th&igrave; Realme 7 Pro d&ugrave;ng chip Snapdragon 720G n&ecirc;n cho hiệu năng tốt hơn một ch&uacute;t.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Samsung Galaxy F41 l&eacute;p vế hơn về hiệu năng so với 2 mẫu m&aacute;y c&ograve;n lại do sử dụng Exynos 9611 yếu hơn được x&acirc;y dựng tr&ecirc;n tiến tr&igrave;nh 10nm. Samsung Galaxy F41, POCO X3 NFC v&agrave; Realme 7 Pro đều chạy Android 10 v&agrave; giao diện người d&ugrave;ng t&ugrave;y chỉnh của mỗi h&agrave;ng.</p>\r\n\r\n<h2 dir=\"ltr\">M&aacute;y ảnh</h2>\r\n\r\n<p dir=\"ltr\"><img alt=\"POCO X3 (ảnh 1)\" id=\"POCO X3 (ảnh 1)\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/126778/Originals/HASP-Poco-X3-10.jpg?imgeng=/cmpr_10\" title=\"POCO X3 (ảnh 1)\" /></p>\r\n\r\n<p dir=\"ltr\">Khi n&oacute;i đến camera ph&iacute;a sau, bạn chỉ nhận thấy sự kh&aacute;c biệt nhỏ giữa ba thiết bị n&agrave;y. Cả ba điện thoại n&agrave;y đều sử dụng cảm biến ch&iacute;nh c&oacute; độ ph&acirc;n giải 64MP, nhưng POCO X3 NFC sở hữu ống k&iacute;nh g&oacute;c si&ecirc;u rộng tốt hơn 2 đối thủ c&ograve;n lại với độ ph&acirc;n giải 13MP. Trong khi Galaxy F41 lại g&acirc;y ấn tượng với camera macro 5MP v&agrave; m&aacute;y ảnh selfie độ ph&acirc;n giải 32MP với ống k&iacute;nh khẩu độ f/2.0.</p>\r\n\r\n<h2 dir=\"ltr\">Pin</h2>\r\n\r\n<p dir=\"ltr\"><img alt=\"Samsung Galaxy F41 (ảnh 1)\" id=\"Samsung Galaxy F41 (ảnh 1)\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/126778/Originals/Samsung-Galaxy-F41-ra-mat-2.jpg?imgeng=/cmpr_10\" title=\"Samsung Galaxy F41 (ảnh 1)\" /></p>\r\n\r\n<p dir=\"ltr\">Samsung Galaxy F41 sẽ cung cấp thời lượng pin l&acirc;u nhất nhờ vi&ecirc;n pin khổng lồ 6,000 mAh. Vị tr&iacute; thứ hai kh&ocirc;ng nhất thiết thuộc về POCO X3 NFC mặc d&ugrave; pin của n&oacute; lớn hơn Realme 7 Pro. Đ&oacute; l&agrave; bởi v&igrave; di động của Xiaomi sở hữu m&agrave;n h&igrave;nh 120Hz &ldquo;ngốn&rdquo; kh&aacute; nhiều pin v&agrave; tấm nền IPS, c&ograve;n Realme 7 Pro c&oacute; m&agrave;n h&igrave;nh AMOLED tiết kiệm năng lượng hơn. Về khả năng sạc th&igrave; di động Realme g&acirc;y ấn tượng với c&ocirc;ng nghệ sạc 65W ấn tượng.</p>\r\n\r\n<h2 dir=\"ltr\">Gi&aacute; b&aacute;n</h2>\r\n\r\n<p dir=\"ltr\"><img alt=\"Realme 7 Pro (ảnh 1)\" id=\"Realme 7 Pro (ảnh 1)\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/126778/Originals/Realme-7-Pro-6.jpg?imgeng=/cmpr_10\" title=\"Realme 7 Pro (ảnh 1)\" /></p>\r\n\r\n<p dir=\"ltr\">Samsung Galaxy F41 c&oacute; gi&aacute; khoảng 232 USD tại Ấn Độ, trong khi gi&aacute; POCO X3 NFC c&oacute; gi&aacute; khởi điểm tương tự, v&agrave; gi&aacute; Realme 7 Pro bắt đầu từ ​​370 USD. Nh&igrave;n chung, kh&ocirc;ng c&oacute; smartphone n&agrave;o chiến thắng cuối c&ugrave;ng trong m&agrave;n so s&aacute;nh n&agrave;y. Nếu bạn cần một chiếc smartphone c&oacute; chất lượng hiển thị tốt v&agrave; thời lượng pin &ldquo;khủng&rdquo; th&igrave; Galaxy F41 sẽ l&agrave; lựa chọn hấp dẫn nhất. C&ograve;n POCO X3 NFC l&agrave; một chiếc smartphone kh&aacute; hấp dẫn với c&aacute;c game thủ nhờ m&agrave;n h&igrave;nh 120Hz v&agrave; hiệu năng mạnh mẽ hơn. Realme 7 Pro lại g&acirc;y ấn tượng với cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh v&agrave; c&ocirc;ng nghệ sạc si&ecirc;u nhanh. Bạn sẽ chọn smartphone n&agrave;o?</p>\r\n\r\n<p><strong>Theo:&nbsp;</strong><em><a href=\"http://www.gizmochina.com/2020/10/09/samsung-galaxy-f41-vs-poco-x3-vs-realme-7-pro-specs-comparison/\" rel=\"nofollow\" target=\"_blank\" title=\"Gizmochina\" type=\"Gizmochina\">Gizmochina</a></em></p>', '637380322804275480_so-sanh-cover62.jpg', 'so-sanh-cau-hinh-samsung-galaxy-f41-voi-xiaomi-poco-x3-va-realme-7-pro', 0, 1),
(12, 'Dòng iPhone 12 thiếu nguồn cung linh kiện, có thể sẽ khan hàng tới Q2/2021', '<div>D&ograve;ng iPhone 12 của Apple mới ra mắt đ&atilde; được người d&ugrave;ng đ&oacute;n nhận nồng nhiệt với doanh số rất tốt. Tuy nhi&ecirc;n, h&atilde;ng lại đang phải &quot;vật lộn&quot; với t&igrave;nh trạng hạn chế nguồn cung linh kiện.</div>', '<h1>D&ograve;ng iPhone 12 thiếu nguồn cung linh kiện, c&oacute; thể sẽ khan h&agrave;ng tới Q2/2021</h1>\r\n\r\n<p><img src=\"https://fptshop.com.vn/tin-tuc/images/user.png\" />&nbsp;Jim&nbsp;-&nbsp;22 giờ trước&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/tin-moi/dong-iphone-12-bi-thieu-nguon-cung-linh-kien-co-the-se-khan-hang-toi-q2-2021-128961#news-comment\">&nbsp;1&nbsp;B&igrave;nh luận</a></p>\r\n\r\n<h2>D&ograve;ng iPhone 12 của Apple mới ra mắt đ&atilde; được người d&ugrave;ng đ&oacute;n nhận nồng nhiệt với doanh số rất tốt. Tuy nhi&ecirc;n, h&atilde;ng lại đang phải &quot;vật lộn&quot; với t&igrave;nh trạng hạn chế nguồn cung linh kiện.</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/iphone-12-la-su-lua-chon-dang-tien-nhat-trong-bo-tu-iphone-nam-nay-128924\">iPhone 12 l&agrave; sự lựa chọn &ldquo;đ&aacute;ng tiền&rdquo; nhất trong bộ tứ iPhone năm nay</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/tin-moi/he-thong-camera-kep-cua-iphone-12-dung-thu-may-trong-bang-xep-hang-cua-dxomark-128864\">Hệ thống camera k&eacute;p của iPhone 12 đứng thứ mấy trong bảng xếp hạng của DxOMark?</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/tin-khuyen-mai/chi-trong-30-phut-fpt-shop-chay-hon-500-iphone-12-series-128910\">Chỉ trong 30 ph&uacute;t, FPT Shop &lsquo;ch&aacute;y&rsquo; hơn 500 iPhone 12 Series</a></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Theo một c&aacute;o c&aacute;o mới từ UDN, d&ograve;ng&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/iphone-12\">iPhone 12</a>&nbsp;đang c&oacute; t&iacute;n hiệu rất tốt khi vượt qua kỳ vọng về doanh số b&aacute;n h&agrave;ng nhưng một số mẫu như&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/iphone-12-pro\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone 12 Pro tại FPTShop\" type=\"Tham khảo điện thoại iPhone 12 Pro tại FPTShop\">iPhone 12 Pro</a>&nbsp;lại đang trong t&igrave;nh trạng khan h&agrave;ng. Nguy&ecirc;n nh&acirc;n ch&iacute;nh dẫn đến t&igrave;nh trạng n&agrave;y l&agrave; do sự thiếu hụt nguồn cung c&aacute;c vi mạch ch&iacute;nh của thiết bị. C&aacute;c th&agrave;nh phần n&agrave;y rất quan trọng đối với&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/apple-iphone\" target=\"_blank\" title=\"Điện thoại iPhone chính hãng tại FPTShop\" type=\"Điện thoại iPhone chính hãng tại FPTShop\">iPhone</a>&nbsp;v&agrave;&nbsp;<a href=\"https://fptshop.com.vn/apple\" target=\"_blank\">Apple</a>&nbsp;chưa thể giải quyết ngay lập tức vấn đề n&agrave;y.</p>\r\n\r\n<p><img alt=\"iPhone 12 Pro\" src=\"https://img.fpt.shop/uploads/images/tin-tuc/128961/Originals/Apple-iPhone-12.jpg?imgeng=/cmpr_10\" /></p>\r\n\r\n<p>Đ&aacute;ng tiếc hơn nữa l&agrave; t&igrave;nh trạng thiếu hụt c&ograve;n c&oacute; thể xảy ra cho tới qu&yacute; 2 năm sau. Theo b&aacute;o c&aacute;o được đưa ra, c&aacute;c xưởng xử l&yacute; vi mạch cho Apple đ&atilde; l&agrave;m tối đa c&ocirc;ng suất nhưng do yếu tố kỹ thuật v&agrave; nhu cầu qu&aacute; lớn trong dịp cuối năm n&ecirc;n c&aacute;c kho dự trữ h&agrave;ng của Apple sẽ bắt đầu khan hiếm dần.</p>\r\n\r\n<p>Điều n&agrave;y chắc chắn sẽ ảnh hưởng lớn tới lộ tr&igrave;nh b&aacute;n h&agrave;ng của h&atilde;ng cũng như lượng người d&ugrave;ng muốn mua thiết bị trong thời gian sắp tới.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<em><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/so-sanh-iphone-12-mini-iphone-12-iphone-12-pro-va-iphone-12-pro-max-su-khac-biet-la-gi-ban-nen-chon-may-nao-126885\" title=\"So sánh iPhone 12 Mini, iPhone 12, iPhone 12 Pro và iPhone 12 Pro Max: Sự khác biệt là gì, bạn nên chọn máy nào?\" type=\"So sánh iPhone 12 Mini, iPhone 12, iPhone 12 Pro và iPhone 12 Pro Max: Sự khác biệt là gì, bạn nên chọn máy nào?\">So s&aacute;nh iPhone 12 Mini, iPhone 12, iPhone 12 Pro v&agrave; iPhone 12 Pro Max: Sự kh&aacute;c biệt l&agrave; g&igrave;, bạn n&ecirc;n chọn m&aacute;y n&agrave;o?</a></em></p>\r\n\r\n<p>Theo:&nbsp;<a href=\"https://www.gizmochina.com/2020/12/01/apple-face-iphone-12-ic-shortage-till-q2-2021/\" rel=\"Nofollow\" target=\"_blank\">Gizmochina</a></p>', '637424337036177595_apple-iphone-12-featured55.jpg', 'dong-iphone-12-thieu-nguon-cung-linh-kien-co-the-se-khan-hang-toi-q22021', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vanchuyen`
--

CREATE TABLE `vanchuyen` (
  `vc_id` int(11) NOT NULL,
  `vc_ten` varchar(100) NOT NULL,
  `vc_chiphi` int(11) NOT NULL,
  `vc_thongtin` varchar(255) NOT NULL,
  `vc_ngaytaomoi` date NOT NULL,
  `vc_ngaycapnhat` date NOT NULL,
  `vc_hienthi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `vanchuyen`
--

INSERT INTO `vanchuyen` (`vc_id`, `vc_ten`, `vc_chiphi`, `vc_thongtin`, `vc_ngaytaomoi`, `vc_ngaycapnhat`, `vc_hienthi`) VALUES
(1, 'Miễn phí, nhận hàng trực tiếp', 0, 'Nhận hàng trực tiếp tại cửa hàng.', '2020-11-13', '2020-11-13', 0),
(2, 'Miễn phí nội ô TP.Cần Thơ', 0, 'Chỉ áp dụng tại nội ô Tp. Cần Thơ và đơn hàng được nhận trước ngày gửi ít nhất là 2 ngày.', '2020-11-13', '2020-11-22', 0),
(3, 'Miễn phí, thanh toán phí qua bưu điện', 0, 'Chỉ áp dụng tại nội ô Tp. Cần Thơ', '2020-11-13', '2020-11-13', 0),
(4, 'Vận chuyển thường', 20000, 'Chuyển phát tiêu chuẩn', '2020-11-13', '2020-11-13', 0),
(5, 'Chuyển phát nhanh', 30000, 'Chuyển phát tiêu chuẩn', '2020-11-13', '2020-11-13', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xuatxu`
--

CREATE TABLE `xuatxu` (
  `xx_id` int(11) NOT NULL,
  `xx_ten` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `xuatxu`
--

INSERT INTO `xuatxu` (`xx_id`, `xx_ten`) VALUES
(6, 'Hàn Quốc'),
(7, 'Trung Quốc'),
(5, 'Việt Nam');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`bl_id`),
  ADD KEY `kh_id` (`kh_id`),
  ADD KEY `sp_id` (`sp_id`) USING BTREE;

--
-- Chỉ mục cho bảng `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD KEY `ddh_id` (`ddh_id`),
  ADD KEY `mausp_id` (`mausp_id`);

--
-- Chỉ mục cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD KEY `pnk_id` (`pnk_id`),
  ADD KEY `mausp_id` (`mausp_id`);

--
-- Chỉ mục cho bảng `chitiettrancc`
--
ALTER TABLE `chitiettrancc`
  ADD KEY `ptncc_id` (`ptncc_id`),
  ADD KEY `mausp_id` (`mausp_id`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`dg_id`),
  ADD KEY `sp_id` (`sp_id`) USING BTREE;

--
-- Chỉ mục cho bảng `danhmuctin`
--
ALTER TABLE `danhmuctin`
  ADD PRIMARY KEY (`dmt_id`),
  ADD UNIQUE KEY `dmt_ten` (`dmt_ten`);

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`ddh_id`),
  ADD KEY `kh_id` (`kh_id`),
  ADD KEY `tt_id` (`tt_id`),
  ADD KEY `vc_id` (`vc_id`);

--
-- Chỉ mục cho bảng `gia`
--
ALTER TABLE `gia`
  ADD KEY `sp_id` (`sp_id`);

--
-- Chỉ mục cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`hinhanh_id`),
  ADD KEY `mausp_id` (`mausp_id`),
  ADD KEY `sp_id` (`sp_id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`kh_id`);

--
-- Chỉ mục cho bảng `khohang`
--
ALTER TABLE `khohang`
  ADD PRIMARY KEY (`kho_id`),
  ADD UNIQUE KEY `kho_ten` (`kho_ten`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`khuyenmai_id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`lienhe_id`);

--
-- Chỉ mục cho bảng `mau`
--
ALTER TABLE `mau`
  ADD PRIMARY KEY (`mau_id`),
  ADD UNIQUE KEY `mau_ten` (`mau_ten`);

--
-- Chỉ mục cho bảng `mausanpham`
--
ALTER TABLE `mausanpham`
  ADD PRIMARY KEY (`mausp_id`),
  ADD KEY `sp_id` (`sp_id`),
  ADD KEY `mau_id` (`mau_id`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`ncc_id`),
  ADD UNIQUE KEY `ncc_ten` (`ncc_ten`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`ph_id`),
  ADD KEY `id` (`id`),
  ADD KEY `bl_id` (`bl_id`);

--
-- Chỉ mục cho bảng `phieunhapkho`
--
ALTER TABLE `phieunhapkho`
  ADD PRIMARY KEY (`pnk_id`),
  ADD KEY `id` (`id`),
  ADD KEY `kho_id` (`kho_id`),
  ADD KEY `ncc_id` (`ncc_id`);

--
-- Chỉ mục cho bảng `phieutrancc`
--
ALTER TABLE `phieutrancc`
  ADD PRIMARY KEY (`ptncc_id`),
  ADD KEY `ncc_id` (`ncc_id`),
  ADD KEY `id` (`id`),
  ADD KEY `pnk_id` (`pnk_id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`sp_id`),
  ADD UNIQUE KEY `sp_ten` (`sp_ten`),
  ADD KEY `kho_id` (`kho_id`),
  ADD KEY `nhom_id` (`th_id`),
  ADD KEY `ncc_id` (`ncc_id`),
  ADD KEY `khuyenmai_id` (`khuyenmai_id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`),
  ADD UNIQUE KEY `slider_ten` (`slider_ten`);

--
-- Chỉ mục cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`tt_id`);

--
-- Chỉ mục cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`th_id`),
  ADD UNIQUE KEY `th_ten` (`th_ten`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`tintuc_id`),
  ADD UNIQUE KEY `tintuc_ten` (`tintuc_ten`),
  ADD KEY `dmt_id` (`dmt_id`);

--
-- Chỉ mục cho bảng `vanchuyen`
--
ALTER TABLE `vanchuyen`
  ADD PRIMARY KEY (`vc_id`),
  ADD UNIQUE KEY `vc_ten` (`vc_ten`);

--
-- Chỉ mục cho bảng `xuatxu`
--
ALTER TABLE `xuatxu`
  ADD PRIMARY KEY (`xx_id`),
  ADD UNIQUE KEY `xx_ten` (`xx_ten`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `bl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `dg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `danhmuctin`
--
ALTER TABLE `danhmuctin`
  MODIFY `dmt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `ddh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `hinhanh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1441;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `kh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `khohang`
--
ALTER TABLE `khohang`
  MODIFY `kho_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `khuyenmai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `lienhe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `mau`
--
ALTER TABLE `mau`
  MODIFY `mau_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `mausanpham`
--
ALTER TABLE `mausanpham`
  MODIFY `mausp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `ncc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `ph_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `phieunhapkho`
--
ALTER TABLE `phieunhapkho`
  MODIFY `pnk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `phieutrancc`
--
ALTER TABLE `phieutrancc`
  MODIFY `ptncc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `sp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  MODIFY `tt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `th_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `tintuc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `vanchuyen`
--
ALTER TABLE `vanchuyen`
  MODIFY `vc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `xuatxu`
--
ALTER TABLE `xuatxu`
  MODIFY `xx_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`sp_id`) REFERENCES `sanpham` (`sp_id`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`kh_id`) REFERENCES `khachhang` (`kh_id`);

--
-- Các ràng buộc cho bảng `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD CONSTRAINT `chitietdathang_ibfk_2` FOREIGN KEY (`ddh_id`) REFERENCES `dondathang` (`ddh_id`),
  ADD CONSTRAINT `chitietdathang_ibfk_3` FOREIGN KEY (`mausp_id`) REFERENCES `mausanpham` (`mausp_id`);

--
-- Các ràng buộc cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `chitietphieunhap_ibfk_2` FOREIGN KEY (`pnk_id`) REFERENCES `phieunhapkho` (`pnk_id`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_3` FOREIGN KEY (`mausp_id`) REFERENCES `mausanpham` (`mausp_id`);

--
-- Các ràng buộc cho bảng `chitiettrancc`
--
ALTER TABLE `chitiettrancc`
  ADD CONSTRAINT `chitiettrancc_ibfk_2` FOREIGN KEY (`ptncc_id`) REFERENCES `phieutrancc` (`ptncc_id`),
  ADD CONSTRAINT `chitiettrancc_ibfk_3` FOREIGN KEY (`mausp_id`) REFERENCES `mausanpham` (`mausp_id`);

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_ibfk_1` FOREIGN KEY (`sp_id`) REFERENCES `sanpham` (`sp_id`);

--
-- Các ràng buộc cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `dondathang_ibfk_1` FOREIGN KEY (`kh_id`) REFERENCES `khachhang` (`kh_id`),
  ADD CONSTRAINT `dondathang_ibfk_2` FOREIGN KEY (`tt_id`) REFERENCES `thanhtoan` (`tt_id`),
  ADD CONSTRAINT `dondathang_ibfk_3` FOREIGN KEY (`vc_id`) REFERENCES `vanchuyen` (`vc_id`);

--
-- Các ràng buộc cho bảng `gia`
--
ALTER TABLE `gia`
  ADD CONSTRAINT `gia_ibfk_1` FOREIGN KEY (`sp_id`) REFERENCES `sanpham` (`sp_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD CONSTRAINT `hinhanh_ibfk_1` FOREIGN KEY (`mausp_id`) REFERENCES `mausanpham` (`mausp_id`),
  ADD CONSTRAINT `hinhanh_ibfk_2` FOREIGN KEY (`sp_id`) REFERENCES `sanpham` (`sp_id`);

--
-- Các ràng buộc cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD CONSTRAINT `khuyenmai_ibfk_1` FOREIGN KEY (`id`) REFERENCES `nhanvien` (`id`);

--
-- Các ràng buộc cho bảng `mausanpham`
--
ALTER TABLE `mausanpham`
  ADD CONSTRAINT `mausanpham_ibfk_1` FOREIGN KEY (`sp_id`) REFERENCES `sanpham` (`sp_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `mausanpham_ibfk_2` FOREIGN KEY (`mau_id`) REFERENCES `mau` (`mau_id`);

--
-- Các ràng buộc cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD CONSTRAINT `phanhoi_ibfk_1` FOREIGN KEY (`id`) REFERENCES `nhanvien` (`id`),
  ADD CONSTRAINT `phanhoi_ibfk_2` FOREIGN KEY (`bl_id`) REFERENCES `binhluan` (`bl_id`);

--
-- Các ràng buộc cho bảng `phieunhapkho`
--
ALTER TABLE `phieunhapkho`
  ADD CONSTRAINT `phieunhapkho_ibfk_1` FOREIGN KEY (`id`) REFERENCES `nhanvien` (`id`),
  ADD CONSTRAINT `phieunhapkho_ibfk_3` FOREIGN KEY (`kho_id`) REFERENCES `khohang` (`kho_id`),
  ADD CONSTRAINT `phieunhapkho_ibfk_4` FOREIGN KEY (`ncc_id`) REFERENCES `nhacungcap` (`ncc_id`);

--
-- Các ràng buộc cho bảng `phieutrancc`
--
ALTER TABLE `phieutrancc`
  ADD CONSTRAINT `phieutrancc_ibfk_1` FOREIGN KEY (`ncc_id`) REFERENCES `nhacungcap` (`ncc_id`),
  ADD CONSTRAINT `phieutrancc_ibfk_2` FOREIGN KEY (`id`) REFERENCES `nhanvien` (`id`),
  ADD CONSTRAINT `phieutrancc_ibfk_3` FOREIGN KEY (`pnk_id`) REFERENCES `phieunhapkho` (`pnk_id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`kho_id`) REFERENCES `khohang` (`kho_id`),
  ADD CONSTRAINT `sanpham_ibfk_4` FOREIGN KEY (`th_id`) REFERENCES `thuonghieu` (`th_id`),
  ADD CONSTRAINT `sanpham_ibfk_5` FOREIGN KEY (`ncc_id`) REFERENCES `nhacungcap` (`ncc_id`),
  ADD CONSTRAINT `sanpham_ibfk_6` FOREIGN KEY (`khuyenmai_id`) REFERENCES `khuyenmai` (`khuyenmai_id`);

--
-- Các ràng buộc cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_ibfk_1` FOREIGN KEY (`dmt_id`) REFERENCES `danhmuctin` (`dmt_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
