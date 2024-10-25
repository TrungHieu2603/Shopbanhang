-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 25, 2024 lúc 10:49 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id_feedback` int(11) NOT NULL,
  `tennguoidung` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dienthoai` varchar(15) NOT NULL,
  `diachi` varchar(150) NOT NULL,
  `chude` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `time_lh` datetime DEFAULT NULL,
  `status_lh` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id_feedback`, `tennguoidung`, `email`, `dienthoai`, `diachi`, `chude`, `noidung`, `time_lh`, `status_lh`) VALUES
(22, 'Trung Hiếu', 'ttthieu2603@gmail.com', '0948467145', 'Hà Nội', 'Đổi trả hàng', 'abcd', '2022-07-22 11:02:39', 0),
(23, 'Trung Hiếu', 'ttthieu2603@gmail.com', '0123456789', 'Hà Nội', 'Lỗi hàng', 'abcd', '2023-10-01 17:12:43', 0),
(24, 'văn A', 'hieuadmin@gmail.com', '0388978888', 'hieuadmin', 'Lỗi hàng', 'sdfsdf', '2023-10-02 04:42:21', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(9, 'Giới thiệu về H-Shop', '\r\n', '<div class=\"article-con-item second-style\" style=\"margin: 0px 0px 60px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\"><div class=\"article-con-item border-bottom\" style=\"margin: 0px 0px 60px; padding: 0px;\"><div class=\"item-t title-main\" style=\"margin: 0px 0px 20px; padding: 0px; font-size: 20px; line-height: 1.5; font-weight: 700; color: rgb(34, 34, 34); position: relative;\">Về chúng tôi<br></div><div class=\"item-p\" style=\"margin: 0px; padding: 0px;\"><p class=\"MsoNormal\">H-shop là một cửa hàng tạp hoá mang đến cho khách hàng một\r\ntrải nghiệm mua sắm tiện lợi và đa dạng. Với một sự kết hợp hoàn hảo giữa các sản\r\nphẩm tiêu dùng hàng ngày và những mặt hàng độc đáo, H-shop đã trở thành điểm đến\r\nlý tưởng cho việc mua sắm của cả gia đình.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Cửa hàng cung cấp một loạt các sản phẩm từ thực phẩm, đồ uống,\r\nđến hàng tiêu dùng, đồ dùng cá nhân và quà lưu niệm. Khách hàng có thể tìm thấy\r\nmọi thứ từ thực phẩm tươi sống đến đồ gia dụng, tất cả đều được chọn lựa kỹ lưỡng\r\nđể đảm bảo chất lượng tốt nhất.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">H-shop cũng tự hào về dịch vụ khách hàng tận tâm và thân thiện.\r\nNhân viên của cửa hàng luôn sẵn lòng hỗ trợ và tư vấn khách hàng về các sản phẩm,\r\ncũng như giải đáp mọi thắc mắc một cách nhiệt tình.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Ngoài ra, H-shop cũng thường xuyên tổ chức các chương trình\r\nkhuyến mãi và giảm giá, giúp khách hàng tiết kiệm chi phí trong quá trình mua sắm.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Với một môi trường mua sắm thân thiện và đa dạng sản phẩm,\r\nH-shop là điểm đến lý tưởng cho những ai đang tìm kiếm sự tiện lợi và chất lượng\r\ntrong mua sắm hàng ngày.<o:p></o:p></p></div></div></div>', 20, 1, '1639060166_logos.png'),
(10, 'Chính sách hoàn trả', 'Tôi phải trả lại trong bao lâu? Tôi có cần phải trả phí vận chuyển không?\r\nLàm cách nào để tôi trả lại?\r\nTôi vẫn có thể trả lại các mặt hàng nếu chúng bị mòn, bị hỏng hoặc đã không mác?\r\nThông báo quan trọng:\r\nTôi sẽ nhận được tiền hoàn lại như thế nào？', '<div class=\"item-p\" style=\"margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\">Chúng tôi hy vọng bạn thích những gì bạn đặt ! Tuy nhiên, trong trường hợp bạn không hài lòng 100%, chúng tôi đã thực hiện quy trình đổi trả rất đơn giản.</div><div class=\"paragraph\" style=\"margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\"></div><div class=\"item-p\" style=\"margin: 10px 0px 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\"><span class=\"colour\" style=\"font-weight: bolder; color: rgb(0, 0, 0);\"><span class=\"size\" style=\"font-size: 16px;\">Tôi phải trả lại trong bao lâu? Tôi có cần phải trả phí vận chuyển không?</span></span></div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\">1. chúng tôi sẵn sàng chấp nhận trả lại trong vòng 15 ngày kể từ ngày nhận được cho hầu hết các mặt hàng trong tình trạng mới.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\">2.Nếu bạn chọn dịch vụ lấy hàng qua Ninja Van, khoản phí 80000đ sẽ được trừ vào số tiền hoàn lại của bạn cho mỗi lần trả hàng. (Xem phần \"Làm cách nào để hoàn trả?\" Để biết chi tiết)</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\">3.Nếu bạn chọn Tự gửi để trả lại bưu kiện của mình, bạn phải chịu phí vận chuyển trả lại.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\"><span class=\"colour\" style=\"font-weight: bolder; color: rgb(0, 0, 0);\"><span class=\"size\" style=\"font-size: 16px;\">Làm cách nào để tôi trả lại?</span></span></div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\">（1）Nếu bạn chọn Ninja Van để trả lại bưu kiện của mình:</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\"><img src=\"https://img.ltwebstatic.com/images3_acp/2021/01/25/1611558846fabefe08689a3c39d83f662701afc20d.png\" style=\"width: 100%;\"></div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Muli, Arial, Helvetica, sans-serif; font-size: 14px;\"><div class=\"item-p\" style=\"margin: 0px; padding: 0px;\">1. Đăng nhập vào tài khoản SHEIN của bạn.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">2. Tìm đơn hàng trong&nbsp;<a href=\"https://www.shein.com.vn/user/orders/list\" target=\"_blank\" class=\"link-text\" style=\"color: rgb(9, 60, 100); cursor: pointer;\"><span class=\"colour\" style=\"color: rgb(0, 0, 0);\"><span class=\"colour\" style=\"font-weight: bolder;\">Đơn đặt hàng của tôi&nbsp;</span></span></a>, nhấp vào nút “Trả lại hàng”.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">3. Chọn (các) mặt hàng bạn muốn trả lại, nêu lý do và gửi.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">4. Xin vui lòng chuẩn bị các mặt hàng trả lại và đóng gói chúng cẩn thận. Viết số vận chuyển trả lại trên bưu kiện trả lại, sau đó đợi dịch vụ chuyển phát đến lấy bưu kiện.</div><div class=\"item-p\" style=\"margin: 20px 0px 0px; padding: 0px;\">（2）Nếu bạn chọn Tự gửi để trả lại bưu kiện của mình:</div><div class=\"item-p\" style=\"margin: 20px 0px 0px; padding: 0px;\"><img src=\"https://img.ltwebstatic.com/images3_acp/2021/01/25/161155886233b2807d6c32d9bc6e039fa65554a2ea.png\" style=\"width: 100%;\"></div><div class=\"item-p\" style=\"margin: 20px 0px 0px; padding: 0px;\"><div class=\"article-con-item-second\" style=\"margin: 0px 0px 40px; padding: 0px;\"><div class=\"item-p\" style=\"margin: 0px; padding: 0px;\">1.Đăng nhập vào tài khoản SHEIN của bạn.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">2.Tìm đơn đặt hàng trong&nbsp;<a href=\"https://www.shein.com.vn/user/orders/list\" target=\"_blank\" class=\"link-text\" style=\"color: rgb(9, 60, 100); cursor: pointer;\"><span class=\"colour\" style=\"color: rgb(0, 0, 0);\"><span class=\"colour\" style=\"font-weight: bolder;\">Đơn đặt hàng của tôi&nbsp;</span></span></a>, nhấp vào nút \"Trả hàng\".</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">3. Chọn (các) mặt hàng bạn muốn trả lại, nêu rõ lý do, sau đó gửi.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">4. chọn phương thức trả lại và phương thức hoàn lại tiền, sau đó vui lòng đóng gói (các) mặt hàng sẽ được trả lại với bao bì ban đầu.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">5. xin vui lòng chọn công ty hậu cần của riêng bạn với chi phí của bạn và gửi gói hàng.</div><div class=\"paragraph\" style=\"margin: 0px; padding: 0px;\"></div><div class=\"item-p\" style=\"margin: 20px 0px 0px; padding: 0px;\"><span class=\"colour\" style=\"font-weight: bolder; color: rgb(0, 0, 0);\"><span class=\"size\" style=\"font-size: 16px;\">Tôi vẫn có thể trả lại các mặt hàng nếu chúng bị mòn, bị hỏng hoặc đã không mác?</span></span></div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">1. Các mặt hàng phải được trả lại khi chưa đeo, chưa giặt, không bị hư hại và với tất cả các mác ban đầu được đính kèm.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">2. Các mặt hàng sau đây không được trả lại hoặc đổi: áo liền quần, nội y, đồ bơi, đồ trang sức, đồ lót, đồ dùng cho sự kiện &amp; tiệc tùng, đồ DIY, đồ dùng cho thú cưng, đồ làm đẹp và phụ kiện (ngoại trừ khăn quàng cổ, túi xách và chăn nàng tiên cá).</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">3. Các mặt hàng có nhãn hiệu không đổi trả và quà tặng miễn phí không được trả lại.</div><div class=\"paragraph\" style=\"margin: 0px; padding: 0px;\"></div></div><div class=\"article-con-item-second\" style=\"margin: 0px 0px 40px; padding: 0px;\"><div class=\"item-p\" style=\"margin: 0px; padding: 0px;\"><span class=\"colour\" style=\"font-weight: bolder; color: rgb(0, 0, 0);\"><span class=\"size\" style=\"font-size: 16px;\">Thông báo quan trọng:</span></span></div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">1. Vui lòng không gửi trả lại của bạn đến địa chỉ trên gói hàng của bạn. Đây không phải là địa chỉ trả hàng và sẽ ảnh hưởng đến quá trình trả hàng của bạn.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">2. Hãy chắc chắn để kiểm tra lại hàng trả lại của bạn trước khi vận chuyển chúng đi. Chúng tôi sẽ không chịu trách nhiệm về việc trả lại các sản phẩm không phải của SHEIN.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">3. Nếu bạn nhận được một mặt hàng bị hư hỏng / lỗi, vui lòng liên hệ với Bộ phận Dịch vụ Khách hàng của SHEIN trong vòng 24 giờ kể từ khi nhận được.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\"><span class=\"colour\" style=\"font-weight: bolder; color: rgb(0, 0, 0);\"><span class=\"size\" style=\"font-size: 16px;\">Tôi sẽ nhận được tiền hoàn lại như thế nào？</span></span></div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\">Yêu cầu của bạn sẽ được xử lý trong vòng 5 ngày làm việc sau khi chúng tôi nhận được yêu cầu của bạn. Khoản tiền hoàn lại sẽ được chuyển vào Ví SHEIN của bạn hoặc tài khoản thanh toán ban đầu theo yêu cầu của bạn.</div><div class=\"item-p\" style=\"margin: 15px 0px 0px; padding: 0px;\"><span class=\"colour\" style=\"font-weight: bolder; color: rgb(0, 0, 0);\"><span class=\"size\" style=\"font-size: 16px;\">Lưu ý: Phí vận chuyển ban đầu và đảm bảo vận chuyển không được hoàn lại.</span></span></div></div></div></div>', 21, 1, '1639060499_logo.png'),
(11, 'Giảm giá ngay hôm nay', '', '<p><br></p><p><br></p>', 20, 1, '1714756886_slide1.png'),
(14, 'Giới thiệu về H-Shop', '', '', 20, 1, '1714756852_slide2.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `updata_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `updata_time`) VALUES
(39, 86, '469', 0, '2021-12-25 19:32:36'),
(40, 86, '4227', 0, '2021-12-25 19:40:49'),
(41, 89, '347', 0, '2021-12-25 20:16:34'),
(42, 89, '1506', 0, '2021-12-25 20:44:28'),
(43, 89, '1679', 0, '2021-12-25 21:48:21'),
(44, 87, '4379', 0, '2021-12-26 10:22:19'),
(64, 92, '6796', 1, '2021-12-26 20:26:27'),
(65, 92, '949', 1, '2021-12-26 20:32:14'),
(66, 86, '3946', 1, '2021-12-26 20:34:34'),
(67, 92, '8310', 1, '2021-12-26 20:35:56'),
(68, 90, '8741', 0, '2021-12-26 20:41:03'),
(69, 86, '2462', 0, '2021-12-26 20:41:54'),
(70, 92, '2515', 1, '2021-12-26 20:43:36'),
(71, 86, '4290', 1, '2021-12-26 20:44:33'),
(72, 86, '1552', 1, '2021-12-26 20:46:13'),
(73, 92, '6301', 1, '2021-12-26 20:47:42'),
(74, 92, '886', 1, '2021-12-26 20:48:11'),
(75, 86, '7999', 1, '2021-12-26 20:48:32'),
(76, 86, '9207', 1, '2021-12-26 20:49:51'),
(77, 86, '6898', 1, '2021-12-26 20:51:32'),
(78, 92, '9239', 1, '2021-12-26 20:52:19'),
(79, 92, '8618', 1, '2021-12-26 20:52:47'),
(80, 86, '5709', 1, '2021-12-26 20:52:59'),
(81, 86, '5116', 2, '2021-12-26 20:53:47'),
(82, 86, '4669', 1, '2021-12-26 20:54:39'),
(83, 86, '1091', 1, '2021-12-26 20:54:47'),
(84, 91, '9529', 1, '2021-12-26 20:55:14'),
(85, 91, '289', 1, '2021-12-26 20:56:18'),
(86, 91, '6952', 1, '2021-12-26 20:56:20'),
(87, 91, '2453', 1, '2021-12-26 20:56:21'),
(88, 92, '5193', 1, '2021-12-26 20:57:05'),
(89, 92, '2425', 1, '2021-12-26 20:57:10'),
(90, 92, '5330', 0, '2021-12-26 20:57:14'),
(91, 91, '7434', 0, '2021-12-26 21:05:12'),
(92, 92, '5483', 0, '2021-12-26 21:05:43'),
(93, 92, '2276', 0, '2021-12-26 21:06:18'),
(94, 90, '8987', 0, '2021-12-26 21:06:48'),
(95, 91, '336', 1, '2021-12-26 21:50:00'),
(96, 91, '7828', 1, '2021-12-27 08:52:51'),
(97, 91, '6030', 1, '2021-12-27 08:56:38'),
(98, 91, '4188', 1, '2021-12-27 10:51:13'),
(99, 90, '8080', 0, '2022-01-05 19:48:11'),
(100, 90, '187', 0, '2022-02-19 10:15:25'),
(101, 90, '3152', 0, '2022-08-21 09:17:00'),
(102, 86, '6639', 0, '2022-09-13 16:33:42'),
(103, 86, '1906', 0, '2022-09-28 14:00:14'),
(104, 86, '2211', 2, '2022-10-12 08:10:44'),
(105, 86, '7619', 2, '2022-10-12 08:12:38'),
(107, 86, '2966', 2, '2023-09-14 01:10:35'),
(108, 86, '5638', 2, '2023-10-02 08:40:21'),
(112, 86, '9375', 1, '2023-12-14 02:59:56'),
(113, 88, '427', 2, '2023-12-14 03:18:32'),
(114, 88, '5127', 2, '2023-12-14 04:21:33'),
(115, 88, '7522', 2, '2023-12-14 05:24:38'),
(116, 88, '7443', 2, '2023-12-14 08:47:56'),
(117, 88, '3505', 2, '2023-12-14 10:11:53'),
(118, 88, '2663', 2, '2023-12-14 10:19:49'),
(119, 88, '9661', 2, '2023-12-14 10:20:05'),
(120, 88, '1610', 2, '2023-12-14 10:20:18'),
(121, 98, '4820', 1, '2024-05-04 00:26:26'),
(122, 104, '5313', 1, '2024-06-29 10:15:38'),
(123, 104, '2904', 1, '2024-06-29 14:57:03'),
(124, 104, '2569', 0, '2024-06-29 15:07:52'),
(125, 104, '7706', 0, '2024-06-29 16:01:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL,
  `size_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`, `size_id`) VALUES
(292, '469', 20, 1, '5'),
(293, '4227', 104, 1, '2'),
(294, '347', 97, 1, '4'),
(295, '1506', 66, 2, '1'),
(296, '1679', 104, 1, '1'),
(337, '7999', 69, 1, '3'),
(357, '336', 94, 3, '3'),
(358, '7828', 69, 1, '4'),
(359, '6030', 103, 1, '6'),
(360, '4188', 111, 1, '2'),
(361, '8080', 111, 1, '3'),
(362, '187', 95, 1, '2'),
(363, '3152', 111, 1, '6'),
(364, '6639', 111, 1, '6'),
(365, '1906', 110, 1, '2'),
(366, '1906', 109, 1, '2'),
(367, '1906', 108, 1, '2'),
(368, '2211', 110, 1, '2'),
(369, '2211', 109, 1, '2'),
(370, '2211', 108, 1, '2'),
(371, '7619', 111, 2, '6'),
(373, '2966', 110, 1, '1'),
(374, '5638', 110, 1, '3'),
(381, '9375', 106, 1, '5'),
(382, '427', 111, 1, '5'),
(383, '5127', 111, 1, '5'),
(384, '7522', 111, 1, '1'),
(385, '7443', 111, 1, '6'),
(386, '3505', 111, 1, '1'),
(387, '3505', 110, 1, '1'),
(388, '2663', 111, 1, '3'),
(389, '4820', 111, 1, '1'),
(390, '5313', 109, 2, '1'),
(391, '2904', 109, 3, '1'),
(392, '2569', 111, 1, '1'),
(393, '7706', 110, 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`, `role_id`) VALUES
(88, 'Tạ Trần Trung Hiếu', 'ttthieu2603@gmail.com', 'Hà Nội', '123456', '0948467145', 1),
(98, 'Lê Huy Đồng', 'huydong@gmail.com', 'Hà Nội', 'e10adc3949ba59abbe56e057f20f883e', '0123456789', 1),
(100, 'Doãn Minh Tú', 'tudoan@gmail.com', 'Hà Nội', 'e10adc3949ba59abbe56e057f20f883e', '0987654321', 4),
(103, 'Lê Quang Sơn', 'quangson@gmail.com', 'Hà Nội', 'e10adc3949ba59abbe56e057f20f883e', '0976345345', 4),
(104, 'Tạ Trần Trung Hiếu', 'hieu1@gmail.com', 'Hà Nội', 'e10adc3949ba59abbe56e057f20f883e', '0948467145', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(40, 'Tạp Hoá', 2),
(41, 'Thời Trang', 3),
(42, 'Điện Tử', 4),
(43, 'Làm Đẹp', 5),
(44, 'Mẹ&Bé', 6),
(45, 'Nhà Cửa', 7),
(46, 'Gia Dụng', 8),
(50, 'Điện Thoại', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_baiviet`, `tendanhmuc_baiviet`, `thutu`) VALUES
(20, 'Thông tin của H-Shop', 4),
(26, 'Chính sách', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `id_giohang` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`id_giohang`, `id_khachhang`, `code_cart`, `cart_status`) VALUES
(19, 1, '754', 0),
(20, 1, '9283', 0),
(23, 1, '662', 0),
(26, 1, '2480', 0),
(29, 1, '3933', 0),
(30, 1, '6072', 1),
(31, 1, '1895', 1),
(32, 1, '3575', 1),
(33, 1, '7409', 1),
(34, 1, '7530', 1),
(35, 1, '8543', 1),
(36, 1, '978', 1),
(37, 1, '295', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hoanhang`
--

CREATE TABLE `tbl_hoanhang` (
  `id` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(255) DEFAULT NULL,
  `noidung` text DEFAULT NULL,
  `ngay_gui` timestamp NOT NULL DEFAULT current_timestamp(),
  `status_lh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_hoanhang`
--

INSERT INTO `tbl_hoanhang` (`id`, `id_khachhang`, `code_cart`, `noidung`, `ngay_gui`, `status_lh`) VALUES
(24, 88, '1679', 'không nhận hàng', '2023-10-02 03:46:19', 2),
(25, 98, '3152', 'không liên lạc được\r\n', '2023-10-02 06:50:37', 2),
(26, 100, '2966', 'sdfdsfds', '2023-10-02 06:51:22', 2),
(27, 88, '5638', 'không đúng hàng', '2023-10-02 07:04:58', 2),
(28, 88, '5638', 'sai sản phẩm', '2023-10-02 07:17:15', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `name`, `id_role`) VALUES
(1, 'Quản Lý', 2),
(2, 'Nhân viên', 3),
(5, 'Khách hàng', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `gianhap` int(20) NOT NULL,
  `giasp` int(50) NOT NULL,
  `giamgia` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `size` varchar(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `gianhap`, `giasp`, `giamgia`, `soluong`, `size`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(66, 'Bộ tay dây sen siêu tăng áp phù hợp với tất cả các loại củ', '004', 200000, 400000, 100, 200, 'XL ', '1714755769_sp24.jpg', '', '<p style=\"background-color: rgb(245, 245, 245);\"><br></p>', 0, 46),
(69, ' Máy tính fx-580VN X Casio dành cho học sinh sinh viên Dùng cho các kì', '060', 2000000, 4000000, 10000, 30, 'XL ', '1714755734_sp23.png', '', '<p><br></p>', 0, 46),
(87, 'Nước hoa Luxury Seduisant 250ml cho chó mèo', '051', 1000000, 3500000, 3000, 300, '250ml', '1702497197_12.jpg', '', '<p><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: medium; background-color: rgb(255, 255, 255);\">Nước hoa Luxury Seduisant là dòng nước hoa thương hiệu cao cấp chuyên dụng dành cho thú cưng chắc chắn sẽ làm hài lòng người nuôi và các boss nhỏ.</span><br></p>', 0, 46),
(88, 'Chiếu mây điều hòa loại dày ĐỦ SIZE siêu thoáng mát', '050', 500000, 1500000, 1000, 150, '200ml', '1714755617_sp22.jpg', '', '<p><br></p>', 0, 45),
(89, '10m DECAL Giấy dán tường HOẠT HÌNH sẵn keo - khổ 45cm', '040', 500000, 15000000, 100000, 100, '5kg', '1714755561_sp21.jpg', '', '<p style=\"background-color: rgb(245, 245, 245);\"><br></p>', 0, 45),
(90, ' Bộ 2 bóng đèn Led trụ 40W Siêu sáng - tiết kiệm điện', '029', 2000000, 3500000, 50000, 100, 'XL ', '1714755426_so20.jpg', '', '<p><br></p>', 0, 45),
(91, 'SALE BỘ CỘC THUN LẠNH MINKY MOM SỌC NGANG SIÊU XINH SIZE 8-30KG', '039', 300000, 460000, 390000, 20, 'L', '1714755364_sp19.jpg', '', '<p style=\"background-color: rgb(245, 245, 245);\"><br></p>', 0, 44),
(92, ' Bộ 10 gói khăn ướt 100 tờ BABYMOMMY thơm dịu nhẹ tự nhiên.', '030', 200000, 400000, 1, 50, '0', '1714755337_sp18.jpg', '', '<p style=\"background-color: rgb(245, 245, 245);\"><span style=\"font-weight: 700; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 1.14286em;\">Cam kết bán hàng</span><br></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: outside none; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 15px;\"><li style=\"list-style: inside;\">Đổi/Trả hàng miễn phí trong 7 - 15 ngày</li><li style=\"list-style: inside;\">Giao hàng trên toàn quốc</li><li style=\"list-style: inside;\">Thanh toán khi nhận hàng</li></ul>', 0, 45),
(93, 'Máy bay điều khiển từ xa cảm ứng bằng tay A001 dành cho bé giúp', '025', 300000, 4990000, 450000, 10, 'XL', '1714755085_sp17.png', '', '<p style=\"background-color: rgb(245, 245, 245);\"><br></p>', 0, 44),
(94, 'Kem Tẩy Lông Huyền Phi TẶNG serum triệt lông Vĩnh Viễn Triệt Lông chân lông', '021', 200000, 3500000, 299000, 10, 'XL ', '1714755055_sp16.png', '', '<p><br></p>', 0, 43),
(95, 'Sữa tắm Lifebuoy 1100g Bảo vệ vượt trội 10 giúp bảo vệ khỏi 99.9% vi', '020', 100000, 299000, 18000, 20, 'Mini', '1714755014_sp16.jpg', '', '<p><br></p>', 0, 43),
(96, 'IPhone 13 Pro Max - Hàng Chính Hãng VN/A', '017', 1000000, 2000000, 199000, 20, 'Mini', '1714754983_sp15.jpg', '', '<p><br></p>', 0, 42),
(97, 'Camera IP Wifi NetCAM NR02 Full HD 2MP / 3MP có chức năng Đàm Thoại', '016', 1000000, 2900000, 180000, 30, 'To', '1714754950_sp14.png', '', '<p><br></p>', 0, 42),
(99, 'LEGILIMENS Thắt Lưng Khóa Chốt Vải Bố Rộng 3.5CM Thắt Lưng Thời Trang Trẻ Trung', '015', 5000000, 8000000, 790000, 10, 'Mini', '1714754917_sp13.png', '', '<p><br></p>', 0, 41),
(100, 'Ví da bò nam cao bồi thời trang cao cấp chính hiệu BAILLINI LEATHER', '001', 2000000, 4000000, 350000, 30, 'Mini', '1714754887_sp12.jpg', '', '', 0, 41),
(101, 'Quần short kaki nam', '013', 15000000, 28000000, 2600000, 10, 'Mini', '1714754859_sp11.jpg', '', '', 0, 41),
(102, ' Chà Bông Gà Thơm Ngon Chất Lượng Hiệu SK FOOD - Hũ 250G', '012', 15000000, 40000000, 3000000, 50, 'Mini', '1714754821_sp10.jpg', '', '', 0, 40),
(103, ' Chà Bông Gà Thơm Ngon Chất Lượng Hiệu SK FOOD - Hũ 250G', '010', 15000000, 40000000, 3000000, 30, 'Mini', '1714754774_sp9.jpg', '', '<p><img src=\"data:image/jpeg;base64,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\" style=\"width: 225px;\"><br></p>', 0, 40),
(104, 'Ngũ cốc Granola trái cây', '009', 8000000, 15000000, 260000, 30, 'Mini', '1714754747_sp8.jpg', '', '', 0, 41),
(105, 'Túi ngô mỹ dùng nổ bắp rang bơ 1kg hương vị thơm ngon đảm bảo', '008', 30000000, 40000000, 1500000, 15, 'To', '1714754732_sp7.jpg', '', '', 0, 46),
(106, 'Chân vịt cay Dechang trung quốc combo 10 chiếc', '006', 10000000, 25000000, 1000000, 30, 'Mini', '1714754712_sp6.jpg', '', '', 0, 46),
(107, 'Ngũ Cốc Dinh Dưỡng Nhã Thy 500g Bột Ngũ Cốc', '001', 100000, 250000, 200000, 30, 'Mini', '1714754692_sp5.jpg', '', '', 0, 40),
(108, ' Táo đỏ tân cương túi 500g', '004', 5000000, 7000000, 200000, 15, 'Mini', '1714754667_sp4.jpg', '', '', 0, 40),
(109, 'Yến mạch Mỹ Quaker Oats Quick 1 Minute 452kg', '003', 2000000, 4000000, 3590000, 30, 'Mini', '1714754644_sp3.jpg', '', '', 0, 40),
(110, ' Thùng 24 lon bia Tiger 330ml', '002', 1000000, 2500000, 2000000, 30, 'To', '1714754622_sp2.png', '', '', 0, 40),
(111, 'Mật Ong Rừng Tây Nguyên 1 Lít', '001', 1500000, 4000000, 3500000, 15, 'To', '1714754494_sp1.jpg', '', '', 0, 40);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_size`
--

CREATE TABLE `tbl_size` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `size_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_size`
--

INSERT INTO `tbl_size` (`id`, `name`, `size_id`) VALUES
(1, 'To', 1),
(2, 'Nhỏ', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slide`
--

CREATE TABLE `tbl_slide` (
  `id_slide` int(11) NOT NULL,
  `danhmuc` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slide`
--

INSERT INTO `tbl_slide` (`id_slide`, `danhmuc`, `hinhanh`, `thutu`) VALUES
(1, 'slide 1', '1714757150_1.jpg', 1),
(2, 'slide 2', '1714757119_slide2.png', 2),
(3, 'slide 3 ', '1714757111_slide1.png', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `gianhap` varchar(110) NOT NULL,
  `soluongban` int(11) NOT NULL,
  `loinhuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `gianhap`, `soluongban`, `loinhuan`) VALUES
(42, '2021-12-14', 3, '1500000', '30000', 1, '1000000'),
(43, '2021-12-15', 7, '25568000', '13900000', 20, '11668000'),
(44, '2021-12-13', 3, '1800000', '300000', 1, '1000000'),
(45, '2021-12-16', 10, '10310000', '6000000', 12, '4310000'),
(46, '2021-12-25', 5, '5420000', '2950000', 6, '2470000'),
(47, '2021-12-26', 7, '12668000', '8250000', 15, '4418000'),
(48, '2022-10-12', 2, '7600000', '3300000', 5, '4300000'),
(49, '2023-09-13', 8, '11480000', '5000000', 8, '6480000'),
(51, '2023-10-08', 1, '200000', '100000', 1, '100000'),
(52, '2023-10-11', 1, '597000', '300000', 3, '297000'),
(53, '2023-10-15', 2, '400000', '200000', 2, '200000'),
(55, '2023-12-14', 13, '49000000', '21000000', 14, '28000000'),
(56, '2024-05-03', 1, '', '', 0, '0'),
(57, '2024-06-29', 2, '5500000', '2500000', 2, '3000000');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id_feedback`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`id_giohang`);

--
-- Chỉ mục cho bảng `tbl_hoanhang`
--
ALTER TABLE `tbl_hoanhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_slide`
--
ALTER TABLE `tbl_slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Chỉ mục cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id_feedback` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `id_giohang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tbl_hoanhang`
--
ALTER TABLE `tbl_hoanhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_slide`
--
ALTER TABLE `tbl_slide`
  MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
