-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th5 27, 2025 lúc 08:08 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `goimon`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `drinks`
--

CREATE TABLE `drinks` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `drinks`
--

INSERT INTO `drinks` (`id`, `name`, `price`, `image`, `category_id`) VALUES
(1, 'Cà phê sữa đá', 25000, 'images/img_cafesuada.jpg', 1),
(2, 'Cà phê đen đá', 20000, 'images/img_cafedenda.jpg', 1),
(3, 'Nước ép cam', 30000, 'images/img_epcam.jpg', 2),
(5, 'Sinh tố bơ', 32000, 'images/img_sinhtobo.jpg', 3),
(6, 'Trà sữa trân châu', 35000, 'images/img_tstranchau.jpg', 4),
(9, 'Sinh tố dâu', 35000, 'images/img_sinhtodau.jpg', 3),
(10, 'Nước ép dưa hấu', 30000, 'images/img_epduahau.jpg', 2),
(13, 'Trà sữa thái xanh', 30000, 'images/img_tsthaixanh.jpg', 4),
(16, 'Cà phê phin', 25000, 'images/img_cafephin.jpg', 1),
(17, 'Cà phê kem trứng', 30000, 'images/img_cafetrung.jpg', 1),
(18, 'Cà phê muối', 32000, 'images/img_cafemuoi.jpg', 1),
(19, 'Bạc xỉu', 25000, 'images/img_bacxiu.jpg', 1),
(20, 'Cà phê đen Sài Gòn', 25000, 'images/img_cafedensaigon.jpg', 1),
(21, 'Nước ép ổi', 30000, 'images/img_epoi.jpg', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `drink_categories`
--

CREATE TABLE `drink_categories` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `drink_categories`
--

INSERT INTO `drink_categories` (`id`, `name`) VALUES
(1, 'Cà phê'),
(2, 'Nước ép'),
(3, 'Sinh tố'),
(4, 'Trà sữa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoices`
--

CREATE TABLE `invoices` (
  `id` int NOT NULL,
  `table_no` int NOT NULL,
  `total` int NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `invoices`
--

INSERT INTO `invoices` (`id`, `table_no`, `total`, `payment_method`, `status`, `created_at`) VALUES
(1, 5, 45000, 'cash', 'unpaid', '2025-05-01 14:49:57'),
(2, 9, 119000, 'cash', 'unpaid', '2025-05-01 14:51:45'),
(3, 8, 35000, 'cash', 'unpaid', '2025-05-01 16:39:38'),
(4, 9, 39000, 'cash', 'unpaid', '2025-05-01 16:40:22'),
(5, 6, 45000, 'cash', 'unpaid', '2025-05-02 10:38:26'),
(6, 7, 29000, 'qr', 'paid', '2025-05-02 10:55:59'),
(7, 8, 35000, 'cash', 'paid', '2025-05-02 11:13:06'),
(8, 1, 74000, 'cash', 'unpaid', '2025-05-02 11:15:02'),
(9, 9, 113000, 'cash', 'unpaid', '2025-05-02 11:18:30'),
(10, 8, 35000, 'cash', 'unpaid', '2025-05-02 12:04:01'),
(11, 7, 39000, 'cash', 'unpaid', '2025-05-02 12:16:17'),
(12, 7, 39000, 'qr', 'paid', '2025-05-02 14:59:10'),
(13, 4, 35000, 'cash', 'paid', '2025-05-02 15:17:40'),
(14, 5, 35000, 'qr', 'paid', '2025-05-02 15:27:32'),
(15, 1, 35000, 'cash', 'paid', '2025-05-02 15:59:09'),
(16, 5, 109000, 'cash', 'unpaid', '2025-05-03 04:40:57'),
(17, 5, 30000, 'qr', 'paid', '2025-05-03 10:11:11'),
(18, 9, 167000, 'cash', 'paid', '2025-05-03 14:42:45'),
(19, 1, 20000, 'qr', 'paid', '2025-05-04 07:15:49'),
(20, 1, 97000, 'cash', 'unpaid', '2025-05-04 15:06:35'),
(21, 6, 25000, 'cash', 'unpaid', '2025-05-04 15:37:20'),
(22, 1, 20000, 'cash', 'unpaid', '2025-05-04 15:49:11'),
(23, 8, 30000, 'qr', 'paid', '2025-05-04 16:14:01'),
(24, 1, 35000, 'cash', 'unpaid', '2025-05-04 16:19:00'),
(25, 1, 30000, 'cash', 'unpaid', '2025-05-04 16:26:39'),
(26, 1, 32000, 'cash', 'unpaid', '2025-05-04 16:44:05'),
(27, 2, 40000, 'cash', 'unpaid', '2025-05-04 16:50:42'),
(28, 1, 20000, 'qr', 'paid', '2025-05-05 08:01:09'),
(29, 1, 20000, 'cash', 'unpaid', '2025-05-05 08:07:31'),
(30, 1, 25000, 'cash', 'unpaid', '2025-05-05 08:43:28'),
(31, 1, 30000, 'cash', 'unpaid', '2025-05-05 13:11:20'),
(32, 1, 32000, 'cash', 'unpaid', '2025-05-05 13:22:12'),
(33, 2, 30000, 'cash', 'unpaid', '2025-05-05 13:47:18'),
(34, 1, 35000, 'cash', 'unpaid', '2025-05-05 13:56:10'),
(35, 4, 20000, 'cash', 'unpaid', '2025-05-05 14:21:06'),
(36, 1, 30000, 'qr', 'paid', '2025-05-05 16:05:11'),
(37, 1, 20000, 'cash', 'unpaid', '2025-05-06 17:01:23'),
(38, 6, 25000, 'cash', 'unpaid', '2025-05-06 17:03:32'),
(39, 4, 20000, 'cash', 'unpaid', '2025-05-06 17:14:17'),
(40, 1, 20000, 'qr', 'paid', '2025-05-07 01:00:32'),
(41, 1, 20000, 'cash', 'paid', '2025-05-09 15:27:05'),
(42, 1, 75000, 'cash', 'unpaid', '2025-05-09 16:12:34'),
(43, 1, 30000, 'cash', 'paid', '2025-05-15 12:36:09'),
(44, 1, 32000, 'cash', 'paid', '2025-05-17 01:24:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `invoice_id` int DEFAULT NULL,
  `table_no` int NOT NULL,
  `drink_name` varchar(100) NOT NULL,
  `size` varchar(10) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `note` varchar(255) DEFAULT '',
  `drink_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `table_no`, `drink_name`, `size`, `price`, `quantity`, `created_at`, `note`, `drink_id`) VALUES
(17, 11, 7, 'Thái xanh trân châu', 'L', 39000, 1, '2025-05-02 12:16:17', '', NULL),
(18, 12, 7, 'Thái xanh trân châu', 'L', 39000, 1, '2025-05-02 14:59:10', '', NULL),
(19, 13, 4, 'Trà sữa matcha', 'M', 35000, 1, '2025-05-02 15:17:40', '', NULL),
(20, 14, 5, 'Trà sữa matcha', 'M', 35000, 1, '2025-05-02 15:27:33', '', NULL),
(21, 15, 1, 'Trà sữa matcha', 'M', 35000, 1, '2025-05-02 15:59:09', '', NULL),
(22, 16, 5, 'Trà sữa socola', 'M', 35000, 1, '2025-05-03 04:40:57', '', NULL),
(23, 16, 5, 'Thái xanh trân châu', 'L', 39000, 1, '2025-05-03 04:40:57', '', NULL),
(24, 16, 5, 'Trà sữa matcha', 'M', 35000, 1, '2025-05-03 04:40:57', '', NULL),
(25, 17, 5, 'Cà phê đen đá', 'L', 30000, 1, '2025-05-03 10:11:11', '', NULL),
(26, 18, 9, 'Cà phê đen đá', 'M', 20000, 1, '2025-05-03 14:42:45', '', NULL),
(27, 18, 9, 'Nước ép cam', 'L', 40000, 2, '2025-05-03 14:42:45', '', NULL),
(28, 18, 9, 'Sinh tố bơ', 'M', 32000, 1, '2025-05-03 14:42:45', '', NULL),
(29, 18, 9, 'Trà sữa trân châu', 'M', 35000, 1, '2025-05-03 14:42:45', '', NULL),
(30, 19, 1, 'Cà phê đen đá', 'M', 20000, 1, '2025-05-04 07:15:49', '', NULL),
(31, 20, 1, 'Cà phê sữa đá', 'M', 25000, 1, '2025-05-04 15:06:35', '', NULL),
(32, 20, 1, 'Nước ép cam', 'M', 30000, 1, '2025-05-04 15:06:35', '', NULL),
(33, 20, 1, 'Sinh tố bơ', 'L', 42000, 1, '2025-05-04 15:06:35', '', NULL),
(34, 21, 6, 'Cà phê sữa đá', 'M', 25000, 1, '2025-05-04 15:37:20', '', NULL),
(35, 22, 1, 'Cà phê đen đá', 'M', 20000, 1, '2025-05-04 15:49:11', '', NULL),
(36, 23, 8, 'Nước ép cam', 'M', 30000, 1, '2025-05-04 16:14:01', 'it da', NULL),
(37, 24, 1, 'Trà sữa trân châu', 'M', 35000, 1, '2025-05-04 16:19:00', 'da da ', NULL),
(38, 25, 1, 'Nước ép cam', 'M', 30000, 1, '2025-05-04 16:26:39', 'aaaa', NULL),
(39, 26, 1, 'Sinh tố bơ', 'M', 32000, 1, '2025-05-04 16:44:05', 'it da', NULL),
(40, 27, 2, 'Nước ép cam', 'L', 40000, 1, '2025-05-04 16:50:42', 'be xu', NULL),
(41, 28, 1, 'Cà phê đen đá', 'M', 20000, 1, '2025-05-05 08:01:09', 'it da', NULL),
(42, 29, 1, 'Cà phê đen đá', 'M', 20000, 1, '2025-05-05 08:07:31', '', NULL),
(43, 30, 1, 'Cà phê sữa đá', 'M', 25000, 1, '2025-05-05 08:43:28', 'it duong', NULL),
(44, 31, 1, 'Nước ép cam', 'M', 30000, 1, '2025-05-05 13:11:20', 'ngoc', NULL),
(45, 32, 1, 'Sinh tố bơ', 'M', 32000, 1, '2025-05-05 13:22:12', 'xu', NULL),
(46, 33, 2, 'Nước ép dưa hấu', 'M', 30000, 1, '2025-05-05 13:47:18', 'ngon', NULL),
(47, 34, 1, 'Sinh tố dâu', 'M', 35000, 1, '2025-05-05 13:56:10', 'tuyet voi', NULL),
(48, 35, 4, 'Cà phê đen đá', 'M', 20000, 1, '2025-05-05 14:21:06', 'da', NULL),
(49, 36, 1, 'Nước ép dưa hấu', 'M', 30000, 1, '2025-05-05 16:05:11', 'it da', NULL),
(50, 37, 1, 'Cà phê đen đá', 'M', 20000, 1, '2025-05-06 17:01:23', 'ia da', NULL),
(51, 38, 6, 'Cà phê sữa đá', 'M', 25000, 1, '2025-05-06 17:03:32', '222', NULL),
(52, 39, 4, 'Cà phê đen đá', 'M', 20000, 1, '2025-05-06 17:14:17', '12', NULL),
(53, 40, 1, 'Cà phê đen đá', 'M', 20000, 1, '2025-05-07 01:00:32', 'it da', NULL),
(54, 41, 1, 'Cà phê đen đá', 'M', 20000, 1, '2025-05-09 15:27:05', 'xu', NULL),
(55, 42, 1, 'Sinh tố dâu', 'L', 45000, 1, '2025-05-09 16:12:34', '', NULL),
(56, 42, 1, 'Trà sữa thái xanh', 'M', 30000, 1, '2025-05-09 16:12:34', '', NULL),
(57, 43, 1, 'Cà phê kem trứng', 'M', 30000, 1, '2025-05-15 12:36:09', 'hiii', NULL),
(58, 44, 1, 'Sinh tố bơ', 'M', 32000, 1, '2025-05-17 01:24:31', 'it da ', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `fullName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roleId` int NOT NULL DEFAULT '2',
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fullName`, `username`, `email`, `password`, `roleId`, `created`) VALUES
(4, 'Admin System', 'admin', 'admin@example.com', '$2y$10$wnJpqcy7leghBPKJkTPw4.Jp45vbPDGZDvSrucSnssqtJhjU71sNy', 1, '2025-05-06 22:55:57'),
(5, 'Nguoi Dung', 'user', 'adb@abc.com', '$2y$10$Ex/rASe5Kz6P6AhFOoTZBuaWSxYwGvCq9k6F3g4feB3.qEW1m3aWy', 2, '2025-05-06 17:32:13'),
(6, 'phan ngoc', 'ngoc', 'ngoc123@gmail.com', '$2y$10$xhzt4p9.ndeb48JAsTW4Q.d8P.NvzeXb0Hbia0W66knV8eU9lRIrC', 2, '2025-05-09 16:16:59');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_drinks_category` (`category_id`);

--
-- Chỉ mục cho bảng `drink_categories`
--
ALTER TABLE `drink_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_invoice` (`invoice_id`),
  ADD KEY `fk_orders_drink` (`drink_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `drinks`
--
ALTER TABLE `drinks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `drink_categories`
--
ALTER TABLE `drink_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `drinks`
--
ALTER TABLE `drinks`
  ADD CONSTRAINT `drinks_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `drink_categories` (`id`),
  ADD CONSTRAINT `fk_drinks_category` FOREIGN KEY (`category_id`) REFERENCES `drink_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_drink` FOREIGN KEY (`drink_id`) REFERENCES `drinks` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_invoice` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
