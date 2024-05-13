-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3307
-- Thời gian đã tạo: Th4 04, 2024 lúc 03:31 PM
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
-- Cơ sở dữ liệu: `web_bach_hoa`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authority`
--

CREATE TABLE `authority` (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `authority`
--

INSERT INTO `authority` (`name`) VALUES
('ROLE_ADMIN'),
('ROLE_EMPLOYEE'),
('ROLE_USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` bigint NOT NULL,
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_date` date DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `image_banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `content`, `created_date`, `description`, `image_banner`, `title`) VALUES
(4, '', '2023-11-16', 'NAFOOD, với tâm huyết và cam kết mang lại những sản phẩm thực phẩm tươi ngon và an toàn, đã trở thành địa chỉ tin cậy cho những người đang tìm kiếm sự thuận tiện và chất lượng trong mua sắm thực phẩm trực tuyến.  Chúng tôi tự hào với đội ngũ chuyên gia nông nghiệp và đối tác chất lượng, đảm bảo rằng mỗi sản phẩm trên trang web của chúng tôi đều được lựa chọn nguy hiểm và kiểm soát chất lượng một cách hạn chế. Từ rau tươi ngon, thực phẩm đóng gói đến các sản phẩm hữu cơ, NAFOOD cam kết mang đến bàn ăn của bạn đa dạng và phong phú.  Chúng tôi hiểu rằng thời gian là vàng bạc, vì vậy chúng tôi đã phát triển trải nghiệm mua sắm trực tuyến linh hoạt và tiện lợi. Bạn có thể dễ dàng lựa chọn sản phẩm, đặt hàng và chờ đợi những sản phẩm tươi ngon được giao đến tận nhà bạn.  NAFOOD không chỉ là nơi mua sắm mà còn là nền tảng tạo cơ hội cho khách hàng thưởng thức những ưu đãi đặc biệt và khám phá những sản phẩm mới mỗi ngày. Chúng tôi không ngừng nỗ lực để mang lại cho bạn những trải nghiệm mua sắm trực tuyến tốt nhất và làm hài lòng mọi người khẩu vị.  Hãy đồng hành cùng NAFOOD để trải nghiệm những sự khác biệt trong cách chúng tôi chăm sóc và phục vụ bạn. NAFOOD - Nơi thăng hoa từ sự tươi mới và chất lượng!', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700137888/u1srucqaygrq1blgsscb.jpg', 'Giới Thiệu NAFOOD - Nền Tảng Độc Lượng Đáo Cho Sự Tươi Mới và Chất Trong Chiến Ăn Hàng Ngày'),
(5, '', '2023-11-16', 'Thực phẩm sạch cung cấp đầy đủ các dưỡng chất cần thiết mà con người. Bên cạnh đó còn là sự an toàn cho hệ tiêu hoá của con người. An toàn cho hệ sinh thái của môi trường. Với những ưu điểm nổi bật đó cũng đủ để chứng minh được ưu điểm. Cũng như sự an toàn khi sử dụng loại thực phẩm này.  Về thành phần dinh dưỡng theo các nghiên cứu của các nhà khoa học. So với thực phẩm thông thường, thực phẩm sạch không hề có hàm lượng dinh dưỡng cao hơn. Nhưng cái đó không phải mấu chốt, mà cái quan trọng ở đây như đã nói. Chúng ta cần sử dụng thực phẩm sạch để có thể sống khỏe khoắn, lành mạnh. Điều đó có nghĩa là khi sử dụng các thực phẩm sạch. Chúng ta sẽ hạn chế được tỷ lệ lớn việc mắc phải các bệnh nguy hiểm như khi dùng loại thực phẩm không rõ nguồn gốc ngoài chợ.  Trên đây là vai trò quan trọng của nguồn thực phẩm sạch đối với đời sống và sức khỏe con người. Nhất mà trong thời buổi thực phẩm bẩn len lỏi trong mọi ngõ ngách đời sống như hiện nay. Người tiêu dùng cần tỉnh táo để đưa ra những lựa chọn thông minh nhất. Nó đúng đắn nhất, từ đó bảo vệ sức khỏe của chính bạn và gia đình', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700191506/dryejg5rossortefanib.png', 'Vai Trò Của Thực Phẩm Với Sức Khỏe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Đồ Sơ Chế'),
(2, 'Hàng Khô'),
(5, 'Đồ Đông Lạnh'),
(6, 'Rau Củ Hữu Cơ'),
(7, 'Thức Uống'),
(8, 'Bánh Kẹo'),
(9, 'Trái Cây'),
(11, 'Hải Sản');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` bigint NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `content`, `created_date`, `product_id`, `user_id`) VALUES
(2, 'heheh', '2023-04-26', 5, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` bigint NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `replay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `da_xem` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `content`, `created_date`, `email`, `replay`, `da_xem`) VALUES
(1, 'tôi đã nhận được sản phẩm của bạn', '2023-04-26', 'hantinh311002102000@gmail.com', NULL, 1),
(2, 'oke oke', '2023-04-26', '09127832423', NULL, 1),
(3, 'heh hehe', '2023-04-26', '0932443543', NULL, 1),
(4, 'tôi muốn mua hàng', '2023-04-27', '093647234', NULL, 1),
(5, 'cascasfewfwe', '2023-04-27', 'hantinh311002102000@gmail.com', NULL, 1),
(6, 'heheheheh', '2023-07-13', 'hieutran2102000@gmail.com', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_invoice`
--

CREATE TABLE `detail_invoice` (
  `id` bigint NOT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `invoice_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `detail_invoice`
--

INSERT INTO `detail_invoice` (`id`, `price`, `quantity`, `total_amount`, `invoice_id`, `product_id`) VALUES
(10, 4500000, 1, 4500000, 8, 5),
(11, 4500000, 1, 4500000, 9, 5),
(12, 2200000, 1, 2200000, 9, 11),
(13, 2200000, 1, 2200000, 10, 11),
(14, 3000000, 1, 3000000, 10, 9),
(15, 3000000, 1, 3000000, 11, 9),
(16, 3500000, 1, 3500000, 11, 6),
(17, 235000, 1, 235000, 12, 5),
(18, 37000, 2, 74000, 13, 32),
(19, 12500000, 1, 12500000, 14, 34),
(20, 555555, 1, 555555, 15, 36),
(21, 37000, 2, 74000, 16, 32),
(22, 5000000, 1, 5000000, 16, 38),
(23, 4800000, 1, 4800000, 17, 26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_pay`
--

CREATE TABLE `history_pay` (
  `id` bigint NOT NULL,
  `created_date` date DEFAULT NULL,
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `request_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `invoice_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `history_pay`
--

INSERT INTO `history_pay` (`id`, `created_date`, `order_id`, `request_id`, `total_amount`, `invoice_id`) VALUES
(4, '2023-04-28', '1682650827608', '1682650827608', 5200000, 10),
(5, '2023-07-13', '1689219155064', '1689219155064', 235000, 12),
(6, '2023-10-05', '1696513510104', '1696513510104', 74000, 13),
(7, '2023-11-16', '1700188949752', '1700188949752', 555555, 15),
(8, '2023-11-25', '1700929821163', '1700929821163', 5074000, 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_product`
--

CREATE TABLE `image_product` (
  `id` bigint NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `image_product`
--

INSERT INTO `image_product` (`id`, `link`, `product_id`) VALUES
(50, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1686831273/v88bvw5uuatnxbempjvs.png', 32),
(51, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1686831275/kzfx9jvbyzyje2fldlnn.jpg', 32),
(53, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689214128/ntgfwafviil1t8ddd9vj.webp', 10),
(54, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689214129/tte85cf61mqdgyqx45pe.jpg', 10),
(55, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689214499/nq15gtmjrvw8icf3lqno.webp', 11),
(56, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689214501/typemukv24kmowofyr1e.webp', 11),
(57, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689214504/jhltxsp9jjgpyug0hags.webp', 11),
(58, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689214505/tgqbkdatxiodjtidz8nm.webp', 11),
(59, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689214609/f9ytmgyi0qulcpffe8d4.jpg', 12),
(60, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689214968/be0lb3gadwgll817rfa6.jpg', 13),
(61, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689215127/slcm2tzpf7rc9pwzxjev.webp', 14),
(62, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689215128/r745ze7tsboms66kqfdb.jpg', 14),
(63, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689215214/essbooxiyyikfrfkx3rb.jpg', 15),
(64, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689215399/shga9ygfahm1erka54qk.jpg', 17),
(66, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689215507/o4fhgbotfczd8o9mnwmr.webp', 18),
(67, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689215589/h8votvehfaxzqb0q096x.jpg', 19),
(68, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689215735/om2cbfr6fnzdzgwm7s7o.webp', 32),
(69, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689215865/isy66f9d8krnroaejvge.webp', 31),
(70, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689219282/jewohuxgyaj0u2nhzjut.jpg', 5),
(71, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700128254/q0nn0wm5csge3roykofn.webp', 7),
(72, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700128256/loyqfowkokgvm2onmur8.webp', 7),
(73, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700128258/vbxhl4qbsgxtxq39chh6.webp', 7),
(76, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700130144/d9kmmset2ljonhtmgtix.webp', 8),
(77, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700130147/mlexkyo89dgekmmkvtie.webp', 8),
(78, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700130324/uqa8cgonfcmjlmk82kvv.jpg', 9),
(79, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700930001/aj96ojhjm7hlamwevver.jpg', 38),
(80, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700930002/jyf8nq9dzn7tse5srzvb.jpg', 38),
(81, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1712212747/z4cba2ikwux7skgmqjqq.jpg', 39),
(82, 'http://res.cloudinary.com/dxccmy7an/image/upload/v1712212749/sgchu9k0f25hjdfweccd.jpg', 39);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `import_order`
--

CREATE TABLE `import_order` (
  `id` bigint NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `distributor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `import_price` double DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `product` bigint DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `import_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `import_order`
--

INSERT INTO `import_order` (`id`, `address`, `distributor`, `import_price`, `phone`, `quantity`, `product`, `created_date`, `import_date`) VALUES
(3, 'hà nội', 'Hoàng hải nam', 3600000, '0932684233', 500, 5, '2023-04-20', '2023-04-20'),
(5, 'TP. Hồ Chí Minh', 'Khánh Linh', 4000000, '0921734824', 145, 5, '2023-04-20', '2023-04-13'),
(6, 'Hà nội', 'Hoàng minh anh', 7200000, '093264723', 55, 9, '2023-04-25', '2023-04-24'),
(7, 'Hà nội', 'Hoàng minh nghĩa', 2100000, '0934283423', 200, 10, '2023-04-27', '2023-04-26'),
(8, 'Đà nẵng', 'Hoàng Mạnh Hải', 2000000, '0923748234', 150, 11, '2023-04-27', '2023-04-23'),
(9, 'đà nẵng', 'hùng minh', 7000000, '09216478234', 160, 12, '2023-04-27', '2023-04-27'),
(10, 'hà nam', 'hoàng minh', 6000000, '0923748233', 800, 13, '2023-04-27', '2023-04-26'),
(11, 'hà nội', 'hoàng minh', 3100000, '0921363423', 140, 6, '2023-04-27', '2023-04-26'),
(12, 'hà nội', 'hùng hoàng', 2000000, '0927482343', 400, 7, '2023-04-27', '2023-04-26'),
(13, 'hà nội', 'hùng hoàng', 4200000, '0932784234', 150, 8, '2023-04-27', '2023-04-24'),
(14, 'hà nội', 'hoàng minh', 4000000, '093274823', 300, 14, '2023-04-27', '2023-04-26'),
(15, 'hà nội', 'hoàng hải', 700000, '0823482334', 150, 15, '2023-04-27', '2023-04-27'),
(16, 'hà nội', 'hoàng hải', 8000000, '093654345', 170, 16, '2023-04-27', '2023-04-26'),
(17, 'hai bà trung, hà nội', 'hoàng hải', 1000000, '093483345', 440, 17, '2023-04-27', '2023-04-14'),
(18, 'hà nội', 'hoàng hải', 600000, '0934535343', 1200, 18, '2023-04-27', '2023-04-26'),
(19, 'hà nội', 'hoàng minh', 1000000, '0983347283', 120, 19, '2023-04-27', '2023-04-26'),
(20, 'đà nẵng', 'hải minh', 1700000, '0932647234', 300, 20, '2023-04-27', '2023-04-14'),
(21, 'hà nọi', 'hải minh', 5200000, '0892613721', 400, 21, '2023-04-27', '2023-04-19'),
(22, 'hà nọi', 'hải minh', 9000000, '093478234', 200, 22, '2023-04-27', '2023-04-20'),
(23, 'hà nội', 'hải minh', 3000000, '0923684233', 60, 23, '2023-04-27', '2023-04-20'),
(24, 'hà nội', 'hải minh', 1200000, '092364233', 500, 24, '2023-04-27', '2023-04-20'),
(25, 'hà nội', 'hải minh', 3000000, '0926472343', 170, 25, '2023-04-27', '2023-04-21'),
(26, 'hà nội', 'hải minh', 4000000, '0932748234', 300, 26, '2023-04-27', '2023-04-21'),
(27, 'hà nội', 'hải minh', 3000000, '092374823', 100, 27, '2023-04-27', '2023-04-20'),
(28, 'hà nội', 'hải minh', 1100000, '0932748327', 200, 28, '2023-04-27', '2023-04-22'),
(29, 'hà nội', 'hải minh', 3000000, '0937843435', 150, 29, '2023-04-27', '2023-04-18'),
(30, 'đà nẵng', 'hải minh', 1600000, '0937284234', 160, 30, '2023-04-27', '2023-04-20'),
(31, 'hà nội', 'hải minh', 1200000, '09673242323', 300, 31, '2023-04-27', '2023-04-21'),
(32, 'hà nội', 'hoàng minh hùng', 3000000, '0937482343', 130, 10, '2023-04-27', '2023-04-26'),
(33, 'hà nội', 'hhsd', 60000, '087415474', 500, 32, '2023-06-15', NULL),
(34, 'hà nội', 'cty thực phẩm hà nội', 56000, '092374823', 102, 32, '2023-11-14', '2023-11-14'),
(35, 'nafoof', 'nv1', 10000, '0363170297', 543, 36, '2023-11-16', NULL),
(36, 'hn', 'nv1', 1000000, '033332255', 321, 33, '2023-11-16', NULL),
(37, 'hn', 'nv', 700000, '0363170298', 987, 35, '2023-11-16', NULL),
(38, '', 'nv', 30000, '', 323, 34, '2023-11-16', NULL),
(39, '', 'nv1', 60000, '0.203156658', 1, 37, '2023-11-16', NULL),
(40, 'hà nội', 'hà nội computer', 4500000, '02374823', 50, 38, '2023-11-25', '2023-11-25'),
(41, 'hà nội', 'oke', 800000, '09374892342', 200, 39, '2024-04-04', '2024-04-04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice`
--

CREATE TABLE `invoice` (
  `id` bigint NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `num_of_product` int DEFAULT NULL,
  `pay_type` int DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `status_in_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `note_admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ngay_nhan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `invoice`
--

INSERT INTO `invoice` (`id`, `address`, `created_date`, `fullname`, `note`, `num_of_product`, `pay_type`, `phone`, `total_amount`, `status_in_id`, `user_id`, `note_admin`, `ngay_nhan`) VALUES
(8, 'Cầu giấy, Hà Nội', '2023-04-27', 'Trần Văn Hùng', '', 1, 0, '0832784233', 4500000, 4, 8, NULL, '2023-04-27'),
(9, 'Cầu giấy, Hà Nội', '2023-04-27', 'Trần Văn Hùng', 'ss', 2, 0, '0832784233', 6700000, 5, 8, NULL, NULL),
(10, 'Cầu giấy, Hà Nội', '2023-04-28', 'Trần Văn Hùng', 'oke', 2, 1, '0832784233', 5200000, 5, 8, '<p>a</p>', NULL),
(11, 'Tp. Hcm', '2023-06-15', 'Trần tùng nam', 'nhận tối', 2, 0, '096485415', 6500000, 2, 10, NULL, NULL),
(12, 'Cầu giấy, Hà Nội', '2023-07-13', 'Trần Văn Hùng', 'nhận hàng tối', 1, 1, '0832784233', 235000, 5, 8, '<p>huy</p>', NULL),
(13, 'Cầu giấy, Hà Nội', '2023-10-05', 'Trần Văn Hùng', 'nhận tối', 2, 1, '0832784233', 74000, 2, 8, NULL, NULL),
(14, 'Vôi', '2023-11-16', 'Duy Ninh', 'giao hàng nhanh', 1, 0, '032512025', 12500000, 4, 17, NULL, '2023-11-16'),
(15, 'Vôi', '2023-11-16', 'Duy Ninh', '', 1, 1, '032512025', 555555, 2, 17, NULL, NULL),
(16, 'Hoàng mai, Hà Nội', '2023-11-25', 'Hoàng Minh Hiếu', 'nhận tối', 3, 1, '0932648234', 5074000, 1, 9, NULL, NULL),
(17, 'Hoàng mai, Hà Nội', '2024-04-04', 'Hoàng Minh Hiếu', 'oke', 1, 0, '0932648234', 4800000, 1, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` bigint NOT NULL,
  `created_date` date DEFAULT NULL,
  `deleted` int DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `image_banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `num_view` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `trademark_id` bigint DEFAULT NULL,
  `remain_quantity` int DEFAULT NULL,
  `import_price` double DEFAULT NULL,
  `old_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `created_date`, `deleted`, `description`, `image_banner`, `name`, `num_view`, `price`, `quantity`, `category_id`, `trademark_id`, `remain_quantity`, `import_price`, `old_price`) VALUES
(5, '2023-04-20', 0, '<h2 id=\"mang-phu-luong-nong-nghiep-may-farm\"><strong>M&Agrave;NG PHỦ LUỐNG N&Ocirc;NG NGHIỆP -&nbsp;<a href=\"https://mayfarmvn.com/\" target=\"_blank\" rel=\"noopener\">MAY FARM</a></strong></h2>\n<p><a href=\"https://mayfarm.vn/mang-phu-nong-nghiep/\" target=\"_blank\" rel=\"noopener\">M&agrave;ng phủ n&ocirc;ng nghiệp</a>&nbsp;l&agrave; một c&ocirc;ng nghệ canh t&aacute;c hiện đại trong n&ocirc;ng nghiệp, sử dụng m&agrave;ng nhựa PE với 2 mặt đen v&agrave; bạc, được cuộn th&agrave;nh dạng cuộn c&oacute; k&iacute;ch thước ti&ecirc;u chuẩn. May Farm l&agrave; một trong những đơn vị h&agrave;ng đầu cung cấp m&agrave;ng phủ n&ocirc;ng nghiệp chất lượng cao, sản xuất tại Việt Nam với độ d&agrave;y đa dạng v&agrave; gi&aacute; th&agrave;nh cạnh tranh.</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><img src=\"https://mayfarm.vn/storage/b3/r9/b3r9x5glx5lnw9bl83x797xizjpa_mang-phu-may-farm_11.jpg\" alt=\"mang-phu-may-farm 11\"></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>M&agrave;ng phủ n&ocirc;ng nghiệp của&nbsp;<a href=\"https://mayfarmvn.com/\" target=\"_blank\" rel=\"noopener\">May Farm</a>&nbsp;c&oacute; t&iacute;nh chịu lực v&agrave; độ bền cao, gi&uacute;p bảo vệ c&acirc;y trồng khỏi những t&aacute;c động xấu từ m&ocirc;i trường b&ecirc;n ngo&agrave;i, đồng thời tăng năng suất v&agrave; chất lượng sản phẩm c&acirc;y trồng. Việc sử dụng m&agrave;ng phủ n&ocirc;ng nghiệp gi&uacute;p giảm thiểu thiệt hại do s&acirc;u bệnh hại v&agrave; c&ocirc;n tr&ugrave;ng, từ đ&oacute; gi&uacute;p tiết kiệm chi ph&iacute; ph&ograve;ng trừ s&acirc;u bệnh hại v&agrave; tăng hiệu quả sản xuất.</p>\n<p>&nbsp;</p>\n<p>Ngo&agrave;i ra, việc sử dụng m&agrave;ng phủ n&ocirc;ng nghiệp c&ograve;n gi&uacute;p tiết kiệm nước v&agrave; giảm thiểu sự tốn k&eacute;m trong việc duy tr&igrave; đất trồng. M&agrave;ng phủ n&ocirc;ng nghiệp gi&uacute;p hạn chế bốc hơi nước trong đất, giữ cho đất ẩm v&agrave; ngăn ngừa lượng nước dư thừa bị đ&agrave;o thải hoặc bốc hơi một c&aacute;ch l&atilde;ng ph&iacute;. Điều n&agrave;y gi&uacute;p tăng cường khả năng sử dụng nước tưới, giảm bớt lượng nước cần thiết cho c&acirc;y trồng, v&agrave; gi&uacute;p người n&ocirc;ng d&acirc;n tiết kiệm nước v&agrave; giảm bớt chi ph&iacute; nước trong qu&aacute; tr&igrave;nh sản xuất n&ocirc;ng nghiệp.</p>\n<p>&nbsp;</p>\n<h2 id=\"chi-tiet-mang-phumay-farm\"><strong>Chi Tiết M&agrave;ng Phủ&nbsp;<a href=\"https://mayfarmvn.com/\" target=\"_blank\" rel=\"noopener\">May Farm</a></strong></h2>\n<ul>\n<li>\n<ul>\n<li>Độ d&agrave;i: 400m</li>\n<li>Độ rộng: 0.8 - 1m8</li>\n<li>Độ d&agrave;y: 16 MICRON</li>\n<li>H&igrave;nh d&aacute;ng: cuộn tr&ograve;n.</li>\n<li>M&agrave;u sắc: 2 mặt đen/x&aacute;m.</li>\n<li>Nh&agrave; sản xuất: C&ocirc;ng ty Cổ phần May Farm Việt Nam</li>\n<li>Th&agrave;nh phần: PE (Polyetylen), LDPE (Low-Density Polyethylene), LLDPE (Linear Low Density Polythylene), HDPE (High-density polyethylene), hạt nhựa tổng hợp, UV, bột m&agrave;u, &hellip;</li>\n</ul>\n</li>\n</ul>\n<p>&nbsp;</p>\n<p><img src=\"https://lh7-us.googleusercontent.com/6pri9C32qpnBmAuxudvtImRAdxRl876lRLQaVKjAXGUrjxFr9bW15Zj6e7qTItYXCnCN8S5NXdjEWN3AeIgnZ0IQhm_0CfhvQDOI28EqHr2z54rdkM4t8tzGxBEwGLKCEgu84pQWnFz1d2h0338jcWM\"></p>\n<p>&nbsp;</p>\n<p><em>Th&ocirc;ng số m&agrave;ng phủ n&ocirc;ng nghiệp May Farm</em></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><img src=\"https://mayfarm.vn/storage/41/kd/41kdtdztx2xszdorq75anwlw6cwr_mang-phu-may-farm_19.jpg\" alt=\"mang-phu-may-farm 19\"></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h2 id=\"cong-dung-cua-mang-phu-luong-nong-nghiep\"><strong>C&ocirc;ng Dụng Của M&agrave;ng Phủ Luống N&ocirc;ng Nghiệp</strong></h2>\n<p>Tận dụng&nbsp;<a href=\"https://mayfarm.vn/mang-phu-nong-nghiep/\" target=\"_blank\" rel=\"noopener\">m&agrave;ng phủ n&ocirc;ng nghiệp</a>&nbsp;l&agrave; một phương ph&aacute;p canh t&aacute;c hiện đại gi&uacute;p n&acirc;ng cao hiệu suất trong n&ocirc;ng nghiệp v&agrave; đem lại nhiều lợi &iacute;ch đ&aacute;ng kể cho người n&ocirc;ng d&acirc;n v&agrave; c&acirc;y trồng. M&agrave;ng phủ n&ocirc;ng nghiệp l&agrave; loại m&agrave;ng nhựa c&oacute; 2 mặt đen v&agrave; bạc được đặt l&ecirc;n mặt đất trồng c&acirc;y.</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>Một trong những lợi &iacute;ch quan trọng của việc sử dụng m&agrave;ng phủ n&ocirc;ng nghiệp l&agrave; gi&uacute;p hạn chế sự ph&aacute;t triển của cỏ dại tr&ecirc;n mặt đất. M&agrave;ng phủ che phủ to&agrave;n bộ mặt luống, ngăn chặn cỏ dại mọc l&ecirc;n, giảm bớt c&ocirc;ng việc phải l&agrave;m cỏ, xới x&aacute;o. Điều n&agrave;y gi&uacute;p tiết kiệm thời gian, c&ocirc;ng sức v&agrave; giảm chi ph&iacute; quản l&yacute; cỏ dại.</p>\n<p>&nbsp;</p>\n<p>Ngo&agrave;i ra, m&agrave;ng phủ n&ocirc;ng nghiệp c&ograve;n gi&uacute;p tiết kiệm lượng nước tưới cho c&acirc;y trồng.&nbsp;<a href=\"https://mayfarm.vn/mang-phu-nong-nghiep/\" target=\"_blank\" rel=\"noopener\">M&agrave;ng phủ n&ocirc;ng nghiệp</a>&nbsp;gi&uacute;p giữ cho đất ẩm, hạn chế bốc hơi nước trong đất, ngăn ngừa lượng nước dư thừa bị đ&agrave;o thải hoặc bốc hơi l&atilde;ng ph&iacute;. Điều n&agrave;y gi&uacute;p tăng khả năng sử dụng nước tưới, giảm lượng nước cần thiết cho c&acirc;y trồng v&agrave; gi&uacute;p giảm chi ph&iacute; nước trong qu&aacute; tr&igrave;nh sản xuất n&ocirc;ng nghiệp.</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><img src=\"https://mayfarm.vn/storage/z1/xf/z1xf8575q9d80woby2ofun51uftj_mang-phu-may-farm_18.jpg\" alt=\"mang-phu-may-farm 18\"></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>M&agrave;ng phủ n&ocirc;ng nghiệp c&ograve;n gi&uacute;p người n&ocirc;ng d&acirc;n thu hoạch sản phẩm dễ d&agrave;ng hơn. Với m&agrave;ng phủ che phủ gần hết mặt đất, rau quả kh&ocirc;ng tiếp x&uacute;c trực tiếp với đất, gi&uacute;p giữ cho rau quả sạch v&agrave; tăng gi&aacute; trị sản phẩm. Điều n&agrave;y đồng nghĩa với việc người n&ocirc;ng d&acirc;n c&oacute; thể thu hoạch sản phẩm dễ d&agrave;ng hơn, tiết kiệm c&ocirc;ng lao động v&agrave; gi&uacute;p tăng thu nhập. May Farm l&agrave; đơn vị cung cấp m&agrave;ng phủ n&ocirc;ng nghiệp chất lượng cao, sản xuất tại Việt Nam với đa dạng độ d&agrave;y v&agrave; gi&aacute; cả cạnh tranh.</p>\n<p>&nbsp;</p>\n<p>H&atilde;y sử dụng m&agrave;ng phủ n&ocirc;ng nghiệp ngay h&ocirc;m nay để n&acirc;ng cao hiệu quả sản xuất của bạn! Giảm bớt c&ocirc;ng việc phải l&agrave;m cỏ, tiết kiệm nước tưới, thu hoạch sản phẩm sạch, tăng thu nhập. Li&ecirc;n hệ với May Farm để được tư vấn v&agrave; cung cấp m&agrave;ng phủ n&ocirc;ng nghiệp chất lượng.</p>\n<p>&nbsp;_____________________________</p>\n<h2 id=\"thong-tin-lien-he\">TH&Ocirc;NG TIN LI&Ecirc;N HỆ:</h2>\n<ul>\n<li><strong>C&ocirc;ng ty Cổ phần May Farm Việt Nam</strong></li>\n<li><strong>SĐT/ZALO:&nbsp;<u><a title=\"B&aacute;o gi&aacute; nhanh ch&oacute;ng qua SĐT/ZALO\" href=\"tel:0967303093\">0967.30.30.93</a></u></strong></li>\n<li><strong>Shopee:&nbsp;<a title=\"Cửa h&agrave;ng Shopee của May Farm\" href=\"https://shopee.vn/mayfarm_official\" target=\"_blank\" rel=\"noopener\">May Farm - Vật Tư N&ocirc;ng Nghiệp</a></strong></li>\n<li><strong>Facebook:&nbsp;<u><a title=\"Facebook May Farm\" href=\"https://www.facebook.com/ceo.mayfarm\" target=\"_blank\" rel=\"noopener\">Trang Thu Vu&nbsp;</a></u></strong></li>\n<li><strong>Instagram:&nbsp;<u><a title=\"Instagram May Farm\" href=\"https://www.instagram.com/may_farm_viet_nam/\" target=\"_blank\" rel=\"noopener\">may_farm_viet_nam</a></u></strong></li>\n<li><strong>TikTok:&nbsp;<u><a title=\"TikTok May Farm\" href=\"https://www.tiktok.com/@may_farm_viet_nam\" target=\"_blank\" rel=\"noopener\">May Farm - Vật Tư N&ocirc;ng Nghiệp</a></u></strong></li>\n<li><strong>Địa chỉ:&nbsp;<u><a title=\"Địa chỉ May Farm\" href=\"https://goo.gl/maps/5USTei7cXxWnSP3E9\" target=\"_blank\" rel=\"noopener\">L&ocirc; 962-2 Khu Đất Dịch Vụ (Khu 25,2ha Kim Ho&agrave;ng), X&atilde; V&acirc;n Canh, Huyện Ho&agrave;i Đức, TP H&agrave; Nội.</a></u></strong></li>\n</ul>', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689219280/enbqlxb162klltfbflck.webp', 'Gà đồi Hòa Bình', 51, 235000, 644, 1, 1, NULL, NULL, 264999),
(6, '2023-04-21', 0, '', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1696513744/o9ehtzgnbytsltbwdwxg.jpg', 'Cần Mỹ', 3, 35000, 139, 6, 1, NULL, NULL, NULL),
(7, '2023-04-21', 0, '', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700128251/otenbvvhbmotzoke9mry.webp', 'Thùng 20 lon bia Budweiser 330ml', 1, 29000, 400, 7, 1, NULL, NULL, NULL),
(8, '2023-04-21', 0, '', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700130142/gbgli9tocc8woxdelz48.webp', '24 lon nước tăng lực Redbull 250ml', 0, 225000, 150, 7, 1, NULL, NULL, NULL),
(9, '2023-04-21', 0, '', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700130322/cps1b6fckmtuzuplxjlc.webp', 'Rượu Soju', 6, 70000, 54, 7, 2, NULL, NULL, NULL),
(10, '2023-04-21', 0, '<ul>\n<li>NGUỒN GỐC V&Agrave; TH&Agrave;NH PHẦN LỢN QUẾ</li>\n</ul>\n<p>Ngược về khu vực S&oacute;c Sơn, H&agrave; Nội. Nơi đ&acirc;y đang dần được biết đến với những trang trại nu&ocirc;i lợn quế với quy m&ocirc; từ v&agrave;i chục đến h&agrave;ng ng&agrave;n con.&nbsp;Để c&oacute; được một con lợn quế xuất chuồng phải trải qua c&ocirc;ng đoạn nu&ocirc;i giun rất cầu kỳ, sau đ&oacute;&nbsp;giun quế được đem đi nghiền n&aacute;t, nấu ch&iacute;n rồi trộn c&ugrave;ng với b&atilde; bia, c&aacute;m ng&ocirc;, rau dại, c&acirc;y thảo dược,&hellip; theo tỷ lệ 10-15% giun quế c&ograve;n lại l&agrave; c&aacute;m l&agrave;m thức ăn cho lợn.</p>\n<p>Như vậy sau 6 th&aacute;ng chăn nu&ocirc;i dưới sự gi&aacute;m s&aacute;t nghi&ecirc;m ngặt để đảm bảo 3 ti&ecirc;u chuẩn:</p>\n<p>&ndash; L&yacute; học: kh&ocirc;ng lẫn th&agrave;nh phần n&agrave;o trong thịt</p>\n<p>&ndash; H&oacute;a học: kh&ocirc;ng c&oacute; chất tồn dư h&oacute;a học</p>\n<p>&ndash; Sinh học: kh&ocirc;ng c&oacute; k&yacute; sinh tr&ugrave;ng, vi khuẩn g&acirc;y hại</p>\n<p>Đồng thời kết hợp với giống lợn &ldquo;bố&rdquo; Duroc v&agrave; giống lợn &ldquo;mẹ&rdquo; Landrace để tạo ra lợn quế đạt ti&ecirc;u chuẩn v&agrave; r&otilde; nguồn gốc.</p>\n<p>Thịt lợn quế l&agrave; loại thịt được nu&ocirc;i bằng giun quế với h&agrave;ng lượng protein rất lớn, l&ecirc;n tới 70% hạm lượng cơ thể, th&ecirc;m v&agrave;o đ&oacute; l&agrave; giun quế c&ograve;n chứa đủ 12 loại axit amin để bổ sung dinh dưỡng cho vật nu&ocirc;i. Ch&iacute;nh v&igrave; vậy, x&eacute;t về độ tươi ngon th&igrave; thịt lợn quế hữu cơ c&oacute;&nbsp;vị ngon, chắc thịt, thơm thịt, hơn bất k&igrave; loại thịt n&agrave;o kh&aacute;c, h&agrave;m lượng dinh dưỡng cao, gi&agrave;u protein v&agrave; c&aacute;c nguy&ecirc;n tố vi lượng.</p>\n<p>GI&Ograve; QUẾ</p>\n<p>Gi&ograve; quế được l&agrave;m từ những phần thịt nạc ngon nhất của lợn quế.</p>\n<p>Gi&ograve; quế ăn c&oacute; vị ngọt của thịt, thơm của ti&ecirc;u c&ugrave;ng c&aacute;c gia vị</p>\n<p>Gi&ograve; quế d&ugrave;ng ăn trực tiếp hoặc c&oacute; thể r&aacute;n, x&agrave;o, d&ugrave;ng để l&agrave;m nộm, d&ugrave;ng ăn k&egrave;m c&aacute;c m&oacute;n cuốn</p>', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689214066/rae8y3brgu8wllliil2x.webp', 'Giò thịt lợn quế', 17, 295000, 330, 1, 1, NULL, NULL, NULL),
(11, '2023-04-21', 0, '<p>C&aacute; hồi fillet được B&aacute;c T&ocirc;m nhập trực tiếp từ Nauy qua đường h&agrave;ng kh&ocirc;ng. Với t&ecirc;n tuổi đ&atilde; được tạo dựng uy t&iacute;n từ l&acirc;u đời đảm bảo được chất lượng cũng như độ tươi ngon trong từng thớ c&aacute; hồi.</p>\n<p>Để được những miếng c&aacute; hồi thơm ngon nhất th&igrave; lu&ocirc;n phải đảm bảo c&aacute;c ti&ecirc;u chuẩn nghi&ecirc;m ngặt trong qu&aacute; tr&igrave;nh nu&ocirc;i dưỡng v&agrave; sản xuất:</p>\n<ul>\n<li>Thức ăn cho c&aacute; hồi đảm bảo kh&ocirc;ng c&oacute; chất biến đổi gen (th&ocirc;ng thường thức ăn sẽ l&agrave; c&aacute; loại c&aacute; con như c&aacute; tuyết, c&aacute; cơm&hellip;.)</li>\n<li>Giống c&aacute; hồi Nauy phải được lựa chọn kỹ c&agrave;ng, những con khỏe mạnh v&agrave; sạch bệnh nhất</li>\n</ul>\n<p>####</p>\n<p>C&aacute; hồi fillet được B&aacute;c T&ocirc;m nhập trực tiếp từ Nauy qua đường h&agrave;ng kh&ocirc;ng. Với t&ecirc;n tuổi đ&atilde; được tạo dựng uy t&iacute;n từ l&acirc;u đời đảm bảo được chất lượng cũng như độ tươi ngon trong từng thớ c&aacute; hồi.</p>\n<p>Để được những miếng c&aacute; hồi thơm ngon nhất th&igrave; lu&ocirc;n phải đảm bảo c&aacute;c ti&ecirc;u chuẩn nghi&ecirc;m ngặt trong qu&aacute; tr&igrave;nh nu&ocirc;i dưỡng v&agrave; sản xuất:</p>\n<ul>\n<li>Thức ăn cho c&aacute; hồi đảm bảo kh&ocirc;ng c&oacute; chất biến đổi gen (th&ocirc;ng thường thức ăn sẽ l&agrave; c&aacute; loại c&aacute; con như c&aacute; tuyết, c&aacute; cơm&hellip;.)</li>\n<li>Giống c&aacute; hồi Nauy phải được lựa chọn kỹ c&agrave;ng, những con khỏe mạnh v&agrave; sạch bệnh nhất</li>\n</ul>\n<p>B&ecirc;n cạnh đ&oacute;, h&agrave;m lượng dinh dưỡng trong c&aacute; hồi Nauy đặc biệt phong ph&uacute;:</p>\n<ul>\n<li>Protein: dưỡng chất quan trọng trong duy tr&igrave; cơ thể</li>\n<li>Vitamin D: kho&aacute;ng chất cần thiết để c&oacute; sự bằng canxi trong cơ thể, gi&uacute;p duy tr&igrave; v&agrave; củng cố xương</li>\n<li>Selenium: dưỡng chất cần thiết cho sự hoạt động của tuyến gi&aacute;p, giảm cholesterol trong m&aacute;u</li>\n<li>Axit b&eacute;o Omega 3: ngăn ngừa c&aacute;c khả năng về bệnh tim mạch.</li>\n</ul>\n<p>Với những h&agrave;m lượng dinh dưỡng cao như tr&ecirc;n, c&aacute; hồi kh&ocirc;ng chỉ l&agrave; m&oacute;n ăn ngon m&agrave; c&ograve;n l&agrave; nguồn cung cấp năng lượng tuyệt vời cho cơ thể. Đặc biệt l&agrave; trẻ em v&agrave; phụ nữ đang mang thai.</p>', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689214425/rcgzcicqzgencyxvhu2o.webp', 'Cá hồi fillet Nauy', 2, 810000, 150, 11, 9, NULL, NULL, NULL),
(12, '2023-04-21', 0, '<p>&ndash; Xuất xứ<br>H&agrave;ng cấp đ&ocirc;ng: Nghệ An, Ph&uacute; Quốc<br>H&agrave;ng tươi: Quảng Nin<br>&ndash; Đặc điểm<br>Mực ống l&agrave; loại mực c&oacute; th&acirc;n tr&ograve;n v&agrave; d&agrave;i tựa như chiếc ống, phần đu&ocirc;i mỏng<br>Thịt mực ống c&oacute; độ gi&ograve;n ph&ugrave; hợp với c&aacute;c m&oacute;n hấp, x&agrave;o<br>&ndash; Hướng dẫn bảo quản<br>Bảo quản tủ đ&ocirc;ng, tr&aacute;nh ng&acirc;m trực tiếp v&agrave;o đ&aacute;</p>', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689214607/sfrivfdmw7oetflfpb3h.jpg', 'Mực ống', 4, 145000, 160, 11, 9, NULL, NULL, NULL),
(13, '2023-04-21', 0, '', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689214942/rmiljgqrmv0mqlxqg6b2.jpg', 'Tôm bạc to', 1, 350000, 800, 11, 13, NULL, NULL, NULL),
(14, '2023-04-27', 0, '<p>B&aacute;nh chay v&agrave; b&aacute;nh bao nh&acirc;n thịt</p>', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689215091/f4yynn3ofmqs3qmglgbe.webp', 'Bánh bao Mộc', 0, 57000, 300, 2, 14, NULL, NULL, NULL),
(15, '2023-04-27', 0, '<p>&ndash; Xuất xứ: H&agrave; Tĩnh<br>&ndash; Đặc điểm<br>Quả c&agrave; ph&aacute;o đực sơ chế, phơi h&eacute;o v&agrave; muối theo c&aacute;ch cổ truyền.<br>M&oacute;n c&agrave; muối kết hợp c&ugrave;ng c&aacute;c nguy&ecirc;n liệu củ kiệu, tỏi gừng riềng ớt vừa giữ được độ trắng cho c&agrave; vừa tạo ra hương vị ri&ecirc;ng<br>&ndash; Hướng dẫn bảo quản<br>Bảo quản ngăn m&aacute;t tủ lạnh</p>', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689215212/ms2khkkzorp4j0fmlhga.jpg', 'Cà muối/ cà mắm/ cà dầm tương', 1, 90000, 150, 1, 1, NULL, NULL, NULL),
(16, '2023-04-27', 0, '<p>Trứng g&agrave; qu&ecirc;</p>', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689215298/nnuvclxsq7kqthaxownj.webp', 'Trứng gà quê sạch', 0, 4800, 170, 2, 1, NULL, NULL, NULL),
(17, '2023-04-27', 0, '<p dir=\"ltr\">C&agrave; chua hữu cơ được cung cấp bởi được trồng v&agrave; chăm s&oacute;c theo<strong>&nbsp;phương ph&aacute;p hữu cơ</strong>.&nbsp; Sản phẩm kh&ocirc;ng sử dụng thuốc k&iacute;ch th&iacute;ch tăng trưởng, thuốc bảo vệ thực vật độc hại, đảm bảo an to&agrave;n cho sức khỏe người ti&ecirc;u d&ugrave;ng.</p>\n<p dir=\"ltr\"><img class=\"aligncenter lazy-load-active\" src=\"https://lh6.googleusercontent.com/aBOrnHD7byQH04EacJO47hWCCnUgwNmuZIIQbAlxYpoJ8uKJw9731L0PQNg8XgJyXcTU22hcVKhW4N3FD6zPR3WuggiHjPoZeLN9FKoHH0wHv4YzrdstXwtIlmi1U38TFg\" data-src=\"https://lh6.googleusercontent.com/aBOrnHD7byQH04EacJO47hWCCnUgwNmuZIIQbAlxYpoJ8uKJw9731L0PQNg8XgJyXcTU22hcVKhW4N3FD6zPR3WuggiHjPoZeLN9FKoHH0wHv4YzrdstXwtIlmi1U38TFg\"></p>\n<p dir=\"ltr\"><strong>GI&Aacute; TRỊ DINH DƯỠNG</strong></p>\n<p dir=\"ltr\">Quả C&agrave; chua c&oacute; vị chua ngọt, t&iacute;nh m&aacute;t, c&oacute; t&aacute;c dụng tạo năng lượng, tiếp chất kho&aacute;ng, tăng sức sống l&agrave;m c&acirc;n bằng tế b&agrave;o, khai vị, giải nhiệt, chống hoại huyết, kh&aacute;ng khuẩn, chống độc, kiềm ho&aacute; m&aacute;u c&oacute; dư acid, lợi tiểu, ho&agrave; tan ur&ecirc;, thải ur&ecirc;, gi&uacute;p ti&ecirc;u ho&aacute; dễ c&aacute;c loại bột v&agrave; tinh bột. Nước sắc l&aacute; c&oacute; t&iacute;nh chất giảm huyết &aacute;p; l&aacute; cũng c&oacute; t&iacute;nh chất giải độc sưng tấy.</p>\n<p dir=\"ltr\"><strong>GỢI &Yacute; M&Oacute;N ĂN</strong></p>\n<p dir=\"ltr\">C&agrave; chua l&agrave; m&oacute;n ăn kh&ocirc;ng thể thiếu trong mỗi m&oacute;n ăn người Việt Nam, n&oacute; c&oacute; thể chế biến c&aacute;c m&oacute;n salad hoặc như một gia vị kh&ocirc;ng thể thiếu trong c&aacute;c m&oacute;n canh chua, hầm, x&agrave;o,&hellip;.</p>\n<ol>\n<li dir=\"ltr\">\n<p dir=\"ltr\">Nước &eacute;p c&agrave; chua</p>\n</li>\n</ol>\n<p dir=\"ltr\"><img class=\"lazy-load-active\" src=\"https://lh3.googleusercontent.com/5AL9u7eP6dgRjvCsbgypgNUPDnX9DS4LDX11VEU_-_sK0DTEDsD5FEX6OZm70tcknCxWrBXTnAaFrTBo5Qin0U4UwIc7hKJ_SmGsvfNG2sjJhkkWUIAMYBcOdmLozP9YTA\" data-src=\"https://lh3.googleusercontent.com/5AL9u7eP6dgRjvCsbgypgNUPDnX9DS4LDX11VEU_-_sK0DTEDsD5FEX6OZm70tcknCxWrBXTnAaFrTBo5Qin0U4UwIc7hKJ_SmGsvfNG2sjJhkkWUIAMYBcOdmLozP9YTA\"></p>\n<ol start=\"2\">\n<li dir=\"ltr\">\n<p dir=\"ltr\">C&aacute; đối xốt c&agrave; chua</p>\n</li>\n</ol>\n<p dir=\"ltr\"><img class=\"lazy-load-active\" src=\"https://lh4.googleusercontent.com/x38hkUylL1XmdzZtIui5cJNNJviQae0fyFBiO4r9Ysd8eaFbXddG0ulEuV5JsJYG0swmFUbkTSkx1Kfc9fdA_2rcfCa3Evi4G3qDL792OfmUdVHi3prnUddZ9pR4ATlw8Q\" data-src=\"https://lh4.googleusercontent.com/x38hkUylL1XmdzZtIui5cJNNJviQae0fyFBiO4r9Ysd8eaFbXddG0ulEuV5JsJYG0swmFUbkTSkx1Kfc9fdA_2rcfCa3Evi4G3qDL792OfmUdVHi3prnUddZ9pR4ATlw8Q\"></p>', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689215398/vjpsjokhbnvfi5unj65y.jpg', 'Cà chua Hà Lan', 0, 1350000, 440, 6, 1, NULL, NULL, NULL),
(18, '2023-04-27', 0, '<p>Cải b&oacute; x&ocirc;i RH</p>', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689215504/rcioowyxxccgohvfylhq.webp', 'Cải bó xôi RH', 1, 37000, 1200, 6, 1, NULL, NULL, NULL),
(19, '2023-04-27', 0, '<p>Quả bầu l&agrave; loại rau ăn phổ biến trong m&ugrave;a h&egrave;, c&oacute; gi&aacute; trị dinh dưỡng cao, m&aacute;t, ngọt, th&ocirc;ng dụng trong m&ugrave;a h&egrave;, đặc biệt n&oacute; c&ograve;n gi&uacute;p ph&ograve;ng chữa c&aacute;c bệnh khi thời tiết n&oacute;ng bức, ẩm thấp như mụn nhọt.</p>', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689215588/a2btschptxkdf7lity3h.jpg', 'Quả bầu RH', 1, 37000, 120, 6, 1, NULL, NULL, NULL),
(20, '2023-04-27', 0, '<p>Tượng ph&uacute;c lộc thọ tứ linh &ndash; cao 86cm</p>', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700130467/v71vqancnmiypaqyulbe.jpg', 'Rượu vang Biserno Lodovico', 0, 9999999, 300, 7, 12, NULL, NULL, NULL),
(21, '2023-04-27', 0, '<p>hehehehe oke</p>\n<p>&nbsp;</p>', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700132084/xe9e44mz2y8kaxz9fal9.webp', 'Nho mẫu đơn 1.9kg', 8, 6000000, 400, 9, 1, NULL, NULL, NULL),
(22, '2023-04-27', 0, '', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700132703/oipgazlfsi6vnwwisndv.webp', 'Lựu ngọt hạt mềm 3.5kg', 1, 10800000, 200, 9, 11, NULL, NULL, NULL),
(23, '2023-04-27', 0, '', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700133168/pn2yo8aqv5keb8gco0cy.webp', 'TRANH ỐP TƯỜNG GỐM BÁT TRÀNG VẼ CẢNH CHỢ QUÊ', 1, 1999999, 60, 9, 2, NULL, NULL, NULL),
(24, '2023-04-27', 0, '', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700133673/pmkec9neqhaua6qjhc1r.jpg', 'Trứng cá tầm', 2, 35860000, 500, 11, 13, NULL, NULL, NULL),
(25, '2023-04-27', 0, '', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700134155/rchihhgpfobpyhhoaecy.jpg', 'Godive Socola', 0, 38000000, 170, 8, 10, NULL, NULL, NULL),
(26, '2023-04-27', 0, '', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700136569/waxtkjpy3trmcgfc7ph1.jpg', ' Bánh Gochiz', 4, 4800000, 299, 8, 2, NULL, NULL, NULL),
(27, '2023-04-27', 0, '', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700136680/se6yjx8wsxzda5ofipdu.jpg', 'Bánh Sala nhân kem sữa 55g', 3, 3600000, 100, 8, 9, NULL, NULL, NULL),
(28, '2023-04-27', 0, '<p>Đ&egrave;n ngủ gốm sứ vẽ hoa thi&ecirc;n điểu, h&agrave;ng thủ c&ocirc;ng củ...</p>', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700136740/tw7ijvzwf1dooeqyqumk.jpg', 'Mứt Tết Bảo Minh', 4, 1650000, 200, 8, 1, NULL, NULL, NULL),
(29, '2023-04-27', 0, '', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700136946/syyyn6bduootzokz58kk.webp', ' BA CHỈ BÒ NHẬP KHẨU MỸ 500GR', 3, 3900000, 150, 5, 13, NULL, NULL, 4100000),
(30, '2023-04-27', 0, '<p>Đ&egrave;n ngủ gốm sơn m&agrave;i khảm hoa sen</p>', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700137024/vmajjbed3qkrz3q7mjtw.webp', 'TÔM THỊT TƯƠI ĐÔNG ĐÔ 8/12 252GR', 4, 220000, 160, 5, 14, NULL, NULL, NULL),
(31, '2023-04-27', 0, '<h1 class=\"product-title product_title entry-title\">Cam xo&agrave;n 77.000đ/ kg</h1>', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689215863/xqcfd8ewbdg4u2slix4x.webp', 'Cam xoàn', 5, 77000, 300, 9, 2, NULL, NULL, NULL),
(32, '2023-06-15', 0, '<p>Su h&agrave;o RH loại mới</p>', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1689215733/sq7jqp6aca4wckopxcz5.webp', 'Su hào RH', 4, 37000, 598, 6, 1, NULL, NULL, NULL),
(33, '2023-11-16', 0, '', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700137138/ng6z26vnbxsyaigjd3m4.jpg', 'Combo Hải Sản ', 11, 350000, 321, 5, 1, NULL, NULL, 390000),
(34, '2023-11-16', 0, '', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700137224/kxz5nawwvexscrhkcczx.png', 'Bia Westmalle Tripel 9,5% – Chai 330ml – Thùng 24 Chai', 0, 12500000, 322, 7, 10, NULL, NULL, NULL),
(35, '2023-11-16', 0, '', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700137348/shlxw6yhyga3wbff7nnn.webp', 'Hộp Quà Tết', 0, 3333333, 987, 8, 12, 0, NULL, NULL),
(36, '2023-11-16', 0, '', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700137409/smsl584g5mjh9agasykn.webp', 'Combo Trái Cây', 1, 555555, 542, 9, 1, 0, NULL, NULL),
(37, '2023-11-16', 0, '', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700195068/wjpvpyfnvoqq6vl2upqs.jpg', 'Bánh Bao Ngon 6 Cái', 1, 72000, 1, 2, 9, NULL, NULL, 78000),
(38, '2023-11-25', 1, '<p>hrhreh</p>', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1700930000/jolmkbtvacmct5xljmge.jpg', 'Iphone 15', 3, 5000000, 49, 1, 2, 0, NULL, NULL),
(39, '2024-04-04', 1, '<p><strong>oke fgeghegege</strong></p>\n<p>fwvuefwef</p>', 'http://res.cloudinary.com/dxccmy7an/image/upload/v1712212744/rxd5g2tzmueqclevvkjy.jpg', 'sản phẩm test', 1, 900000, 200, 5, 1, NULL, NULL, 949999);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_view`
--

CREATE TABLE `product_view` (
  `id` bigint NOT NULL,
  `num_view` int DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `random_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ngay_search` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_view`
--

INSERT INTO `product_view` (`id`, `num_view`, `product_id`, `user_id`, `random_key`, `ngay_search`) VALUES
(11, 1, 13, NULL, '8XKNNZhbdJRw0', '2023-04-27'),
(12, 4, 10, NULL, '8XKNNZhbdJRw0', '2023-04-27'),
(13, 1, 26, NULL, '8XKNNZhbdJRw0', '2023-04-27'),
(14, 1, 21, NULL, '8XKNNZhbdJRw0', '2023-04-27'),
(15, 1, 27, NULL, '8XKNNZhbdJRw0', '2023-04-27'),
(16, 3, 26, NULL, 'QKSrHSmZva3sE', '2024-04-04'),
(17, 2, 27, NULL, 'QKSrHSmZva3sE', '2024-04-04'),
(18, 1, 30, NULL, 'wetro2vFWuLad', '2023-04-28'),
(19, 1, 30, NULL, 'ES2VbgVy91Hdl', '2023-04-28'),
(20, 2, 11, NULL, '8XKNNZhbdJRw0', '2023-04-28'),
(21, 4, 9, NULL, '8XKNNZhbdJRw0', '2023-04-28'),
(22, 1, 29, NULL, 'PJiUZPm8XVld7', '2023-05-19'),
(23, 1, 28, NULL, 'PJiUZPm8XVld7', '2023-05-19'),
(24, 1, 29, NULL, 'YPtUfytDG6g0N', '2023-05-25'),
(25, 2, 6, NULL, 'YPtUfytDG6g0N', '2023-06-15'),
(26, 2, 9, NULL, '4HRPc4si9c1rd', '2023-06-15'),
(27, 1, 29, NULL, 'BpfY8pkNmWAfV', '2023-07-12'),
(28, 2, 31, NULL, 'KlzQmpVcukPAu', '2023-07-13'),
(29, 1, 30, NULL, 'KlzQmpVcukPAu', '2023-07-13'),
(30, 1, 32, NULL, 'KlzQmpVcukPAu', '2023-07-13'),
(31, 1, 32, NULL, 'W7psdAkE1arYD', '2023-07-13'),
(32, 2, 12, NULL, 'W7psdAkE1arYD', '2023-07-13'),
(33, 1, 19, NULL, 'W7psdAkE1arYD', '2023-07-13'),
(34, 1, 5, NULL, 'rlbkjU7Ha7opR', '2023-07-13'),
(35, 1, 18, NULL, 'rlbkjU7Ha7opR', '2023-07-13'),
(36, 1, 32, NULL, 'xB0ZZHoeit4df', '2023-10-05'),
(37, 1, 31, NULL, 'gwyA7tK7HCAkp', '2023-10-05'),
(38, 1, 32, NULL, 'gwyA7tK7HCAkp', '2023-10-05'),
(39, 2, 24, NULL, 'FZiELw5EWwBGl', '2023-11-16'),
(40, 1, 6, NULL, 'FZiELw5EWwBGl', '2023-11-16'),
(41, 1, 38, NULL, 'oVQykIvLhgqJY', '2023-11-25'),
(42, 2, 38, NULL, 'vQi4qQY0IOiya', '2023-11-25'),
(43, 1, 36, NULL, '5jbp0Ny3nJzjF', '2024-04-04'),
(44, 1, 23, NULL, '5jbp0Ny3nJzjF', '2024-04-04'),
(45, 1, 39, NULL, 'QKSrHSmZva3sE', '2024-04-04'),
(46, 2, 21, NULL, 'QKSrHSmZva3sE', '2024-04-04'),
(47, 2, 5, NULL, 'QKSrHSmZva3sE', '2024-04-04'),
(48, 1, 37, NULL, 'xCzzRqbmwzjhO', '2024-04-04'),
(49, 10, 33, NULL, 'LQXH8ExriR9VR', '2024-04-04'),
(50, 1, 33, NULL, '45345', '2024-04-04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status_in`
--

CREATE TABLE `status_in` (
  `id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `status_in`
--

INSERT INTO `status_in` (`id`, `name`) VALUES
(1, 'Đang chờ duyệt'),
(2, 'Đã duyệt đơn hàng'),
(3, 'Đơn hàng đã được gửi đi'),
(4, 'Đã nhận đơn hàng'),
(5, 'Đơn hàng đã bị hủy'),
(6, 'Khách không nhận hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trade_mark`
--

CREATE TABLE `trade_mark` (
  `id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `trade_mark`
--

INSERT INTO `trade_mark` (`id`, `name`, `address`) VALUES
(1, 'Việt Nam', 'Việt Nam'),
(2, 'Hàn Quốc', 'Hàn Quốc'),
(9, 'Japan', 'Japan'),
(10, 'Bỉ', 'Bỉ'),
(11, 'USA', 'USA'),
(12, 'Ý', 'Ý'),
(13, 'Châu Âu', 'Châu Âu'),
(14, 'Châu Mỹ', 'Châu Mỹ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `actived` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `dia_chi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `random_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `activation_key`, `actived`, `created_date`, `dia_chi`, `email`, `fullname`, `password`, `phone`, `username`, `random_key`) VALUES
(1, NULL, 1, NULL, NULL, NULL, NULL, '$2a$10$IFIzYaHyLLURlokKgiYJlOejexfXCE4awRciA.ByP4RyUrg1Mr7Be', NULL, 'admin', NULL),
(8, NULL, 1, '2023-04-26 21:14:15', 'Cầu giấy, Hà Nội', 'hantinh311002102000@gmail.com', 'Trần Văn Hùng', '$2a$10$CflBGfYc3eXFIzSVt965DOmnISXAoWyiwoDn2uJP/3tFJekuNJSPW', '0832784233', 'hantinh311002102000@gmail.com', '8XKNNZhbdJRw0'),
(9, NULL, 1, '2023-04-26 21:16:10', 'Hoàng mai, Hà Nội', 'hieutran02102804@gmail.com', 'Hoàng Minh Hiếu', '$2a$10$OG9IqYTq3Q6yZS6U0mr8n.4/Tsn36arXJFHMV9OALXLZk0LhfmcbS', '0932648234', 'hieutran02102804@gmail.com', 'QKSrHSmZva3sE'),
(10, NULL, 1, '2023-06-15 19:14:25', 'Tp. Hcm', 'dev002102@gmail.com', 'Trần tùng nam', '$2a$10$aw6zwdVi4oQAAvDw6T3y7ePD6yVRZN3IqJ7Q6mMycPX/R5GQd.Z/6', '096485415', 'dev002102@gmail.com', '4HRPc4si9c1rd'),
(11, NULL, 1, '2023-07-13 10:37:05', NULL, 'quantri', NULL, '$2a$10$AHlfGd8DDSSq0ZXjM2H1NOx/mwUvSlhp7NpllWFdj10FvF2WFY5jm', NULL, 'quantri', NULL),
(13, NULL, 1, '2023-11-14 22:05:47', NULL, 'emp@gmail.com', NULL, '$2a$10$qgcvlUkwPYXfXBXqJZn7WuyqmGUhmTsRZ39wn9o/N09EXpnD6EbDO', NULL, 'emp@gmail.com', NULL),
(14, NULL, 1, '2023-11-14 22:19:36', 'hà nội', 'nv@gmail.com', 'nhân  viên 1', '$2a$10$UyDJC9RYRrSM8dY0kIHJtuQR20rQZmwwTkemsNYafRBCAfx4f7bXK', NULL, 'nv@gmail.com', NULL),
(15, NULL, 1, '2023-11-16 00:54:34', 'hà nội', 'nn@gmail.com', 'nhân viên 1', '$2a$10$7SYGHK1zy7FGPSqpy5ZsYO5gdksTgFqP0sEJcRAbx0jIH7Wx0Fqay', NULL, 'nn@gmail.com', NULL),
(16, NULL, 1, '2023-11-16 01:07:24', 'tu son', 'thienbeo@gmail.com', 'nv2', '$2a$10$rUC1rHUbW1isOr7baHoomOCrcDCQDMIYVJzi13llZEglex/eRynfy', NULL, 'thienbeo@gmail.com', NULL),
(17, NULL, 1, '2023-11-16 04:32:39', 'Vôi', 'cuduyninh2001@gmail.com', 'Duy Ninh', '$2a$10$9DK8h3GBYHEYbRFmS.SKRO006xP1vWI4PYNekyr2gK5WvHPkeEW8O', '032512025', 'cuduyninh2001@gmail.com', 'FZiELw5EWwBGl'),
(19, NULL, 1, '2024-04-04 14:09:59', 'Hà nội', 'hieutran2102000@gmail.com', 'Trần Văn Hiếu', '$2a$10$7hXUKNseaYIZ2wURdeMUXusppBuM44ZW2pRchIViZybrMqH9.7zpe', '0923748233', 'hieutran2102000@gmail.com', 'LQXH8ExriR9VR');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_authority`
--

CREATE TABLE `user_authority` (
  `user_id` bigint NOT NULL,
  `authority_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_authority`
--

INSERT INTO `user_authority` (`user_id`, `authority_name`) VALUES
(1, 'ROLE_ADMIN'),
(11, 'ROLE_ADMIN'),
(13, 'ROLE_EMPLOYEE'),
(14, 'ROLE_EMPLOYEE'),
(15, 'ROLE_EMPLOYEE'),
(16, 'ROLE_EMPLOYEE'),
(8, 'ROLE_USER'),
(9, 'ROLE_USER'),
(10, 'ROLE_USER'),
(17, 'ROLE_USER'),
(19, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_search`
--

CREATE TABLE `user_search` (
  `id` bigint NOT NULL,
  `anonymus_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `search` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `random_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ngay_search` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_search`
--

INSERT INTO `user_search` (`id`, `anonymus_code`, `search`, `user_id`, `random_key`, `ngay_search`) VALUES
(6, NULL, 'tượng', NULL, '8XKNNZhbdJRw0', '2023-04-27'),
(8, NULL, 'đèn ngủ', NULL, '8XKNNZhbdJRw0', '2023-04-27'),
(9, NULL, 'tượng', NULL, '8XKNNZhbdJRw0', '2023-04-27'),
(10, NULL, 'trứng', NULL, '8XKNNZhbdJRw0', '2023-04-27'),
(11, NULL, 'đền ngủ', NULL, 'QKSrHSmZva3sE', '2023-04-27'),
(12, NULL, 'đèn gốm', NULL, 'QKSrHSmZva3sE', '2023-04-27'),
(13, NULL, 'đèn', NULL, 'QKSrHSmZva3sE', '2023-04-27'),
(14, NULL, 'đèn ngủ', NULL, 'BpfY8pkNmWAfV', '2023-07-12'),
(15, NULL, 'mực', NULL, 'K68LKZoafJrK7', '2023-07-13'),
(16, NULL, 'mực', NULL, 'rlbkjU7Ha7opR', '2023-07-13'),
(17, NULL, 'gà', NULL, 'rlbkjU7Ha7opR', '2023-07-13'),
(18, NULL, 'gà', NULL, 'rlbkjU7Ha7opR', '2023-07-13'),
(19, NULL, 'f', NULL, 'OJO3RTHV78Tke', '2023-11-16'),
(20, NULL, 'rau củ', NULL, 'OJO3RTHV78Tke', '2023-11-16'),
(21, NULL, 'bia', NULL, 'FZiELw5EWwBGl', '2023-11-16'),
(22, NULL, 'soju', NULL, 'FZiELw5EWwBGl', '2023-11-16'),
(23, NULL, 'trứng cá tầm', NULL, 'FZiELw5EWwBGl', '2023-11-16'),
(24, NULL, 'iphone', NULL, 'oVQykIvLhgqJY', '2023-11-25'),
(25, NULL, 'iphone ', NULL, 'vQi4qQY0IOiya', '2023-11-25'),
(26, NULL, 'gà', NULL, 'QKSrHSmZva3sE', '2024-04-04');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `authority`
--
ALTER TABLE `authority`
  ADD PRIMARY KEY (`name`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKm1rmnfcvq5mk26li4lit88pc5` (`product_id`),
  ADD KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detail_invoice`
--
ALTER TABLE `detail_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKmt3tg7l0sp2hj0hyrglrmlbxr` (`invoice_id`),
  ADD KEY `FKkbo9acylcqjtmct3xwdhhvwws` (`product_id`);

--
-- Chỉ mục cho bảng `history_pay`
--
ALTER TABLE `history_pay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3uqapx8urdm829chr0p30d0y2` (`invoice_id`);

--
-- Chỉ mục cho bảng `image_product`
--
ALTER TABLE `image_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKml4177k7ufupebm7e4wgmvpnj` (`product_id`);

--
-- Chỉ mục cho bảng `import_order`
--
ALTER TABLE `import_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKrk6camethxctbi1n3nwng37wg` (`product`);

--
-- Chỉ mục cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK565gfwe9qo89ii7rfhmox8jtb` (`status_in_id`),
  ADD KEY `FKjunvl5maki3unqdvljk31kns3` (`user_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
  ADD KEY `FKkvo9x5wjqpf8i48bksqoqujue` (`trademark_id`);

--
-- Chỉ mục cho bảng `product_view`
--
ALTER TABLE `product_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKikotonb2is7lx3p2b2f40bkqv` (`product_id`),
  ADD KEY `FK6ucxs616bqif3n7orevcsj0fd` (`user_id`);

--
-- Chỉ mục cho bảng `status_in`
--
ALTER TABLE `status_in`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `trade_mark`
--
ALTER TABLE `trade_mark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_authority`
--
ALTER TABLE `user_authority`
  ADD PRIMARY KEY (`user_id`,`authority_name`),
  ADD KEY `FK6ktglpl5mjosa283rvken2py5` (`authority_name`);

--
-- Chỉ mục cho bảng `user_search`
--
ALTER TABLE `user_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4mqd8u72pdurfird828bmmp7v` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `detail_invoice`
--
ALTER TABLE `detail_invoice`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `history_pay`
--
ALTER TABLE `history_pay`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `image_product`
--
ALTER TABLE `image_product`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `import_order`
--
ALTER TABLE `import_order`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `product_view`
--
ALTER TABLE `product_view`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `status_in`
--
ALTER TABLE `status_in`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `trade_mark`
--
ALTER TABLE `trade_mark`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `user_search`
--
ALTER TABLE `user_search`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK8kcum44fvpupyw6f5baccx25c` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKm1rmnfcvq5mk26li4lit88pc5` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `detail_invoice`
--
ALTER TABLE `detail_invoice`
  ADD CONSTRAINT `FKkbo9acylcqjtmct3xwdhhvwws` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKmt3tg7l0sp2hj0hyrglrmlbxr` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`);

--
-- Các ràng buộc cho bảng `history_pay`
--
ALTER TABLE `history_pay`
  ADD CONSTRAINT `FK3uqapx8urdm829chr0p30d0y2` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`);

--
-- Các ràng buộc cho bảng `image_product`
--
ALTER TABLE `image_product`
  ADD CONSTRAINT `FKml4177k7ufupebm7e4wgmvpnj` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `import_order`
--
ALTER TABLE `import_order`
  ADD CONSTRAINT `FKrk6camethxctbi1n3nwng37wg` FOREIGN KEY (`product`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `FK565gfwe9qo89ii7rfhmox8jtb` FOREIGN KEY (`status_in_id`) REFERENCES `status_in` (`id`),
  ADD CONSTRAINT `FKjunvl5maki3unqdvljk31kns3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FKkvo9x5wjqpf8i48bksqoqujue` FOREIGN KEY (`trademark_id`) REFERENCES `trade_mark` (`id`);

--
-- Các ràng buộc cho bảng `product_view`
--
ALTER TABLE `product_view`
  ADD CONSTRAINT `FK6ucxs616bqif3n7orevcsj0fd` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKikotonb2is7lx3p2b2f40bkqv` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `user_authority`
--
ALTER TABLE `user_authority`
  ADD CONSTRAINT `FK6ktglpl5mjosa283rvken2py5` FOREIGN KEY (`authority_name`) REFERENCES `authority` (`name`),
  ADD CONSTRAINT `FKpqlsjpkybgos9w2svcri7j8xy` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `user_search`
--
ALTER TABLE `user_search`
  ADD CONSTRAINT `FK4mqd8u72pdurfird828bmmp7v` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
