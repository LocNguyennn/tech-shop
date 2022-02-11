-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2022 at 02:36 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `chi_muc_gio_hang`
--

CREATE TABLE `chi_muc_gio_hang` (
  `id` bigint(20) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `ma_gio_hang` bigint(20) DEFAULT NULL,
  `ma_san_pham` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chi_muc_gio_hang`
--

INSERT INTO `chi_muc_gio_hang` (`id`, `so_luong`, `ma_gio_hang`, `ma_san_pham`) VALUES
(61, 1, 11, 237),
(62, 1, 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_don_hang`
--

CREATE TABLE `chi_tiet_don_hang` (
  `id` bigint(20) NOT NULL,
  `don_gia` bigint(20) NOT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `ma_don_hang` bigint(20) DEFAULT NULL,
  `ma_san_pham` bigint(20) DEFAULT NULL,
  `so_luong_dat` int(11) NOT NULL,
  `so_luong_nhan_hang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chi_tiet_don_hang`
--

INSERT INTO `chi_tiet_don_hang` (`id`, `don_gia`, `so_luong`, `ma_don_hang`, `ma_san_pham`, `so_luong_dat`, `so_luong_nhan_hang`) VALUES
(10, 43490000, 0, 45, 64, 1, 1),
(11, 1150000, 0, 45, 61, 1, 1),
(12, 6490000, 0, 45, 85, 1, 1),
(13, 3690000, 0, 45, 86, 1, 1),
(18, 7800000, NULL, 48, 128, 1, 1),
(19, 13900000, NULL, 48, 129, 1, 1),
(23, 890000, NULL, 50, 147, 1, 0),
(24, 990000, NULL, 50, 148, 1, 0),
(25, 990000, NULL, 50, 149, 1, 0),
(26, 400000, NULL, 50, 99, 1, 0),
(27, 5590000, NULL, 51, 117, 1, 1),
(28, 3090000, NULL, 51, 119, 1, 1),
(29, 10749000, NULL, 51, 122, 1, 1),
(30, 26390000, NULL, 51, 225, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `danh_muc`
--

CREATE TABLE `danh_muc` (
  `id` bigint(20) NOT NULL,
  `ten_danh_muc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `danh_muc`
--

INSERT INTO `danh_muc` (`id`, `ten_danh_muc`) VALUES
(1, 'LAPTOP'),
(2, 'PC'),
(3, 'TAI NGHE, MÁY CHIẾU'),
(5, 'THIẾT BỊ LƯU TRỮ'),
(6, 'THIẾT BỊ MẠNG'),
(7, 'CAMERA QUAN SÁT'),
(8, 'CHUỘT, BÀN PHÍM, PHỤ KIỆN CÁC LOẠI'),
(9, 'THIẾT BỊ VĂN PHÒNG'),
(13, 'RAM'),
(14, 'MAINBOARD'),
(15, 'CPU');

-- --------------------------------------------------------

--
-- Table structure for table `don_hang`
--

CREATE TABLE `don_hang` (
  `id` bigint(20) NOT NULL,
  `dia_chi_nhan` varchar(255) DEFAULT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  `ho_ten_nguoi_nhan` varchar(255) DEFAULT NULL,
  `ngay_dat_hang` datetime DEFAULT NULL,
  `ngay_giao_hang` datetime DEFAULT NULL,
  `ngay_nhan_hang` datetime DEFAULT NULL,
  `sdt_nhan_hang` varchar(255) DEFAULT NULL,
  `trang_thai_don_hang` varchar(255) DEFAULT NULL,
  `ma_nguoi_dat` bigint(20) DEFAULT NULL,
  `ma_shipper` bigint(20) DEFAULT NULL,
  `tong_gia_tri` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `don_hang`
--

INSERT INTO `don_hang` (`id`, `dia_chi_nhan`, `ghi_chu`, `ho_ten_nguoi_nhan`, `ngay_dat_hang`, `ngay_giao_hang`, `ngay_nhan_hang`, `sdt_nhan_hang`, `trang_thai_don_hang`, `ma_nguoi_dat`, `ma_shipper`, `tong_gia_tri`) VALUES
(45, 'Đường số 6', 'Ghi chú shipper: \nĐã gửi thành công đầy đủ cho khách hàng<br> Ghi chú admin:\nGiao thành công', 'Quách Võ Anh Khoa`', '2021-12-07 19:38:33', '2021-12-07 19:39:11', '2021-12-07 19:40:11', '0018200147', 'Hoàn thành', 11, 12, 54820000),
(48, 'Đường số 6', NULL, 'Quách Võ Anh Khoa`', '2021-12-18 16:48:04', '2021-12-18 16:48:27', '2021-12-18 17:07:29', '0018200147', 'Hoàn thành', 11, 12, 21700000),
(50, 'Đường số 6', NULL, 'Quách Võ Anh Khoa', '2021-12-18 16:55:23', NULL, NULL, '0018200147', 'Đang chờ giao', 11, NULL, 3270000),
(51, 'D2', 'Ghi chú shipper: \nĐã nhận đơn hàng', 'User 2', '2022-01-16 16:51:25', '2022-01-16 16:52:10', '2022-01-16 16:54:44', '091234567', 'Hoàn thành', 18, 12, 45819000);

-- --------------------------------------------------------

--
-- Table structure for table `gio_hang`
--

CREATE TABLE `gio_hang` (
  `id` bigint(20) NOT NULL,
  `tong_tien` varchar(255) DEFAULT NULL,
  `ma_nguoi_dung` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gio_hang`
--

INSERT INTO `gio_hang` (`id`, `tong_tien`, `ma_nguoi_dung`) VALUES
(11, '37000000', 11),
(12, '30490000', 15),
(13, '45819000', 18);

-- --------------------------------------------------------

--
-- Table structure for table `hang_san_xuat`
--

CREATE TABLE `hang_san_xuat` (
  `id` bigint(20) NOT NULL,
  `ten_hang_san_xuat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hang_san_xuat`
--

INSERT INTO `hang_san_xuat` (`id`, `ten_hang_san_xuat`) VALUES
(2, 'Apple'),
(3, 'Asus'),
(4, 'Acer'),
(5, 'Dell'),
(6, 'HP'),
(7, 'Lenovo'),
(8, 'MSI'),
(9, 'Logitech'),
(10, 'Corsair'),
(11, 'Intel'),
(12, 'AMD'),
(13, 'Brother'),
(14, 'Western Digital'),
(15, 'Gigabyte'),
(16, 'TP-Link'),
(17, 'Linksys'),
(18, 'DareU'),
(19, 'Microsoft'),
(20, 'Astro'),
(22, 'Razer'),
(23, 'JBL'),
(24, 'Sony'),
(25, 'Go Pro'),
(26, 'KB Vision'),
(27, 'Xiaomi'),
(28, 'Ezviz'),
(29, 'Kingston'),
(30, 'G.Skill'),
(31, 'Akko');

-- --------------------------------------------------------

--
-- Table structure for table `lien_he`
--

CREATE TABLE `lien_he` (
  `id` bigint(20) NOT NULL,
  `email_lien_he` varchar(255) DEFAULT NULL,
  `ngay_lien_he` datetime DEFAULT NULL,
  `ngay_tra_loi` datetime DEFAULT NULL,
  `noi_dung_lien_he` varchar(255) DEFAULT NULL,
  `noi_dung_tra_loi` varchar(255) DEFAULT NULL,
  `trang_thai` varchar(255) DEFAULT NULL,
  `ma_nguoi_tra_loi` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lien_he`
--

INSERT INTO `lien_he` (`id`, `email_lien_he`, `ngay_lien_he`, `ngay_tra_loi`, `noi_dung_lien_he`, `noi_dung_tra_loi`, `trang_thai`, `ma_nguoi_tra_loi`) VALUES
(7, 'anhkhoaquachvo@gmail.com', '2021-12-23 11:41:36', '2021-12-23 11:41:55', 'lô', 'lô', 'Đã trả lời', NULL),
(8, 'anhkhoaquachvo@gmail.com', '2021-12-23 12:07:50', '2021-12-23 12:08:07', 'test liên hệ lần thứ n :)))', 'oke rồi nè', 'Đã trả lời', 15),
(9, 'user2@gmail.com', '2022-01-16 16:56:34', NULL, 'Cho mình hỏi bên shop có hỗ trợ nâng cấp RAM cho máy tính không ạ.', NULL, 'Đang chờ trả lời', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung_vaitro`
--

CREATE TABLE `nguoidung_vaitro` (
  `ma_nguoi_dung` bigint(20) NOT NULL,
  `ma_vai_tro` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nguoidung_vaitro`
--

INSERT INTO `nguoidung_vaitro` (`ma_nguoi_dung`, `ma_vai_tro`) VALUES
(7, 1),
(11, 2),
(12, 3),
(13, 2),
(14, 2),
(15, 1),
(18, 2),
(19, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `id` bigint(20) NOT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ho_ten` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`id`, `dia_chi`, `email`, `ho_ten`, `password`, `so_dien_thoai`) VALUES
(7, 'Đường số 3', 'kazakage69@gmail.com', 'Nguyễn Tấn Lộc', '$2a$10$kdDxgWAUFWStVVAG6v4h3.MAinBFFMOnvmx4R775zsntzH.nuYGLS', '0018200159'),
(11, 'Đường số 6', 'anhkhoaquachvo@gmail.com', 'Quách Võ Anh Khoa', '$2a$10$tHdEIe2YWKdb7kErtSEt6e66g8dEqQ99/qa/OnJz8LrIf.qWt4eXi', '0012800147'),
(12, 'Đường số 2', 'bennyx1236@gmail.com', 'Trịnh Trung Hiếu', '$2a$10$UIswvFZmJ4REHaVZZcfnfOsiSDW44HlCrNGp3hapQyUEUybNd7DHC', '0018200105'),
(13, 'Đường Số 1', 'khang.doan1311@gmail.com', 'Đoàn Việt Khang', '$2a$10$LwabTJ9UniBxmjdr.NTdZOGjAQNi35pZGSDgva6ZoCPtg35cinvya', '0018200140'),
(14, 'Đường Số 1', 'khangnguyenduy00@gmail.com', 'Nguyễn Duy Khang', '$2a$10$xgDMfM4N77hGzsJya4f/BehP2pQzTOIJx41BhC4xGUdxT69Tryf3a', '0018200141'),
(15, 'Đường số 7', 'nguyentanloc046@gmail.com', 'Nguyễn Tấn Lộc', '$2a$10$gcsYbxQLMCwaR6vJMF/6MuJwsyaqLxT7fPd4tFQ8mRUx.MtboAEdG', '0967360500'),
(18, 'D7', 'user2@gmail.com', 'User', '$2a$10$E0AdKE/PTs8F.oGxnwiFw.z0TECAABySfykW5Ivvgk9.06Do8REky', '091234567'),
(19, 'D1', 'user1@gmail.com', 'User 1', '$2a$10$KuHRfxphtHe8K8QiXjjXe.Zvmh2v4F2OeIAfGL4a3Tdos6vgJyJou', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `id` bigint(20) NOT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `don_gia` bigint(20) NOT NULL,
  `don_vi_ban` int(11) NOT NULL,
  `don_vi_kho` int(11) NOT NULL,
  `dung_luong_pin` varchar(255) DEFAULT NULL,
  `he_dieu_hanh` varchar(255) DEFAULT NULL,
  `man_hinh` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `ten_san_pham` varchar(255) DEFAULT NULL,
  `thiet_ke` varchar(512) DEFAULT NULL,
  `thong_tin_bao_hanh` varchar(255) DEFAULT NULL,
  `thong_tin_chung` varchar(1024) DEFAULT NULL,
  `ma_danh_muc` bigint(20) DEFAULT NULL,
  `ma_hang_sx` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`id`, `cpu`, `don_gia`, `don_vi_ban`, `don_vi_kho`, `dung_luong_pin`, `he_dieu_hanh`, `man_hinh`, `ram`, `ten_san_pham`, `thiet_ke`, `thong_tin_bao_hanh`, `thong_tin_chung`, `ma_danh_muc`, `ma_hang_sx`) VALUES
(1, 'Intel Core i5-10300H', 20490000, 0, 100, '48WHr', 'Windows 10 Home', 'LCD 15.6\" FHD 144Hz', '8GB DDR4 2933MHz', 'ASUS TUF Gaming F15 FX506LH HN002T', 'Thiết kế ấn tượng, đậm chất gaming mà vẫn có cảm giác thanh thoát, gọn nhẹ và bền bỉ', '12 Tháng', 'Trang bị sức mạnh để giải quyết mọi tác vụ. Laptop mang đến hiệu năng tin cậy để chơi game, phát trực tiếp và thực hiện mọi hoạt động.', 1, 3),
(2, 'AMD Ryzen 7 5800H', 30490000, 0, 50, '56WHr', 'Windows 10 Home', '15.6-inch IPS, FHD (1920 x 1080)', '8 GB DDR4 2933MHz', 'Asus TUF Gaming A15 FA506QM HN016T', 'Mang dòng máu TUF Gaming, A15 FA506QM HN016T sở hữu vẻ ngoài mạnh mẽ với màu Eclipse Gray và trên mặt A là biểu tượng của TUF trong vô cùng bắt mắt', '24 Tháng', 'ASUS TUF Gaming A15 được trang bị CPU từ đội đỏ AMD Ryzen 7 5800H kết hợp với sức mạnh khổng lồ từ RTX 3060 đảm bảo khả năng xử lý công việc, đồ họa tuyệt vời nhất đem đến những trải nghiệm không chỉ chơi game mà làm việc cũng vô cùng mượt mà', 1, 3),
(3, 'AMD Ryzen 7-5800H', 22990000, 0, 150, '63WHr', 'Windows 10 Home', 'OLED WQXGA+ (2880 x 1800) 16:10, 90 Hz', '8GB DDR4 3200MHz', 'Asus Vivobook Pro M3401QA KM040T', 'Đáp ứng tính linh hoạt cho bạn nhờ thiết kế gọn nhẹ, dễ xách tay và cất giữ vào balô', '12 Tháng', 'Tạo nên trải nghiệm hình ảnh đặc biệt ấn tượng dành cho bạn. Chiếc máy trang bị màn hình OLED viền siêu mỏng NanoEdge độc quyền từ ASUS cho hình ảnh hiển thị bắt mắt. Màn hình của máy có kích thước 14 inch với độ phân giải siêu nét', 1, 3),
(4, 'Intel Core i5-1135G7', 23390000, 0, 100, '67WHr', 'Windows 10 Home', '1920 x 1080 pixels', '8GB DDR4 3200MHz', 'ASUS Zenbook UX425EA', 'Mang thiết kế của một chiếc laptop doanh nhân: hiện đại, cứng cáp và linh hoạt, tông xám chủ đạo', '12 Tháng', 'Hiệu năng vượt trội, thiết kế hiện đại cùng phần cứng đa năng', 1, 3),
(5, 'AMD Ryzen R7-4800H', 23290000, 0, 120, '56WHr', 'Windows 10 Home', '15.6 inch FHD (1920 x 1080) IPS', '8GB DDR4 3200MHz', 'Asus ROG Strix G15 G513IH HN015T', 'Nắp phủ nhôm tới kết cấu độc đáo ở mặt đáy, chiếc laptop này là sự tổng hòa của khả năng hoạt động bền bỉ và phong cách mạnh mẽ.', '12 Tháng', 'Phong cách thể thao thể hiện qua ba màu sắc khác biệt giúp nâng tầm diện mạo và phong cách của bạn', 1, 3),
(6, 'Intel Core i5-11300H', 24490000, 0, 150, '76WHr', 'Windows 10 Home', '15.6 inch FHD (1920 x 1080) IPS', '16GB DDR4 3200MHz', 'Asus TUF Dash F15 FX516PC HN002T', 'Thiết kế bàn phím gõ yên lặng mới giúp duy trì âm thanh khi gõ phím dưới 30dB cho bạn trải nghiệm riêng tư hơn. Bàn phím với bố cục như máy tính để bàn, có khoảng cách rộng giữa các phím chức năng, giúp bạn dễ dàng nhận diện và gõ chính xác', '12 Tháng', 'Dash F15 xử lý dễ dàng mọi tác vụ dù là chơi game, phát trực tiếp và hơn thế nữa. Sức mạnh CPU Intel Core i5-11300H thế hệ thứ 11 phù hợp để giải trí và làm việc hàng ngày', 1, 3),
(7, 'AMD Ryzen R7-4800H', 24990000, 0, 200, '56WHr', 'Windows 10 Pro', '15.6 inch FHD (1920 x 1080) IPS', '8GB DDR4 3200MHz', 'Asus ROG Strix G15 G513IC HN002T', 'Phong cách thể thao thể hiện qua ba màu sắc khác biệt giúp nâng tầm diện mạo và phong cách của bạn', '12 Tháng', 'Chiếu nghỉ tay phủ nhung soft-touch giúp duy trì cảm giác dễ chịu, mát mẻ khi tiếp xúc, phù hợp cho những phiên chơi game kéo dài.', 1, 3),
(8, 'AMD Ryzen 9-5900HX', 38990000, 0, 150, '62WHr', 'Windows 10 Enterprise', '13.4 inch 16:10 FHD (1920 x 1200) IPS 120Hz', '16GB DDR4 3200MHz', 'Asus ROG Flow X13 GV301QC K6052T', 'Màn hình 120Hz FHD để chơi game siêu mượt, có tỷ lệ khung hình cao hơn với nhiều không gian hơn cho các tab và thanh công cụ', '24 Tháng', 'Nhanh. Mượt mà. Linh hoạt. Laptop gaming 13-inch đầu tiên của ROG sở hữu thiết kế xoay gập linh hoạt nhờ bản lề 360°. Nâng tầm phong cách với Phiên bản Supernova cùng bảng tên kim loại màu tím lấp lánh', 1, 3),
(9, 'AMD Ryzen 5 – 5500U', 18390000, 0, 120, '48WHr', 'Windows 10 Pro', '15.6 inch FHD (1920 x 1080) IPS', '8GB DDR4 3200MHz', 'Acer Aspire 7 A715 42G R4XX', 'Hệ thống hai quạt tản nhiệt, 3 ống đồng fullsize, heatsink size lớn giúp Acer Aspire 7 A715 tối ưu khả năng tản nhiệt. Bản lề thiết kế chắc chắn ít bị rung lắc khi chơi, có khả năng mở góc 180 độ giúp bảo vệ máy tốt hơn.', '12 Tháng', 'tích hợp card đồ họa NVIDIA GTX1650 4GB GDDR6, là laptop chơi game tốt nhất phân khúc. Không chỉ vậy, phiên bản này còn mang thiết kế mới gọn gàng', 1, 4),
(10, 'AMD Ryzen 5 – 5600U', 20390000, 0, 200, '48WHr', 'Windows 10 Home', '15.6\" FHD (1920 x 1080) IPS', '8GB DDR4 3200MHz', 'Acer Nitro 5 AN515 45 R3SM', 'Sở hữu thiết kế ấn tượng với hai màu đen-đỏ chủ đạo. Bề mặt được thiết kế hầm hố và góc cạnh hơn. Thể hiện phong cách hiếu chiến đặc trưng của dòng Nitro', '12 Tháng', 'Acer Nitro 5 2021 AN515 45 R3SM tích hợp những “vũ khí” mới nhất. Bao gồm CPU AMD Ryzen 5 5600H, VGA NVIDIA GeForce GTX 1650 cho hiệu năng xử lý mạnh mẽ.', 1, 4),
(11, 'Intel Core i5-11400H', 21990000, 0, 150, '57.5WHr', 'Windows 10 Home', '15.6\" FHD (1920 x 1080) IPS', '8GB DDR4 3200MHz', 'Acer Nitro 5 AN515 57 56S5', 'Acer Nitro 5 mang đến vẻ hầm hố, mạnh mẽ thông qua thiết kế của mình. Toàn bộ thân máy được làm bằng nhựa với tone màu đen - đỏ ấn tượng.', '24 Tháng', 'Với sự kết hợp từ CPU Core i5 -11400H và GPU NVIDIA® GeForce GTX™ 1650, laptop Acer Nitro 5 Eagle AN515-57 sẽ cho chúng ta hiệu năng tốt để xử lý các công việc đồ họa đơn giản trên các phần mềm chuyên dụng, tốc độ xử lý thông tin cũng tương đối nhanh và mượt.', 1, 4),
(12, 'Intel Core i5-11400H', 24990000, 0, 120, '48WHr', 'Windows 10 Home', '15.6\" FHD (1920 x 1080) IPS', '8GB DDR4 3200MHz', 'ASUS TUF Gaming F15 FX506HCB HN1138W', 'Được thiết kế để thể hiện phong cách riêng biệt của game thủ chuyên nghiệp', '12 Tháng', 'ASUS TUF Gaming F15 FX506HCB-HN1138W là chiếc laptop gaming được thiết kế để thể hiện phong cách riêng biệt của game thủ chuyên nghiệp.', 1, 3),
(13, 'Intel Core i7-11800H', 57990000, 0, 120, '56WHr', 'Windows 10 Pro', '15.6\" FHD (1920 x 1080) WVA', '32GB DDR4 3200Mhz ', 'Dell Alienware M15 R6 P109F001BBL', 'được thiết kế cứng cáp và sở một trọng lượng lý tưởng cho một chiếc Gaming laptop. Nó có trọng lượng tùy vào cấu hình thiết bị', '24 Tháng', 'M15 R6 cũng được trang bị một cấu hình mạnh mẽ và các công nghệ thế mới với intel thế hệ 11 và Nvidia RTX 30 Series.', 1, 5),
(14, 'Intel Core i7-11800H', 48990000, 0, 200, '70WHr', 'Windows 10 Pro', '16.1\" QHD (2560 x 1440), 165 Hz', '16GB DDR4 3200MHz', 'HP Omen 16 b0127TX 4Y0W7PA', 'Là sản phẩm laptop gaming mới nhất từ HP, Omen 16 mang đến một thiết kế vô cùng trang nhã với mặt A đen bóng cùng logo Omen đặt tại trung tâm của bề mặt, không hầm hố nhưng vẫn rất gaming.', '24 Tháng', 'Hướng đến trải nghiệm gaming tuyệt vời nhất, HP đã trang bị cho Omen dòng CPU Intel thế hệ 11 mới nhất hiện nay giúp tối ưu hóa khả năng xử lý cùng chiếc card đồ họa NVIDIA RTX 3060.', 1, 6),
(15, NULL, 1390000, 0, 65, NULL, NULL, NULL, NULL, 'AMD Athhlon 3000G', NULL, '36 Tháng', 'CPU 2 nhân/ 4 luồng hoạt động ở mức độ xung nhịp 3.5GHz, dung lượng L3 Cache là 4MB và được tích hợp kèm iGPU Radeon Vega 3', 15, 12),
(16, 'AMD Ryzen 5 5600H', 24990000, 0, 65, '70WHr', 'Windows 10 Enterprise', '16.1\" FHD (1920 x 1080) IPS, 144Hz', '8GB DDR4 3200Mhz', 'HP VICTUS 16 e0175AX 4R0U8PA', 'Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, cùng sắc đen huyền phong cách, sở hữu trọng lượng 2.46 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, đồng hành cùng bạn đến khắp mọi nơi', '24 Tháng', 'Laptop gaming HP VICTUS 16 e0175AX 4R0U8PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,...', 1, 6),
(17, NULL, 2990000, 0, 120, NULL, NULL, NULL, NULL, 'AMD Ryzen 3 3200G', NULL, '36 Tháng', 'con chip AMD Ryzen 3 3200G /6MB /3.6GHz /4 nhân 4 luồng này chính là những gì bạn cần để vui vẻ một chút với anh em ngày cuối tuần mà vẫn đảm bảo hoàn thành tốt mọi công việc của mình', 15, 12),
(18, 'Intel Core i5-11400H', 39990000, 0, 200, '70WHr', 'Windows 10 Pro', '16.1\" FHD (1920x1080) IPS, 144Hz', '16GB DDR4 3200MHz', 'HP Omen 16 b0142TX 4Y0Z8PA', 'Là sản phẩm laptop gaming mới nhất từ HP, Omen 16 mang đến một thiết kế vô cùng trang nhã với mặt A đen bóng cùng logo Omen đặt tại trung tâm của bề mặt, không hầm hố nhưng vẫn rất gaming.', '24 Tháng', 'Hướng đến trải nghiệm gaming tuyệt vời nhất, HP đã trang bị cho Omen dòng CPU Intel thế hệ 11 mới nhất hiện nay giúp tối ưu hóa khả năng xử lý cùng chiếc card đồ họa NVIDIA RTX 3050 Ti', 1, 6),
(19, 'Intel Core i7-11800H', 36990000, 0, 150, '56WHr', 'Windows 10 Pro', '16.1\" FHD (1920 x 1080) IPS, 144Hz', '16GB DDR4 3200MHz', 'HP VICTUS 16 d0197TX 4R0T9PA', 'Với vẻ ngoài vuông vắn cùng lớp sơn nhám Đen quen thuộc; HP Victus 16 dễ khiến người ta liên tưởng tới các sản phẩm Omen ở phân khúc cao cấp. Nhưng nếu nhìn kỹ, không khó để thấy rằng sản phẩm của chúng ta còn thú vị hơn vậy nhiều', '36 Tháng', 'Khác với dòng Omen, HP Victus 16 sẽ có bàn phím đầy đủ số và chữ; thuận tiện sử dụng cho đa dạng tác vụ từ nhập liệu đến chơi game.', 1, 6),
(20, NULL, 4390000, 0, 200, NULL, NULL, NULL, NULL, 'AMD Ryzen 5 3400G', NULL, '36 Tháng', 'AMD Ryzen 5 3400G được mở khóa ép xung ở mức 4.2GHz. Với 4 nhân 8 luồng, ở xung nhịp cơ bản 3.7GHz nó dễ dàng xử lý các tác vụ văn phòng cùng gaming esports nhẹ nhàng.', 15, 12),
(21, 'I3 10100F', 7990000, 0, 100, '450W', NULL, NULL, '8GB DDR4 3200MHz', 'AXE M', '', '24 Tháng', 'Hệ điều hành Windows 10 Home, RAM 8GB DDR4 3200MHz mang lại trải nghiệm thoải mái khi thực hiện các tác vụ, giải trí thường ngày', 2, 11),
(22, NULL, 3790000, 0, 0, NULL, NULL, NULL, NULL, 'AMD Ryzen 5 3500X', NULL, '36 Tháng', '4.1GHz / 6 nhân 6 luồng / AM4. Xung nhịp cơ bản 3.6GHz và khả năng turbo lên 4.1GHz, khả năng tiết kiệm điện năng khi chỉ tiêu thụ tối đa là 65W điện. Tỏa nhiệt ít và mát mẻ.', 15, 12),
(23, 'I3 10100F', 12990000, 0, 100, '400W', NULL, NULL, '8Gb', 'Mystic M', '', '24 Tháng', 'Được trang bị phiên phản Windows 10 Home cùng 8GB DDR4 3200MHz kèm theo đó là con chip Intel Core i3 10100F / 6MB / 4.3GHZ / 4 nhân 8 luồng / LGA 1200, VGA GIGABYTE GeForce GTX 1050 Ti D5 4GB có thể tự tin chiến các tựa game thịnh hành hiện nay', 2, 11),
(24, NULL, 5290000, 0, 150, NULL, NULL, NULL, NULL, 'AMD Ryzen 5 3600', NULL, '36 Tháng', 'Sở hữu thông số ấn tượng, 6 nhân, 12 luồng xử lý, bộ nhớ đệm lên tới 32MB, và điều đặc biệt nhất là tốc độ xử lý tối đa khi hoạt động ở chế độ đơn nhân lên tới 4.2GHz, điều mà trước đây chưa bộ CPU Ryzen nào làm được', 15, 12),
(25, NULL, 6990000, 0, 170, NULL, NULL, NULL, NULL, 'AMD Ryzen 5 5600G', NULL, '36 Tháng', 'CPU AMD Ryzen 5 5600G là bộ vi xử lý tiên tiến nhất thế giới dành cho người chơi game và sáng tạo nội dung, nó đem đến khả năng vô tận cho những ai đang khao khát có được một con chip mãnh mẽ để sử lý trôi chảy mọi việc.', 15, 12),
(26, NULL, 7690000, 0, 120, NULL, NULL, NULL, NULL, 'AMD Ryzen 5 5600X', NULL, '36 Tháng', 'CPU AMD Ryzen 5 5600X à bộ vi xử lý tiên tiến nhất thế giới dành cho người chơi game và sáng tạo nội dung, nó đem đến khả năng vô tận cho những ai đang khao khát có được một con chip mãnh mẽ để sử lý trôi chảy mọi việc.', 15, 12),
(27, NULL, 5100000, 0, 50, NULL, NULL, NULL, NULL, 'Máy in Brother In Phun đa chức năng DCP-T710W', NULL, '36 Tháng', 'Xử lý nhiều lệnh in khác nhau với một khay giấy lên đến 150 tờ, có thể điều chỉnh kích thước giấy đa dạng và 20 khay nạp giấy tự động cho phép scan, copy và fax cực kỳ tiện dụng. Với tốc độ in tài liệu lên đến 12/10 ipm, dòng máy in phun của Brother sẽ giúp bạn thúc đẩy tối đa hiệu suất công việc mà vẫn tiết kiệm thời gian.', 9, 13),
(28, NULL, 8590000, 0, 75, NULL, NULL, NULL, NULL, 'AMD Ryzen 7 3700x', NULL, '36 Tháng', 'Cùng có 8 nhân/16 luồng như Ryzen 7 3800X, nhưng được AMD xem là “viên kẹo ngọt” trong loạt Ryzen 3000 Series mới được giới thiệu lần này. Sự khác biệt của chiếc CPU này so với 7 3800X là mức TDP của sản phẩm chỉ có 65W và có bộ nhớ đệm 36Mb, xung nhịp cơ bản 3.6Ghz và có thể đạt max Turbo ở 4.4Ghz.', 15, 12),
(29, NULL, 12000000, 0, 100, NULL, NULL, NULL, NULL, 'Máy in phun màu BROTHER HL-T4000DW', NULL, '24 Tháng', 'Máy in phun màu BROTHER HL-T4000DW có thiết kế theo kiểu máy in phun màu, có kích thước 575mm x 477mm x 310mm phù hợp để sử dụng trong các văn phòng, khu vực làm việc hay tại không gian làm việc cá nhân tại nhà của người dùng.\r\nMáy in phun màu BROTHER HL-T4000DW có tốc độ in trắng/ đen là 22 ipm, tốc độ in màu là 20 ipm và thiết bị còn sử dụng công nghệ Refill Tank System hỗ trợ cho thiết bị có thể in ra 6500 trang ( trắng/ đen) và 5000 trang (màu) sau một lần nạp đầy mực cùng với chức năng in 2 mặt', 9, 13),
(30, NULL, 22990000, 0, 200, NULL, NULL, NULL, NULL, 'Máy in laser BROTHER MFC-L6900DW', NULL, '12 Tháng', 'Với 4 chức năng in, copy, scan và fax, máy in đa năng Brother MFC-L6900DW sẽ đáp ứng tốt mọi nhu cầu in ấn của doanh nghiệp, tiết kiệm chi phí đầu tư. Brother MFC-L6900DW có khả năng in 2 mặt tự động với tốc độ 24 trang/phút; hiệu suất làm việc 150.000 trang/tháng.\r\nMáy in 2 mặt Brother MFC-L6900DW có thể sử dụng đa dạng các loại hộp mực in: TN-3428 - 3.000 trang, TN-3448 - 8.000 trang, TN-3478 - 12.000 trang, TN-3498 - 20.000 trang, DR-3455 - 30.000 trang.', 9, 13),
(31, NULL, 9590000, 0, 70, NULL, NULL, NULL, NULL, 'AMD Ryzen 7 5700G', NULL, '36 Tháng', 'CPU AMD Ryzen 7 5700G là bộ vi xử lý dành cho game thủ, người làm việc sáng tạo và tất cả những ai muốn có hiệu xuất hình ảnh đỉnh cao mà không cần card đồ họa rời.', 15, 12),
(32, NULL, 36250000, 0, 10, NULL, NULL, NULL, NULL, 'CPU Intel Xeon Gold 5218', NULL, '36 Tháng', '2.30 GHz turbo up 3.90 GHz,16 nhân 32 luồng. Được xây dựng trên công nghệ xử lý 14nm, dòng CPU Intel Xeon® Gold cung cấp tối đa tới 22 lõi / 44 luồng giúp tăng hiệu suất cho các dàn máy server chuyên nghiệp.', 15, 11),
(33, 'I3 10100F', 6500000, 0, 150, '550W', NULL, NULL, '1x8Gb', 'PC HOTGEAR 1 I3 10100F', 'Case kính sang trọng', '24 Tháng', 'Bo mạch chủ của MSI được thiết kế một cách thông minh với hàng loạt tiện ích phù hợp với cả người dùng cơ bản lẫn người đam mê sáng tạo. Đồng thời thiết kế thân thiện cũng giúp người dùng lắp đặt dễ dàng.Intel Core i3-10100F sở hữu mức xung nhịp cơ bản 3.6 GHz, turbo boost đạt 4.3 GHz cùng với 4 nhân 8 luồng. Với sức mạnh vượt trội cùng công nghệ siêu phân luồng (Hyper-Threading), i3-10100F thực sự là cú hit lớn trong làng CPU', 2, 11),
(34, 'Ryzen 5 3600', 10170000, 0, 100, '550W', NULL, NULL, '1x*8Gb', 'PC HOTGEAR 12 RYZEN 5 3600', 'Case kính sang trọng', '36 Tháng', 'Mainboard MSI B450M Mortar MAX mang phong cách quân sự với thiết kế tản nhiệt mở rộng cho giải pháp nhiệt tốt hơn, được trang bị hàng tá thiết kế thông minh và tiện lợi cho người sử dụng khi họ muốn tự lắp đặt hệ thống. Đối với các ứng dụng chuyên dụng trong công việc như render, biên tập video, hình ảnh thì Ryzen 5 3600 đem lại tốc độ xử lý rất đáng kinh ngạc.', 2, 12),
(35, NULL, 3990000, 0, 50, NULL, NULL, NULL, NULL, 'Intel Core i3 10100', NULL, '36 Tháng', 'Intel Core i3 10100 / 6MB / 3.6GHz / 4 Nhân 8 Luồng / LGA 1200', 15, 11),
(36, 'Ryzen 5 5600x', 13450000, 0, 100, '650W', NULL, NULL, '1x8Gb', 'PC HOTGEAR 14 RYZEN 5 5600X', 'Case kính sang trọng', '24 Tháng', '2 mặt kính cường lực. Mặt trước có khe gió 2 bên rất thoáng. Có nắp che nguồn thời trang. \"Mainboard MSI B450M TOMAHAWK MAX đảm bảo bao gồm đủ các chân cắm quạt với toàn quyền kiểm soát để cho phép bạn làm mát hệ thống của mình theo bất kỳ cách nào bạn muốn. CPU AMD Ryzen 5 5600X là 1 trong những CPU đầu bảng Series Ryzen 5000 của AMD. Bộ nguồn MWE Bronze V2 mang đến giải pháp năng lượng đơn giản, tin cậy dành cho hệ thống máy tính của bạn một cách an toàn và hiệu quả ở mức đầu tư thấp', 2, 12),
(37, 'I9 10900F', 20320000, 0, 50, '750W', NULL, NULL, '16Gb - 2x8Gb', 'PC HOTGEAR 9 INTEL I9 10900F', 'Case kính sang trọng', '36 Tháng', '2 mặt kính cường lực. Mặt trước có khe gió 2 bên rất thoáng. Có nắp che nguồn thời trang. Mainboard MSI MPG Z490 GAMING PLUS vẫn sở hữu đầy đủ tính năng để đáp ứng cho nhu cầu làm việc cũng như gaming. CPU intel core i9 10900F là dòng sản phẩm Comet Lake thế hệ 10 được intel tuyên bố là CPU dành cho game với xung nhịp lên đến 5.2GHz, số nhân số luồng được nâng cấp lên so với thế hệ trước là 10 nhân, 20 luồng. Một bộ nguồn chuẩn 80 PLUS Gold là không cần thiết khi bộ nguồn MWE Bronze V2 đảm bảo hiệu suất hoạt động bình thường 85% nhưng vẫn đảm bảo tính an toàn và tin cậy.', 2, 11),
(38, 'I9 10850F', 20450000, 0, 100, '750W', NULL, NULL, '16Gb - 2x8Gb', 'PC HOTGEAR 11 INTEL I9 10850K', 'Vỏ case SAMA 3502 có kính cường lực nắp hông, bảng điều khiển nằm trên nóc và dải LED RGB mặt trước.', '36 Tháng ', 'MSI trang bị tản nhiệt PWM mở rộng và thiết kế mạch nâng cao. i9-10850K sẽ tập trung phục vụ các game thủ cao cấp, những người muốn hưởng thụ tất cả những gì mạnh mẽ của gã khổng lồ i9-10900K đồng thời tối ưu hóa chi phí lắp ráp linh kiện.', 2, 11),
(39, 'I5 11400F', 17790000, 0, 50, '500W', NULL, NULL, '8Gb', 'Ratchet M', 'Case Deepcool MATREXX 40 3FS sẽ là nơi chứa đựng tất cả phụ kiện cho Ratchet M. Thiết kế mặt lưới thông thoáng cùng lớp kính cường lực bền sẽ là sự an tâm cho người dùng', '24 Tháng', 'ASROCK B560M-HDV giúp bạn tận dụng sức mạnh của những chiếc CPU mới nhất hiện nay cùng sự thoải mái cho khả năng nâng cấp trong tương lai. Khả năng xử lý của Ratchet M được tối ưu với con chip từ nhà xanh Intel, i5-11400F. Đây vẫn là một trong những best choice cho những bộ PC Gaming giá cả phải chăng nhất.', 2, 11),
(40, 'I3 10100F', 18490000, 0, 100, '500W', NULL, NULL, '8Gb', 'Viper M', '', '24 Tháng', 'XIGMATEK AERO 2F với mặt kính cường lực, vừa tôn thêm vẻ đẹp cho dàn linh kiện bên trong, vừa đảm bảo sự an toàn trước các tác nhân vật lý cho toàn bộ hệ thống.\r\n\r\nMainboard GIGABYTE H510M S2H là dòng sản phẩm giá cả vô cùng phải chăng. Hỗ trợ chip Intel thế hệ 10, 11 mới nhất cùng những công nghệ tiên tiến. Intel Core i3-10100F sở hữu mức xung nhịp cơ bản 3.6 GHz, turbo boost đạt 4.3 GHz cùng với 4 nhân 8 luồng. Với sức mạnh vượt trội cùng công nghệ siêu phân luồng', 2, 11),
(41, ' i5-10400F', 26990000, 0, 200, '', NULL, NULL, '16Gb', 'PC Intel i5-10400F 16GB RTX 3060 12G 250GB Nvme SSD', 'Vỏ case Deepcool đi kèm 3 FAN LED RGB cực đẹp và rộng rãi. Nếu bạn thích vỏ case khác hoặc một gu thẩm mỹ khác, hay thay nó. Với khả năng tùy biến cao chỉ có tại Xgear, điều này thật dễ.', '12 Tháng', 'Sử dụng CPU Core i5-10400F 6 nhân 12 luồng mạnh mẽ. Mainboard Gigabyte B560M đáp ứng tốt mọi nhu cầu nâng cấp của bạn. Bộ nhớ SSD sử dụng chuẩn M.2 NVMe.', 2, 11),
(42, 'Ryzen 5 5600X', 27400000, 0, 100, '', NULL, NULL, '16GB', 'PC Strike Ryzen 5 5600X 16GB RX 6600 250GB SSD NVMe', 'Case Deepcool Matrexx 55 Tempered Glass Mid Tower có thiết kế hiện đại, khỏe khoắn, vần vỏ trong suốt vô cùng tinh tế làm nổi bật lên cá tính người dùng, gia tăng thẩm mỹ cho bộ PC mà khách hàng muốn xây dựng', '24 Tháng', 'CPU Ryzen 5 3600 đã cho thấy được việc sở hữu CPU hiệu năng tốt với mức giá hợp lý là điều quá bình thường. Mainboard GIGABYTE B450 AORUS PRO là bo mạch chủ sử dụng chipset B450 của AMD, có thể chạy được với các CPU Ryzen 3000 Series ', 2, 12),
(43, NULL, 3290000, 0, 90, NULL, NULL, NULL, NULL, 'Máy in Brother laser Trắng Đen HL L2361DN', NULL, '12 Tháng', 'Máy in Brother laser Trắng Đen HL L2361DN khá nhỏ gọn, phù hợp với không gian văn phòng làm việc tại nhà, văn phòng công ty. Ngoài ra kết hợp với gam màu đen giúp hạn chế việc trầy xước và dễ dàng vệ sinh. Với độ phân giải tối đa là 2400 x 600dpi, cho chất lượng hình ảnh tốt, rõ nét. Ngoài ra tính năng in hai mặt tự động giúp cho bạn tiết kiệm thời gian và giấy in hơn.', 9, 13),
(44, NULL, 4100000, 0, 60, NULL, NULL, NULL, NULL, 'Máy in Brother In Phun đa năng DCP-T310', NULL, '12 Tháng', 'Máy in Brother In Phun đa năng DCP-T310 In, Scan & Copy:  Tiết kiệm chi phí in ấn với bình mực dung tích lớn, in đến 6,500 trang trắng đen và 5,000 trang màu. Khả năng xử lý giấy linh hoạt  và in tràn lề', 9, 13),
(45, NULL, 5700000, 0, 70, NULL, NULL, NULL, NULL, 'Máy in Brother laser đa năng MFC-L2701D', NULL, '12 Tháng', 'Máy in Brother laser đa năng MFC-L2701D khả năng hoạt động mạnh mẽ, dáng vẻ khá là nhỏ gọn, giúp bạn dễ dàng bố trí ở nhiều điều kiện không gian khác nhau nhưng vẫn đảm bảo được hiệu suất làm việc cao nhờ vào tốc độ xử lý cao cũng như khả năng cho ra các bản in, copy chất lượng.', 9, 13),
(46, NULL, 5490000, 0, 80, NULL, NULL, NULL, NULL, 'Máy in Brother laser đa năng DCP-B7535DW', NULL, '12 Tháng', 'Máy in Brother laser đa năng DCP-B7535DW wifi sở hữu thiết kế đơn giản, sang trọng. Bốn góc cạnh được bo tròn mềm mại giúp sản phẩm trông nổi bật hơn. Màu xám trên máy in cũng khá tao nhã, phù hợp hầu hết các không gian sống từ gia đình, cơ quan làm việc đến hộ kinh doanh.', 9, 13),
(47, NULL, 2900000, 0, 70, NULL, NULL, NULL, NULL, 'Máy in Brother laser Trắng Đen HL L2321D', NULL, '12 Tháng', 'Máy in Brother laser Trắng Đen HL L2321D được thiết kế tinh xảo, sang trọng mang lại sự tiện lợi cho người sử dụng. Máy in laser Brother HL-L2321D sẽ phù hợp với nhiều không gian làm việc như văn phòng hay nhà ở. Tốc độ in nhanh và ngăn giấy có thiết kế lớn sẽ tiết kiệm được rất nhiều thời gian của người sử dụng', 9, 13),
(48, NULL, 3290000, 0, 100, NULL, NULL, NULL, NULL, 'Máy in Brother laser Trắng Đen HL L2361DN', NULL, '12 Tháng', 'Máy in Brother laser Trắng Đen HL L2361DN khá nhỏ gọn, phù hợp với không gian văn phòng làm việc tại nhà, văn phòng công ty. Ngoài ra kết hợp với gam màu đen giúp hạn chế việc trầy xước và dễ dàng vệ sinh.', 9, 13),
(49, NULL, 3690000, 0, 100, NULL, NULL, NULL, NULL, 'Máy in Brother laser Trắng Đen HL L2366DW', NULL, '12 Tháng', 'Máy in Brother laser Trắng Đen HL L2366DW với độ phân giải tối đa là 2400 x 600dpi, cho chất lượng hình ảnh tốt, rõ nét. Ngoài ra tính năng in hai mặt tự động giúp cho bạn tiết kiệm thời gian và giấy in hơn.', 9, 13),
(50, NULL, 15000000, 0, 100, NULL, NULL, NULL, NULL, 'Máy in phun màu BROTHER MFC-T4500DW', NULL, '24 Tháng', 'Máy in phun màu Brother MFC-T4500DW có tốc độ in trắng/ đen là 22 ipm, tốc độ in màu là 20 ipm và thiết bị còn sử dụng công nghệ Refill Tank System hỗ trợ cho thiết bị có thể in ra 6500 trang ( trắng/ đen) và 5000 trang (màu)', 9, 13),
(51, NULL, 150000, 0, 70, NULL, NULL, NULL, NULL, 'Mực in Brother BT 5000C', NULL, 'không bảo hành', 'Mực in Brother BT 5000C là mực phun màu xanh chính hãng Brother đi kèm với dòng máy in Brother thích hợp tạo sự tương thích tốt và đảm bảo cho máy in vận hành ổn định. Với ưu điểm là màu mực bền, không lem khi gặp nước, khô nhanh, thích hợp cho việc in hai mặt', 9, 13),
(52, NULL, 150000, 0, 80, NULL, NULL, NULL, NULL, 'Mực in Brother BT 5000M', NULL, 'không bảo hành', 'Mực in Brother BT 5000M là mực phun màu xanh chính hãng Brother đi kèm với dòng máy in Brother thích hợp tạo sự tương thích tốt và đảm bảo cho máy in vận hành ổn định. Với ưu điểm là màu mực bền, không lem khi gặp nước, khô nhanh, thích hợp cho việc in hai mặt', 9, 13),
(53, NULL, 150000, 0, 80, NULL, NULL, NULL, NULL, 'Mực in Brother BT 5000Y', NULL, 'không bảo hành', 'Mực in Brother BT 5000Y là mực phun màu xanh chính hãng Brother đi kèm với dòng máy in Brother thích hợp tạo sự tương thích tốt và đảm bảo cho máy in vận hành ổn định, đem đến trải nghiệm bản in chất lượng cao, ổn định không có các đường gợn hoặc bị nhòe. Màu mực in sáng đẹp cho chất lượng bản in rõ nét, tương thích với nhiều loại giấy khác nhau.', 9, 13),
(54, NULL, 200000, 0, 70, NULL, NULL, NULL, NULL, 'Mực in Brother BTD60BK', NULL, 'không bảo hành', 'Mực in phun Brother BTD60BK (Đen) chính hãng là sự lựa chọn tốt nhất cho máy in kim Brother cho hiệu suất làm việc cao. Sản phẩm là hộp mực màu đen, chất lượng chính hãng, tương thích hoàn hảo với các máy in Brother sau: DCP T310, DCP T710W, DCP T510W, MFC T810W. Mực chính hãng Brother BTD60BK (Đen)  ổn định về màu sắc cho bản in màu chuẩn nét và có độ bền cao.', 9, 13),
(55, NULL, 490000, 0, 70, NULL, NULL, NULL, NULL, 'Mực in Brother TN 2385', NULL, 'không bảo hành', 'Mực in Brother TN 2385 ( khoảng 2.600 trang)  là mực in laser màu đen chính hãng Brother đi kèm với dòng máy in Brother thích hợp tạo sự tương thích tốt và đảm bảo cho máy in vận hành ổn định. Với ưu điểm là màu mực bền, không lem khi gặp nước, khô nhanh, thích hợp cho việc in hai mặt', 9, 13),
(56, NULL, 490000, 0, 60, NULL, NULL, NULL, NULL, 'Mực in Brother TN B022', NULL, 'không bảo hành', 'Mực in Brother TN B022 màu mực in sáng đẹp cho chất lượng bản in rõ nét, tương thích với nhiều loại giấy khác nhau, bền và ít lem .', 9, 13),
(57, NULL, 1490000, 0, 60, NULL, NULL, NULL, NULL, 'Phần mềm Microsoft 365 Family 6GQ-00083', NULL, 'Trọn đời', 'Microsoft 365 Family (Key điện tử) là ứng dụng Microsoft Office cao cấp, cộng thêm lưu trữ đám mây, tính năng bảo mật nâng cao và hơn thế nữa, tất cả nằm trong một gói thuê bao.', 9, 19),
(58, NULL, 990000, 0, 80, NULL, NULL, NULL, NULL, 'Phần mềm Microsoft 365 Personal QQ2-00003', NULL, 'Trọn đời', 'Phần mềm Microsoft 365 Personal QQ2-00003 là gói ứng dụng dành cho cá nhân chỉ một người, khi đăng ký gói Microsoft 365 Personal bạn có thể sử dụng liên tục trong vòng 12 tháng với nhiều tiện ích được tích hợp sẵn như lưu trữ đám mây, sao lưu hoàn toàn tự động, cập nhật liên tục các ứng dụng mới nhất. Tất cả chỉ bao gồm trong một gói thuê bao cực kỳ tiện lợi.', 9, 19),
(59, NULL, 2850000, 0, 80, NULL, NULL, NULL, NULL, 'Phần mềm Microsoft Windows 10 Home Online DwnLd NR KW9-00265', NULL, 'Trọn đời', 'Windows 10 cung cấp cho bạn nhiều sự lựa chọn linh hoạt và nhiều tùy chọn tính toán hơn bao giờ hết. Với rất nhiều điểm tương đồng với Windows 7, bao gồm trình đơn Khởi động, bạn sẽ làm việc giống như một chuyên gia ngay lập tức.', 9, 19),
(60, NULL, 2190000, 0, 90, NULL, NULL, NULL, NULL, 'Phần mềm Office Home & Student 2021 79G-05337', NULL, 'Trọn đời', 'Đăng ký Microsoft 365 Family, bạn có thể xây dựng thói quen tốt hơn sau tay lái với các báo cáo lái xe và nhận thông báo khi người thân đến hoặc rời khỏi một địa điểm. Microsoft Family Safety trao quyền cho bạn để giúp bảo vệ những người thân của bạn bằng các tính năng an toàn thể chất và kỹ thuật số.', 9, 19),
(61, NULL, 1150000, 1, 39, NULL, NULL, NULL, NULL, 'Ổ cứng HDD WD 1TB BLUE 2.5\"', NULL, ' ', 'HDD WD là một sự lựa chọn tối ưu khi bạn muốn nâng cấp ổ cứng', 5, 14),
(62, NULL, 1090000, 0, 50, NULL, NULL, NULL, NULL, 'SSD GIGABYTE M.2 PCIe 256GB', NULL, ' ', ' ', 5, 15),
(63, NULL, 990000, 0, 50, NULL, NULL, NULL, NULL, 'Bộ định tuyến WiFi 5 TP-Link Archer C54 chuẩn AC1200', NULL, '24 tháng', 'Wi-Fi AC tốc độ cao. Vùng phủ Wi-Fi rộng lớn. Nhiều chế độ 3-trong-1. Quyền kiểm soát của phụ huynh. Mạng khách—Cung cấp truy cập riêng biệt cho khách và đảm bảo bảo mật cho mạng chính. Luồng HD mượt mà. Hỗ trợ IPv6. Nhỏ gọn và có thể treo tường.', 6, 16),
(64, 'AMD Ryzen 9 5900HS', 43490000, 1, 99, '90WHr', 'Windows 10 Home', '15.6 inch WQHD (2560 x 1440), 165Hz AdaptiveSync', '16GB DDR4 3200MHz', 'Asus ROG Zephyrus G15 GA503QM HQ158T', 'Asus ROG Zephyrus G15 GA503QM-HQ158T sở hữu thiết kế đơn giản, là sự kết hợp hài hòa giữa tone màu Eclipse Gray, nắp máy ma trận điểm với những dải màu lung linh huyền ảo và logo sắp xếp nhỏ gọn ở góc máy.gaming của người dùng và có sức thu hút vô cùng lớn với những ánh mắt xung quanh.', '24 tháng', 'Là một trong những dòng laptop gaming cao cấp của Asus, hiệu năng mà chiếc laptop này mang lại cho người dùng vô cùng ấn tượng', 1, 3),
(65, NULL, 1190000, 0, 13, NULL, NULL, NULL, NULL, 'Bộ định tuyến WiFi 5 ASUS RT-AC53 Chuẩn AC750', NULL, '36 tháng', 'RT- AC53 là một thiết bị kết nối mạng kết hợp tính năng không dây/có dây được thiết kế đặc biệt để phục vụ cho nhu cầu sử dụng mạng trong nhà và văn phòng. Giúp cho người dùng xem các video HD trực tuyến, thực hiện các cuộc gọi và chơi game trực tuyến.', 6, 3),
(66, NULL, 1190000, 0, 30, NULL, NULL, NULL, NULL, 'Bộ định tuyến WiFi 5 Linksys MAX-STREAM E5600-AH chuẩn AC1200', NULL, '36 tháng', 'Linksys E5600 Dual-Band WiFi 5 Router là một trong những sản phẩm router wifi sở hữu băng tần kép cho phép bạn tận hưởng sức mạnh của công nghệ Wi-Fi chuẩn AC với tốc độ 1,2 Gbps.', 6, 17),
(67, NULL, 1990000, 0, 35, NULL, NULL, NULL, NULL, 'Bộ định tuyến WiFi 5 ASUS RT-AC1500UHP Chuẩn AC1500 (Xuyên tường)', NULL, '36 tháng', 'RT-AC1500UHP cho tốc độ lên tới 867 Mbps ở băng tần 5Ghz và 4x4 600 Mbps ở băng tần 2,4 Ghz. Chỉ với 30 giây cài đặt, chức năng phát hiện đa thiết bị và các thiết lập linh hoạt, ASUSWRT sẽ khai thác tối đa hiệu suất mạng của bạn.', 6, 3),
(68, NULL, 3490000, 0, 40, NULL, NULL, NULL, NULL, 'Bộ định tuyến WiFi 6 Asus RT-AX3000 chuẩn AX3000', NULL, '36 tháng', 'Router AX3000 Dual Band WiFi 6 (802.11ax) hỗ trợ công nghệ MU-MIMO và OFDMA. Chuẩn WiFi thế hệ tiếp theo. Tốc độ Wi-Fi siêu nhanh. Tăng dung lượng và hiệu quả. Bảo mật cấp độ doanh nghiệp. Ghép nối tốt hơn với hệ thống Mesh.', 6, 3),
(69, NULL, 1990000, 0, 40, NULL, NULL, NULL, NULL, 'Bộ định tuyến WiFi 6 TP-Link Archer AX10 chuẩn AX1500', NULL, '24 tháng', 'Thiết bị mạng TP-Link Archer AX10 Wifi 6. Tốc độ 1.5 Gbps thế hệ tiếp theo. Kết nối nhiều thiết bị. CPU ba nhân. Vùng phủ rộng hơn. Cổng Gigabit. Cài đặt dễ dàng. Tương thích với Alexa.', 6, 16),
(70, NULL, 2490000, 0, 100, NULL, NULL, NULL, NULL, 'Bộ định tuyến WiFi 6 TP-Link AX73 chuẩn AX5400', NULL, '24 tháng', 'Phủ sóng WiFi diện rộng với 6 ăng ten cho tốc độ đường truyền cao. Thiết kế tản nhiệt hiệu quả cao, lắp đặt dễ dàng, bảo mật tối ưu. Tốc độ WARP cho phát trực tuyến 8K mượt mà. Kết nối lên đến 200 thiết bị.', 6, 16),
(71, NULL, 3990000, 0, 100, NULL, NULL, NULL, NULL, 'Bộ định tuyến WiFi 6 Linksys MAX-STREAM E9450-AH chuẩn AX5400', NULL, '36 tháng', 'Router Wifi 6 thế hệ mới băng tần kép siêu mạnh. Thiết kế nhỏ gọn. CPU 3 nhân cung cấp tốc độ cực cao, hai băng tần phát sóng đồng thời 2.4 GHz và 5 GHz.', 6, 17),
(72, NULL, 1090000, 0, 50, NULL, NULL, NULL, NULL, 'Card mạng PCIe WiFi 6 ASUS PCE-AX3000 Chuẩn AX3000 (Tray)', NULL, '36 tháng', 'Với công nghệ WiFi 6 (802.11ax) và băng thông rộng 160 MHz, ASUS PCE-AX3000 mang đến tốc độ không dây nhanh hơn gấp 2,7 lần so với các thiết bị WiFi 5 (802.11ac). Nâng cấp Bluetooth ngay tức thì. Áp dụng tiêu chuẩn bảo mật Wi-Fi WPA3 mới nhất.', 6, 3),
(73, NULL, 649000, 0, 40, NULL, NULL, NULL, NULL, 'Card mạng WiFi 5 TP-Link T5E chuẩn AC1200', NULL, '24 tháng', 'Archer T5E là bộ chuyển đổi Wi-Fi PCI Express băng tần kép 802.11ac với tốc độ lên đến 1167 Mbps (867 Mbps trên băng tần 5 GHz và 300 Mbps trên băng tần 2.4 GHz). Tương thích với công nghệ Bluetooth 4.2. Hai ăng-ten độ lợi cao.', 6, 16),
(74, NULL, 999000, 0, 60, NULL, NULL, NULL, NULL, 'Switch mạng Linksys LGS105-AP 5 cổng Gigabit', NULL, '60 tháng', 'Switch mạng Linksys LGS105-AP 4 cổng Gigabit là thiết bị mạng mang đến tốc độ, hiệu năng và năng suất hiệu quả. Tính năng tiết kiệm năng lượng.', 6, 17),
(75, NULL, 13990000, 0, 100, NULL, NULL, NULL, NULL, 'ASUS ROG Strix TRX40-XE Gaming', NULL, '36 tháng', 'Mainboard Asus ROG STRIX TRX40-XE GAMING là một kiệt tác kết hợp tính thẩm mỹ với hiệu năng cao, sản phẩm này là dành cho những người dùng thích làm việc chăm chỉ và chơi hết mình.\r\n\r\nMột loạt các thiết kế thể hiện nguồn gốc cyberpunk của nó, bao gồm tấm che I/O mờ phát sáng Aura và hình mưa nổi bật trên tản nhiệt VRM & chipset. Khi nói đến hiệu năng, ROG Strix TRX40-XE Gaming mang đến nhiều tùy chọn kết nối cực nhanh, bao gồm ba khe cắm PCIe 4.0 M.2, mạng 2.5G Ethernet và Wi-Fi 6 mới nhất và tám cổng USB 3.2 Gen 2...', 14, 3),
(76, NULL, 1890000, 0, 61, NULL, NULL, NULL, NULL, 'MSI H510M PRO-E', NULL, '36 tháng', 'Bo mạch chủ MSI có rất nhiều thiết kế tiện lợi và thông minh dành cho người dùng\r\nBo mạch chủ MSI cho phép bạn quản lý tốc độ và nhiệt độ cho tất cả hệ thống và quạt CPU của bạn.', 14, 8),
(77, NULL, 8790000, 0, 65, NULL, NULL, NULL, NULL, 'GIGABYTE X570S AERO G', NULL, '24 tháng', 'Hỗ trợ AMD Ryzen 5000 series / Ryzen 4000 G series / Ryzen 3000 series / Bộ vi xử lý dòng Ryzen 3000 G / RYZEN 2000 / Ryzen 2000 G', 14, 15),
(78, NULL, 5750000, 0, 16, NULL, NULL, NULL, NULL, 'GIGABYTE Z690M AORUS ELITE DDR4', NULL, '24 tháng', 'Gigabyte Z690M AORUS ELITE là phiên bản bo mạch chủ Z690 kích thước M-ATX tầm trung của Gigabyte, sở hữu trang bị và thiết kế vô cùng bắt mắt. \r\nLà bo mạch chủ Z690, Gigabyte Z690M AORUS ELITE được trang bị đầy đủ các tính năng hiện đại nhất', 14, 15),
(79, NULL, 12490000, 0, 16, NULL, NULL, NULL, NULL, 'GIGABYTE Z690 AERO D DDR5', NULL, '24 tháng', 'Gigabyte Z690 AERO G sở hữu thiết kế ATX với ngoại hình nam tính, tông trắng chủ đạo cho sản phẩm vẻ cao cấp. Nổi bật là các khối heatsink đẹp mắt bao phủ ở các khu vực quan trọng trên bo mạch chủ. \r\nGigabyte Z690 AERO G là phiên bản bo mạch chủ Z690 cận cao cấp của Gigabyte, sở hữu trang bị và thiết kế vô cùng bắt mắt. Đây là bo mạch chủ phù hợp cho các bộ máy cao cấp, hiệu năng cao thiên về làm việc. ', 14, 15),
(80, NULL, 1090000, 0, 150, NULL, NULL, NULL, NULL, 'Tai nghe DareU EH925s RGB PRO', NULL, '12 tháng', 'Tai nghe chơi game EH925s Pro có khung nhôm tích hợp vừa nhẹ vừa bền, củ tai có thể tinh chỉnh lên xuống, đảm bảo cho sự thoải mái khi đeo lâu, và được thiết kế cho sự cách âm tuyệt vời.\r\n(Dareu RGB System) là một hệ thống RGB được phát triển bởi Darwin, hỗ trợ các cài đặt độc lập và kết nối đa thiết bị. Hiệu ứng ánh sáng tổng thể được đồng bộ hóa. Hỗ trợ cài đặt mức hiệu ứng đèn nền RGB của trình điều khiển và hiệu ứng đèn nền của nó có thể được đồng bộ hóa với các sản phẩm đèn nền RGB khác hỗ trợ Darwin DRS.', 3, 18),
(81, NULL, 25390000, 0, 120, NULL, NULL, NULL, NULL, 'GIGABYTE Z690 AORUS XTREME DDR5', NULL, '36 tháng', 'Bo mạch chủ GIGABYTE Z690 có kiến ​​trúc DDR5 mới nhất và khả năng XMP 3.0. Công nghệ bộ nhớ DDR5 mới mang lại thêm 50% băng thông cho nền tảng và tăng đáng kể hiệu suất hệ thống bằng cách triển khai Điện áp DDR5 gốc đã mở khóa, Định tuyến bộ nhớ Xtreme và khe cắm SMD đáng tin cậy.', 14, 15),
(82, NULL, 6250000, 0, 50, NULL, NULL, NULL, NULL, 'GIGABYTE Z690 GAMING X DDR4', NULL, '24 Tháng', 'Gigabyte Z690 GAMING X là phiên bản bo mạch chủ Z690 tầm trung của Gigabyte, sở hữu trang bị và thiết kế vô cùng bắt mắt\r\nPhần PCB được cấu thành từ nhiều lớp với rất nhiều đồng - giúp truyền dẫn tín hiệu và hỗ trợ khả năng tản nhiệt cho các linh kiện. Khe RAM, khe PCI-E đều được bọc thép gia cường, tăng độ bền và sự cao cấp cho sản phẩm ', 14, 15),
(83, NULL, 12890000, 0, 130, NULL, NULL, NULL, NULL, 'MSI MPG Z690 GAMING CARBON WIFI DDR5', NULL, '24 tháng', 'Là bo mạch chủ sử dụng chipset Z690, MSI MPG Z690 CARBON WIFI được trang bị: 4 khe M.2 PCI-e, USB Type C, Lan 2,5Gbs, Wifi 6E, 4 khe RAM DDR5: Tối đa 128GB', 14, 8),
(84, '', 13500000, 0, 160, NULL, NULL, NULL, NULL, 'ASUS ROG MAXIMUS Z690 APEX DDR5', NULL, '36 Tháng', 'Người dùng có thể nhận thấy đầu tiên là ánh sáng Polymo mới. Màn hình LED này làm nổi bật vỏ I / O của Hero với một mảng ánh sáng và màu sắc bắt mắt\r\nĐược trang bị nguồn điện tiên tiến nhất để có thể phản hồi trong vài giây với những thay đổi về điện áp và tần số của các vi xử lý', 14, 3),
(85, NULL, 6490000, 1, 34, NULL, NULL, NULL, NULL, 'SSD WD SN850 1TB M.2 PCIe gen4 NVMe', NULL, '24 tháng', 'Được thiết kế với kiểu dáng mỏng, nhẹ, nhỏ gọn\r\nTốc độ đọc: 7000 MB/s, Tốc độ ghi: 5300 MB/s, Chuẩn SSD: M.2 NVMe Gen4 x4', 5, 14),
(86, NULL, 3690000, 1, 50, NULL, NULL, NULL, NULL, 'SSD WD SN850 500GB M.2 PCIe gen 4 NVMe', NULL, '24 tháng', 'Kiểu dáng M.2 2280 siêu mỏng, nhẹ và nhỏ gọn để dễ dàng trượt vào thiết bị.\r\nỔ SSD WD Black SN850 500GB NVMe đạt tốc độ đọc lên đến 7000MB/s và tốc độ ghi 4100MB/s để giúp bạn xử lý nhanh hơn các tác vụ hỗ trợ tối đa cho công việc và mục đích sử dụng', 5, 14),
(87, NULL, 1190000, 0, 156, NULL, NULL, NULL, NULL, 'SSD WD Blue SN550 250GB M.2 2280 NVMe', NULL, '24 tháng', 'Khả năng tương thích với nhiều loại máy tính để bàn và laptop\r\nHiệu năng vượt trội đối với các ứng dụng hay game nặng, công nghệ 3D NAND giúp cho ổ cứng đạt được tốc độ đọc tuần tự lên tới 2400MB/s và tốc độ ghi tuần tự lên tới 950MB/s.', 5, 14),
(88, NULL, 4250000, 0, 124, NULL, NULL, NULL, NULL, 'WD SSD Black SN750 1TB M.2 NVMe', NULL, '24 tháng', 'Dòng sản phẩm SSD Western Digital Black SN750 có thêm Series được bổ sung thêm tản nhiệt giúp SSD hoạt động mát mẻ hơn, cho hiệu năng ổn định hơn.\r\nTốc độ đọc và ghi liên tiếp lên đến 3470 MB/s và 3000MB/s, ổ cứng SSD Western Digital Black SN750 PCIe Gen3 x4 NVMe M.2 đươc trang bị những công nghệ và nền tảng mới nhất kèm theo công nghệ 3D-NAND 64 Layer sẽ giúp nâng cao tối đa hiệu suất', 5, 14),
(89, NULL, 2290000, 0, 214, NULL, NULL, NULL, NULL, 'WD HDD 3TB Blue 5400rpm', NULL, '24 tháng', 'Sản phẩm được bao bọc bởi lớp vỏ ngoài chắc chắn được làm từ hợp kim siêu bền, chống gỉ và các linh kiện bên trong bởi các chất liệu có độ bền cao. Đặc biệt, ổ cứng không sử dụng chì và halogen trong quá trình sản xuất với những vật liệu không gây xung đột đảm bảo an toàn.\r\nỔ cứng dành cho hoạt động hàng ngày. Hiệu suất cao và ổn định. Dễ dàng nâng cấp. Có cả chuẩn 3.5 inch và 2.5 inch', 5, 14),
(90, NULL, 2190000, 0, 164, NULL, NULL, NULL, NULL, 'HDD WD Red 2TB 5400rpm', NULL, '24 tháng', 'Sản phẩm được bao bọc bởi lớp vỏ ngoài chắc chắn được làm từ hợp kim siêu bền, chống gỉ và các linh kiện bên trong bởi các chất liệu có độ bền cao. Đặc biệt, ổ cứng không sử dụng chì và halogen trong quá trình sản xuất với những vật liệu không gây xung đột đảm bảo an toàn.\r\nThiết kế và thử nghiệm cho môi trường RAID. Sự lựa chọn đúng đắn dành cho NAS. Thiết kế dành riêng cho NAS của hộ gia đình, văn phòng vừa và nhỏ ', 5, 14),
(91, NULL, 4490000, 0, 241, NULL, NULL, NULL, NULL, 'WD HDD Blue 6TB 5400rpm', NULL, '24 tháng', 'Sản phẩm được bao bọc bởi lớp vỏ ngoài chắc chắn được làm từ hợp kim siêu bền, chống gỉ và các linh kiện bên trong bởi các chất liệu có độ bền cao. Đặc biệt, ổ cứng không sử dụng chì và halogen trong quá trình sản xuất với những vật liệu không gây xung đột đảm bảo an toàn.\r\nỔ cứng HDD WD Blue 6TB được trang bị chuẩn giao tiếp SATA III có thể tương thích ngược với chuẩn SATA II. Bên cạnh đó, bộ nhớ đệm 64MB cache và tốc độ vòng quay đạt 5400rpm giúp ổ cứng hoạt động yên tĩnh và tiêu thụ điện năng thấp.', 5, 14),
(92, NULL, 5100000, 0, 165, NULL, NULL, NULL, NULL, 'Phần mềm Office Home and Business 2019 English APAC EM Medialess P6 T5D-03302', NULL, 'Trọn đời', 'Windows 10 mang đến những tính năng tuyệt vời, như 3D trong Windows 10, Windows Ink vàWindows Hello, sẵn có trong máy tính của bạn ngay khi phát hành', 9, 19),
(93, NULL, 4290000, 0, 160, NULL, NULL, NULL, NULL, 'Phần mềm Windows 10 Pro Online DwnLd NR FQC-09131', NULL, 'Trọn đời', 'Windows 10 cung cấp cho bạn nhiều sự lựa chọn linh hoạt và nhiều tùy chọn tính toán hơn bao giờ hết. Với rất nhiều điểm tương đồng với Windows 7, bao gồm trình đơn Khởi động, bạn sẽ làm việc giống như một chuyên gia ngay lập tức', 9, 19),
(94, NULL, 990000, 0, 150, NULL, NULL, NULL, NULL, 'Tai nghe Astro A10 Blue', NULL, '12 Tháng', 'Thiết kế trẻ trung, hiện đại.\r\nTai Nghe Gaming Chụp Tai Astro A10 PC/PS4 được cấu tạo từ chất liệu nhẹ và miếng đệm tai bằng vải khiến bạn quên đi sự mệt mỏi hay khó chịu khi đeo trong một trò chơi dài.', 3, 20),
(95, NULL, 1890000, 0, 160, NULL, NULL, NULL, NULL, 'Tai nghe Asus ROG Cetra RGB', NULL, '12 Tháng', 'Thiết kế nhỏ gọn, thời thượng, phù hợp với xu hướng hiện nay.\r\nROG Cetra RGB là một sản phẩm tai nghe in ear mang trong mình khả năng truyền tải âm thanh chất lượng như những tai nghe chơi game và sự linh hoạt, nhỏ gọn,dễ dàng di chuyển', 3, 3),
(96, NULL, 6900000, 0, 100, NULL, NULL, NULL, NULL, 'Máy chiếu Asus ZenBeam Go E1Z', NULL, '12 Tháng', 'Thiết kế đơn giản, cứng cáp.\r\nMáy chiếu phù hợp với mọi loại thiết bị, nhỏ gọn và dễ sử dụng.', 3, 3),
(97, NULL, 5490000, 0, 50, NULL, NULL, NULL, NULL, 'Tai nghe Apple Airpods 3', NULL, '12 Tháng', 'Thiết kế nhỏ gọn, có thể cất giữ dễ dàng, sở hữu vỏ ngoài cứng cáp có thể chịu được va đập mạnh.\r\nTai nghe chính hãng, tương thích với mọi loại thiết bị, sử dụng tốt nhất với thiết bị của Apple.', 3, 2),
(98, NULL, 400000, 0, 50, NULL, NULL, NULL, NULL, 'Chuột Logitech G102 Lightsync RGB Black', NULL, '24 tháng', 'Thiết kế sáu nút cổ điển đem đến cả sự thoải mái lẫn tự tin để bạn có thể khám phá, sáng tạo và chơi như ý muốn. Sử dụng phần mềm HUB G của Logitech để gán các lệnh trong trò chơi, điều khiển hệ thống hoặc tổ hợp phím và đơn giản hóa việc chơi game của bạn.\r\nTheo dõi con trỏ chính xác và đạt hiệu suất phản hồi nhanh nhạy nhờ vào cảm biến cấp độ chơi game. Với độ nhạy có thể tùy chỉnh từ 200 - 8.000 DPI. Sử dụng phần mềm HUB G của Logitech để lập trình lên tới 5 chế độ thiết lập sẵn.', 8, 9),
(99, NULL, 400000, 0, 150, NULL, NULL, NULL, NULL, 'Chuột Logitech G102 Lightsync RGB White', NULL, '24 tháng', 'Các nút chính bên trái và phải có hệ thống ứng lực nút bằng lò xo kim loại độc quyền của Logitech G, đem đến sự chính xác khi nhấn nút và trải nghiệm đồng nhất - từ cú nhấp này đến cú nhấp khác.\r\nTheo dõi con trỏ chính xác và đạt hiệu suất phản hồi nhanh nhạy nhờ vào cảm biến cấp độ chơi game. Với độ nhạy có thể tùy chỉnh từ 200 - 8.000 DPI.Sử dụng phần mềm HUB G của Logitech để lập trình lên tới 5 chế độ thiết lập sẵn.', 8, 9),
(100, NULL, 640000, 0, 100, NULL, NULL, NULL, NULL, 'Chuột Logitech G402 Hyperion', NULL, '24 tháng', 'Thiết kế bên ngoài của G402 không có nhiều khác biệt so với các dòng chuột chơi game khác, tuy nhiên nếu sử dụng một thời gian chúng ta sẽ nhận ra sự khác biệt. G402 cao 41mm, dài 136 mm và rộng 72 mm. Nó nặng 108g chưa tính cáp nối, nếu so sánh với G502 thì nó không dày bằng và dài hơn, mang đến sự thoải mái, tăng cường các chức năng.\r\nSản phẩm G402 sở hữu tốc độ quét lên tới 500 IPS, sử dụng công nghệ cảm biến mới nhất của Logitech là Fusion Engine cho độ chính xác cực cao khi sử dụng. Theo lời đội ngũ phát triển và nghiên cứu của Logitech, G402 hiện là chuột chơi game có tốc độ IPS nhanh nhất. Đôi khi phản xạ của game thủ có thể nhanh hơn khả năng nhận biết của chuột nhưng với Hyperion thì chuyện đó đã chỉ là dĩ vãng.', 8, 9),
(101, NULL, 990000, 0, 52, NULL, NULL, NULL, NULL, 'Chuột Logitech G304 Lightspeed Wireless', NULL, '24 Tháng', 'Các phím chính của G304, cả ở bên trái và phải, được đánh giá 10 triệu lần nhấp. Logitech G304 cũng có nút giữa, nút DPI và hai nút bên có thể được lập trình tùy theo sở thích của bạn bằng G HUB của Logitech.\r\nCảm biến HERO và công nghệ LIGHTSPEED không dây đem lại hiệu suất đỉnh cao cho phép bạn chơi game trong hàng tháng. Một trong những dòng chuột không dây logitech đem lại đến 250 giờ hoạt động chỉ trên một quả pin AA. Nó có thể được điều chỉnh để sử dụng trong tới 9 tháng ở mức thông thường.', 8, 9),
(102, NULL, 790000, 0, 35, NULL, NULL, NULL, NULL, 'Chuột Logitech G403 HERO', NULL, '24 Tháng', 'Logitech G403 sở hữu thiết kế với kiểu cầm thoải mái kèm theo trọng lượng nhẹ với tay cầm cao su giúp tăng thêm khả năng di chuột của bạn.\r\nCảm biến tiên tiến nhất của Logitech từ trước tới nay, với khả năng theo dõi 1:1, 400+ IPS và độ nhạy DPI tối đa 100-25,600 — cùng tính năng làm mượt, lọc và tăng tốc.', 8, 9),
(103, NULL, 430000, 0, 160, NULL, NULL, NULL, NULL, 'Chuột gaming Corsair Harpoon Pro RGB', NULL, '24 Tháng', 'Chế độ đèn thông minh, tùy chỉnh với gần như vô hạn màu và chế độ, và 6 nút phụ giúp bạn có thể biến Corsair Harpoon Pro RGB thành con chuột giành riêng cho bạn. \r\nhuột Corsair Harpoon Pro RGB được thiết kế ra để tỏa sáng, nó được trang bị một con mắt đọc 6000 DPI, công nghệ quét mang đến sự điều khiển chính xác, và trọng lượng vẫn nhẹ nhàng. Thân chuột được thiết kế để hỗ trợ những thao tác nhanh nhất', 8, 10),
(104, NULL, 540000, 0, 240, NULL, NULL, NULL, NULL, 'Chuột Corsair M55 RGB Pro White', NULL, '24 tháng', 'Chỉ nặng 86g, thiết kế hai bên nhẹ nhàng và linh hoạt của M55 RGB PRO cho phép bạn chơi ở mức cao nhất bằng một tay bằng cách sử dụng tay cầm thoải mái nhất, có thể là lòng bàn tay, vuốt hoặc đầu ngón tay.\r\nKiểm soát tốt nhờ vào cảm biến quang học 12.400 DPI để theo dõi độ chính xác cao.', 8, 10),
(105, NULL, 990000, 0, 100, NULL, NULL, NULL, NULL, 'Chuột Corsair Harpoon RGB Wireless', NULL, '24 tháng', 'Thân chuột nhỏ nhắn và khối lượng nhẹ (chỉ 99 gram) cùng với khoang chứa receiver làm cho nó trở nên cực kì tiện dụng.\r\nChuột Corsair Harpoon RGB Wireless là một trong những dòng chuột bluetooth giá rẻ sở hữu thời lượng pin cũng rất ấn tượng được Corsair công bố là lên tới 30hrs với độ sáng vừa phải, 45hrs khi tắt led hoàn toàn. Với chế độ Bluetooth chuột có thể sử dụng đến 40hrs liên tục khi mở led và 60h khi tắt led.', 8, 10),
(106, NULL, 890000, 0, 100, NULL, NULL, NULL, NULL, 'Chuột Corsair Katar Pro Wireless', NULL, '24 tháng', 'Một trong những dòng chuột gaming giá rẻ với trọng lượng chỉ 69g, chuột Corsair Katar Pro Ultra Light cực kỳ nhẹ và thao tác nhanh nhạy\r\nSử dụng tùy chỉnh bằng phần mềm CORSAIR iCUE cho phép điều khiển ánh sáng RGB động sống động, lập trình macro tinh vi và đồng bộ hóa ánh sáng toàn hệ thống trên các thiết bị ngoại vi.', 8, 10),
(107, NULL, 990000, 0, 50, NULL, NULL, NULL, NULL, 'Chuột Corsair Harpoon RGB Wireless', NULL, '36 tháng', 'Cấu trúc nhẹ nhàng chỉ nặng có 99g đây được xem là một trong những dòng chuột bluetooth sở hữu trọng lượng khá nhẹ so với các đối thủ có cùng phân khúc.\r\nChuột Corsair Harpoon RGB Wireless là một trong những dòng chuột bluetooth giá rẻ sở hữu thời lượng pin cũng rất ấn tượng được Corsair công bố là lên tới 30hrs với độ sáng vừa phải, 45hrs khi tắt led hoàn toàn. Với chế độ Bluetooth chuột có thể sử dụng đến 40hrs liên tục khi mở led và 60h khi tắt led.', 8, 10),
(108, NULL, 2900000, 0, 200, NULL, NULL, NULL, NULL, 'Chuột Logitech G Pro X Superlight Wireless Black', NULL, '36 tháng', 'Một trong những dòng chuột gaming không dây có chân lớn bằng nhựa tổng hợp PTFE không pha tạp mang lại cảm giác lướt êm ái, đem đến kết nối tinh thuần, mượt mà với trò chơi\r\nChuột Logitech G Pro X Superlight Wireless Black sở hữu mắt cảm biến HERO 25K độc quyền của Logitech G đem lại độ chính xác, tốc độ và độ ổn định với độ chính xác cao và khả năng điều khiển cực tốt', 8, 9),
(109, NULL, 2990000, 0, 30, NULL, NULL, NULL, NULL, 'Chuột Logitech G502 Hero Lightspeed Wireless', NULL, '36 tháng', 'Với công nghệ làm lại hoàn toàn tiên tiến hoàn hảo này, G502 LIGHTSPEED vẫn giữ được hình dạng yêu thích của mình.\r\nG502 là một trong những dòng chuột không dây Logitech gaming được trang bị cảm biến HERO 16K thế hệ tiếp theo và tương thích POWERPLAY. Với công nghệ làm lại hoàn toàn tiên tiến hoàn hảo này, G502 LIGHTSPEED vẫn giữ được hình dạng yêu thích của mình', 8, 9),
(110, NULL, 2900000, 0, 50, NULL, NULL, NULL, NULL, 'Chuột Logitech G903 Hero Lightspeed Wireless', NULL, '36 tháng', 'Từng bộ phận của chuột không dây logitech G903 đều được tối ưu hóa để giảm trọng lượng trong khi vẫn giữ được sự ổn định.\r\nChuột Logitech G903 Hero được trang bị công nghệ không dây chất lượng cao, giúp bạn có thể sử dụng các thao tác nhanh chóng, chính xác đồng thời dễ dàng cất giữ sản phẩm cẩn thận. Chuột được kết nối 2.4GHz và có tốc độ phản hồi cực nhanh 1ms gấp 8 lần so với các mẫu chuột bluetooth thông thường cho khả năng xử lý mượt mà, nhanh chóng.', 8, 9),
(111, NULL, 1590000, 0, 100, NULL, NULL, NULL, NULL, 'Chuột Logitech G604 Hero Lightspeed Wireless', NULL, '24 tháng', 'Để nâng tầm trải nghiệm đến người dùng, G604 là một trong những dòng chuột không dây Logitech sở hữu nút cuộn bằng kim loại bền bỉ chuyển đổi giữa chế độ cuộn siêu nhanh.\r\nG604 Hero Lightspeed Wireless được Logitech trang bị hệ thống cảm biến cảm biến HERO chơi game tiên tiến nhất với độ theo dõi chính xác 1:1 và hiệu suất năng lượng dẫn đầu. Đạt DPI tối đa 25.600, cộng với khả năng làm mịn, lọc hay tăng tốc.', 8, 9),
(112, NULL, 1090000, 0, 10, NULL, NULL, NULL, NULL, 'Chuột Logitech G502 Hero', NULL, '36 tháng', 'Logitech G502 Hero là một trong những dòng chuột gaming giá rẻ so với các sản phẩm ở cùng phân khúc với dây bện với nút buộc dây có khóa nhám, phần cầm nắm bên có viền cao su, cửa từ vào khoang để khối nặng và nhiều hơn nữa.\r\nVới hệ thống led RGB 16,8 triệu màu và đồng bộ hóa hiệu ứng và hình chiếu sáng động với thiết bị Logitech G của bạn. Tùy chỉnh nhanh chóng và dễ dàng bằng G HUB của Logitech.', 8, 9),
(113, NULL, 890000, 0, 15, NULL, NULL, NULL, NULL, 'Bàn phím Logitech G213', NULL, '36 tháng', 'Logitech G213 chiếc bàn phím chơi game hiện đại có 5 chế độ chiếu sáng riêng trong phổ màu gồm khoảng 16,8 triệu màu. Thay đổi màu cho phù hợp với bố cục, các trò chơi cụ thể hoặc chỉ là để thể hiện màu sắc yêu thích.\r\nBàn phím chơi game G213 có các phím lõm mech dome của Logitech được tùy chỉnh đặc biệt để mang lại phản ứng tiếp xúc ưu việt và cấu hình hiệu suất tương tự như bàn phím cơ học. Các phím lõm cơ học có độ cao tối đa, khoảng cách hành trình đầy đủ 4 mm, lực tác động 50g và âm thanh yên tĩnh khi hoạt động.', 8, 9),
(114, NULL, 1790000, 0, 20, NULL, NULL, NULL, NULL, 'Bàn phím Logitech G613 Wireless', NULL, '36 tháng', 'G613 là bàn phím không dây thế hệ tiếp theo dành cho những game thủ muốn cả hiệu suất cao của phím switch cơ học và sự tự do chơi game không dây.\r\nThông qua chế tạo và thiết kế đầu cuối, Logitech G đã phát triển một giải pháp không dây mạnh mẽ để giải quyết vấn đề cơ bản của độ trễ, độ ổn định và khả năng kết nối. Kết quả cuối cùng là LIGHTSPEED, giải pháp không dây cấp độ chuyên nghiệp đạt được hiệu suất như có dây.', 8, 9);
INSERT INTO `san_pham` (`id`, `cpu`, `don_gia`, `don_vi_ban`, `don_vi_kho`, `dung_luong_pin`, `he_dieu_hanh`, `man_hinh`, `ram`, `ten_san_pham`, `thiet_ke`, `thong_tin_bao_hanh`, `thong_tin_chung`, `ma_danh_muc`, `ma_hang_sx`) VALUES
(115, NULL, 1900000, 0, 60, NULL, NULL, NULL, NULL, 'Bàn phím Logitech G512 GX RGB (Clicky)', NULL, '36 tháng', 'Được thiết kế hướng đến hiệu suất và tích hợp công nghệ chơi game mạnh mẽ. Từ các chi tiết tinh tế nhất như kết cấu mờ phủ vân tay và dây cáp có độ bền cao, tới chi tiết phức tạp nhất, mỗi khía cạnh được thiết kế chính xác bởi công nghệ dẫn đầu ngành của Logitech G cùng chất lượng vào kiểu dáng được chế tạo độc đáo.\r\nVới công nghệ LIGHTSYNC, người dùng có thể tùy chỉnh chức năng chiếu sáng được lấy cảm hứng từ trò chơi, âm thanh hoặc màn hình để đem lại trải nghiệm RGB đắm chìm hơn bao giờ hết.', 8, 9),
(116, NULL, 3090000, 0, 100, NULL, NULL, NULL, NULL, 'Bàn phím Logitech G813 RGB', NULL, '36 tháng', 'Bàn phím cơ Logitech G813 được chế tác kỳ công với kỹ thuật cao đem lại một dáng vẻ mỏng tinh tế mà hiệu năng tính năng vẫn được giữ nguyên. Bền bỉ, thoải mái và luôn sẵn sàng cũng bạn chiến mọi tựa game. G813 thực sự là một bàn phím của tương lai.\r\nSở hữu tốc độ, độ chính xác và hiệu suất với độ dày chỉ bằng 1 nửa so với những loại switch thông thường. Các phím cơ switch GL được kiểm nghiệm chặt chẽ để đáp ứng về độ bền, độ nhạy và độ chính xác', 8, 9),
(117, NULL, 5590000, 1, 19, NULL, NULL, NULL, NULL, 'Tai nghe Razer BlackShark V2 Pro - Rainbow Six Edition', NULL, '24 Tháng', 'Tai nghe phiên bản limited của tựa game hàng triệu người chơi – Rainbow Six Siege.\r\nVới đường truyền tốc độ cao và độ trễ cực thấp, tai nghe gaming không dây này có kết nối không dây 2.4GHz với tốc độ hàng đầu trong ngành tai nghe gaming để đảm bảo âm thanh không bị mất và luôn được đồng bộ hóa với trò chơi của bạn.', 3, 22),
(118, NULL, 2590000, 0, 100, NULL, NULL, NULL, NULL, 'Tai nghe Razer Opus X - Mercury', NULL, '24 tháng', 'Tai nghe không dây Razer Opus X - phiên bản Mercury với 3 màu tinh tế.\r\nTai nghe có công nghệ khử tiếng ồn chủ động (ANC) tiên tiến của Razer giúp phát hiện và loại bỏ tiếng ồn xung quanh không mong muốn. Tập trung tận hưởng âm nhạc của riêng bạn.', 3, 22),
(119, NULL, 3090000, 1, 149, NULL, NULL, NULL, NULL, 'Tai nghe Razer BlackShark V2 CouRageJD Edition', NULL, '24 tháng', 'Màu vàng độc đáo giúp bạn luôn nổi bật trong đám đông.\r\nThiết kế hoàn toàn mới với khả năng điều chỉnh các tần số âm thanh cao đã được cấp bằng sáng chế có cơ chế hoạt động giống như 3 trình điều khiển âm thanh trong 1, tạo ra âm thanh sáng hơn với âm ba trầm hơn và âm trầm mạnh mẽ hơn. Razer BlackShark V2 CouRageJD Edition cũng bao gồm các màng chắn phủ titan, giúp tăng thêm độ rõ ràng cho bất kỳ giọng hát nào bạn nghe để mọi âm thanh bạn nhận được luôn rõ ràng và sắc nét.', 3, 22),
(120, NULL, 3690000, 0, 100, NULL, NULL, NULL, NULL, 'Tai nghe Razer Hammerhead True Wireless (2021)', NULL, '24 tháng', 'Tai nghe true wireless ấn tượng, hiện đại với 5 màu sắc khác nhau tha hồ chọn lựa.\r\nĐắm chìm cùng âm nhạc với Razer Hammerhead True Wireless mới. Được thiết kế để mang lại đèn LED RGB, công nghệ chống ồn chủ động (ANC) và độ trễ thấp Gaming Mode cho bạn trải nghiệm âm thanh tuyệt vời nhất từ trước đến nay.', 3, 22),
(121, NULL, 890000, 0, 50, NULL, NULL, NULL, NULL, 'Tai nghe Bluetooth JBL T110BT', NULL, '24 tháng', 'JBL T110BT được thiết kế với cơ chế đeo vòng qua cổ, độ dài dây hợp lý giúp cho chiếc tai nghe có thể tương thích với nhiều đối tượng người dùng khác nhau.\r\nJBL T110BT là bản nâng cấp nhẹ của người đàn anh JBL T110 với việc bổ sung kết nối Bluetooth cao cấp, chính vì vậy mà các đường nét đặc trưng của JBL T110 vẫn được giữ lại trên phiên bản này. Phần housing nhỏ cũng giúp cho việc bảo quản chiếc tai nghe trở nên dễ dàng hơn khi có thể cuộn nhỏ lại và cho vào một một cách gọn gang.', 3, 23),
(122, NULL, 10749000, 1, 19, NULL, NULL, NULL, NULL, 'Máy Chiếu Sony VPL-DX221', NULL, '24 tháng', 'Máy chiếu Sony DX-221 được thiết kế với màu trắng trang nhã, kiểu dáng nhỏ gọn và sang trọng, dễ lắp đặt và bố trí, phù hợp với nhiều không gian.\r\nMáy chiếu Sony VPL-DX221 là sản phẩm nâng cấp, thay thế model Sony VPL-DX220 của Sony vào năm 2016. Máy chiếu có cường độ sáng cao phù hợp với các văn phòng hội họp hoặc các lớp học các cấp', 3, 24),
(123, NULL, 950000, 0, 50, NULL, NULL, NULL, NULL, 'Tai nghe Bluetooth JBL T115BT', NULL, '24 tháng', 'Tai nghe bluetooth JBL T115BT tích hợp công nghệ âm thanh độc quyền JBL Pure Bass Sound, cho âm thanh sống động và chân thực, mang âm nhạc đi khắp mọi nơi, giải pháp giải toả mọi căng thằng mệt mõi trong công việc, học tập.\r\nTai nghe JBL T115BT sẽ là lựa chọn hết sức tuyệt vời với các bạn yêu thích các dòng tai nghe jbl có dây đeo cổ. Với dung lượng pin lên đến 8 tiếng, khả năng sạc nhanh trong 2h, công nghệ âm thanh độc quyền JBL Pure Bass Sound, driver 8.6mm dynamic cho âm thanh sống động.', 3, 23),
(124, NULL, 1290000, 0, 80, NULL, NULL, NULL, NULL, 'Tai nghe Bluetooth Sony WI - XB400', NULL, '24 tháng', 'Tai nghe bluetooth Sony WI-XB400 là mẫu tai nghe mang ngôn ngữ thiết kế kiểu dáng đeo vòng cổ, với chất liệu cao su mềm dẻo, có thể dễ dàng uốn gọn, gấp gọn với mọi góc cạnh khác nhau.\r\nSony WI-XB400 là một trong những dòng tai nghe bluetooth mang lại cảm giác thực sự thoải mái hơn rất nhiều đối với người sử dụng, không còn những cảm giác bị đè nặng lên cổ của mình và đồng thời tiết kiệm được cực kì nhiều diện tích, dễ dàng mang đi mang lại hơn rất nhiều mà không hề bị gặp vào vẫn đề gẫy gọng cổ cả.', 3, 24),
(125, NULL, 3589000, 0, 50, NULL, NULL, NULL, NULL, 'Loa Bluetooth Sony SRS-XB32/BC E', NULL, '24 tháng', 'Loa được thiết kế với hình dáng vuông vức hiện đại với 2 màu xanh đỏ độc đáo cực kỳ nổi bật.\r\nLoa không dây Sony– SRS-XB32/BC sở hữu công nghệ EXTRA BASS™ kết hợp bộ tản âm thụ động kép, hoạt động với hai loa toàn dải để nâng cao chất lượng âm sắc thấp giúp âm trầm hay hơn. SRS-XB32 có đèn viền nhấp nháy theo nhịp điệu.', 3, 24),
(126, NULL, 4949000, 0, 30, NULL, NULL, NULL, NULL, 'Loa Bluetooth SONY SRS-XB43/LC SP6', NULL, '24 tháng', 'Thiết bị phát nhạc thời thượng với hình dạng thuôn dài độc đáo, giúp loa có thể đặt ở bất kỳ vị trí nào.\r\nThưởng thức âm thanh sâu lắng, mạnh mẽ ở bất cứ đâu bạn thích với loa EXTRA BASS™2. Bộ tản âm thụ động kép kết hợp cùng với hệ thống loa 2 chiều sẽ nâng cao chất lượng của các âm sắc thấp, cho âm trầm mạnh mẽ hơn.', 3, 24),
(127, NULL, 10300000, 0, 50, NULL, NULL, NULL, NULL, 'Camera Hành trình GoPro HERO9 Black', NULL, '24 tháng', 'Camera hành trình GoPro HERO9 Black được thiết kế với tính linh động tăng cường nhằm ghi lại những thước phim mượt mà và ổn định của cuộc hành trình.\r\nĐược trang bị màn hình màu cho phép xem trước các thước phim dành cho các nhu cầu quay bản thân, vlog. Thiết bị được cho là sẽ có khả năng 5K, mặc dù vậy thông số khung hình trên giây vẫn chưa được tiết lộ.', 7, 25),
(128, NULL, 7800000, 1, 29, NULL, NULL, NULL, NULL, 'Camera hành trình GoPro Hero 8', NULL, '24 tháng', 'Với kích thước nhỏ gọn cùng trọng lượng 136 g, camera hành trình GoPro Hero 8 rất gọn nhẹ, đúng với tính chất của một thiết bị camera hành trình Gopro chính hãng gắn liền với dân phượt.\r\nMáy có màn hình cảm ứng LCD 2 inch điều khiển bằng giọng nói cùng các chức năng chỉnh sửa nhanh video hoặc hình ảnh ghi được. Trên màn hình, bạn có thể điều chỉnh thu phóng để có khung hình ưng ý nhất chỉ bằng một cú chạm.', 7, 25),
(129, NULL, 13900000, 1, 49, NULL, NULL, NULL, NULL, 'Camera hành trình Gopro Hero 10', NULL, '24 tháng', 'GoPro Hero 10 Black sẽ được trang bị màn hình có thiết kế tràn viền - vốn đã không còn xa lạ với các thiết bị smartphone ngày nay. Trước đó màn hình Hero 9 Black tuy lớn nhưng diện tích trống vẫn khá nhiều. Và việc tận dụng thiết kế tràn viền sẽ giúp Hero 10 Black có thêm diện tích cho nhiều cử chỉ chạm.\r\nGoPro sẽ nâng cấp chất lượng ghi hình trên Hero 10 Black lên một tầm cao mới. Khi chất lượng ghi hình của model trước chỉ ở 4K, khả năng cao Hero 10 Black sẽ ghi hình ở độ phân giải tận 5K siêu nét. Ngoài ra, Hero 10 Black cũng sẽ có khả năng quay video 4K ở tốc độ khung hình 120 FPS, cũng như video Full HD ở tốc độ khung hình 480 FPS.', 7, 25),
(130, NULL, 650000, 0, 100, NULL, NULL, NULL, NULL, 'Camera IP Wifi KBVision KBone KN-B21 1080p 2MP', NULL, '24 tháng', 'Khả năng chống mưa nắng, chống chói sáng giúp bạn hoàn toàn có thể yên tâm lắp đặt ở bất kỳ vị trí nào trong nhà mà không sợ ảnh hưởng tới tuổi thọ của sản phẩm.\r\nCamera có tầm xa hồng ngoại lên đến 30m, bên cạnh đó sử dụng chíp cảm biến hình ảnh trung thực chính hãng của sony giúp đáp ứng được tối đa nhu cầu giám sát chi tiết và mang tới hình ảnh rõ nét, trung thực. Bạn có thể dùng chung với những thiết bị đầu ghi hình hoặc ổ cứng lưu trữ hình ảnh để lưu trữ trong thời gian dài, phù hợp trong nhiều trường hợp.', 7, 26),
(131, NULL, 590000, 0, 100, NULL, NULL, NULL, NULL, 'Camera IP WiFi KBVISION KBONE KN-H41P 2K 4.0MP', NULL, '24 tháng', 'Sản phẩm camera giám sát KBVISION KB.ONE KN-H41P là một trong những thiết bị camera nổi bật đến từ thương hiệu KBVISION, với ống kính 4 MP cho hình ảnh độ phân giải sắc nét cùng nhiều tính năng thông minh sẽ giúp bạn yên tâm theo dõi không gian sống của bạn.\r\nNhằm gia tăng khả năng giám sát, camera KBVISION KB.ONE KN-H41P còn được tích hợp cảm biến hồng ngoại cho khả năng quan sát tầm xa đến 10 mét. Cảm biến hồng ngoại này còn giúp camera thực hiện nhiều tính năng thông minh bao gồm: theo dõi chuyển động; phát hiện con người trong khu vực quan sát; và báo động ngay khi có xâm nhập trái phép.', 7, 26),
(132, NULL, 690000, 0, 54, NULL, NULL, NULL, NULL, 'Camera IP Wifi KBVision KBone KN-H21PA 360 độ 1080p 2MP', NULL, '24 tháng', 'Để hỗ trợ được khả năng quan sát trong bóng tối với cảm biến hỗ trợ hồng ngoại. Đặc biệt, camera IP đến từ KBVision này còn có thể quan sát được mọi cử động trong bán kính 10m, cực kỳ tiện lợi.\r\nCamera IP Wifi KBVision KBone KN-H21PA được trang bị tính năng Smart Tracking. Điều đó tức là nó có thể theo dõi được các chuyển động của người khác, bám sát những vật thể lạ di chuyển hay phát hiện được những âm thanh bất thường trong vùng được theo dõi.', 7, 26),
(133, NULL, 1030000, 0, 100, NULL, NULL, NULL, NULL, 'Camera Xiaomi Mi Home Sercurity 2K', NULL, '36 Tháng', 'Camera Xiaomi Mi Home Sercurity 2K đến từ thương hiệu nổi bật trên thị trường Xiaomi được rất nhiều người dùng đánh giá cao về chất lượng. Kích thước nhỏ gọn cùng trọng lượng 210g cực kì phù hợp với những nơi có không gian hẹp.\r\nVới ống kính góc rộng 110° cùng khả năng xoay 360° theo chiều ngang và 110° dọc giúp bạn quan sát được nhiều nhất có thể. Đặc biệt ống kính camera được trang bị đến tận 6 lớp kính cho chất lượng hình ảnh tốt. Công nghệ Xiaomi AI lọc hiệu quả các chuyển động và đưa ra báo cáo chính xác, công nghệ nhận diện khuôn mặt bạn có thể chọn gắn thẻ gia đình và bạn bè của mình.', 7, 27),
(134, NULL, 1290000, 0, 16, NULL, NULL, NULL, NULL, 'Camera Xiaomi Mi Home Sercurity 2K Pro', NULL, '36 tháng', 'Camera Xiaomi Mi Home Security 2K Pro được sở hữu góc quay rộng vì sử dụng ống kính góc rộng 110° kết hợp cùng khả năng xoay 360° theo chiều ngang và 108° theo chiều dọc, giúp tầm quan sát trở nên toàn diện.\r\nNhà sản xuất đã trang bị cho camera an ninh một hệ thống đèn hồng ngoại 940nm, kết hợp khẩu độ ống kính lớn F1.4. Nhờ đó có thể cải thiện đáng kể chất lượng ánh sáng của hình ảnh, cho khả năng chụp ảnh tốt trong tối', 7, 27),
(135, NULL, 760000, 0, 54, NULL, NULL, NULL, NULL, 'Camera Xiaomi Mi Home Security 360 - 1080P', NULL, '36 tháng', 'Camera Xiaomi Mi Home Security có thiết kế sang trọng với tông màu trắng nổi bật và kích thước nhỏ gọn 78 x 78,16 x 118mm, cùng với chân đế tiện lợi, chắc chắn giúp cho người dùng có thể dễ dàng lắp đặt tại mọi vị trí tùy ý.\r\nCamera Xiaomi Mi Home Security 360° 1080P được trang bị hệ thống nhận dạng chuyển động thông minh thế hệ mới, với sự can thiệp của trí thông minh nhân tạo AI. Với tính năng này, camera có khả năng ghi lại và gửi thông báo về thiết bị của người dùng khi có chuyển động trong khung hình mà camera ghi được. Những thói quen và hoạt động hàng ngày của người dùng sẽ được camera học tập, lấy cơ sở đó việc xác định các chuyển động bất thường sẽ chính xác hơn rất nhiều so với thế hệ trước.', 7, 27),
(136, NULL, 590000, 0, 68, NULL, NULL, NULL, NULL, 'Camera Xiaomi Magnetic Mount 1080P', NULL, '36 tháng', 'Camera Xiaomi Magnetic Mount 1080P được trang bị ống kính đặc biệt, không những sắc nét mà còn có góc nhìn rộng, cụ thể lên đến 170 độ. Từ đó mang đến tầm quan sát hiệu quả, bao quát toàn bộ căn nhà và căn phòng của bạn.\r\nKhả năng quan sát được ban đêm để lại nhiều ấn tượng. Camera đến từ nhà sản xuất Xiaomi được trang bị đèn hồng ngoại kích thước 940 nm giúp quan sát hình ảnh tốt ngay cả trong điều kiện thiếu sáng nghiêm trọng. Từ giờ bạn đã có thể ngủ ngon vì đã có camera theo dõi an ninh trong ngôi nhà của mình.', 7, 27),
(137, NULL, 1300000, 0, 65, NULL, NULL, NULL, NULL, 'Camera Dome KBVISION KX-A2112C4 1080p 2.0MP', NULL, '36 tháng', 'Camera an ninh là một thiết bị tuyệt vời hỗ trợ trong việc quan sát, giám sát an ninh mang lại sự an toàn cho không gian sống. Camera Dome KBVISION KX-A2112C4 1080p 2.0MP với chất lượng hình ảnh Full HD, hỗ trợ đa tính năng quan sát giúp giám sát an ninh hiệu quả.\r\nCamera Dome KBVISION KX-A2112C4 1080p 2.0MP còn được trang bị cảm biến hồng ngoại với khả năng quan sát trong đêm lên đến 20m để bạn có thể quan sát dễ dàng trong bán kính 20m, đảm bảo an ninh khu vực xung quanh không gian sống của bạn.', 7, 26),
(138, NULL, 580000, 0, 156, NULL, NULL, NULL, NULL, 'Camera IP Wifi TP-Link Tapo 360 1080P TC70 Trắng', NULL, '36 tháng', 'Camera IP Wifi TP-Link Tapo 360 1080P 3MP có khả năng chuyển động dọc theo góc 114 độ, giúp thu giữ được mọi thông tin hỗ trợ góc quay rộng giúp camera theo dõi ở mọi góc độ, kể cả khi góc hẹp và tưởng chừng bị khuất.\r\nBộ lọc đổi màu tự động trong trường hợp ánh sáng yếu cùng với chế độ nhận diện chuyển động thông minh giúp người dùng nhận được những cảnh báo quan trọng và gia tăng độ an toàn trong quá trình sử dụng. Hơn hết, camera an ninh này hỗ trợ bởi đèn hồng ngoại 850 nm trong khoảng cách lên đến 10m.', 7, 16),
(139, NULL, 630000, 0, 185, NULL, NULL, NULL, NULL, 'Camera IP Wifi TP-Link Tapo C200 360° 1080P 2MP', NULL, '36 tháng', 'Camera an ninh TP-Link Tapo C200 1080p 2MP có nhiều chế độ quay như chế độ ban đêm, chế độ xem trực tiếp, phát hiện chuyển động, chế độ riêng tư,… với chất lượng hình ảnh sắc nét đáp ứng nhu cầu sử dụng đa dạng.\r\nCamera IP WiFi TP-Link Tapo C200 còn có tính năng phát hiện chuyển động lạ và đây là tính năng vô cùng hữu ích giúp phát hiện và ngăn chặn các vụ trộm cắp. Việc lắp camera hướng về lối vào nhà hay tầng hầm, chỗ để xe,…sẽ giúp đảm bảo an toàn cho tài sản gia đình bạn.', 7, 16),
(140, NULL, 390000, 0, 45, NULL, NULL, NULL, NULL, 'Camera IP Wifi Ezviz C2C 720p', NULL, '36 tháng', 'Camera IP WiFi Ezviz C2C có độ phân giải HD 720p, với ống kính có thể ghi hình ở góc rộng đến 111° đảm bảo bạn quan sát đầy đủ chi tiết trong không gian xung quanh. Camera còn hỗ trợ chế độ nhìn đêm, giúp bạn quan sát rõ không gian trong nhà ngay cả khi tắt đèn.\r\nCamera IP WiFi Ezviz C2C 720p có sẵn chế độ cảnh báo chuyển động. Khi kích hoạt, bất kỳ chuyển động nào hoặc có vật thể nào đáng ngờ xuất hiện trong phạm vi camera, hệ thống sẽ gửi ngay thông báo đến điện thoại để giúp bạn nhanh chóng đưa ra phương án xử lý tình huống kịp thời.', 7, 28),
(141, NULL, 540000, 0, 54, NULL, NULL, NULL, NULL, 'Camera IP Wifi Ezviz TY2 1080P', NULL, '36 tháng', 'Để có thể quan sát được không gian căn nhà rộng lớn, nhà sản xuất đã áp dụng khả năng quay góc ngang 106 độ và góc chéo là 130 độ, nhằm giúp bao quát toàn bộ căn nhà.\r\nNhằm giúp cho chiếc camera IP Wifi Ezviz TY2 1080P có khả năng theo dõi chuyển động gắt gao hơn hãng đã tích hợp công nghệ phát hiện chuyển động thông minh, tức nếu có sự việc bất thường, camera đều ghi lại chi tiết và không bỏ sót điều gì.', 7, 28),
(142, NULL, 890000, 0, 45, NULL, NULL, NULL, NULL, 'Camera IP Wifi Ezviz C3WN 1080P', NULL, '24 tháng', 'Camera C3WN tuyệt vời hơn hẳn nhờ cải thiện tính năng quay ban đêm với tầm nhìn xa lên tới 30 mét. Trang bị đèn Led hồng ngoại công suất lớn cho camera, giúp quay rõ ràng các vật thể trong khung hình.\r\nCamera C3WN được trang bị một chiếc micro khử tiếng ồn. Nhờ vậy, mọi âm thanh khi đi qua mic đều trở nên rõ ràng. Bạn có thể xem video quay được bằng cách kết nối C3WN với Smartphone. Nhờ vậy, bạn có thể biết những gì đang xảy ra trong khung hình video.', 7, 28),
(143, NULL, 658000, 0, 38, NULL, NULL, NULL, NULL, 'Camera IP Wifi Ezviz C3WN 1080P Cũ PKCA.085-C', NULL, '24 tháng', 'Là phiên bản camera thông minh cao cấp hơn của EZVIZ. Được thiết kế lắp đặt ngoài trời, với chức năng quan sát thông minh tự động xoay theo đối tượng chuyển động. Mắt đọc camera được làm đồng màu với nền giúp camera ẩn mình hơn khi quan sát.\r\nTích hợp 2 anten thu sóng wifi bên ngoài nên tăng cường khoảng cách thu sóng wifi được tốt và mạnh mẽ hơn. Ngoài khả năng thu sóng wifi thì Ezviz CS-CV310 cũng tích hợp sẵn cổng gắn dây mạng. Khả năng ngược sáng tốt. Quan sát ngày đêm, đèn hồng ngoại không bị lộ màu. Độ xa của đèn hồng ngoại lên tới 30m, giúp cho việc quan sát khoảng cách xa trong đêm được dễ dàng và sắc nét hơn', 7, 28),
(144, NULL, 2200000, 0, 49, NULL, NULL, NULL, NULL, 'Camera IP Wifi không dây dùng pin Ezviz C3A 1080P', NULL, '24 tháng', 'Camera IP Wifi Ezviz C3A 1080P đạt tiêu chuẩn chống nước, điều kiện thời tiết xấu IP65. Đảm bảo bền bỉ, vững chắc dưới mọi tác động của thời tiết khắc nghiệt.\r\nCamera sử dụng viên pin lithium có dung lượng lên tới 5500 mAh. Sẵn sàng hoạt động lên tới 3 tháng, thậm chí khi kết nối với trạm gốc EZVIZ W2D, camera CS-C3A-A0-1C2WPMFBR có thể hoạt động lên tới 8 tháng.', 7, 28),
(145, NULL, 540000, 0, 89, NULL, NULL, NULL, NULL, 'Camera IP Hồng ngoại WIFI EZVIZ C6N 1080p 2MP', NULL, '24 tháng', 'Camera có thể xoay ngang đến 340°, xoay dọc đến 55° và xoay xuống 15°, giúp bạn quan sát đầy đủ không gian xung quanh.\r\nĐặc tính nổi bật của camera an ninh Ezviz C6N đó là khả năng nhìn đêm hiệu quả. Sử dụng đèn hồng ngoại hiệu suất cao cùng hệ thống Smart IR, Ezviz C6N có khả năng quan sát trong môi trường tối hiệu quả với phạm vi tối đa là 10 mét. Đặc biệt, camera cũng sẽ tự động thay đổi chế độ quan sát theo ban ngày hoặc ban đêm.', 7, 28),
(146, NULL, 790000, 0, 49, NULL, NULL, NULL, NULL, '(8GB DDR4 1x8G 2666) RAM Kingston Fury Beast Black', NULL, '36 tháng', 'Màu đen phù hợp với PCB, bộ nhớ Ram Kingston Fury DDR4 phù hợp với tất cả các bo mạch chủ có Chipset Intel 100 Series hay Chipset x99.\r\nBộ nhớ Ram Kingston Fury DDR4 tự động ép xung với tần số cao nhất được công bố, lên đến 2666 MHz, để cung cấp hiệu năng cao nhất cho các bo mạch chủ có Chipset 100 Series và x99 của Intel. Tăng hiệu suất tối đa cho các vi xử lý 2, 4, 6 và 8-core của Intel giúp nhanh chóng biên tập video, dựng phim 3D, chơi game và xử lý AI.', 13, 29),
(147, NULL, 890000, 0, 87, NULL, NULL, NULL, NULL, '(8GB DDR4 1x8G 3200) RAM Kingston Fury Beast Black', NULL, '36 tháng', 'Màu đen phù hợp với PCB, bộ nhớ Ram Kingston Fury DDR4 phù hợp với tất cả các bo mạch chủ có Chipset Intel 100 Series hay Chipset x99.\r\nBộ nhớ Ram Kingston Fury DDR4 tự động ép xung với tần số cao nhất được công bố, lên đến 3200 MHz, để cung cấp hiệu năng cao nhất cho các bo mạch chủ có Chipset 100 Series và x99 của Intel. Tăng hiệu suất tối đa cho các vi xử lý 2, 4, 6 và 8-core của Intel giúp nhanh chóng biên tập video, dựng phim 3D, chơi game và xử lý AI.', 13, 29),
(148, NULL, 990000, 0, 78, NULL, NULL, NULL, NULL, '(8GB DDR4 1x8G 2666) RAM Kingston HyperX Fury Black', NULL, '36 tháng', 'Bộ tản nhiệt mới bóng đẹp là giải pháp nâng cấp tuyệt vời cho phong cách của giàn máy của bạn.\r\nLà giải pháp nâng cấp Cắm và Chạy đơn giản và dễ dùng, HyperX FURY DDR4 sẽ tự động ép xung lên tốc độ công bố cao nhất mà BIOS hệ thống cho phép.', 13, 29),
(149, NULL, 990000, 0, 24, NULL, NULL, NULL, NULL, '(8GB DDR4 1x8G 2666) Ram Gigabyte Memory 2666', NULL, '36 tháng', 'Tản nhiệt của Bộ nhớ GIGABYTE được thiết kế đơn giản để mang lại hiệu suất tốt nhất. Vật liệu chất lượng cao giúp tản nhiệt tốt hơn, đảm bảo sự ổn định của bộ nhớ.\r\nBộ nhớ GIGABYTE hỗ trợ Intel XMP 2.0 cho phép bạn đạt được hiệu suất tốt nhất bằng cách bật cấu hình trong khi tính ổn định của hệ thống vẫn được đảm bảo.', 13, 15),
(150, NULL, 5690000, 0, 15, NULL, NULL, NULL, NULL, '(32GB DDR4 2x16G 3200) RAM Kingston Fury Renegade RGB', NULL, '36 tháng', 'Ram Desktop Kingston Fury Renegade RGB sở hữu thiết kế tản nhiệt nhôm bắt mắt, đậm chất game thủ đem lại hiểu quả tốt cho hầu hết các tác vụ từ cơ bản đến nâng cao của bạn. \r\nRam Desktop Kingston Fury Renegade RGB (32GB DDR4 2x16G 3200)  được thiết kế để tương thích hoàn hảo với công nghệ Intel XMP.  Được kiểm tra toàn diện để có thể hoạt động hoàn hảo cho hệ thống sử dụng CPU AMD Ryzen. ', 13, 29),
(151, NULL, 2500000, 0, 56, NULL, NULL, NULL, NULL, '(16GB DDR4 2x8G 3200) RAM Kingston Fury Renegade RGB', NULL, '36 tháng', 'Ram Desktop Kingston Fury Renegade RGB sở hữu thiết kế tản nhiệt nhôm bắt mắt, đậm chất game thủ đem lại hiểu quả tốt cho hầu hết các tác vụ từ cơ bản đến nâng cao của bạn. \r\nRam Desktop Kingston Fury Renegade RGB là nâng cấp hoàn hảo cho bất kỳ hệ thống máy tính nào, giúp máy tính của bạn thoát khỏi tình trạng chậm, lag do thiếu RAM, chinh phục mốc hiệu năng đỉnh cao.', 13, 29),
(152, NULL, 5390000, 0, 48, NULL, NULL, NULL, NULL, '(32GB DDR4 2x16G 3600) RAM Kingston HyperX Fury RGB', NULL, '36 tháng', 'Trang bị hệ thống LED RGB ấn tượng, tạo điểm nhấn riêng biệt cho hệ thống PC. Ram Kingston Fury RGB (32GB DDR4 2x16G 3600) được trang bị hệ thống LED RGB đẹp mắt có thể điều khiển bằng phần mềm, tương thích với nhiều hệ thống sync của các hãng sản xuất bo mạch chủ.\r\n(32GB DDR4 2x16G 3600) RAM Kingston HyperX Fury RGB được kiểm tra toàn diện để có thể hoạt động hoàn hảo cho hệ thống sử dụng CPU AMD Ryzen. ', 13, 29),
(153, NULL, 1490000, 0, 123, NULL, NULL, NULL, NULL, '(8GB DDR4 1x8G 2666) RAM Kingston ECC 8GB UDIMM', NULL, '36 tháng', 'So với dòng Ram DDR3 tiêu chuẩn thì Ram PC Server Kingston DDR4 ECC là giải pháp nâng cấp bộ nhớ đệm tốt nhất hiện nay. Giúp hệ thống của bạn hoạt động hiệu quả hơn - nhanh hơn.\r\nBộ nhớ Ram PC Server Kingston DDR4 ECC mang đến hiệu năng cao hơn, dung lượng RAM lớn hơn, nâng cao tính toàn vẹn dữ liệu và tiêu thụ điện năng ít hơn. Với băng thông đạt hơn 2Gbps và tiêu thụ điện năng ít hơn so với DDR3L (DDR3 Điện áp Thấp), DDR4 mang đến hiệu năng và dung lượng băng thông cao hơn 50% trong khi giảm mức tiêu thụ điện năng tối đa.', 13, 29),
(154, NULL, 7490000, 0, 84, NULL, NULL, NULL, NULL, '(64GB DDR4 2x32GB 3200) RAM Corsair Vengeance RS RGB', NULL, '36 tháng', 'Đem đến cho những dàn PC Gaming đang tìm kiếm linh kiện phù hợp cho hệ thống LED RGB, RAM Corsair Vengeance RS RGB sở hữu hệ thống LED RGB rực rỡ và tương thích với những mainboard Intel và AMD hiện nay.\r\nThanh RAM Corsair Vengeance RS RGB đến từ một trong những thương hiệu linh kiện nổi tiếng nhất thế giới hiện nay, hãng đã trang bị những thông số bao gồm băng thông, tốc độ phản hồi vượt trội.', 13, 10),
(155, NULL, 2190000, 0, 48, NULL, NULL, NULL, NULL, '(16GB DDR4 2x8GB 3200) RAM Corsair Vengeance RS RGB', NULL, '36 tháng', 'Vỏ ngoài của Corsair Vengeance RS RGB là lớp nhôm andoized. Ngoài khả năng làm mát cho thanh RAM vượt trội, màu đen từ giáp đem lại vẻ ngoài hiện đại và bắt mắt cho RAM.\r\nThanh RAM Corsair Vengeance RS RGB đến từ một trong những thương hiệu linh kiện nổi tiếng nhất thế giới hiện nay, hãng đã trang bị những thông số bao gồm băng thông, tốc độ phản hồi vượt trội.', 13, 10),
(156, NULL, 1190000, 0, 84, NULL, NULL, NULL, NULL, '(8GB DDR4 1x8G 3200) RAM Corsair Vengeance LPX CL16-20-20-38', NULL, '36 tháng', 'Thiết kế tiêu chuẩn, độ bền kinh ngạc và tương thích hoàn hảo trên hầu hết các dòng main máy tính có trên thì trường hiện nay như Mainboard Intel 100 Series,Intel 200 Series,Intel 300 Series,Intel 400 Series,Intel X299 Series trên thị trường.\r\nSản phẩm được tính toán cho người dùng là Game thủ và các chuyên gia sử dụng cần một kit ram bền bỉ, mượt mà, hiệu năng cao và hỗ trợ ép xung tối ưu. Đây là một sản phẩm mà bạn không thể bỏ qua.', 13, 10),
(157, NULL, 2990000, 0, 54, NULL, NULL, NULL, NULL, '(16GB DDR4 1x16G 3200) RAM Corsair Vengeance LPX CL16-20-20-38', NULL, '36 tháng', 'Nhiệt độ hoạt động thường sẽ ảnh hưởng đến hiệu suất của thiết bị. Thiết kế độc đáo của tản nhiệt nhôm trên Ram Vengeance LPX giúp tản nhiệt từ IC vào đường làm mát của hệ thống, do đó, bạn có thể đẩy hiệu suất nó cao hơn. Thiết kế tản nhiệt không chỉ cho phép Vengeance LPX chạy tốt hơn, nó còn giúp cho hệ thống của bạn hoành tráng và mạnh mẽ hơn.\r\nBo mạch chủ Intel x99 dựa trên chuẩn XMP 2.0 mới, và Ram Vengeance LPX DRAM hiện tại cũng đã tương thích hoàn toàn. Chỉ cần bật chức năng ép xung, và nó sẽ tự động điều chỉnh tốc độ nhanh nhất và an toàn nhất cho bộ Vengeance LPX kit của bạn. Bạn sẽ nhận được hiệu suất tuyệt vời mà không cần lo lắng vấn đề gì cả.', 13, 10),
(158, NULL, 4390000, 0, 21, NULL, NULL, NULL, NULL, '(32GB DDR4 2x16GB 3600) RAM Corsair Vengeance RS RGB', NULL, '36 tháng', 'Ram Corsair Vengeance RS RGB sở hữu lớp tản nhiệt bằng kim loại và dải đèn LED RGB đầy màu sắc chắc chắn đủ xứng tầm với cả những bộ PC cao cấp nhất. Trang bị bộ tản nhiệt nhôm giúp cải thiện độ dẫn nhiệt để làm mát tốt nhất ngay cả khi ép xung.\r\nPhần mềm CORSAIR iCUE mạnh mẽ giúp hệ thống của bạn trở nên sống động với khả năng tinh chỉnh RGB năng động, phần mềm này cũng có thể đồng bộ trên tất cả các sản phẩm tương thích iCUE bao gồm bộ nhớ, quạt, dải đèn LED RGB, bàn phím, chuột và nhiều hơn nữa. Bạn cũng có thể lưu nhiều Profile cùng một lúc để thay đổi nhanh chóng và dễ dàng hơn.', 13, 10),
(159, NULL, 7990000, 0, 46, NULL, NULL, NULL, NULL, '(32GB DDR5 2x16GB 5200) RAM G.Skill Ripjaws S5 DDR5 Black', NULL, '36 tháng', 'Dòng Ripjaws S5 thế hệ tiếp theo áp dụng thiết kế màu sắc tối giản lấy cảm hứng từ các sọc và lưới đua xe cổ điển, có màu đen mờ hoặc trắng mờ sẽ giúp tô điểm sự mạnh mẽ trong những cỗ máy chơi game.\r\nRAM G.SKILL Ripjaws S5 DDR5 được thiết kế với các vi mạch màn hình thủ công chất lượng cao, được thiết kế cho hiệu suất tốc độ cao và giúp tương thích với những mainboard mới nhất hiện nay có hỗ trợ DDR5. Khi ra mắt, Ripjaws S5 có sẵn tốc độ bộ nhớ lên đến DDR5-5200, đây là bộ kit RAM lý tưởng để trải nghiệm hiệu năng cao của bộ nhớ DDR5 trên những bộ PC Gaming hiện nay.', 13, 30),
(160, NULL, 7990000, 0, 56, NULL, NULL, NULL, NULL, '(32GB DDR5 2x16GB 5200) RAM G.Skill Ripjaws S5 DDR5 White', NULL, '36 tháng', 'Dòng Ripjaws S5 thế hệ tiếp theo áp dụng thiết kế màu sắc tối giản lấy cảm hứng từ các sọc và lưới đua xe cổ điển, có màu đen mờ hoặc trắng mờ sẽ giúp tô điểm sự mạnh mẽ trong những cỗ máy chơi game.\r\nRAM G.SKILL Ripjaws S5 DDR5 được thiết kế với các vi mạch màn hình thủ công chất lượng cao, được thiết kế cho hiệu suất tốc độ cao và giúp tương thích với những mainboard mới nhất hiện nay có hỗ trợ DDR5. Khi ra mắt, Ripjaws S5 có sẵn tốc độ bộ nhớ lên đến DDR5-5200, đây là bộ kit RAM lý tưởng để trải nghiệm hiệu năng cao của bộ nhớ DDR5 trên những bộ PC Gaming hiện nay.', 13, 30),
(161, NULL, 7900000, 0, 48, NULL, NULL, NULL, NULL, '(32G DDR4 2x16G 3600) G.SKILL Trident Z Royal Elite Gold', NULL, '36 tháng', 'Dòng Trident Z Royal Elite là sản phẩm cao cấp hơn về hiệu suất và thiết kế của DDR4, có họa tiết tinh thể được điêu khắc tỉ mỉ trên bề mặt được đánh bóng của bộ tản nhiệt nhôm, thanh ánh sáng tinh thể có chiều dài đầy đủ đã được cấp bằng sáng chế và ánh sáng RGB 8 vùng có thể tùy chỉnh. Được tạo ra cho cả hiệu suất và tính thẩm mỹ, Trident Z Royal Elite là sự lựa chọn tối ưu cho bất kỳ bản dựng PC cao cấp nào.', 13, 30),
(162, NULL, 7490000, 0, 15, NULL, NULL, NULL, NULL, '(32G DDR4 2x16G 3600) G.SKILL Trident Z Royal Elite Silver', NULL, '36 tháng', 'Trident Z Royal Elite được thiết kế với bộ tản nhiệt theo dạng cắt kim cương và được tráng gương với 76 mặt để nâng cao hiệu ứng phản chiếu ánh sáng RGB theo mọi hướng, giúp cho dàn PC của bạn tuyệt đẹp và cực kỳ sang trọng.\r\nĐược thiết kế cho cả hiệu suất và tính thẩm mỹ, Trident Z Royal Elite là sự lựa chọn tối ưu nhất cho những người dùng thích Build PC. Khả năng tương thích trên nhiều loại bo mạch chủ, cung cấp tốc độ đáng kinh ngạc lên đến 5333MHz và hơn thế nữa.', 13, 30),
(163, NULL, 7380000, 0, 48, NULL, NULL, NULL, NULL, '(32G DDR4 2x16G 3600) G.SKILL Trident Z Neo DDR4 CL16-16-16-36', NULL, '36 tháng', 'Được thiết kế với sự tương phản của nhôm chải đen và bạc sơn tĩnh điện, bộ tản nhiệt hai tông màu Trident Z Neo toát lên sức mạnh và sự táo bạo cho cho hệ thống PC của bạn.\r\nĐược tạo thành từ các IC bộ nhớ được sàng lọc bằng tay và 10 lớp PCB, mỗi thanh ram được tạo ra với tính toàn vẹn tín hiệu tốt nhất để đạt được hiệu suất ép xung tối đa. Được thử nghiệm trên một loạt các bo mạch chủ theo các tiêu chuẩn chất lượng nghiêm ngặt, bộ nhớ Trident Z Neo đảm bảo được tính ổn định và tương thích đáng tin cậy.', 13, 30),
(164, NULL, 4890000, 0, 68, NULL, NULL, NULL, NULL, '(16G DDR4 2x8G 3600) G.SKILL Trident Z Royal Elite Gold', NULL, '36 tháng', 'Trident Z Royal Elite được thiết kế với bộ tản nhiệt theo dạng cắt kim cương và được tráng gương với 76 mặt để nâng cao hiệu ứng phản chiếu ánh sáng RGB theo mọi hướng, giúp cho dàn PC của bạn tuyệt đẹp và cực kỳ sang trọng.\r\nĐược thiết kế cho cả hiệu suất và tính thẩm mỹ, Trident Z Royal Elite là sự lựa chọn tối ưu nhất cho những người dùng thích Build PC. Khả năng tương thích trên nhiều loại bo mạch chủ, cung cấp tốc độ đáng kinh ngạc lên đến 5333MHz và hơn thế nữa.', 13, 30),
(165, NULL, 1080000, 0, 85, NULL, NULL, NULL, NULL, '(8G DDR4 1x8G 2800) G.SKILL Ripjaws V', NULL, '36 tháng', 'RAM G.SKILL RIPJAWS V 8GB không chỉ được thiết kế với kiểu dáng mới. Cho dù bạn là người điều hành đang tìm kiếm màu sắc phù hợp hoặc đang tìm cách xây dựng một hệ thống mới tuyệt đẹp, Ripjaws V là một lựa chọn tuyệt vời.\r\nRam có sẵn trong một loạt các tùy chọn tần số từ DDR4-2133 MHz tiêu chuẩn đến 4000 MHz. RAM DDR4 G.SKILL RIPJAWS V 8GB cho phép bạn tận hưởng trải nghiệm điện toán nhanh hơn để chơi game, chỉnh sửa video & hình ảnh, kết xuất và xử lý dữ liệu.', 13, 30),
(166, NULL, 1350000, 0, 87, NULL, NULL, NULL, NULL, '(8GB DDR4 1x8G 3000) RAM G.SKILL Trident Z RGB CL16-18-18-38', NULL, '36 tháng', 'Với thanh ánh sáng đèn Led RGB sống động, được kết hợp với bộ tản nhiệt Trident Z từng đoạt giải thưởng được thiết kế và chế tạo bằng các thành phần chất lượng cao nhất.Ram Trident Z RGB DDR4 kết hợp ánh sáng RGB sống động nhất với hiệu suất vượt trội dành cho bạn.\r\nMỗi bộ nhớ chứa các vi mạch được sàng lọc đặc biệt thông qua quy trình lựa chọn nghiêm ngặt của G.SKILL và một PCB mười lớp được thiết kế tùy chỉnh cung cấp độ ổn định tín hiệu tối đa. Đảm bảo mỗi bộ phụ kiện đều được kiểm tra nghiêm ngặt về độ tin cậy, khả năng tương thích và hiệu suất trên nhiều loại bo mạch chủ.', 13, 30),
(167, NULL, 2290000, 0, 17, NULL, NULL, NULL, NULL, '(16G DDR4 1x16G 3000 ) G.SKILL Trident Z RGB', NULL, '36 tháng', 'G.SKILL Trident Z RGB DDR4 Bus 3000 vẫn giữ nguyên thiết kế mang tính biểu tượng của dòng sản phẩm Trident Z truyền thống - có bộ tản nhiệt bằng nhôm sang trọng giúp tản nhiệt cực tốt. Phía trên của tản nhiệt được thiết kế một bộ khuếch tán ánh sáng rộng hơn cho các hiệu ứng ánh sáng lộng lẫy hơn.\r\nG.SKILL Trident Z RGB DDR4 Bus 3000 trang bị các chip nhớ IC đã được sàng lọc đặc biệt thông qua quá trình lựa chọn tuyệt vời của G.SKILL và một PCB mười lớp được thiết kế tùy chỉnh cung cấp độ ổn định tín hiệu tối đa, sản phẩm được kiểm tra chặt chẽ về độ tin cậy, khả năng tương thích và hiệu suất trên rất nhiều các bo mạch chủ.', 13, 30),
(168, NULL, 2790000, 0, 57, NULL, NULL, NULL, NULL, '(16G DDR4 1x16G 3200) G.SKILL Trident Z RGB', NULL, '36 tháng', 'Với thanh ánh sáng hoàn toàn tiếp xúc với đèn LED RGB rực rỡ, được kết hợp với thiết kế tản nhiệt RAM G.SKILL Trident Z RGB DDR4 16GB Bus 3200 từng đoạt giải thưởng và được chế tạo với các thành phần chất lượng cao nhất, bộ nhớ Ram PC G.SKILL Trident Z full length RGB DDR4 Bus 3200 kết hợp ánh sáng RGB sống động nhất với hiệu suất vượt trội.', 13, 30),
(169, NULL, 11990000, 0, 85, NULL, NULL, NULL, NULL, 'AMD Ryzen 7 5800X', NULL, '36 tháng', 'Các vi xử lý - CPU AMD Ryzen 7 5800X được trang bị 20 lane PCIe 4.0 cho người dùng và hỗ trợ bộ nhớ có mức xung nhịp DDR4-3200 theo tiêu chuẩn ngành.\r\n32MB / 3.8GHz Boost 4.7GHz / 8 nhân 16 luồng', 15, 12),
(170, NULL, 12990000, 0, 38, NULL, NULL, NULL, NULL, 'AMD Ryzen 9 3900x ', NULL, '36 tháng', 'CPU AMD Ryzen 3000 series là CPU đầu tiên được AMD thiết kế với kiến trúc Zen2 trên dây chuyền TSMC 7nm FinFET với rất nhiều những cải tiến so với thế hệ đầu tiên.\r\n70MB /3.8GHz /12 nhân 24 luồng', 15, 12),
(171, NULL, 14990000, 0, 68, NULL, NULL, NULL, NULL, 'AMD Ryzen 9 5900X', NULL, '36 tháng', 'Tất cả các bộ xử lý Ryzen 5900X đều đi kèm với những công nghệ được thiết kế đặc biệt để nâng cao sức mạnh xử lý bao gồm Ryzen Master Utility, AMD StoreMI Technology và VR-Ready Premium v.v...\r\nCPU AMD Ryzen 9 5900X tập trung tối ưu những thứ game thủ thường phàn nàn trước đây, AMD không ngần ngại show hiệu năng gaming của Ryzen 9 5900X ở 1080p, nơi Intel trước giờ là bá chủ. Cũng như đưa vào nhiều game online esport vốn trước giờ mang tiếng tối ưu tốt cho Intel và AMD kém tương thích như CS:GO, LOL (thực ra là do engine game cũ) và kết quả là CSGO, LOL cho FPS cao hơn đến 50% so với 3900XT, và cao hơn đến 21% so với i9-10900K.', 15, 12),
(172, NULL, 3990000, 0, 78, NULL, NULL, NULL, NULL, 'Intel Core i3 10105', NULL, '36 tháng', 'CPU Intel Core i3-10105 trang bị socket LGA 1200 giúp cho bộ vi xử lý này thoải mái trong việc lựa chọn mainboard kết hợp cùng và tận dụng sức mạnh tối đa của CPU như các bo mạch chủ thuộc dòng H410, B460 và Z490. 6MB / 4.4GHZ / 4 nhân 8 luồng / LGA 1200', 15, 11),
(173, NULL, 2490000, 0, 68, NULL, NULL, NULL, NULL, 'Intel Core i3 10105F', NULL, '36 tháng', 'Tránh việc nhiệt độ quá nóng làm ảnh hưởng xấu đến vi xử lý, cảm biến nhiệt kỹ thuật số khi có sự cố (DTS) giúp phát hiện nhiệt độ của lõi từ đó các tính năng quản lý nhiệt làm giảm tiêu thụ điện của gói để máy luôn hoạt động ổn định, an toàn và tốt nhất. 6MB / 4.4GHZ / 4 nhân 8 luồng / LGA 1200', 15, 11),
(174, NULL, 9490000, 0, 54, NULL, NULL, NULL, NULL, 'Intel Core i7 11700', NULL, '36 tháng', 'Bộ vi xử lý Intel Core i7-11700 là dòng CPU mới nhất được Intel cho ra mắt thuộc thế hệ thứ 11 tên mã Rocket Lake, đây là con chip mạnh mẽ có khả năng mang đến cho bạn sức mạnh để thực hiện, cạnh tranh và vượt trội. 16MB / 4.9GHZ / 8 nhân 16 luồng / LGA 1200', 15, 11),
(175, NULL, 9490000, 0, 87, NULL, NULL, NULL, NULL, 'Intel Core i7 10700KF', NULL, '36 tháng', 'CPU mới nhất được Intel cho ra mắt thuộc thế hệ thứ 11 tên mã Rocket Lake, đây là con chip mạnh mẽ có khả năng mang đến cho bạn sức mạnh để thực hiện, cạnh tranh và vượt trội. 6MB / 5.1GHz / 8 Nhân 16 Luồng / LGA 1200', 15, 11),
(176, NULL, 9690000, 0, 167, NULL, NULL, NULL, NULL, 'Intel Core i7 10700K', NULL, '36 tháng', 'CPU Intel Core i7-10700K được sản xuất dựa trên tiến trình 14nm đem lại cho bộ vi xử lý sức mạnh ấn tượng. 16MB / 5.1GHz / 8 Nhân 16 Luồng / LGA 1200', 15, 11),
(177, NULL, 9690000, 0, 84, NULL, NULL, NULL, NULL, 'Intel Core i7 10700F ', NULL, '36 tháng', 'CPU Intel Core i7-10700F là bộ vi xử lý mới nhất từ nhà Intel thuộc dòng Comet Lake. Sở hữu những thông số ấn tượng cùng khả năng ép xung, i7-10700F xứng đáng là một trong những chiếc CPU Gen 10 tốt nhất. 16MB / 4.8GHz / 8 Nhân 16 Luồng / LGA 1200', 15, 11),
(178, NULL, 6990000, 0, 85, NULL, NULL, NULL, NULL, 'Intel Core i5 11600K', NULL, '36 tháng', 'CPU Intel Core i5-11600K được sản xuất trên tiến trình 14nm mới nhất từ Intel. Sở hữu thông số đáng mơ ước với: 6 nhân 12 luồng, tốc độ xử lý 3.90 GHz và tối đa đạt 4.90 GHz và 12MB bộ nhớ đệm mang lại hiệu năng xử lý tốt ở phần đơn nhân và đa nhân, tốc độ xử lý vô cùng với các tác vụ làm việc và giải trí. 12MB / 4.9GHZ / 6 nhân 12 luồng / LGA 1200', 15, 11),
(179, NULL, 6190000, 0, 78, NULL, NULL, NULL, NULL, 'Intel Core i5 11500', NULL, '36 tháng', 'Sở hữu quy trình 14nm, bộ vi xử lý máy tính này có tần số xung nhịp cơ bản là 2,7 GHz và tần số turbo 4,6 GHz với 12MB bộ nhớ đệm, 6 nhân và 12 luồng cho hiệu suất nhanh đáng kể. Bên cạnh đó khả năng hỗ trợ PCI Express 4.0 và bộ nhớ DDR4 ở tốc độ 3200 MHz giúp trải nghiệm game và tác vụ nặng của bạn trở nên tốt hơn hết. Sự ổn định cũng được cải thiện rõ rệt. 12MB / 4.6GHZ / 6 nhân 12 luồng / LGA 1200', 15, 11),
(180, NULL, 44990000, 0, 61, NULL, NULL, NULL, NULL, 'GIGABYTE Z590 AORUS XTREME WATERFORCE (rev. 1.0)', NULL, '36 tháng', 'Mainboard Gigabyte Z590 AORUS XTREME WATERFORCE là một trong những dòng bo mạch chủ vơus thiết kế hiện đại, chức năng tuyệt vời, thiết kế tản nhiệt ấn tượng, kết nối thế hệ tiếp theo, hệ thống âm thanh cấp độ Hi-Fi và tính thẩm mỹ AORUS. \r\nZ590 AORUS XTREME WATERFORCE sử dụng thiết kế tản nhiệt sáng tạo và chưa từng có để đảm bảo CPU, Chipset, SSD ổn định và nhiệt độ thấp nhất trong điều kiện tải đầy đủ ứng dụng và chơi game. Khả năng kết nối đa dạng, bo mạch chủ Gigabyte Z590 Aorus Xtreme Waterforce là một sản phẩm Flagship được kiểm chứng trong tương lai mang đến hệ thống của bạn luôn cập nhật công nghệ mới nhất. Z590 AORUS XTREME cung cấp tất cả kết nối mạng, bộ nhớ và WIFI thế hệ tiếp theo để giúp bạn luôn cập nhật tốc độ.', 14, 15),
(181, NULL, 35990000, 0, 87, NULL, NULL, NULL, NULL, 'ASUS Z590 ROG MAXIMUS XIII EXTREME GLACIAL', NULL, '36 tháng', 'Việc làm mát được ASUS Z590 ROG MAXIMUS XIII EXTREME GLACIAL kết hợp giữa phần mềm và phần cứng. Tản nhiệt bằng chất lỏng tích hợp trong block nước từ EK tích hợp làm mát VRM, CPU và PCH.\r\nĐứa con băng giá từ nhà ASUS, ASUS Z590 ROG MAXIMUS XIII EXTREME GLACIAL được hợp tác với thương hiệu sản xuất tản nhiệt nổi tiếng EK đã cùng nhau tạo nên một sản phẩm mang trên mình thiết kế mạnh mẽ đến từ góc cạnh cho bo mạch chủ cùng tông màu trắng làm bật lên cái tên GLACIAL của mình. Đặt vào tầm mắt chúng ta có là block nước tản nhiệt vô cùng hiện đại EK đã cung cấp trên ASUS Z590 ROG MAXIMUS XIII EXTREME GLACIAL. Tất cả cùng tạo nên một trái tim băng giá vô cùng mạnh mẽ.', 14, 3),
(182, NULL, 29390000, 0, 72, NULL, NULL, NULL, NULL, 'ASUS ROG MAXIMUS Z690 EXTREME DDR5', NULL, '36 tháng', 'Mainboard ASUS ROG MAXIMUS Z690 EXTREME sở hữu thiết kế trên nền tảng kích thước E-ATX với ngoại hình mạnh mẽ, hầm hố nhưng cũng không kém phần sang trọng. \r\nMainboard ASUS ROG MAXIMUS Z690 EXTREME sở hữu hệ thống chân cắm ARGB 2.0 cho phép chủ nhân điều khiển đến từng bóng LED của bất kỳ thiết bị kết nối nào có hỗ trợ. Tích hợp trí tuệ nhân tạo: AI Overclocking, AI Cooling, AI Networking and Two-Way AI Noise-Cancelation. Q-release: Gỡ nhanh khe PCI-E để dễ dàng tháo lắp, nâng cấp card đồ họa', 14, 3),
(183, NULL, 25390000, 0, 85, NULL, NULL, NULL, NULL, 'GIGABYTE Z690 AORUS XTREME DDR5 (rev. 1.0)', NULL, '36 tháng', 'Với tốc độ phát triển của công nghệ, GIGABYTE vẫn luôn cập nhật những xu hướng mới nhất và cung cấp cho khách hàng những tính năng tiên tiến và công nghệ mới nhất. Bo mạch chủ GIGABYTE Z690 Series đi kèm với giải pháp năng lượng nâng cấp, tiêu chuẩn lưu trữ mới nhất và khả năng kết nối vượt trội để tối ưu hóa hiệu suất cho chơi game.\r\nBo mạch chủ GIGABYTE Z690 có kiến ​​trúc DDR5 mới nhất và khả năng XMP 3.0. Công nghệ bộ nhớ DDR5 mới mang lại thêm 50% băng thông cho nền tảng và tăng đáng kể hiệu suất hệ thống bằng cách triển khai Điện áp DDR5 gốc đã mở khóa, Định tuyến bộ nhớ Xtreme và khe cắm SMD đáng tin cậy. Ngoài những nâng cấp về phần cứng, giao diện người dùng thân thiện cung cấp đầy đủ chức năng để ép xung cao hơn với khả năng điều chỉnh DDR5 độc quyền.', 14, 15),
(184, NULL, 21190000, 0, 87, NULL, NULL, NULL, NULL, 'ASUS ROG MAXIMUS Z690 FORMULA DDR5', NULL, '36 tháng', 'Mainboard ASUS ROG MAXIMUS Z690 FORMULA (DDR5) sở hữu “bộ giáp” Moonlight White và các yếu tố chiếu sáng ARGB có thể tùy chỉnh. Đi cùng với khối VRM hybrid được thiết kế với sự hợp tác của EK, mang lại cho bạn sự tự do phong phú để thể hiện phong cách xây dựng ưa thích của mình.\r\nMainboard ASUS ROG MAXIMUS Z690 FORMULA (DDR5) bao gồm LiveDash, một tấm nền OLED 2-inch tích hợp hiển thị thông tin hữu ích và các tính năng đồ họa có thể tùy chỉnh. Trong khi bật nguồn, tự kiểm tra (POST), OLED hiển thị các số liệu thống kê chính bằng ngôn ngữ đơn giản, sử dụng mã POST truyền thống. Trong khi hoạt động bình thường, bảng điều khiển có thể được lập trình để hiển thị tần số CPU, nhiệt độ thiết bị, tốc độ quạt hoặc thông tin làm mát bằng nước. Bạn cũng có thể cá nhân hóa GIF OLED mặc định bằng hình ảnh hoặc hoạt ảnh ưa thích.', 14, 3),
(185, NULL, 19900000, 0, 57, NULL, NULL, NULL, NULL, 'GIGABYTE X570 AORUS XTREME', NULL, '36 tháng', 'Để giải phóng toàn bộ tiềm năng của CPU AMD Ryzen ™ thế hệ thứ 3, bo mạch chủ yêu cầu thiết kế nguồn CPU tốt nhất. Với các thành phần chất lượng tốt nhất và khả năng thiết kế R & D của GIGABYTE, X570 AORUS XTREME là một con thú thực sự trong số các bo mạch chủ.\r\nCác bo mạch chủ GIGABYTE X570 dựa trên Chipset AMD X570 hỗ trợ đầy đủ cho Bộ xử lý AMD Ryzen ™ thế hệ thứ ba. Thiết kế hoàn toàn mới là minh chứng cho sự cống hiến của GIGABYTE cho chất lượng thiết kế. Các bo mạch chủ của GIGABYTE X570 cung cấp một danh sách các tính năng phong phú như hỗ trợ giao diện PCIe 4.0 và USB Type-C ™, âm thanh tinh chỉnh, Ethernet tốc độ cao và thiết kế WIFI tiêu chuẩn mới nhất', 14, 15),
(186, NULL, 12900000, 0, 38, NULL, NULL, NULL, NULL, 'GIGABYTE Z590 AORUS TACHYON (Rev 1.0)', NULL, '36 tháng', 'Đây là thiết kế hoàn toàn dành cho những người ép xung tìm cách phá vỡ giới hạn hiệu năng. Thiết kế VRM chuyên biệt, theo dõi bố cục bộ nhớ và các nút, công tắc ép xung tích hợp cho phép bạn đẩy cao hiệu năng bộ vi xử lý Intel Core thế hệ mới nhất dễ dàng.\r\nThiết kế VRM sử dụng bộ điều khiển Intersil ISL69269 PWM truyền động trực tiếp 12 pha cho hiệu quả cao nhất. Mỗi pha vcore VRM sử dụng 100A Vishay SiC840 DrMOS cho công suất dòng điện tối đa trong điều kiện ép xung khắc nghiệt. Thiết kế VRM sử dụng 100% tụ điện polyme tantali đầy đủ để đáp ứng thoáng qua tốt hơn và ít can thiệp cơ học hơn với thiết bị làm mát ép xung cực mạnh.', 14, 15),
(187, NULL, 12890000, 0, 57, NULL, NULL, NULL, NULL, 'ASUS ROG STRIX Z690-E GAMING WIFI DDR5', NULL, '36 tháng', 'ASUS ROG STRIX Z690-E GAMING WIFI sở hữu thiết kế ATX với ngoại hình mang hơi hướng tương lai, nổi bật là các khối heatsink đẹp mắt bao phủ ở các khu vực quan trọng trên bo mạch chủ.\r\nASUS ROG STRIX Z690-F GAMING WIFI sở hữu hệ thống chân cắm ARGB 2.0 cho phép chủ nhân điều khiển đến từng bóng LED của bất kỳ thiết bị kết nối nào có hỗ trợ. Tích hợp trí tuệ nhân tạo: AI Overclocking, AI Cooling, AI Networking and Two-Way AI Noise-Cancelation', 14, 3),
(188, NULL, 150000, 0, 30, NULL, NULL, NULL, NULL, 'Bộ phụ kiện Razer L33t Pack V3', NULL, '12 tháng ', 'Gói phụ kiện Razer L33t Pack V3 bao gồm những thiết bị thiết yếu như lót chuột, bao đựng, dây đeo với logo tuyệt đẹp của Razer.\r\nTất nhiên, trở thành một game thủ đi kèm với các đặc quyền, giống như gói phụ kiện Razer L33t Pack V3 chứa đầy những ưu đãi tuyệt vời, vì vậy bạn cũng sẽ có thể cấp Cred IRL cho game thủ của mình.', 8, 22),
(189, NULL, 1990000, 0, 50, NULL, NULL, NULL, NULL, 'Balo Razer Rogue 13“ Backpack V3', NULL, '12 tháng ', 'Thiết kế tối giản tinh tế đi kèm với nhiều tính năng thiết thực.\r\nChống nóng, chống nước cho Laptop của bạn nhờ chất liệu Polyester độ bền cao cùng thiết kế kiểu dáng tinh tế và thời trang. Chiếc ba lô Razer này có khả năng chống rách và chống nước, mang lại khả năng sử dụng trong những điều kiện khắc nghiệt. Giúp bạn an tâm trong mọi trường hợp.', 8, 22),
(190, NULL, 145000, 0, 25, NULL, NULL, NULL, NULL, 'Hộp đựng tai nghe In Ear JBL cao cấp', NULL, '12 tháng ', 'Với thiết kế hình hộp nhỏ gọn, bền bỉ, khoang chứa rộng rãi hỗ trợ lưu giữ tai nghe một cách thoải mái. Đảm bảo bảo vệ tai nghe luôn mới mẻ, chống va đập.\r\nBạn muốn bảo vệ tai nghe in-ear của mình một cách an toàn, đảm bảo chống va đập và kháng nước. Tiện lợi mang theo khắp mọi nơi thì đây chính là chiếc hộp dành cho bạn.', 8, 23),
(191, NULL, 2290000, 0, 100, NULL, NULL, NULL, NULL, 'Giá treo tai nghe Asus ROG Throne', NULL, '12 tháng ', 'ROG Throne cũng có một trung tâm USB 3.1 hai cổng siêu nhanh với khả năng phân phối điện năng, làm tròn nó như một giải pháp hoàn chỉnh để tổ chức và nâng cấp thiết lập chơi game của bạn.\r\nThể hiện phong cách chơi game của bạn với ánh sáng Aura RGB có thể tùy chỉnh trên ROG Throne. Với 18 vùng chiếu sáng RGB có thể được tùy chỉnh độc lập với sự lựa chọn của bạn hơn 16,8 triệu màu kết hợp. Cộng với sáu hiệu ứng ánh sáng cài sẵn. Bạn có thể tạo ra trải nghiệm ánh sáng tuyệt đẹp hoàn toàn của riêng bạn.', 8, 3),
(192, NULL, 350000, 0, 50, NULL, NULL, NULL, NULL, 'Kê tay Akko World Tour Tokyo – 108 Fullsize', NULL, '12 tháng ', 'Kê tay chống mỏi của Akko với phiên bản này đi kèm trang trí chủ đề nước Nhật rất đẹp. Thiết kế gọn gàng với bề mặt phủ vải cao cấp, mềm mịn giúp người dùng sử dụng bàn phím trong thời gian dài mà không lo bị mỏi.\r\n\r\nMột sản phẩm kê tay đẹp và có độ hoàn thiện cao, tông xuyệt tông cùng những bàn phím chủ đề về Nhật Bản của Akko trước đây chính là một sự lựa chọn không thể bỏ qua khi tìm kiếm một chiếc kê tay chất lượng và đẹp để trang trí bàn làm việc của bạn.', 8, 31),
(193, NULL, 350000, 0, 50, NULL, NULL, NULL, NULL, 'Kê tay AKKO Monet’s Pond – 108 Fullsize', NULL, '12 tháng ', 'Kê tay chống mỏi của Akko với phiên bản này đi kèm trang trí chủ đề cá koi rất đẹp. Thiết kế gọn gàng với bề mặt phủ vải cao cấp, mềm mịn giúp người dùng sử dụng bàn phím trong thời gian dài mà không lo bị mỏi.\r\nMột sản phẩm kê tay đẹp và có độ hoàn thiện cao, tông xuyệt tông cùng những bàn phím chủ đề cá koi monet\'s pond của Akko trước đây chính là một sự lựa chọn không thể bỏ qua khi tìm kiếm một chiếc kê tay chất lượng và đẹp để trang trí bàn làm việc của bạn.', 8, 31),
(194, NULL, 1090000, 0, 10, NULL, NULL, NULL, NULL, 'AKKO Keycap set – Carbon Retro (PBT Double-Shot/ASA profile/158 nút)', NULL, '12 tháng', 'Keycap được thiết kế với ASA Profile cao cấp. Độ cao của ASA Profile sẽ thấp hơn OSA Profile nhưng lại cao hơn 1 chút so với OEM Profile. Cảm giác khi trải nghiệm qua ASA khiến bạn thực sự cảm thấy thích thú.\r\nBộ keycap hỗ trợ gần như mọi layout trên thị trường hiện nay : 108/98/96/87/75%/65%/60%', 8, 31),
(195, NULL, 390000, 0, 80, NULL, NULL, NULL, NULL, 'Lót chuột AKKO Monet’s Pond XXL', NULL, '14 tháng', 'Sản phẩm sở hữu kích thước cực lớn mang lại không gian rộng rãi để bạn có thể thoải mái sử dụng. Bạn hoàn toàn có thể lót bất cứ vật dụng nào tùy thích từ chuột, bàn phím, tai nghe cho tới cả chiếc laptop của bạn trên chiếc lót chuột này.\r\nKhông sử dụng màu đen truyền thống nhàm chán, sản phẩm được thiết kế với màu sắc và các hoa văn họa tiết độc đáo đẹp mắt về các chủ đề trẻ trung tươi mới. Bạn cũng có thể dễ dàng vệ sinh sản phẩm khi cần để giữ chiếc lót chuột của mình luôn trông như mới.', 8, 31),
(196, NULL, 390000, 0, 80, NULL, NULL, NULL, NULL, 'Lót chuột AKKO Ocean Star XXL', NULL, '14 tháng', 'Sản phẩm sở hữu kích thước cực lớn mang lại không gian rộng rãi để bạn có thể thoải mái sử dụng. Bạn hoàn toàn có thể lót bất cứ vật dụng nào tùy thích từ chuột, bàn phím, tai nghe cho tới cả chiếc laptop của bạn trên chiếc lót chuột này.\r\nKhông sử dụng màu đen truyền thống nhàm chán, sản phẩm được thiết kế với màu sắc và các hoa văn họa tiết độc đáo đẹp mắt về các chủ đề trẻ trung tươi mới. Bạn cũng có thể dễ dàng vệ sinh sản phẩm khi cần để giữ chiếc lót chuột của mình luôn trông như mới.', 8, 31),
(197, NULL, 1295000, 0, 20, NULL, NULL, NULL, NULL, 'Túi chống sốc Razer Protective Sleeve 15.6\"', NULL, '18 tháng', 'Một trong những thiết bị túi chống sốc với thiết kế sắc sảo, chắc chắn và bền đẹp, là sự lựa chọn lý tưởng dành cho bạn.\r\nTúi chống sốc Razer Protective Sleeve 15.6\" – Gaming là sản phẩm dùng để bảo vệ các dòng sản phẩm laptop - máy tính xách tay tránh những va đạp ảnh hưởng đến chất lượng sản phẩm.', 8, 22),
(198, NULL, 500000, 0, 25, NULL, NULL, NULL, NULL, 'Kê tay Akko World Tour Tokyo – 87 TKL', NULL, '12 tháng', 'Kê tay bàn phím Akko World Tour Tokyo 87 TKL được Akko lấy cảm hứng từ cảnh đẹp thế giới mà rõ hơn là ngọn núi Phú Sĩ của Nhật Bản, tạo nên một thiết kế trang nhã, nhẹ nhàng nhưng không kém phần ấn tượng, hứa hẹn sẽ mang đến mảnh ghép hoàn hảo cho các bàn phím cơ nói chung và chiếc bàn phím World Tour Tokyo 87 TKL nói riêng.\r\nKê tay bàn phím Akko World Tour Tokyo 87 TKL được trang bị các nút đệm ở phía dưới vừa tạo được độ êm ái, lại còn giúp chống trượt hiệu quả, mang lại cảm giác hoàn toàn thoải mái cả khi sử dụng với bàn phím PC và laptop.', 8, 31),
(199, NULL, 890000, 0, 35, NULL, NULL, NULL, NULL, 'Keycap set AKKO – NEON (PBT Double-Shot, Cherry profile, 157 nút)', NULL, '24 tháng', 'Keycap set AKKO – NEON được thiết kế với cấu hình Cherry vô cùng phổ biến, bên cạnh những chiếc bàn phím cơ chất lượng, Akko còn mang đến bộ keycaps vô cùng cơ bản và thoải mái sử dụng nhất đến với tay người tiêu dùng.\r\nNeon trong những năm gần đây luôn là một trong những màu sắc vô cùng Trendy, AKKO đã chọn xanh tím, tím đậm và đỏ hồng là màu chủ đạo cho dòng sản phẩm lần này. Với sự kết hợp giữa các tông màu nổi bật tạo ra sự tương phản màu sắc rõ rệt. Đi kèm với bộ keycaps chính là chiếc hợp bảo vệ sang trọng và đẳng cấp, đây sẽ là một trong những gợi ý cho món quà lý tưởng cho bất kỳ ai thích màu sắc.', 8, 31);
INSERT INTO `san_pham` (`id`, `cpu`, `don_gia`, `don_vi_ban`, `don_vi_kho`, `dung_luong_pin`, `he_dieu_hanh`, `man_hinh`, `ram`, `ten_san_pham`, `thiet_ke`, `thong_tin_bao_hanh`, `thong_tin_chung`, `ma_danh_muc`, `ma_hang_sx`) VALUES
(200, NULL, 990000, 0, 20, NULL, NULL, NULL, NULL, 'AKKO Keycap set – Midnight (PBT Double-Shot/ASA profile/178 nút)', NULL, '20 tháng', 'ASA profile mới lạ, với thiết kế cong và chiều cao tương đối, rất thẫm mĩ và cảm giác gõ tốt cho người dùng. Ngoài ra thương hiệu Akko là một nhà sản xuất nổi tiếng với những bộ phím cơ và keycap có hiệu năng cao trong giá thành.\r\nBộ keycap hỗ trợ gần như mọi layout trên thị trường hiện nay : 108/98/96/87/75%/65%/60%', 8, 31),
(201, NULL, 950000, 0, 50, NULL, NULL, NULL, NULL, 'Razer PBT Keycap Upgrade Set', NULL, '20 tháng', 'Cứng hơn và bền hơn so với nhựa ABS hoặc PVC, PBT là một loại nhựa nhiệt dẻo cao cấp mang lại cho phần phím một vẻ ngoài chắc chắn, có kết cấu và cảm giác được trang bị một lớp sơn sáng bóng.\r\nBộ keycap của Razer giúp bạn có thể thay thế và nâng cấp chất lượng cho bàn phím cơ của mình.', 8, 22),
(202, NULL, 3990000, 0, 10, NULL, NULL, NULL, NULL, 'Razer Raiju Tournament Edition', NULL, '12 tháng', 'Với mô hình bố trí và thiết kế nút ấn mang đến độ chuẩn xác cao, người chơi sẽ có thể thao tác nhanh hơn, nhất là khi chơi các tựa game đồi hỏi thao nhanh trên tay cầm.\r\nNâng tầm phản ứng cách nhau chỉ có vài milli-giây hỗ trợ tối đa các thể loại game đối kháng hay game bắn súng mang đến cho người tiêu dùng những trải nghiệm tốt nhất. Thế nên tay cầm Razer Raiju Tournament Edition được đầu tư vô cùng tỉ mỉ thêm vào các nút phụ để nạp lệnh và hệ thống bố trí nút ấn giúp giảm thiểu thao tác khi chơi game.', 8, 22),
(203, NULL, 790000, 0, 100, NULL, NULL, NULL, NULL, 'Asus AI Noise-Canceling Mic Adapter', NULL, '6 tháng', 'ASUS AI Noise-Canceling Mic Adapter chỉ nặng 8 gram và dễ dàng cất vào túi của bạn để có thể dùng khi giao tiếp trực tuyến rõ ràng mọi lúc mọi nơi.\r\nASUS AI Noise-Canceling Mic Adapter sử dụng trí tuệ nhân tạo AI để tăng cường khả năng giao tiếp của tai nghe audio cho đến các sản phẩm tai nghe chơi game. Một bộ xử lý được trang bị các profile được AI phát triển giúp giảm hơn 50 triệu loại tiếng ồn xung quanh trong khi vẫn giữ được tiếng nói, vì vậy bạn vẫn có thể giữ được giọng nói trong trẻo bất kể môi trường.', 8, 3),
(205, 'AMD Ryzen 5-3500U', 16990000, 0, 98, '45WHr', 'Windows 10 Home', '14 inch Full HD', '8GB DDR4 3200MHz', 'Laptop Dell Vostro 3405 V4R53500U003W', 'Được xem là mẫu laptop luôn mang đến những trải nghiệm ấn tượng cho người dùng bên cạnh thiết kế một cách độc đáo, sang trọng, ấn tượng ', '36 tháng', 'Mẫu máy này còn có thể xử lý được nhiều tác vụ khác nhau một cách mượt mà nhơf vào bộ vi xử lý mạnh mẽ, ấn tượng.', 1, 5),
(206, 'Intel core i5-1035G1', 18590000, 0, 100, '42WHr', 'Windows 10 Home', '15.6 inch Full HD', '8GB DDR4 3200MHz', 'Laptop Dell Inspiron 3501', 'Laptop Dell Inspiron 3501 5580BLK tuy được trang bị một màn hình kích thước lớn nhưng vẫn đảm bảo được tiêu chí gọn nhẹ. Đó là nhờ vào thiết kế viền màn hình mỏng cùng chất liệu cao cấp cấu thành.', '24 tháng', 'Dell Inspiron 3501 5580BLK được trang bị cấu hình mạnh với con chip thế hệ 10 cùng ổ cứng SSD, thanh RAM dung lượng lớn. Nhờ đó máy mang lại trỉa nghiệm mượt mà, đa điểm ổn định.', 1, 5),
(207, 'AMD Ryzen 5-3500U', 15390000, 0, 54, '45WHr', 'Windows 10 Home', '16 inch Full HD', '8GB DDR4 3200MHz', 'Laptop Dell Vostro 3405 V4R53500U001W', 'Được thiết kế đơn giản, gọn nhẹ, tinh tế nhưng vẫn đảm bảo được tính năng bền bỉ. Giúp cho chiếc máy có thể chịu được các tác động bên ngoài', '24 tháng', 'Chiếc laptop còn có một bộ vi xử lý mạnh mẽ, giúp chúng có thể thực hiện nhiều tác vụ đa nhiệm một cách nhanh chóng với mức hiệu suất mạnh mẽ.', 1, 5),
(208, 'Intel core i5-1135G7', 14390000, 0, 95, '42WHr', 'Windows 10 Home', '15.6\" HD+', '8GB DDR4 3200MHz', 'Laptop Dell Latitude 3520', 'Chiếc laptop Dell Latitude 3520 70251603 được hoàn thiện với kiểu dáng thiết kế sang trọng, chế tác từ chất liệu nhựa cứng cáp, pha lẫn đường viền mỏng được đánh bóng như thể nó là vật trang sức trù phú.', '36 tháng', 'Nếu để trên một chiếc laptop định hướng theo sự mỏng nhẹ thì việc sử dụng con chip Intel Core i3 thế hệ thứ 11 được đánh giá là phù hợp nhất. Không chỉ tối ưu không gian, con chip này còn mang đến hiệu suất bất ngờ với xung nhịp tốc độ cao và hiệu suất cao hơn nhiều so với người tiền nhiệm của mình.', 1, 5),
(209, 'Intel core i5-1135G7', 14990000, 0, 100, '42WHr', 'Windows 10 Home', '15.6 inch Full HD', '8GB DDR4 3200MHz', 'Laptop Dell Vostro 3500 ', '\"Laptop Dell Vostro sở hữu một thiết kế đặc trưng của thương hiệu Dell với các đường nét được làm tỉ mỉ. Với trọng lượng nhẹ, chưa đến 2kg nhờ đó máy có thể dễ dàng mang theo trong làm việc và học tập.  \"', '36 tháng', 'Dell Vostro 3500 được trang bị con chip core i3 thế hệ 11 mang lại tốc độ xử lý nhanh và khả năng ép xung tốt khi chạy các ứng dụng nặng.', 1, 5),
(210, 'Intel core i5-1135G7', 23590000, 0, 200, '42WHr', 'Windows 10 Home', '15.6 inch HD', '16GB DDR4 3200MHz', 'Laptop Dell Vostro 15 3500', 'Laptop Dell Vostro 15 3500 7G3982 sở hữu thiết kế mỏng nhẹ, trọng lượng chỉ 1.8kg không quá cồng kềnh, cùng với lớp vỏ được gia công từ chất liệu nhựa cao cấp kết hợp với tông đen sang trọng. ', '36 tháng', 'Laptop Dell Vostro 15 3500 7G3982 nằm trong phân khúc cao cấp nên được trang bị chip xử lý mạnh mẽ, cho hiệu năng ấn tượng, vượt trội để xử lý mọi tác vụ nhanh chóng. Đi kèm với đó là dung lượng ram và bộ nhớ trong lớn, giúp nâng cao tốc độ khởi động và cho bạn không gian lưu trữ thoải mái hơn với laptop Dell Vostro 15 3500.', 1, 5),
(211, 'Intel core i5-1135G7', 23490000, 0, 150, '75WHr', 'Windows 10 Home', '15.6 inch HD', '16GB DDR4 3200MHz', 'Laptop Dell Inspiron 5410 ', 'Laptop Dell Inspiron được hoàn thiện từ chất liệu nhựa bền bỉ, phủ một lớp màu bạc sang trọng, tổng thế giúp tăng thêm tính thẩm mỹ cho máy và cả chủ sở hữu, phù hợp cho đa dạng đối tượng người dùng, đặc biệt là thế hệ các bạn trẻ', '36 tháng', 'Laptop có tốc độ xung nhịp cơ bản 2.50 GHz và đạt tối đa Turbo Boost 4.5 GHz đến từ bộ CPU Intel Core i5 Tiger Lake 1155G7 cấu trúc 4 nhân 8 luồng, cùng bộ nhớ đệm 6 MB, mang lại hiệu năng xử lý tốt các tác vụ văn phòng cơ bản trên Word, Excel, PowerPoint,...', 1, 5),
(212, 'Intel core i5-1135G7', 18990000, 0, 100, '45WHr', 'Windows 10 Home', '14 inch Full HD', '8GB DDR4 3200MHz', 'Laptop Dell Vostro V3400', 'Màn hình Dell Vostro V3400 có kích thước 14 inch, độ phân giải Full HD sắc nét và tấm nền độ sáng cao 220 nits, cho bạn làm việc tốt ở mọi môi trường. Màu sắc rực rỡ, đồng thời màn hình thiết kế viền mỏng 3 cạnh giúp nâng tầm trải nghiệm xem.', '24 tháng', 'Dell Vostro V3400 sở hữu bộ vi xử lý Intel Core i5 1135G7 tích hợp GPU Intel Iris Xe mạnh mẽ, không chỉ đáp ứng tốt công việc cơ bản mà còn có thể chạy tốt những tác vụ đồ họa. Bạn có thể làm nhiều việc hơn trên chiếc laptop nhỏ gọn và bền bỉ.', 1, 5),
(213, 'Intel core i5-1135G7', 10990000, 0, 42, '45WHr', 'Windows 10 Home', '15.6\", 1366 x 768 Pixel, TN, 60 Hz, 220 nits', '8GB DDR4 3200MHz', 'Laptop Dell Inspiron N3502', 'Laptop Dell Inspiron 15 3502 mang đến một thiết kế nhẹ nhàng, giúp bạn dễ dàng di chuyển hơn kết hợp cùng sức mạnh vượt trội của bộ vi xử lý cùng bộ nhớ có dung lượng cao giúp cải thiện hiệu suất tối ưu. ', '24 tháng', 'Laptop Dell Inspiron 15 3502 mang đến cho bạn sức mạnh đáng nhớ của một hiệu năng vượt bậc khi có thể vừa xem, đọc, nghe hay phát trực tuyến mượt mà nhờ bộ vi xử lý Intel mạnh mẽ hỗ trợ đa dạng phương tiện.', 1, 5),
(214, 'Intel core i5-1135G7', 19999000, 0, 70, '45WHr', 'Windows 10 Home', '15.6\"\", 1920 x 1080 Pixel, WVA, 60 Hz, 220 nits, WVA Anti-glare LED Backlit Narrow Border', '8GB DDR4 3200MHz', 'Laptop Dell Inspiron N3511', 'Dell Inspiron N3511 có kích thước nhỏ gọn hơn hẳn thế hệ trước. Nhờ viền màn hình mỏng hơn, thiết kế tinh giản hơn mà chiếc laptop 15,6 inch của bạn giờ đây vô cùng gọn nhẹ. Máy chỉ mỏng 18,9mm và trọng lượng 1,73kg, rất dễ dàng cho các hoạt động di chuyển.', '24 tháng', 'GPU Intel Iris Xe tích hợp trên bộ vi xử lý Intel Core i5 1135G7 là bước tiến mạnh mẽ của card đồ họa Onboard. Sức mạnh của Intel Iris Xe không thua kém một số card đồ họa rời trên laptop, giúp Dell Inspiron N3511 có thể chạy tốt những ứng dụng đồ họa như chỉnh sửa ảnh, biên tập video, dựng hình 3D, thậm chí là cả chơi game giải trí. Giờ đây bạn đã có thể tha hồ sáng tạo, làm việc, giải trí trên chiếc laptop gọn gàng, luôn có thể mang bên mình.', 1, 5),
(215, 'Intel core i5-1135G7', 20999000, 0, 50, '45WHr', 'Windows 10 Home', '15.6\", 1920 x 1080 Pixel', '16GB DDR4 3200MHz', 'Laptop Dell Vostro V3510', 'Dell Vostro 3510 được làm từ chất liệu nhựa giúp bảo vệ các linh kiện bên trong và cũng hạn chế tối đa trọng lượng nặng gây khó chịu cho người dùng. Với độ dày 17.5 mm, trọng lượng 1.69 kg, Dell Vostro sẵn sàng đồng hành cùng bạn trong ba lô đến bất cứ đâu', '24 tháng', 'Chạy theo xu hướng phát triển mạnh mẽ của thị trường máy tính xách tay, Dell I5 Vostro 3510 được trang bị bộ vi xử lí mới nhất từ nhà Intel đó chính là Core i5-1135G7. Với cấu trúc 4 nhân cùng 8 luồng hoạt động, con chíp dễ dàng đạt được xung nhịp trung bình 2.40GHz và khi sử dụng Turbo Boost cho phép tăng tốc độ xử lí tối đa lên đến 4.20GHz. Đi cùng với đó, sản phẩm còn được trang bị card đồ hoạ rời MX350 với 2GB GDDR5', 1, 5),
(216, 'Intel core i5-1135G7', 18499000, 0, 90, '45WHr', 'Windows 10 Home', '14.0\"\", 1920 x 1080 Pixel, 60 Hz', '8GB DDR4 3200MHz', 'Laptop Dell Vostro V3405', 'Màn hình Dell Vostro V3405 có kích thước 14 inch, độ phân giải Full HD sắc nét và tấm nền độ sáng cao 220 nits, cho bạn làm việc tốt ở mọi môi trường.', '24 tháng', 'Để có được cấu hình mạnh trong tầm giá tốt, Dell Vostro V3405 sử dụng bộ vi xử lý đến từ AMD. Con chip Ryzen 5 3500U có tới 4 nhân 8 luồng, tốc độ 2.1 - 3.7 GHz và tích hợp GPU đồ họa 8 nhân Radeon Vega 8', 1, 5),
(217, 'Intel core i7-11800H', 35990000, 0, 45, '75WHr', 'Windows 10 Home', '15.6\", 1920 x 1080 Pixel', '16GB DDR4 3200MHz', 'Laptop Dell Gaming G15 5511', 'Bộ vỏ được thiết kế chắc chắn và rất dễ bảo quản. Có hai màu để phù hợp với phong cách sống của bạn: Xám hoặc Bạc.', '24 tháng', 'Giữ cho hình ảnh của bạn không bị gián đoạn, nhiều bộ nhớ hơn, thú vị hơn: Card đồ họa NVIDIA GeForce RTX 3060 6GB được hỗ trợ bởi kiến trúc NVIDIA Ampere kiến trúc RTX thế hệ thứ 2 của NVIDIA với RT Cores mới, Tensor Cores và đa xử lý trực tuyến cho đồ họa theo dõi tia trung thực và các tính năng AI tiên tiến. Ngoài ra, với bộ nhớ chuyên dụng lên đến 6GB GDDR6, bạn có thể trải nghiệm hành động một cách tuyệt vời với thời gian tải nhanh hơn và hệ thống hoạt động êm ái hơn.', 1, 5),
(218, 'Intel core i5-10300H', 38990000, 0, 75, '75WHr', 'Windows 10 Home', '15.6\", 1920 x 1080 Pixel', '16GB DDR4 3200MHz', 'Laptop Dell Gaming G7 15', 'Dell Gaming G7 15 mới là một trong những chiếc laptop gaming mỏng nhất hiện nay. Với độ mỏng chỉ 18,3mm và sự trau chuốt, tỉ mỉ trong từng chi tiết, máy mang đến ấn tượng mạnh cho người dùng.', '24 tháng', 'Alienware Command Cnter là hệ thống phần mềm được thiết kế đặc biệt cho những laptop chơi game của Dell, giúp bạn có trải nghiệm game tốt hơn, tính tương thích cao và mượt mà hơn. Bạn có thể tùy chỉnh phần cứng và phần mềm, thiết lập phần cứng cấu hình cho mỗi trò chơi với tính cá nhân hóa cực cao', 1, 5),
(219, 'Intel core i7-10750H', 37999000, 0, 15, '75WHr', 'Windows 10 Home', '15.6\", 1920 x 1080 Pixel', '16GB DDR4 3200MHz', 'Laptop Dell Gaming G5 5500', 'Dell Gaming G5 15 5500 sở hữu thiết kế đầy táo bạo với niềm cảm hứng từ bóng tối. Toàn thân máy được làm từ kim loại màu Đen Không gian Deep Space cực “chất”. Ngoài ra, trên mặt lưng còn có các điểm nhấn ánh kim độc đáo.', '24 tháng', 'Bộ vi xử lý Intel Core i7 10750H đủ để bạn tự tin chiến mọi tựa game trên Dell Gaming G5 15 5500. Đây là con chip thuộc thế hệ thứ 10 Comet Lake, với 6 lõi 12 luồng, tốc độ tối đa lên tới 5.00GHz, đảm bảo trò chơi luôn diễn ra trơn tru liền mạch, không xảy ra tình trạng lag giật. Bạn có thể thoải mái chơi game, phát trực tiếp một cách mượt mà.', 1, 5),
(220, 'Intel core i5-1135G7', 23099000, 0, 70, '56WHr', 'Windows 10 Home', '15.6\", 1920 x 1080 Pixel', '16GB DDR4 3200MHz', 'Laptop Dell Inspiron N5510', 'Phiên bản laptop Dell này sở hữu trọng lượng 1.75 kg và dày 17.9 mm, với lớp vỏ được chế tác từ nhựa bền bỉ cùng nắp lưng từ kim loại cao cấp, mang đến một người đồng hành di động, cho phép bạn làm việc và giải trí cả khi đang di chuyển. ', '36 tháng', 'Sở hữu 4 nhân 8 luồng, bộ vi xử lý Intel Core i5 Tiger Lake 11300H mang đến tốc độ cơ bản 3.10 GHz và ép xung lên đến 4.4 GHz nhờ Turbo Boost, cho phép người dùng giải quyết các công việc văn phòng hiệu quả cùng Word, Excel,... hay thỏa sức sáng tạo cùng các ứng dụng đồ họa nhà Adobe.', 1, 5),
(221, 'Intel core i5-1135G7', 17990000, 0, 100, '45WHr', 'Windows 10 Home', '15.6\", 1920 x 1080 Pixel', '8GB DDR4 3200MHz', 'Laptop Dell Inspiron N3505', 'Dell Inspiron N3505 có sự cải tiến vượt trội về thiết kế khi được làm mỏng nhẹ hơn tới 11,88% so với thế hệ trước. Bạn sẽ dễ dàng để mang theo chiếc laptop bên mình một cách nhẹ nhàng. Hơn nữa, cả hai phần viền màn hình cạnh đều mỏng hơn đáng kể, không chỉ nâng cao trải nghiệm xem mà còn giúp laptop trở nên gọn gàng hơn', '36 tháng', 'Cấu hình cực mạnh của Dell Inspiron N3505 sẽ giúp công suất làm việc của bạn được đẩy lên đáng kể. Bộ vi xử lý AMD Ryzen 5 3450U sử dụng kiến trúc Zen+, có tới 4 lõi 8 luồng, tốc độ 2.1 – 3.5GHz cho phép hoàn thành công việc trong thời gian ngắn nhất. Đặc biệt, Ryzen 5 3450U còn tích hợp GPU đồ họa Radeon RX Vega 8 có tới 8 nhân, cho khả năng xử lý đồ họa đầy ấn tượng.', 1, 5),
(222, 'Intel core i7-1165G7', 37290000, 0, 150, '56WHr', 'Windows 10 Home', '14\" FHD', '16GB DDR4 3200MHz', 'Laptop ASUS ZenBook UX482EA', 'Điểm đặc biệt trên ASUS ZenBook UX482EA-KA268T so với các dòng laptop khác trên thị trường là máy được trang bị 2 màn hình. Trong đó màn hình chính với kích thước 14 inch FHD, bên cạnh đó là màn hình phụ ScreenPad Plus nằm ngay trên khu vực bàn phím. ', '36 tháng', 'Laptop ASUS ZenBook UX482EA được trang bị một cấu hình siêu khủng với con chip intel i7 thế hệ 11  cùng dung lượng RAM lên đến 16GB. Cấu hình này giúp ASUS ZenBook UX482EA hoạt động tốt mọi tác vụ từ cơ bản đến nâng cao. Ngoài ra, máy còn được trang bị một ổ cứng dung lượng lớn lên đến 1GB, nhờ đó người dùng có thể thoải mái lưu trữ dữ liệu.', 1, 3),
(223, 'AMD Ryzen 9-5900HS', 38590000, 0, 170, '75WHr', 'Windows 10 Home', '14\" Full HD 2K', '16GB DDR4 3200MHz', 'Laptop Gaming ASUS ROG Zephyrus G14 GA401QE', 'Laptop với thiết kế nắp lưng đầy cá tính cùng các đường cắt CNC tỉ mỉ. Màn hình máy với kích thước 14 inch vừa phải nhưng mang lại chất lượng hiển thị sắc nét. Cụ thể màn hình GA401QE-K2097T với độ phân giải lên đến WQHD cùng tần số quét 120hz mang lại khung hình sắc nét cùng chuyển động mượt mà. ', '36 tháng', 'Về khả năng hoạt động, ASUS ROG Zephyrus G14 GA401QE-K2097T được trang bị bộ vi xử lý AMD Ryzen 9-5900HS cùng dung lượng RAM 16GB. Laptop mang lại hiệu năng mượt mà với tốc độ xử lý nhanh, ổn định.', 1, 3),
(224, 'AMD Ryzen 7-4800HS', 26090000, 0, 150, '75WHr', 'Windows 10 Home', '14\" FHD', '16GB DDR4 3200MHz', 'Laptop Gaming ASUS ROG Zephyrus GA401IHR', 'Laptop Asus gaming ROG Zephyrus GA401IHR-HZ009T sở hữu thông thiết kế khá sang trọng, khác hẳn với các dòng laptop gaming đang có mặt trên thị trường. Là mẫu laptop gaming nhưng máy vẫn giữ được tổng thể gọn nhẹ. ', '36 tháng', 'Laptop Asus gaming ROG Zephyrus GA401IHR được trang bị một cấu hình vô cùng mạnh mẽ mang lại một hiệu năng xử lý vượt trội. Cụ thể, máy được trang bị vi xủ lý Ryzen R7 cùng dung lượng RAM lớn. Kết hợp với đó là ổ cứng SSD PCIE 512GB. Cấu hình này mang lại cho máy một khả năng hoạt động ổn định và mượt mà. Ngoài ra, laptop còn được trang bị card đồ họa hỗ trợ xử lý các tác vụ hình ảnh từ công việc đến chơi game.', 1, 3),
(225, 'Intel core i5-1135G7', 26390000, 1, 79, '75WHr', 'Windows 10 Home', '15.6\", 1920 x 1080 Pixel', '16GB DDR4 3200MHz', 'Laptop ASUS ZenBook Flip UX363EA', 'ASUS ZenBook mới này mang thiết kế thanh lịch & cao cấp, sử dụng lớp vỏ nguyên khối cứng cáp giúp tăng độ bền cho máy khi sử dụng mọi thời điểm. Trọng lượng chỉ 1.3 kg và độ mỏng 13.9 mm làm nên tính tiện lợi của ZenBook Flip cho người dùng. Tổng thể ZenBook Flip cũng mang màu xám sang trọng. ', '36 tháng', 'Màn hình của ZenBook Flip 13 UX363EA có kích thước 13.3 inch, độ phân giải Full HD 1920 x 1080 pixels trên nền OLED cùng thiết kế viền siêu mỏng NanoEdge đẹp mắt. Đây là loại màn hình cảm ứng và tương thích với bút cảm ứng ASUS Pen đi kèm với máy. Người dùng còn có thể xoay ngược màn hình 360 độ nhờ bản lề ErgoLift, góp phần tăng tính linh hoạt cho máy.', 1, 3),
(226, 'AMD Ryzen 7-5800H', 27790000, 0, 90, '56WHr', 'Windows 10 Home', '15.6\", 1920 x 1080 Pixel', '16GB DDR4 3200MHz', 'Laptop ASUS Gaming ROG Strix G15 G513QC', 'Về khả năng giải trí thuộc hàng đỉnh cao với màn hình kích thước lên đến 15.6 inches, độ phân giải FullHD và tấm nền IPS mang đến chất lượng hình ảnh không thể nào tuyệt vời hơn. Đặc biệt là tần số quét 144 Hz mang đến khả năng chuyển động vô cùng mượt mà, tạo điều kiện chơi game chân thực hơn bao giờ hết.', '36 tháng', 'Đâu là sự kết hợp tuyệt vời để mang đến chất lượng giải trí đỉnh cao. Đó là chip CPU được điều hành bởi AMD Ryzen 7-5800H nhằm mang đến tốc độ xử lý dữ liệu nhanh và gọn. Đi kèm là card đồ họa VGA bởi Nvidia GeForce RTX 3050 chuyên “trị” những tựa game đồ họa 3D nặng. Mọi chuyển động của từng nhân vật đều được thể hiện rõ nét, hệt như những phim bom tấn mà bạn hay xem.', 1, 3),
(227, 'AMD Ryzen 9-5900HX', 55499000, 0, 100, '90WHr', 'Windows 10 Home', '15.6\" QuadHD', '16GB DDR4 3200MHz', 'Laptop ASUS Gaming ROG Strix Scar G15 G533QR', 'Laptop Asus Gaming ROG Strix Scar G15 G533QR-HQ098T được trang bị màn hình 15.6 inch, tần số quét 165hz cùng với RangeBooster Wi-Fi mang đến tốc độ phản ứng nhanh nhất, giúp người chơi không bỏ lỡ bất kì nhịp nào trong game.', '36 tháng', 'Laptop Asus Gaming ROG Strix Scar G15 G533QR-HQ098T là đỉnh cao của laptop gaming với trang bị CPU AMD Ryzen 9 5900HX. Cùng với đó là GPU RTX 3070 hỗ trợ ROG Boost lên tới 1540 MHz 115W ở chế độ Turbo sẽ cho phép người chơi có những màn gameplay ấn tượng.', 1, 3),
(228, 'Intel core i7-11800H', 36590000, 0, 150, '59WHr', 'Windows 10 Home', '15.6\", 1920 x 1080 Pixel', '16GB DDR4 3200MHz', 'Laptop Acer Gaming Predator Helios 300 PH315', 'Laptop Acer Gaming Predator Helios 300 PH315 mang một thiết kế rất đẹp và mạnh mẽ với màn hình lớn 15.6 inch QHD IPS chuẩn 2K, cùng tần số quét lên đến 165Hz cho chất lượng hình ảnh chân thực, sắc nét ở mọi khung hình giúp các game thủ trải nghiệm cảm giác chơi game cực sướng.', '48 tháng', 'Laptop Acer Gaming Predator Helios 300 PH315 còn hỗ trợ RAM 16GB và ổ cứng 512GB PCIe NVMe SSD, giúp chạy đa nhiệm ở mức ổn định cao và đáp ứng nhu cầu lưu trữ thoải mái. Laptop còn tích hợp sẵn Windows 10, hệ thống tản nhiệt CoolBoost thế hệ mới và đầy đủ các cổng kết nối phục vụ đa dạng nhu cầu sử dụng trong thời gian dài.', 1, 4),
(229, 'Intel core i7-11800H', 27990000, 0, 130, '57.5WHr', 'Windows 10 Home', '15.6\", 1920 x 1080 Pixel', '16GB DDR4 3200MHz', 'Laptop Gaming Acer Nitro 5 Eagle AN515', 'Acer Gaming Nitro 5 Eagle AN515 sở hữu kiểu dáng thiết kế khác hẳn với các mẫu laptop gaming khác. Điểm sáng của Acer Gaming Nitro 5 nằm ở những đường nét ở mặt trên của laptop. Hai đường nét chạy dài như hai tia sét, mạnh mẽ tương xứng với tính cách của game thủ', '48 tháng', 'Để hỗ trợ cho tác vụ chơi game tốt nhất, Acer đã trang bị CPU Intel Core i7 dòng H thế hệ thứ 11. Qua đó, sẵn sàng giúp cho bạn trải nghiệm được những tác vụ chơi game hoàn hảo nhất. Tuy nhiên, điểm sáng nhất nằm ở card màn hình rời NVIDIA GeForce RTX 3050 Ti 4GB GDDR6 giúp cân bằng giữa hiệu năng và điện năng.', 1, 4),
(230, 'AMD Ryzen 7-3750H', 20490000, 0, 145, '48WHr', 'Windows 10 Home', '15.6\", 1920 x 1080 Pixel', '8GB DDR4 3200MHz', 'Laptop Gaming Acer Aspire 7 A715', 'Mẫu laptop gaming này được Acer hoàn thiện với chất liệu kim loại chắc chắn, bề mặt giả nhôm vân xước thời trang kết hợp đường viền Diamond Cut mạnh mẽ tạo nên sự ấn tượng trong thiết kế của laptop Acer Aspire 7 A715', '36 Tháng', 'Laptop Acer Gaming Aspire 7 A715 được trang bị chíp xử lý AMD Ryzen 5000 series kết hợp 8GB hoặc 16GB RAM DDR4 và card đồ hoạ rời GeForce GTX1600 series giúp chiếc laptop Acer xử lý mượt các ứng dụng đồ hoạ: photoshop, Ai,... Bên cạnh khả năng chiến các game khủng ở mức tốt.', 1, 4),
(231, 'AMD Ryzen 5-5500U', 19900000, 0, 167, '48WHr', 'Windows 10 Home', '14\" Full HD 2K', '8GB DDR4 3200MHz', 'Laptop Acer Swift 3 SF314', 'Swift 3, chiếc laptop văn phòng mỏng nhẹ, sở hữu vỏ máy làm từ hợp kim Nhôm - Magie bền bỉ hơn 4 lần và nhẹ hơn 35% so với hợp kim nhôm thông thường, trọng lượng máy chỉ 1.19kg, mỏng 15.95mm.', '36 tháng', 'Swift 3 tích hợp những CPU mới nhất, đi đầu về mặt công nghệ, có 2 lựa chọn là Intel® Core™ Processors hoặc AMD Ryzen™ Mobile 4000 Series Processors giúp xử lý mượt mà các tác vụ văn phòng và giải trí. Thiết kế CPU được tối ưu hóa trong thiết kế, hứa hẹn cung cấp mức hiệu năng chưa từng có, cải tiến đáng kể và hiệu quả năng lượng đáng kinh ngạc.', 1, 4),
(232, 'Intel core i3-1005G1', 12190000, 0, 150, '59WHr', 'Windows 10 Home', '15.6\", 1920 x 1080 Pixel', '8GB DDR4 3200MHz', 'Laptop Acer Aspire 3 A315', 'Laptop Acer Aspire 3 A315 tuy với thiết kế vỏ ngoài từ nhựa nhưng vẫn đảm bảo sự chắc chắn. Máy với trọng lượng chỉ khoảng 1,7kg không tốn nhiều diện tích khi bỏ balo.', '36 tháng', 'Laptop Acer Aspire 3 A315 cho hiệu năng hoạt động ổn định với con chip Intel Core i3-1005G1 cùng dung lượng RAM 4GB. Với cấu hình này, máy có thể hoạt động tốt ở các tác vụ văn phòng như word, excel point power,.. hay chỉnh thao tác sửa hình ảnh đơn giản với Photoshop.', 1, 4),
(233, 'AMD Ryzen 7-3750H', 21990000, 0, 140, '48WHr', 'Windows 10 Home', '15.6\", 1920 x 1080 Pixel', '16GB DDR4 3200MHz', 'Laptop Acer Aspire Gaming A715', 'Mẫu laptop gaming này được Acer hoàn thiện với chất liệu kim loại chắc chắn, bề mặt giả nhôm vân xước thời trang kết hợp đường viền Diamond Cut mạnh mẽ tạo nên sự ấn tượng trong thiết kế của laptop Acer Aspire 7 A715 ', '36 tháng', 'Laptop Acer Gaming Aspire 7 A715 được trang bị chíp xử lý AMD Ryzen 3000 series kết hợp 8GB hoặc 16GB RAM DDR4 và card đồ hoạ rời GeForce GTX1600 series giúp chiếc laptop Acer xử lý mượt các ứng dụng đồ hoạ: photoshop, Ai,... Bên cạnh khả năng chiến các game khủng ở mức tốt.', 1, 4),
(234, 'Intel core i3-1005G1', 13490000, 0, 65, '48WHr', 'Windows 10 Home', '15.6\", 1920 x 1080 Pixel', '8GB DDR4 3200MHz', 'Laptop Acer Aspire A315 ', 'Acer Aspire 3 A315 có một thiết kế đơn giản nhưng vẫn rất hiện đại và được người dùng yêu thích. Phiên bản màu đen cuốn hút bằng vẻ đẹp nam tính và mạnh mẽ khi toàn thân laptop đều có chung một màu đen tuyền.', '36 tháng', 'Acer Aspire A315 57G 31YD đảm bảo chạy tốt các ứng dụng văn phòng nhờ trang bị con chip Intel Core i3 1005G1. Đây là bộ vi xử lý thuộc thế hệ thứ 10 Ice Lake, sản xuất trên tiến trình 10nm tiên tiến, mạnh mẽ đồng thời tiết kiệm năng lượng hơn. Công việc của bạn sẽ được giải quyết một cách trơn tru và mượt mà nhờ cấu hình ấn tượng trong tầm giá.', 1, 4),
(235, 'Intel core i7-11800H', 50999000, 0, 75, '56WHr', 'Windows 10 Home', '15.6\", 1920 x 1080 Pixel', '32GB DDR4 3200MHz', 'Laptop Acer Triton Gaming PT315', 'Một lợi thế lớn dành cho những chiếc laptop Acer Predator chính là công nghệ tản nhiệt. Quạt tản nhiệt 3D AeroBlade thế hệ thứ 5 được thiết kế dựa theo cảm hứng từ cơ chế bay im lặng của loài cú, cánh quạt hình răng cưa, mỗi quạt bao gồm 89 cánh siêu mảnh 0,08mm với rãnh thụt kép để cho khả năng lưu thông khí nhiều nhất, đồng thời giảm thiểu tiếng ồn.', '36 tháng', 'Không cần phải bàn cãi về sức mạnh của bộ vi xử lý Intel Core i7 11800H có mặt trên Acer Predator Triton 300 PT315. Một con chip có tới 8 nhân 16 luồng, tốc độ xung nhịp tối đa 4.60GHz, bộ nhớ đệm 24MB chắc chắn sẽ “cân” tốt mọi tựa game và cả các ứng dụng nặng. Laptop còn trang bị sẵn tới 16GB RAM và 512GB SSD cùng khả năng nâng cấp dễ dàng, mang đến tốc độ nhanh vượt trội, không để bạn phải chờ đợi.', 1, 4),
(236, 'Intel core i7-11800H', 39990000, 0, 90, '96WHr', 'Windows 10 Home', '15.6\", 1920 x 1080 Pixel', '32GB DDR4 3200MHz', 'Laptop Acer Predator Helios Gaming PH315', 'Trên nền đen chủ đạo, bàn phím RGB 4 vùng giúp Acer Predator Helios 300 tỏa sáng đầy ấn tượng trong đêm tối. Các phím bấm đều được làm mũ lõm công thái học, cho phản hồi chân thực và cảm giác nhấn cực nhạy.', '36 tháng', 'Acer Predator Helios 300 PH315 sở hữu hiệu suất chơi game đáng mơ ước với card đồ họa rời NVIDIA GeForce RTX 3060. Đây là card đồ họa thuộc kiến trúc Ampere mới nhất, với bộ nhớ 6GB GDDR6 và bus 192 Bit. RTX 3060 tích hợp một loạt những công nghệ hàng đầu, bao gồm lõi RT thế hệ 2 mô phỏng ánh sáng chân thực chưa từng thấy, mang đến đồ họa chất lượng điện ảnh', 1, 4),
(237, 'Apple M1', 37000000, 0, 15, '96WHr', 'Mac OS', '13.3 inch, 2560 x 1600', '32GB DDR4 3200MHz', 'Apple MacBook Air M1 16GB 512GB ', 'Là một chiếc ultrabook cao cấp, MacBook Air mang trên mình tất cả thẩm mỹ tinh tế của Apple trong thiết kế sản phẩm. MacBook Air M1 được hoàn thiện từ chất liệu nhôm nguyên khối, không chỉ nhẹ mà còn rất sang trọng. Trọng lượng chỉ 1,29kg cũng giúp người dùng tiện lợi mang đi sử dụng ở mọi nơi. Khách hàng có thể lựa chọn ba phiên bản màu khác nhau phù hợp với cả tính mỗi người, bao gồm xám, bạc và vàng.', '36 tháng', 'Máy được cung cấp sức mạnh bởi con chip M1 mới nhất của Apple với 8 nhân, bao gồm 4 nhân hiệu suất cao và 4 nhân hiệu suất thấp', 1, 2),
(238, 'Apple M1 Pro', 65990000, 0, 30, '96WHr', 'Mac OS', '16.2 inch,Liquid Retina XDR display (3456 x 2234)120Hz', '64GB DDR4 3200MHz', 'Macbook Pro 14 M1 Pro 10 CPU - 16 GPU 16GB 1TB', 'Tạo cảm hứng làm việc ngay cho người dùng mỗi khi bật máy lên nhờ hệ điều hành macOS cho giao diện máy tính có độ thẩm mỹ cao, thuận tiện thao tác mở ứng dụng làm việc, dễ sử dụng và kho ứng dụng đồ sộ. ', '36 tháng', 'Macbook Pro 14 inch 2021 được trang bị cấu hình khủng với chip Apple M1 Pro (10CPU/16GPU) kết hợp với bộ nhớ RAM 16GB và SSD 1TB mang lại trải nghiệm tuyệt vời với hiệu suất cực đỉnh.', 1, 2),
(239, 'Apple M1 Max', 90000000, 0, 20, '96WHr', 'Mac OS', '16.2 inch, Liquid Retina XDR display (3456 x 2234)120Hz', '64GB DDR4 3200MHz', 'Laptop Apple MacBook Pro 16 M1 Max 2021', 'Hệ điều hành Mac OS giúp giao diện máy tính có độ thẩm mỹ cao, tạo cảm hứng làm việc ngay cho người dùng mỗi khi bật máy lên, tiện thao tác, dễ sử dụng và kho ứng dụng đồ sộ.', '36 tháng', 'Con chip Apple M1 Max mang một sức mạnh siêu cấp với cấu trúc 10 nhân và tốc độ băng trong lên đến 400 GB/s memory bandwidth cho hiệu suất của Apple nhanh hơn khoảng 70% so với thế hệ tiền nhiệm Apple M1, từ đó mang lại cho bạn một tốc độ xử lý đáng kinh ngạc giúp giải quyết tốt từ các công việc văn phòng cơ bản đến phức tạp trên các phần mềm Office 365 cũng như đồ họa chuyên nghiệp trên Figma, Photoshop, AI, Pr, AutoCAD,...', 1, 2),
(240, 'Apple M1 Pro', 64990000, 0, 30, '96WHr', 'Mac OS', '16.2 inch, Liquid Retina XDR display (3456 x 2234)120Hz', '64GB DDR4 3200MHz', 'Laptop Apple MacBook Pro 16 M1 Pro 2021', 'MacBook Pro 2021 sở hữu màn hình 16.2 inch với độ phân giải Liquid Retina XDR display (3456 x 2234) là chiếc màn hình tốt nhất với dải màu động cực cao, cho khả năng hiển thị 1 tỷ màu cùng công nghệ Wide color (P3) mang đến chất lượng hình ảnh sắc nét, màu sắc rực rỡ, sống động qua những thước phim hấp dẫn.', '36 tháng', 'Đi cùng CPU là card đồ họa tích hợp 16 lõi GPU vượt trội giúp nâng cao khả năng đồ họa, xử lý hình ảnh chuyên nghiệp, để bạn thỏa sức sáng tạo nội dung, sử dụng mướt các thao tác như render video, kết xuất 3D,... trên các phần mềm thiết kế Photoshop, AI, Premiere,... phát trực tiếp cũng tuyệt vời không kém với độ nét cao lên đến 8K. Nhờ vậy, bạn có thể nâng cao hiệu suất làm việc cũng như tiết kiệm được thời gian một cách tối ưu nhất.', 1, 2),
(241, 'Apple M1', 50000000, 0, 41, '96WHr', 'Mac OS', '16.2 inch, Liquid Retina XDR display (3456 x 2234)120Hz', '64GB DDR4 3200MHz', 'Laptop Apple MacBook Pro M1 2020', 'Apple vẫn giữ nguyên thiết kế sang trọng tuyệt mĩ của mình đối với phiên bản này, bởi nó vốn đã hoàn hảo và được người dùng yêu thích. Với vỏ kim loại nguyên khối, đường nét mạnh mẽ, chiếc máy mang đến sự đẳng cấp cho người dùng khi sở hữu trên tay chiếc máy này. Thân máy có độ dày khoảng 15.6 mm và cân nặng chỉ 1.4 kg gọn nhẹ và dễ di chuyển. ', '36 tháng', 'Sức mạnh vượt trội của MacBook Pro đến từ con chip Apple M1, bộ vi xử lý đầu tiên được chính Apple chế tạo cho dòng Mac của mình, được tích hợp trí tuệ nhân tạo thông minh, khả năng vận hành mạnh mẽ, thỏa sức sáng tạo mọi nội dung, đáp ứng tốt mọi nhu cầu của người dùng.', 1, 2),
(242, 'Apple M1', 34990000, 0, 25, '96WHr', 'Mac OS', '16.2 inch, Liquid Retina XDR display (3456 x 2234)120Hz', '64GB DDR4 3200MHz', 'Laptop Apple MacBook Air M1 2020 ', 'Tôn lên vẻ cá tính, sang trọng, laptop được bọc bởi một lớp kim loại nguyên khối cùng với những đường nét trang nhã, tinh tế. Hơn thế nữa, với trọng lượng khá nhẹ chỉ 1.29 kg và độ mỏng từ 4.1 mm đến 16.1 mm có thể dễ dàng mang theo, chiếc laptop này sẽ là người bạn đồng hành cùng bạn mọi lúc mọi nơi như đi công tác, đi học, đi họp,...', '36 tháng', 'Sở hữu loại chip đầu tiên được trang bị dành riêng cho MAC dựa trên cấu trúc ARM là Apple M1, với bộ vi xử lý 8 lõi và kiến trúc 5 nm, M1 mang đến hiệu suất CPU nhanh hơn 3.5 lần, 8 nhân GPU nhanh hơn 5 lần so với thế hệ trước. 8 lõi CPU của M1 có 4 lõi hiệu suất cao và 4 lõi tiết kiệm điện, nhờ vậy laptop xử lý tuyệt vời các thao tác văn phòng qua các phần mềm như Word, Excel,... Không chỉ vậy, bạn còn thao tác được các thiết kế đồ hoạ ổn định, kết xuất 2D tiện lợi.', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vai_tro`
--

CREATE TABLE `vai_tro` (
  `id` bigint(20) NOT NULL,
  `ten_vai_tro` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vai_tro`
--

INSERT INTO `vai_tro` (`id`, `ten_vai_tro`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_MEMBER'),
(3, 'ROLE_SHIPPER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chi_muc_gio_hang`
--
ALTER TABLE `chi_muc_gio_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK49lmmclnjgb7eck20lwhv0cks` (`ma_gio_hang`),
  ADD KEY `FKkd69a7wiulr4xgohxl0rlhth4` (`ma_san_pham`);

--
-- Indexes for table `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9wl3houbukbxpixsut6uvojhy` (`ma_don_hang`),
  ADD KEY `FK3ry84nmdxgoarx53qjxd671tk` (`ma_san_pham`);

--
-- Indexes for table `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnwjiboxao1uvw1siemkvs1jb9` (`ma_nguoi_dat`),
  ADD KEY `FKgndcrlvetoudr3jaif9b7ay37` (`ma_shipper`);

--
-- Indexes for table `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKitverect56puwr47y7tyvy6er` (`ma_nguoi_dung`);

--
-- Indexes for table `hang_san_xuat`
--
ALTER TABLE `hang_san_xuat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6jm47uh7f94pc3wix0duvedde` (`ma_nguoi_tra_loi`);

--
-- Indexes for table `nguoidung_vaitro`
--
ALTER TABLE `nguoidung_vaitro`
  ADD PRIMARY KEY (`ma_nguoi_dung`,`ma_vai_tro`),
  ADD KEY `FKig6jxd861mqv02a8pn68r43fr` (`ma_vai_tro`);

--
-- Indexes for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqss6n6gtx6lhb7flcka9un18t` (`ma_danh_muc`),
  ADD KEY `FKchvjvgjnq8lbt9mjtyfn5pksq` (`ma_hang_sx`);

--
-- Indexes for table `vai_tro`
--
ALTER TABLE `vai_tro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chi_muc_gio_hang`
--
ALTER TABLE `chi_muc_gio_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `gio_hang`
--
ALTER TABLE `gio_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `hang_san_xuat`
--
ALTER TABLE `hang_san_xuat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `vai_tro`
--
ALTER TABLE `vai_tro`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chi_muc_gio_hang`
--
ALTER TABLE `chi_muc_gio_hang`
  ADD CONSTRAINT `FK49lmmclnjgb7eck20lwhv0cks` FOREIGN KEY (`ma_gio_hang`) REFERENCES `gio_hang` (`id`),
  ADD CONSTRAINT `FKkd69a7wiulr4xgohxl0rlhth4` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`id`);

--
-- Constraints for table `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD CONSTRAINT `FK3ry84nmdxgoarx53qjxd671tk` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`id`),
  ADD CONSTRAINT `FK9wl3houbukbxpixsut6uvojhy` FOREIGN KEY (`ma_don_hang`) REFERENCES `don_hang` (`id`);

--
-- Constraints for table `don_hang`
--
ALTER TABLE `don_hang`
  ADD CONSTRAINT `FKgndcrlvetoudr3jaif9b7ay37` FOREIGN KEY (`ma_shipper`) REFERENCES `nguoi_dung` (`id`),
  ADD CONSTRAINT `FKnwjiboxao1uvw1siemkvs1jb9` FOREIGN KEY (`ma_nguoi_dat`) REFERENCES `nguoi_dung` (`id`);

--
-- Constraints for table `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD CONSTRAINT `FKitverect56puwr47y7tyvy6er` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`id`);

--
-- Constraints for table `lien_he`
--
ALTER TABLE `lien_he`
  ADD CONSTRAINT `FK6jm47uh7f94pc3wix0duvedde` FOREIGN KEY (`ma_nguoi_tra_loi`) REFERENCES `nguoi_dung` (`id`);

--
-- Constraints for table `nguoidung_vaitro`
--
ALTER TABLE `nguoidung_vaitro`
  ADD CONSTRAINT `FKig6jxd861mqv02a8pn68r43fr` FOREIGN KEY (`ma_vai_tro`) REFERENCES `vai_tro` (`id`),
  ADD CONSTRAINT `FKocavcnspu1wcvp2w0s4usfgbf` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`id`);

--
-- Constraints for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `FKchvjvgjnq8lbt9mjtyfn5pksq` FOREIGN KEY (`ma_hang_sx`) REFERENCES `hang_san_xuat` (`id`),
  ADD CONSTRAINT `FKqss6n6gtx6lhb7flcka9un18t` FOREIGN KEY (`ma_danh_muc`) REFERENCES `danh_muc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
