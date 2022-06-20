-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2022 at 02:52 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_green`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) DEFAULT NULL,
  `color` varchar(7) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `metakey` varchar(155) NOT NULL,
  `metadesc` varchar(155) NOT NULL,
  `img` text NOT NULL,
  `banner` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `link`, `level`, `parentid`, `orders`, `color`, `created_at`, `created_by`, `updated_at`, `updated_by`, `trash`, `access`, `status`, `metakey`, `metadesc`, `img`, `banner`) VALUES
(1, 'Laptop văn phòng', 'laptop-van-phong', 1, 0, '0', '', '2022-06-06 08:46:49', '4', '2022-06-06 09:32:27', '4', 1, 1, 1, '', '', 'laptop.png', 'b243fa723163e24de2b0dfe4af3d88063.jpg'),
(2, 'HP', 'hp', 2, 1, '1', '', '2022-06-06 08:46:59', '4', '2022-06-06 10:31:50', '4', 1, 1, 1, '', '', 'laptop.png', 'b243fa723163e24de2b0dfe4af3d88065.jpg'),
(3, 'ASUS', 'asus', 2, 1, '2', '', '2022-06-06 08:47:12', '4', '2022-06-06 08:47:12', '4', 1, 1, 1, '', '', 'laptop.png', 'b243fa723163e24de2b0dfe4af3d88065.jpg'),
(4, 'ACER', 'acer', 2, 1, '3', '', '2022-06-06 08:47:23', '4', '2022-06-06 08:47:23', '4', 1, 1, 1, '', '', 'laptop.png', 'b243fa723163e24de2b0dfe4af3d88065.jpg'),
(5, 'DELL', 'dell', 3, 4, '4', '', '2022-06-06 08:47:35', '4', '2022-06-06 10:30:46', '4', 1, 1, 1, '', '', 'laptop.png', 'b243fa723163e24de2b0dfe4af3d88064.jpg'),
(6, 'LATOP GAMING', 'latop-gaming', 1, 0, '0', '', '2022-06-06 08:47:53', '4', '2022-06-06 09:31:56', '4', 1, 1, 1, '', '', 'laptop.png', 'b243fa723163e24de2b0dfe4af3d88065.jpg'),
(7, 'Laptop gaming Dell', 'laptop-gaming-dell', 2, 6, '0', '', '2022-06-06 09:31:05', '4', '2022-06-06 09:31:05', '4', 1, 1, 1, '', '', 'laptop.png', 'b243fa723163e24de2b0dfe4af3d88062.jpg'),
(8, 'Nec', 'nec', 2, 1, '0', '', '2022-06-06 16:00:06', '4', '2022-06-06 16:00:06', '4', 1, 1, 0, '', '', 'laptop1.png', 'b243fa723163e24de2b0dfe4af3d880651.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(64) NOT NULL,
  `mail_port` smallint(6) NOT NULL,
  `mail_info` varchar(64) NOT NULL,
  `mail_noreply` varchar(64) NOT NULL,
  `mail_password` varchar(64) NOT NULL,
  `priceShip` mediumtext NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `keyword` text NOT NULL,
  `logo` varchar(255) NOT NULL,
  `phone_for_sale` varchar(20) NOT NULL,
  `phone_for_insurance` varchar(25) NOT NULL,
  `phone_for_take_care` varchar(25) NOT NULL,
  `timework` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_port`, `mail_info`, `mail_noreply`, `mail_password`, `priceShip`, `title`, `description`, `keyword`, `logo`, `phone_for_sale`, `phone_for_insurance`, `phone_for_take_care`, `timework`) VALUES
(1, '1312124242442142', 29, 'hodienloi', 'hodienloi@', '', '30000', 'Web site bán hàng Demo', '', '', 'z3399201654607_5ea2ff7d035c518f575598d255bfc9e3.png', '9999999999', '0999999999', '999999999', '8-20h');

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `view` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `view`, `status`, `trash`, `fullname`) VALUES
(1, '', '01234567891', 'lenhsangcntt1508@gmail.com', 'aaa', '0000-00-00 00:00:00', 1, 1, 1, 'lenhsang');

-- --------------------------------------------------------

--
-- Table structure for table `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'Super Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL DEFAULT 'Super Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `metakey` varchar(155) NOT NULL,
  `metadesc` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_content`
--

INSERT INTO `db_content` (`id`, `id_type`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`, `metakey`, `metadesc`) VALUES
(1, 1, 'Pin sạc dự phòng – Hành trang không thể thiếu cho mỗi chuyến đi', 'pin-sac-du-phong-?-hanh-trang-khong-the-thieu-cho-moi-chuyen-di', '', '<p><strong>Vậy pin sạc dự ph&ograve;ng l&agrave; g&igrave;, v&agrave; tại sao ch&uacute;ng ta n&ecirc;n sử dụng pin dự ph&ograve;ng?</strong></p>\r\n\r\n<p>Pin dự ph&ograve;ng l&agrave; một phụ kiện được sản xuất để phục vụ đối tượng kh&aacute;ch h&agrave;ng d&ugrave;ng&nbsp;điện thoại,&nbsp;m&aacute;y t&iacute;nh bảng, c&ocirc;ng dụng của n&oacute; l&agrave; lưu trữ điện năng để sạc cho điện thoại, m&aacute;y t&iacute;nh bảng ở bất cứ nơi đ&acirc;u m&agrave; kh&ocirc;ng cần ổ cắm điện. Pin sạc dự ph&ograve;ng c&oacute; nhiều k&iacute;ch thước v&agrave; dung lượng kh&aacute;c nhau nhưng điểm chung l&agrave; đều được thiết kế kh&aacute; gọn v&agrave; dễ d&agrave;ng mang theo b&ecirc;n m&igrave;nh.</p>\r\n\r\n<p><img alt=\"Pin dự phòng Arun dung lượng 6000mAh\" src=\"https://cdn.tgdd.vn/Files/2014/07/11/553846/Pinduphong-2.jpg\" /></p>\r\n\r\n<p><em>Pin dự ph&ograve;ng&nbsp;Arun dung lượng 6000mAh</em></p>\r\n\r\n<p>Đối với những người sử dụng Smartphone hay m&aacute;y t&iacute;nh bảng, vấn đề thời lượng pin lu&ocirc;n l&agrave;m họ trăn trở, v&igrave; một chiếc Smartphone c&oacute; m&agrave;n h&igrave;nh lớn, đồng nghĩa với việc sẽ ngốn điện năng nhiều hơn, v&agrave; gần như kh&ocirc;ng một chiếc Smartphone n&agrave;o c&oacute; thể trụ được 2 ng&agrave;y với cường độ sử dụng li&ecirc;n tục. V&igrave; vậy đ&acirc;y ch&iacute;nh l&agrave; l&yacute; do m&agrave; ch&uacute;ng ta n&ecirc;n c&oacute; b&ecirc;n m&igrave;nh một vi&ecirc;n Pin sạc dự ph&ograve;ng, để cứu c&aacute;nh những l&uacute;c hết pin m&agrave; bạn kh&ocirc;ng ở gần bất kỳ một ổ cắm điện n&agrave;o.</p>\r\n\r\n<p><img alt=\"Chúng ta nên có một viên pin sạc dự phòng bên mình\" src=\"https://cdn.tgdd.vn/Files/2014/07/11/553846/Pinduphong-3.jpg\" /></p>\r\n\r\n<p><em>Ch&uacute;ng ta n&ecirc;n c&oacute; một vi&ecirc;n pin sạc dự ph&ograve;ng b&ecirc;n m&igrave;nh</em></p>\r\n\r\n<p>Để trang tr&iacute; cho những vi&ecirc;n pin sạc dự ph&ograve;ng, c&aacute;c h&atilde;ng sản xuất cũng đưa ra rất nhiều mẫu m&atilde; bắt mắt, kh&ocirc;ng chỉ gi&uacute;p sạc đầy pin cho c&aacute;c thiết bị di động m&agrave; c&ograve;n trang tr&iacute; cho kh&ocirc;ng gian b&agrave;n l&agrave;m việc hay một vị tr&iacute; n&agrave;o đ&oacute; khi đặt pin sạc dự ph&ograve;ng l&ecirc;n.</p>\r\n\r\n<p><img alt=\"Hiện nay pin sạc dự phòng có mẫu mã khá bắt mắt\" src=\"https://cdn.tgdd.vn/Files/2014/07/11/553846/Pinduphong-4.jpg\" /></p>\r\n\r\n<p><em>Hiện nay pin sạc dự ph&ograve;ng c&oacute; mẫu m&atilde; kh&aacute; bắt mắt</em></p>\r\n\r\n<p>Pin sạc dự ph&ograve;ng&nbsp;c&oacute; rất nhiều kiểu d&aacute;ng v&agrave; dung lượng kh&aacute;c nhau, nhưng ch&uacute;ng đều rất nhỏ gọn, một v&agrave;i vi&ecirc;n pin sạc dự ph&ograve;ng c&oacute; thể dễ d&agrave;ng nằm trong t&uacute;i c&ugrave;ng với điện thoại của bạn. Với c&ocirc;ng nghệ mới hiện nay th&igrave; trong qu&aacute; tr&igrave;nh sạc, nhiệt độ của pin cũng kh&ocirc;ng qu&aacute; lớn n&ecirc;n sẽ gi&uacute;p bạn thoải m&aacute;i hơn khi sử dụng.</p>\r\n\r\n<p><img alt=\"Một số pin sạc dự phòng có kích thước rất nhỏ\" src=\"https://cdn.tgdd.vn/Files/2014/07/11/553846/Pinduphong-5.jpg\" /></p>\r\n\r\n<p><em>Một số pin sạc dự ph&ograve;ng c&oacute; k&iacute;ch thước rất nhỏ</em></p>\r\n\r\n<p>Kh&aacute; dễ d&agrave;ng để bạn c&oacute; thể sắm cho m&igrave;nh một vi&ecirc;n pin sạc dự ph&ograve;ng, nhưng hơn hết, ch&uacute;ng ta cần biết 6 lưu &yacute; khi sử dụng pin sạc dự ph&ograve;ng&nbsp;dưới đ&acirc;y:</p>\r\n\r\n<p>1. Pin sạc dự ph&ograve;ng c&oacute; dung lượng kh&aacute; lớn, thường l&agrave; tr&ecirc;n 3000mAh, ch&iacute;nh v&igrave; vậy thời gian sạc đầy pin sẽ rất l&acirc;u, khoảng từ 4 &ndash; 8h t&ugrave;y theo mức dung lượng. Tuy nhi&ecirc;n đối với sản phẩm mới mua, 3 lần sạc đầu bạn n&ecirc;n sạc đủ 8 tiếng để c&aacute;c l&otilde;i pin b&ecirc;n trong pin sạc dự ph&ograve;ng được lấp đầy dung lượng.</p>\r\n\r\n<p>2. Bạn c&oacute; thể sạc pin dự ph&ograve;ng trực tiếp qua Adapter, hoặc qua Laptop đều được, tuy nhi&ecirc;n khi sạc qua&nbsp;laptop&nbsp;nguồn điện yếu n&ecirc;n thời gian sạc c&oacute; thể rất l&acirc;u.</p>\r\n\r\n<p>3. Dung lượng pin dự ph&ograve;ng thường c&oacute; hiệu suất thực tế khoảng 65%, do bị ti&ecirc;u hao khi truyền qua d&acirc;y c&aacute;p (Điện trở), hoặc khi chờ. V&iacute; dụ: 1 vi&ecirc;n pin dung lượng 10.000mAh, khi sạc đầy th&igrave; khả năng hoạt động của n&oacute; ở mức dung lượng 6300 &ndash; 6800mAh, c&oacute; thể sạc cho chiếc điện thoại&nbsp;LG G2&nbsp;được 2.4 lần.</p>\r\n\r\n<p>4. Bạn c&oacute; thể sạc điện thoại, m&aacute;y t&iacute;nh bảng với pin dự ph&ograve;ng bất cứ l&uacute;c n&agrave;o.</p>\r\n\r\n<p>5. C&aacute;ch thức sạc rất đơn giản, bạn chỉ cần cắm trực tiếp c&aacute;p sạc v&agrave;o cổng sạc của thiết bị di động đ&oacute;.</p>\r\n\r\n<p>6. Pin sạc dự ph&ograve;ng thường c&oacute; l&otilde;i pin Li-Ion hoặc Li-Po, ch&iacute;nh v&igrave; vậy c&oacute; thể hoạt động sạc nối tiếp theo dạng: Nguồn điện &ndash; Pin sạc dự ph&ograve;ng &ndash; Điện thoại, C&aacute;ch sạc n&agrave;y vừa gi&uacute;p điện thoại được nạp đầy pin, vừa gi&uacute;p sạc cho pin dự ph&ograve;ng m&agrave; kh&ocirc;ng l&agrave;m chai pin. &nbsp;</p>\r\n\r\n<p>6 lưu &yacute; n&ecirc;u tr&ecirc;n c&oacute; thể gi&uacute;p bạn sử dụng Pin sạc dự ph&ograve;ng một c&aacute;ch tốt nhất, k&eacute;o d&agrave;i tuổi thọ cho pin sạc dự ph&ograve;ng v&agrave; an to&agrave;n cho c&aacute;c thiết bị di động xung quanh bạn.</p>\r\n', 'upload_bf35acfa91f14445aa01b2aed96be4cd.jpg', '2022-05-31 20:33:22', '4', '2022-06-06 08:37:27', '4', 1, 1, 1, '', ''),
(2, 1, '9 lưu ý khi sử dụng pin cho laptop để tránh bị chai pin', '9-luu-y-khi-su-dung-pin-cho-laptop-de-tranh-bi-chai-pin', '', '<h3><strong>1. Sạc pin cho laptop mới mua</strong></h3>\r\n\r\n<p>Th&ocirc;ng thường các nhà bán hàng đ&ecirc;̀u khuy&ecirc;n người dùng n&ecirc;n sạc xả 3 l&acirc;̀n đ&acirc;̀u ti&ecirc;n. Nghĩa là sử dụng pin cho đ&ecirc;́n mức dưới 5%, sau đó đ&ecirc;̉ sạc 10 ti&ecirc;́ng đ&ocirc;̀ng h&ocirc;̀, thực hi&ecirc;̣n như v&acirc;̣y trong 3 l&acirc;̀n sạc đ&acirc;̀u.</p>\r\n\r\n<p><img alt=\"laptop\" src=\"https://cdn.tgdd.vn/Files/2017/04/15/972284/saclaptop3_800x450.jpg\" /></p>\r\n\r\n<p>Lưu ý: Kh&ocirc;ng n&ecirc;n đ&ecirc;̉ máy cạn pin hoàn toàn. như th&ecirc;́ sẽ v&ocirc; cùng nguy hi&ecirc;̉m cho pin của laptop. Ngoài ra m&ocirc;̣t lưu ý khá quan trọng, bạn kh&ocirc;ng n&ecirc;n vừa cắm sạc vừa sài trong những l&acirc;̀n sạc máy đ&acirc;̀u ti&ecirc;n.</p>\r\n\r\n<h3><strong>2. Cắm sạc b&acirc;́t kỳ khi nào</strong></h3>\r\n\r\n<p><img alt=\"charge\" src=\"https://cdn.tgdd.vn/Files/2017/04/15/972284/power_laptop2_1000x563-800-resize.jpg\" /></p>\r\n\r\n<p>Trừ 3 l&acirc;̀n sạc đ&acirc;̀u ti&ecirc;n, sau này bạn đ&ecirc;̀u có th&ecirc;̉ cắm sạc b&acirc;́t kỳ khi nào mà bạn cảm th&acirc;́y thích hợp. Đi&ecirc;̀u này sẽ kh&ocirc;ng làm ảnh hưởng tới tu&ocirc;̉i thọ pin tr&ecirc;n máy tính, và bạn cũng có th&ecirc;̉ sử dụng thu&acirc;̣n ti&ecirc;̣n.</p>\r\n\r\n<h3><strong>3. Cắm sạc sao cho đúng cách</strong></h3>\r\n\r\n<p><img alt=\"laptop\" src=\"https://cdn.tgdd.vn/Files/2017/04/15/972284/_32_849x477-800-resize.jpg\" /></p>\r\n\r\n<p>Theo bạn n&ecirc;n n&ocirc;́i đ&acirc;̀u d&acirc;y sạc vào máy tính trước khi cắm đ&acirc;̀u kia vào ngu&ocirc;̀n đi&ecirc;̣n đ&ecirc;̉ sạc pin hay phải thực hi&ecirc;̣n ngược lại? Theo nhi&ecirc;̀u lời khuy&ecirc;n từ các chuy&ecirc;n gia, người dùng n&ecirc;n k&ecirc;́t n&ocirc;́i đ&acirc;̀u ngu&ocirc;̀n vào &ocirc;̉ cắm đi&ecirc;̣n trước, sau đó cắm đ&acirc;̀u sạc vào máy tính.</p>\r\n\r\n<h3><strong>4.Kh&ocirc;ng sử dụng các loại sạc kh&ocirc;ng phù hợp</strong></h3>\r\n\r\n<p><img alt=\"laptop\" src=\"https://cdn.tgdd.vn/Files/2017/04/15/972284/maxresdefault1-1-_1920x1080-800-resize.jpg\" /></p>\r\n\r\n<p>M&ocirc;̃i sạc đ&ecirc;̀u được thi&ecirc;́t k&ecirc;́ ri&ecirc;ng đ&ecirc;̉ sử dụng chuy&ecirc;n bi&ecirc;̣t cho m&ocirc;̣t máy tính. N&ecirc;́u bạn sử dụng sai sạc có th&ecirc;̉ g&acirc;y ảnh hưởng đ&ecirc;́n vi&ecirc;n pin tr&ecirc;n máy, đ&ocirc;i khi có th&ecirc;̉ xảy ra cháy n&ocirc;̉. Vì v&acirc;̣y bạn n&ecirc;n cẩn th&acirc;̣n sử dụng và bảo quản d&acirc;y sạc của mình m&ocirc;̣t cách t&ocirc;́t nh&acirc;́t.</p>\r\n\r\n<h3><strong>5. Đi&ecirc;̀u chỉnh pin</strong></h3>\r\n\r\n<p>Bạn n&ecirc;n đi&ecirc;̀u chỉnh pin 2 tháng m&ocirc;̣t l&acirc;̀n. Đ&ecirc;̉ pin máy tính của bạn còn khoảng tr&ecirc;n dưới 3%. Sau đó khởi đ&ocirc;̣ng lại máy và truy c&acirc;̣p vào ch&ecirc;́ đ&ocirc;̣ Bios bằng cách:</p>\r\n\r\n<ul>\r\n	<li>Hp-Compaq: F10</li>\r\n	<li>Lenovo: F1</li>\r\n	<li>Sony Vaio: F2</li>\r\n	<li>Acer: F2</li>\r\n	<li>Asus: F2</li>\r\n	<li>Dell: F2</li>\r\n	<li>IBM: F1 hoặc F2</li>\r\n	<li>Toshiba: ESC + (F1 hoặc F2)</li>\r\n</ul>\r\n\r\n<p><img alt=\"laptop\" src=\"https://cdn.tgdd.vn/Files/2017/04/15/972284/ofdg5g_854x478-800-resize.jpg\" /></p>\r\n\r\n<p>Và bạn chỉ vi&ecirc;̣c đợi máy trong ch&ecirc;́ đ&ocirc;̣ Bios tắt tự đ&ocirc;̣ng hẳn. V&acirc;̣y là pin laptop đã được xả hoàn toàn. Sau đó sạc đ&acirc;̀y lại như cách 1.</p>\r\n\r\n<h3><strong>6. V&ecirc;̣ sinh máy thường xuy&ecirc;n</strong></h3>\r\n\r\n<p><img alt=\"laptop\" src=\"https://cdn.tgdd.vn/Files/2017/04/15/972284/ve%CC%A3sinh_800x450.jpg\" /></p>\r\n\r\n<p>Bụi b&acirc;̉n có th&ecirc;̉ làm ảnh hưởng vùng ti&ecirc;́p xúc giữa pin và laptop. Vì v&acirc;̣y bạn n&ecirc;n thường xuy&ecirc;n v&ecirc;̣ sinh thi&ecirc;́t bị bằng những c&acirc;y cọ m&ecirc;̀m hay t&acirc;́m khăn m&ecirc;̀m. Ngoài ra với các b&ocirc;̣ ph&acirc;̣n b&ecirc;n trong, bạn có th&ecirc;̉ đem đ&ecirc;́n b&acirc;́t kỳ B&ecirc;̣nh vi&ecirc;̣n máy tính nào đ&ecirc;̉ được v&ecirc;̣ sinh.</p>\r\n\r\n<h3><strong>7. Giữ pin lu&ocirc;n ở trạng thái mát</strong></h3>\r\n\r\n<p><img alt=\"laptop\" src=\"https://cdn.tgdd.vn/Files/2017/04/15/972284/detannhiet_800x433.jpg\" /></p>\r\n\r\n<p>Cách này dường như sẽ ;là cách khó thực hi&ecirc;̣n nh&acirc;́t, bởi n&ecirc;́u b&ocirc;̣ ph&acirc;̣n tản nhi&ecirc;̣t tr&ecirc;n laptop kh&ocirc;ng t&ocirc;́t thì nguy cơ pin tr&ecirc;n máy tính d&ecirc;̃ hỏng hơn. Bạn n&ecirc;n hạn ch&ecirc;́ mang máy tính l&ecirc;n n&ecirc;̣m, giường,... vì những ch&acirc;́t li&ecirc;̣u này có th&ecirc;̉ sẽ cản chở quá trình hoạt đ&ocirc;̣ng tản nhi&ecirc;̣t.&nbsp;</p>\r\n\r\n<h3><strong>8. Kh&ocirc;ng n&ecirc;n đ&ecirc;̉ laptop s&acirc;̣p ngu&ocirc;̀n do cạn pin</strong></h3>\r\n\r\n<p><img alt=\"laptop\" src=\"https://cdn.tgdd.vn/Files/2017/04/15/972284/laptop-battery-main_800x450.jpg\" /></p>\r\n\r\n<p>Bạn kh&ocirc;ng n&ecirc;n li&ecirc;n tục đ&ecirc;̉ pin laptop cạn, vì nó có th&ecirc;̉ g&acirc;y nguy hi&ecirc;̉m v&ocirc; cùng lớn cho pin của laptop. N&ecirc;́u li&ecirc;n tục kéo dài tình trạng này có th&ecirc;̉ khi&ecirc;́n hỏng pin.</p>\r\n\r\n<h3><strong>9. M&ocirc;̣t s&ocirc;́ lưu ý v&ecirc;̀ Pin khác</strong></h3>\r\n\r\n<p>Pin là m&ocirc;̣t linh ki&ecirc;̣n d&ecirc;̃ cháy n&ocirc;̉, vì v&acirc;̣y bạn n&ecirc;n hạn ch&ecirc;́ vừa dùng vừa sạc, hay vi&ecirc;̣c đặt laptop ở những vùng khó thoát hơi như giường, n&ecirc;̣m.</p>\r\n\r\n<p>Hi vọng với những chia sẻ th&acirc;̣t lòng tr&ecirc;n đ&acirc;y đã giúp các bạn có m&ocirc;̣t cách nhìn khác v&ecirc;̀ cách sử dụng pin tr&ecirc;n laptop.</p>\r\n', 'upload_08c1055636184fd2adab198ab95f3041.jpg', '2022-06-06 08:38:13', '4', '2022-06-06 08:38:13', '4', 1, 1, 1, '', ''),
(3, 2, 'Apple sắp ra mắt iOS mới', 'apple-sap-ra-mat-ios-moi', '', '<p>Theo c&ocirc;ng bố của Apple, hội nghị d&agrave;nh cho nh&agrave; ph&aacute;t triển (WWDC 2022) sẽ khai mạc v&agrave;o 10h s&aacute;ng 6/6 (giờ Mỹ), tức 0h 7/6 (giờ Việt Nam). Hội nghị năm nay tiếp tục cho ph&eacute;p tham gia miễn ph&iacute;. Trong khi to&agrave;n bộ sự kiện diễn ra online, Apple sẽ mời một số sinh vi&ecirc;n, nh&agrave; ph&aacute;t triển đến trụ sở tại Cupertino để theo d&otilde;i b&agrave;i ph&aacute;t biểu khai mạc.</p>\r\n\r\n<p>Theo&nbsp;<em>MacRumors</em>, trọng t&acirc;m của WWDC năm nay l&agrave; iOS 16, tvOS 16, macOS 13 v&agrave; watchOS 9. Tuy nhi&ecirc;n, tin đồn cho biết Apple c&oacute; thể giới thiệu một số thiết bị phần cứng mới. Đ&acirc;y l&agrave; những chi tiết đ&aacute;ng chờ đợi tại sự kiện lập tr&igrave;nh vi&ecirc;n sắp diễn ra của T&aacute;o khuyết.</p>\r\n\r\n<h3>iOS 16</h3>\r\n\r\n<p>Hầu hết tin đồn về iOS 16 đến l&uacute;c n&agrave;y c&ograve;n kh&aacute; mơ hồ. Những năm trước, danh s&aacute;ch t&iacute;nh năng mới của iOS xuất hiện từ kh&aacute; sớm, nhưng điều đ&oacute; kh&ocirc;ng xảy ra trong năm nay.</p>\r\n\r\n<p>Mark Gurman, một trong những chuy&ecirc;n gia tin đồn (leaker) nổi tiếng về sản phẩm Apple, ph&oacute;ng vi&ecirc;n của&nbsp;<em>Bloomberg</em>&nbsp;đ&atilde; chia sẻ một số t&iacute;nh năng c&oacute; thể xuất hiện tr&ecirc;n iOS 16. Đầu ti&ecirc;n, m&agrave;n h&igrave;nh kh&oacute;a của iOS sẽ được cải tiến với h&igrave;nh nền t&iacute;ch hợp c&ocirc;ng dụng của widget.</p>\r\n\r\n<p>Tiếp theo, thanh th&ocirc;ng b&aacute;o tr&ecirc;n iOS 16 sẽ c&oacute; nhiều cải tiến. Ứng dụng nhắn tin (Messages) được bổ sung khả năng tương t&aacute;c &quot;giống mạng x&atilde; hội&quot;, tập trung v&agrave;o t&iacute;nh năng gửi tin nhắn &acirc;m thanh. Trong khi đ&oacute;, app sức khỏe (Health) sẽ hỗ trợ theo d&otilde;i giấc ngủ n&acirc;ng cao, quản l&yacute; việc sử dụng thuốc v&agrave; một số t&iacute;nh năng d&agrave;nh cho sức khỏe phụ nữ.</p>\r\n\r\n<p>Một số ứng dụng mặc định tr&ecirc;n iOS 16 cũng được n&acirc;ng cấp, b&ecirc;n cạnh những &quot;c&aacute;ch tương t&aacute;c hệ thống mới&quot; d&ugrave; chưa r&otilde; chi tiết. Dịch vụ thể thao Fitness+ cũng sẽ cập nhật một số b&agrave;i tập, trong khi ứng dụng nghe nhạc cổ điển (Apple Classical) sẽ xuất hiện sau nhiều đồn đo&aacute;n.</p>\r\n\r\n<p>Dựa tr&ecirc;n c&aacute;c tin đồn về iPhone 14, iOS 16 c&oacute; thể hỗ trợ chế độ m&agrave;n h&igrave;nh lu&ocirc;n bật (always-on), gi&uacute;p người d&ugrave;ng cập nhật nhanh ng&agrave;y giờ, th&ocirc;ng b&aacute;o m&agrave; kh&ocirc;ng cần bật m&agrave;n h&igrave;nh. Trước đ&oacute;, nh&agrave; ph&acirc;n t&iacute;ch Ross Young cho biết iPhone 14 Pro v&agrave; 14 Pro Max c&oacute; thể giảm tần số qu&eacute;t m&agrave;n h&igrave;nh xuống 1 Hz khi hiện ảnh tĩnh gi&uacute;p tiết kiệm pin.</p>\r\n\r\n<p>Th&aacute;ng 11/2021,&nbsp;<em>WSJ</em>&nbsp;đưa tin iPhone 14 Pro c&oacute; thể hỗ trợ gửi th&ocirc;ng b&aacute;o khẩn cấp nếu người d&ugrave;ng gặp tai nạn xe, b&ecirc;n cạnh t&iacute;nh năng li&ecirc;n lạc qua vệ tinh trong trường hợp cấp b&aacute;ch. Nếu những tin đồn ch&iacute;nh x&aacute;c, c&aacute;c t&iacute;nh năng tr&ecirc;n cũng sẽ xuất hiện tr&ecirc;n iOS 16 d&ugrave; ch&uacute;ng chỉ tương th&iacute;ch với d&ograve;ng iPhone 14 hoặc iPhone 14 Pro.</p>\r\n\r\n<h3>iPadOS 16</h3>\r\n\r\n<p>Ngo&agrave;i những n&acirc;ng cấp của iOS 16, iPadOS 16 nhiều khả năng được cải tiến một số t&iacute;nh năng d&agrave;nh ri&ecirc;ng cho iPad, tập trung v&agrave;o khả năng đa nhiệm gi&uacute;p thiết bị hoạt động giống m&aacute;y t&iacute;nh.</p>\r\n\r\n<p>Theo Gurman, iPadOS 16 sẽ c&oacute; giao diện quản l&yacute; đa nhiệm mới, gi&uacute;p chuyển đổi nhanh ch&oacute;ng giữa c&aacute;c ứng dụng v&agrave; xem app n&agrave;o đang hoạt động. Ngo&agrave;i ra, người d&ugrave;ng c&ograve;n c&oacute; thể thay đổi k&iacute;ch thước cửa sổ, th&ecirc;m những c&aacute;ch mới để quản l&yacute; nhiều app c&ugrave;ng l&uacute;c.</p>\r\n\r\n<p>Khả năng chạy nhiều app c&ugrave;ng l&uacute;c sẽ được n&acirc;ng cấp mạnh tr&ecirc;n iPadOS 16. Ảnh: Tom&#39;s Guide.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Tin don ve WWDC 2022 anh 2\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/yqdlcqrwq/2022_06_04/02704062022.jpg\" style=\"height:1836px; width:3272px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Tin don ve WWDC 2022 anh 2\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/yqdlcqrwq/2022_06_04/02704062022.jpg\" style=\"height:1836px; width:3272px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Khả năng chạy nhiều app c&ugrave;ng l&uacute;c sẽ được n&acirc;ng cấp mạnh tr&ecirc;n iPadOS 16. Ảnh:&nbsp;<em>Tom&#39;s Guide</em>.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Tr&ecirc;n iPadOS 15, Apple đ&atilde; bổ sung v&agrave;i t&iacute;nh năng gi&uacute;p k&iacute;ch hoạt chế độ đa nhiệm dễ d&agrave;ng hơn. Tuy nhi&ecirc;n, khả năng chạy nhiều app dưới dạng cửa sổ mới l&agrave; cải tiến được nhiều người mong đợi nhất tr&ecirc;n iPad.</p>\r\n\r\n<h3>macOS 13</h3>\r\n\r\n<p>Tin đồn về macOS 13 cũng chưa xuất hiện nhiều. Theo Gurman, hệ điều h&agrave;nh sắp ra mắt cho m&aacute;y t&iacute;nh Mac sẽ cập nhật giao diện cho một số ứng dụng mặc định, kể cả phần c&agrave;i đặt hệ thống (System Preferences) với giao diện giống app c&agrave;i đặt của iOS, bao gồm trang thiết lập ri&ecirc;ng cho từng ứng dụng.</p>\r\n\r\n<p>Một số ứng dụng c&oacute; thể được cập nhật như Messages, Mail v&agrave; Safari, ri&ecirc;ng app Messages sẽ hỗ trợ t&iacute;nh năng tập trung v&agrave;o mạng x&atilde; hội giống iOS 16.</p>\r\n\r\n<p>Về t&ecirc;n gọi, macOS 13 c&oacute; thể mang t&ecirc;n macOS Mammoth dựa tr&ecirc;n hồ sơ đăng k&yacute; nh&atilde;n hiệu của Apple. Tuy nhi&ecirc;n, mọi thứ chỉ dừng lại ở tin đồn do T&aacute;o khuyết từng chọn t&ecirc;n kh&ocirc;ng c&oacute; trong danh s&aacute;ch đăng k&yacute;.</p>\r\n\r\n<h3>watchOS 9 v&agrave; tvOS 16</h3>\r\n\r\n<p>Hệ điều h&agrave;nh mới cho Apple Watch sẽ c&oacute; một số n&acirc;ng cấp phục vụ c&aacute;c hoạt động thể thao, di chuyển h&agrave;ng ng&agrave;y của người d&ugrave;ng. Đầu ti&ecirc;n l&agrave; chế độ tiết kiệm pin mới, cho ph&eacute;p sử dụng một số app v&agrave; t&iacute;nh năng nhất định nhưng kh&ocirc;ng ảnh hưởng nhiều đến thời lượng pin.</p>\r\n\r\n<p>T&iacute;nh năng ph&aacute;t hiện rung t&acirc;m nhĩ cũng được cải tiến với khả năng đo đạc &quot;g&aacute;nh nặng&quot; (burden), li&ecirc;n quan đến tần suất rung nhĩ của một người trong khoảng thời gian. Những hoạt động thể thao, mặt đồng hồ mới cũng sẽ c&oacute; mặt tr&ecirc;n watchOS 9.</p>\r\n\r\n<p>Những n&acirc;ng cấp tr&ecirc;n watchOS 9 sẽ tập trung v&agrave;o theo d&otilde;i sức khỏe v&agrave; hoạt động thể thao. Ảnh: Tom&#39;s Guide.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Tin don ve WWDC 2022 anh 3\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/yqdlcqrwq/2022_06_04/02604062022.jpeg\" style=\"height:1690px; width:3005px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Tin don ve WWDC 2022 anh 3\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/yqdlcqrwq/2022_06_04/02604062022.jpeg\" style=\"height:1690px; width:3005px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Những n&acirc;ng cấp tr&ecirc;n watchOS 9 sẽ tập trung v&agrave;o theo d&otilde;i sức khỏe v&agrave; hoạt động thể thao. Ảnh:&nbsp;<em>Tom&#39;s Guide</em>.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>D&ugrave; được cập nhật mỗi năm, tvOS thường kh&ocirc;ng c&oacute; nhiều t&iacute;nh năng mới như iOS hay watchOS. Với tvOS 16 d&agrave;nh cho Apple TV, Gurman dự đo&aacute;n T&aacute;o khuyết c&oacute; thể cải tiến khả năng điều khiển thiết bị nh&agrave; th&ocirc;ng minh.</p>\r\n\r\n<h3>MacBook Air 2022</h3>\r\n\r\n<p>L&agrave; sự kiện tập trung v&agrave;o phần mềm nhưng phần cứng vẫn c&oacute; thể xuất hiện tại WWDC. D&ugrave; kh&ocirc;ng c&oacute; thiết bị mới tại WWDC 2021 v&agrave; 2020, Apple từng giới thiệu m&aacute;y t&iacute;nh Mac Pro v&agrave; m&agrave;n h&igrave;nh Pro Display XDR tại sự kiện năm 2019.</p>\r\n\r\n<p>Chưa r&otilde; phần cứng c&oacute; xuất hiện tại WWDC năm nay hay kh&ocirc;ng. Tuy nhi&ecirc;n nếu Apple giới thiệu thiết bị mới, Gurman dự đo&aacute;n khả năng cao đ&oacute; l&agrave; MacBook Air 2022. Kế hoạch vẫn chưa chắc chắn bởi những vấn đề li&ecirc;n quan đến chuỗi cung ứng tại Trung Quốc chưa được khắc phục ho&agrave;n to&agrave;n.</p>\r\n\r\n<p>Sau nhiều năm duy tr&igrave; thiết kế quen thuộc, nhiều tin đồn cho biết MacBook Air 2022 sẽ c&oacute; những thay đổi về ngoại h&igrave;nh với cạnh phẳng, bo cong 4 g&oacute;c tương tự iPad Pro v&agrave; iPad Air. Thiết bị c&oacute; thể mang đến nhiều t&ugrave;y chọn m&agrave;u sắc như x&aacute;m, bạc, xanh dương v&agrave; xanh l&aacute;.</p>\r\n\r\n<p>Những thay đổi kh&aacute;c trong thiết kế của MacBook Air 2022 gồm b&agrave;n ph&iacute;m, viền m&agrave;n h&igrave;nh m&agrave;u trắng thay v&igrave; đen, ph&iacute;a tr&ecirc;n m&agrave;n h&igrave;nh 13,6 inch l&agrave; dải khuyết cho webcam Full HD. B&agrave;n ph&iacute;m tr&ecirc;n m&aacute;y sẽ trang bị cảm biến v&acirc;n tay Touch ID trong v&ograve;ng tr&ograve;n.</p>\r\n\r\n<p>Ảnh dựng của MacBook Air 2022 dựa tr&ecirc;n tin đồn. Ảnh: MacRumors.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Tin don ve WWDC 2022 anh 4\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/yqdlcqrwq/2022_06_04/02704062022.jpeg\" style=\"height:1077px; width:1920px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Tin don ve WWDC 2022 anh 4\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/yqdlcqrwq/2022_06_04/02704062022.jpeg\" style=\"height:1077px; width:1920px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ảnh dựng của MacBook Air 2022 dựa tr&ecirc;n tin đồn. Ảnh:&nbsp;<em>MacRumors</em>.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>MacBook Air 2022 c&oacute; thể l&agrave; m&aacute;y t&iacute;nh đầu ti&ecirc;n của Apple trang bị M2, chip xử l&yacute; kiến tr&uacute;c ARM được n&acirc;ng cấp từ M1. C&oacute; t&ecirc;n nội bộ l&agrave; Staten, M2 sẽ dựa tr&ecirc;n chip xử l&yacute; A15 Bionic. Theo&nbsp;<em>Bloomberg</em>, CPU của Apple M2 c&oacute; số nh&acirc;n tương tự M1, trong khi chip đồ họa (GPU) gồm 2 t&ugrave;y chọn 9 hoặc 10 nh&acirc;n, tăng nhẹ so với 7 hoặc 8 nh&acirc;n tr&ecirc;n M1.</p>\r\n\r\n<p>Do l&agrave; phi&ecirc;n bản ti&ecirc;u chuẩn, hiệu năng của chip M2 sẽ kh&ocirc;ng mạnh như M1 Pro v&agrave; M1 Max đang c&oacute; mặt tr&ecirc;n MacBook Pro 2021. V&agrave;i giới hạn của chip M1 tr&ecirc;n MacBook gồm chỉ hỗ trợ xuất ra một m&agrave;n h&igrave;nh ngo&agrave;i, kh&ocirc;ng t&iacute;ch hợp GPU rời v&agrave; RAM tối đa chỉ 16 GB. Trang&nbsp;<em>9to5Mac</em>&nbsp;hy vọng M2 sẽ giải quyết c&aacute;c nhược điểm tr&ecirc;n để mang đến trải nghiệm sử dụng tốt hơn.</p>\r\n\r\n<h3>Mac Pro 2022</h3>\r\n\r\n<p>Phi&ecirc;n bản gần nhất của Mac Pro được giới thiệu tại WWDC 2019. Sau th&agrave;nh c&ocirc;ng với M1 tr&ecirc;n MacBook v&agrave; iMac, Apple sắp đưa chip xử l&yacute; tự ph&aacute;t triển l&ecirc;n Mac Pro, d&ograve;ng m&aacute;y t&iacute;nh cao cấp nhất của h&atilde;ng.</p>\r\n\r\n<p>Khi ra mắt Mac Studio với chip M1 Ultra tại sự kiện th&aacute;ng 3, Ph&oacute; chủ tịch Kỹ thuật Phần cứng John Ternus x&aacute;c nhận kế hoạch tr&igrave;nh l&agrave;ng Mac Pro với chip M-series v&agrave;o &quot;một ng&agrave;y kh&aacute;c&quot;.</p>\r\n\r\n<p>Theo&nbsp;<em>Bloomberg</em>, k&iacute;ch thước của Mac Pro 2022 sẽ nhỏ hơn 50% so với Mac Pro 2019 d&ugrave;ng CPU Intel. M&aacute;y c&oacute; thể trang bị CPU với 20 hoặc 40 nh&acirc;n, gồm 16-32 nh&acirc;n hiệu năng cao v&agrave; 4-8 nh&acirc;n tiết kiệm năng lượng. GPU tr&ecirc;n thiết bị sẽ c&oacute; c&aacute;c t&ugrave;y chọn 64 hoặc 128 nh&acirc;n. Như vậy, Apple c&oacute; thể gh&eacute;p &iacute;t nhất 4 chip M1 Max, hoặc 2 chip M1 Ultra tr&ecirc;n Mac Pro 2022.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>00:00/02:11</p>\r\n\r\n<p>HD</p>\r\n\r\n<p>Video sẽ chạy sau2Hủy</p>\r\n\r\n<p><strong><a href=\"https://zingnews.vn/video-ly-do-apple-phan-doi-du-luat-chuan-hoa-cong-sac-usb-c-post1322380.html\" target=\"_blank\">L&yacute; do Apple phản đối dự luật chuẩn h&oacute;a cổng sạc USB-C</a></strong>Apple sẽ mất một nguồn doanh thu v&agrave; quyền kiểm so&aacute;t nếu iPhone bắt buộc phải chuyển sang cổng sạc USB-C, theo quy định mới của Ủy ban ch&acirc;u &Acirc;u.</p>\r\n', 'upload_6f972aa923134fc4943a65c3d345d74d.jpg', '2022-06-06 08:39:35', '4', '2022-06-06 08:40:03', '4', 1, 1, 1, '', ''),
(4, 2, 'Lý do nhiều người trẻ thích máy ảnh kiểu cổ', 'ly-do-nhieu-nguoi-tre-thich-may-anh-kieu-co', '', '<p>V&agrave;i năm trở lại đ&acirc;y, trong khi việc kinh doanh c&aacute;c loại m&aacute;y ảnh số đang chững lại, tr&agrave;o lưu sưu tầm v&agrave; sử dụng m&aacute;y ảnh chụp bằng phim đ&atilde; trở lại v&agrave; dần lan tỏa với người trẻ.</p>\r\n\r\n<p>Theo&nbsp;<em>Guardian,&nbsp;</em>những chiếc m&aacute;y ảnh phim cũ v&agrave; chậm lại đang c&oacute; sức h&uacute;t kh&oacute; cưỡng với những người trẻ đ&atilde; qu&aacute; quen thuộc với c&ocirc;ng nghệ lu&ocirc;n thay đổi, n&acirc;ng cấp li&ecirc;n tục.</p>\r\n\r\n<h3>Cảm x&uacute;c kh&aacute;c biệt</h3>\r\n\r\n<p>Lần đầu Indi Shields tiếp x&uacute;c với m&aacute;y ảnh phim l&agrave; thuở c&ograve;n b&eacute;. &ldquo;Chiếc m&aacute;y ảnh phim đầu ti&ecirc;n t&ocirc;i sử dụng l&agrave; của &ocirc;ng cố để lại. Cầm n&oacute; tr&ecirc;n tay, t&ocirc;i kh&ocirc;ng khỏi cảm thấy bỡ ngỡ. T&ocirc;i học theo c&aacute;ch &ocirc;ng t&ocirc;i vẫn thường d&ugrave;ng n&oacute; d&ugrave; t&ocirc;i chưa bao giờ gặp &ocirc;ng&rdquo;, c&ocirc; g&aacute;i chia sẻ.</p>\r\n\r\n<p>Trước đ&acirc;y, m&aacute;y ảnh thường chỉ được d&ugrave;ng trong những dịp đặc biệt như tiệc t&ugrave;ng, sinh nhật. Nhưng với Shields, c&ocirc; chọn c&aacute;ch ghi lại những khoảnh khắc thường nhật th&ocirc;ng qua chiếc m&aacute;y ảnh phim của m&igrave;nh. C&ocirc; chụp cảnh bạn b&egrave; c&ugrave;ng nhau xem phim hay chỉ đơn giản l&agrave; đường hầm mỗi khi v&agrave;o ga t&agrave;u.</p>\r\n\r\n<p>Ảnh phim đang trở th&agrave;nh một xu hướng chụp ảnh phố biến trong giới trẻ hiện nay. Ảnh: Guardian.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Gioi tre yeu thich anh film anh 2\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/spluaaa/2022_06_05/7965.jpg\" style=\"height:1224px; width:2040px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Gioi tre yeu thich anh film anh 2\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/spluaaa/2022_06_05/7965.jpg\" style=\"height:1224px; width:2040px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ảnh phim đang trở th&agrave;nh một xu hướng chụp ảnh phố biến trong giới trẻ hiện nay. Ảnh:&nbsp;<em>Guardian</em>.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&ldquo;T&ocirc;i chụp lại chỉ đơn giản v&igrave; ch&uacute;ng l&agrave; những khoảnh khắc t&ocirc;i muốn nh&igrave;n lại trong nhiều năm tới&rdquo;, Indi Shields n&oacute;i với&nbsp;<em>Guardian</em>.</p>\r\n\r\n<p>Suốt khoảng thời gian gi&atilde;n c&aacute;ch v&igrave; dịch Covid-19, niềm vui của c&ocirc; g&aacute;i trẻ l&agrave; được gửi cuộn phim đến c&aacute;c ph&ograve;ng lab để tr&aacute;ng ảnh. C&ocirc; th&iacute;ch cảm gi&aacute;c mong đợi những tấm ảnh th&agrave;nh quả m&agrave; m&igrave;nh đ&atilde; chụp.</p>\r\n\r\n<p>Nick Vlahadamis, chuy&ecirc;n gia chụp ảnh phim, cũng nhận thấy xu hướng quay lại sử dụng m&aacute;y ảnh xưa cũ của giới trẻ. &ldquo;Số lượng phim b&aacute;n ra trong v&ograve;ng 2 năm trở lại đ&acirc;y đ&atilde; tăng gấp 20 lần. C&aacute;c cuộn phim được gửi đến lab để tr&aacute;ng cũng tăng gấp 4 lần&rdquo;, &ocirc;ng cho biết.</p>\r\n\r\n<p>Tuy kh&ocirc;ng phổ biến như những năm thập ni&ecirc;n 1990, nhưng theo Vlahadamis xu hướng n&agrave;y vẫn sẽ tiếp tục phổ biến trong tương lai. Kodak ch&iacute;nh l&agrave; một v&iacute; dụ minh họa r&otilde; r&agrave;ng nhất. Năm 2012, tập đo&agrave;n c&ocirc;ng nghiệp m&aacute;y ảnh n&agrave;y đ&atilde; tuy&ecirc;n bố ph&aacute; sản nhưng đến năm 2020, số dư trong t&agrave;i khoản của Kodak lại chạm mốc&nbsp;196 triệu USD. Con số kh&ocirc;ng tưởng n&agrave;y c&oacute; được l&agrave; nhờ tr&agrave;o lưu ho&agrave;i cổ của giới trẻ.</p>\r\n\r\n<p>B&ecirc;n cạnh sự trở lại của Kodak, gi&aacute; th&agrave;nh m&aacute;y ảnh v&agrave; c&aacute;c phụ kiện cũng tăng l&ecirc;n. Riana Jayaraj, một người &ldquo;chơi&rdquo; m&aacute;y ảnh phim, cho biết c&ocirc; đ&atilde; mua chiếc Olympus Stylus cũ với gi&aacute;&nbsp;30 USD&nbsp;v&agrave;o v&agrave;i năm trước. Nhưng hiện nay, tr&ecirc;n c&aacute;c s&agrave;n thương mại điện tử, chiếc m&aacute;y ảnh c&oacute; gi&aacute; đắt gấp 10 lần.</p>\r\n\r\n<p>Sự trở lại của Kodak cho thấy tr&agrave;o lưu ảnh phim đang dần sống lại. Ảnh: Guardian.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Gioi tre yeu thich anh film anh 3\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/spluaaa/2022_06_05/8192.jpg\" style=\"height:828px; width:1240px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Gioi tre yeu thich anh film anh 3\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/spluaaa/2022_06_05/8192.jpg\" style=\"height:828px; width:1240px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Sự trở lại của Kodak cho thấy tr&agrave;o lưu ảnh phim đang dần sống lại. Ảnh:&nbsp;<em>Guardian</em>.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>C&ocirc; chia sẻ m&igrave;nh đ&atilde; y&ecirc;u th&iacute;ch thể loại chụp ảnh n&agrave;y từ 5 năm trước. B&acirc;y giờ, mỗi khi đến những sự kiện quan trọng, c&ocirc; đều mang theo m&aacute;y ảnh phim b&ecirc;n m&igrave;nh để chụp lại những khoảnh khắc đ&aacute;ng nhớ.</p>\r\n\r\n<p>&ldquo;T&ocirc;i kh&ocirc;ng mang theo n&oacute; mọi l&uacute;c mọi nơi m&agrave; chỉ v&agrave;o những dịp đ&aacute;ng nhớ để m&igrave;nh c&oacute; thể tận hưởng mọi trải nghiệm. M&aacute;y ảnh phim gi&uacute;p t&ocirc;i ghi lại mọi điều v&agrave; c&oacute; thể xem lại sau n&agrave;y chứ kh&ocirc;ng phải lo lắng như khi chụp bằng điện thoại&rdquo;, Jayaraj t&acirc;m sự.</p>\r\n\r\n<h3>Th&uacute; chơi &quot;ho&agrave;i cổ&quot; của giới trẻ</h3>\r\n\r\n<p>Mặt kh&aacute;c, với c&ocirc;, điều th&uacute; vị ở ảnh phim c&ograve;n nằm ở việc n&oacute; kh&ocirc;ng cho ra ảnh ngay lập tức m&agrave; phải chờ h&igrave;nh từ ph&ograve;ng rửa phim về. C&ocirc; g&aacute;i trẻ cho rằng khi chụp ảnh bằng điện thoại, mọi người dường như bị t&aacute;ch khỏi thực tại v&igrave; họ chỉ đứng đ&oacute;, nhấn n&uacute;t chụp v&agrave; dường như c&oacute; thể t&aacute;c động tới cả khung cảnh trước mắt theo &yacute; m&igrave;nh. Họ c&oacute; thể chụp lại cho đến khi ưng &yacute; th&igrave; th&ocirc;i.</p>\r\n\r\n<p>&ldquo;Nhưng với m&aacute;y ảnh phim, bạn chỉ c&oacute; một cơ hội duy nhất. Việc bạn phải l&agrave;m l&agrave; nhấn n&uacute;t chụp v&agrave; cầu mong rằng ảnh ra sẽ tốt&rdquo;, c&ocirc; n&oacute;i. M&aacute;y ảnh phim chỉ c&oacute; thể lưu trữ bằng phim với số lượng ảnh từ 35-40 ảnh. Do đ&oacute;, người d&ugrave;ng kh&ocirc;ng thể chụp li&ecirc;n tục như với điện thoại di động.</p>\r\n\r\n<p>Jayaraj cũng kh&ocirc;ng phải l&agrave; bạn trẻ duy nhất d&ugrave;ng m&aacute;y ảnh phim để tr&aacute;nh xa những thiết bị kỹ thuật số. C&ocirc; nhận thấy bạn b&egrave; xung quanh cũng bắt đầu c&oacute; sở th&iacute;ch n&agrave;y. &ldquo;T&ocirc;i cảm thấy h&igrave;nh như b&acirc;y giờ ai cũng sử dụng m&aacute;y ảnh phim. Thậm ch&iacute; một v&agrave;i người bạn của t&ocirc;i c&ograve;n c&oacute; t&agrave;i khoản Instagram ri&ecirc;ng để đăng tải những tấm ảnh phim họ chụp&rdquo;, Jayaraj chia sẻ.</p>\r\n\r\n<p>Nhiều người nổi tiếng như Lisa (BlackPink), V (BTS) cũng th&iacute;ch th&uacute; với d&ograve;ng m&aacute;y ảnh ho&agrave;i cổ n&agrave;y. Ảnh: Instagram.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Gioi tre yeu thich anh film anh 4\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/spluaaa/2022_06_05/photo_1_15644611963291925300009_16344024426472020756669.jpg\" style=\"height:729px; width:1080px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Gioi tre yeu thich anh film anh 4\" src=\"https://znews-photo.zingcdn.me/w1920/Uploaded/spluaaa/2022_06_05/photo_1_15644611963291925300009_16344024426472020756669.jpg\" style=\"height:729px; width:1080px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nhiều người nổi tiếng như Lisa (BlackPink), V (BTS) cũng th&iacute;ch th&uacute; với d&ograve;ng m&aacute;y ảnh ho&agrave;i cổ n&agrave;y. Ảnh:&nbsp;<em>Instagram</em>.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Theo&nbsp;<em>Guardian</em>, ngo&agrave;i c&aacute;c d&ograve;ng m&aacute;y phim th&ocirc;ng thường, m&aacute;y ảnh d&ugrave;ng 1 lần cũng được c&aacute;c bạn trẻ y&ecirc;u th&iacute;ch. Trong đ&oacute;, The Reloader l&agrave; một thương hiệu m&aacute;y ảnh d&ugrave;ng 1 lần c&oacute; thể t&aacute;i sử dụng do sinh vi&ecirc;n Madi Stefanis ở &Uacute;c th&agrave;nh lập.</p>\r\n\r\n<p>C&ocirc; g&aacute;i đ&atilde; lấn s&acirc;n v&agrave;o sản xuất m&aacute;y ảnh sau nhiều năm b&aacute;n m&aacute;y ảnh cũ tr&ecirc;n c&aacute;c s&agrave;n thương mại điện tử. &ldquo;T&ocirc;i muốn ra mắt một sản phẩm ph&ugrave; hợp với mọi độ tuổi v&agrave; mọi khả năng chụp ảnh, đồng thời giảm sử dụng c&aacute;c d&ograve;ng m&aacute;y ảnh d&ugrave;ng 1 lần&rdquo;. Stefanis cũng cho biết đa phần kh&aacute;ch h&agrave;ng của c&ocirc; l&agrave; ph&aacute;i nữ, đặc biệt l&agrave; giới trẻ từ 18-34 tuổi.</p>\r\n\r\n<p>Khi m&aacute;y ảnh phim th&agrave;nh tr&agrave;o lưu trở lại, nhiều người đặt c&acirc;u hỏi tại sao ch&uacute;ng ta lại muốn ghi lại khoảnh khắc với những tấm ảnh mờ nh&ograve;e, vỡ hạt của m&aacute;y phim thay v&igrave; những bức ảnh sắc n&eacute;t được chụp bởi m&aacute;y ảnh kỹ thuật số hiện đại. Với Shields, m&aacute;y ảnh phim gi&uacute;p c&ocirc; được sống trọn vẹn ở khoảnh khắc hiện tại v&agrave; mong đợi về một th&agrave;nh quả k&igrave; diệu n&agrave;o đ&oacute;, kh&aacute;c hẳn với việc chụp điện thoại.</p>\r\n\r\n<p>&ldquo;T&ocirc;i c&ograve;n kh&ocirc;ng nhớ m&igrave;nh để m&aacute;y ảnh kỹ thuật số ở đ&acirc;u. Nhưng chiếc m&aacute;y ảnh phim th&igrave; lu&ocirc;n nằm ngay ngắn tr&ecirc;n bệ l&ograve; sưởi v&agrave; n&oacute; cũng l&agrave; thứ đầu ti&ecirc;n mọi người nh&igrave;n thấy khi bước v&agrave;o ph&ograve;ng t&ocirc;i&rdquo;, c&ocirc; t&acirc;m sự. Shields cũng chia sẻ rằng m&igrave;nh c&agrave;ng ng&agrave;y c&agrave;ng th&iacute;ch ảnh phim v&igrave; thấy n&oacute; rất th&uacute; vị. Theo c&ocirc;, ảnh phim chứa đựng rất nhiều điều bất ngờ v&agrave; sự s&aacute;ng tạo.</p>\r\n', 'u13i0dtj9hsqs.jpg', '2022-06-06 08:40:48', '4', '2022-06-06 08:40:48', '4', 1, 1, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_content_type`
--

CREATE TABLE `db_content_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_content_type`
--

INSERT INTO `db_content_type` (`id`, `name`, `slug`) VALUES
(1, 'KINH NGHIỆM HAY - MẸO VẶT', 'kinh-nghiem-hay-meo-vat'),
(2, 'CÔNG NGHỆ', 'cong-nghe');

-- --------------------------------------------------------

--
-- Table structure for table `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `birthday` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `gender`, `birthday`, `address`, `phone`, `email`, `created`, `trash`, `access`, `status`) VALUES
(1, 'Ngô Trung Phát', 'trungphatit', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01654292459', 'ngotrungphat.admin@gmail.com', '2017-04-19 23:34:03', 1, 1, 1),
(8, '', '', '', NULL, '0000-00-00', '', '', 'ngotrungphat@gmail.com', '2017-04-25 23:28:14', 1, 1, 1),
(23, '', '', '', NULL, '0000-00-00', '', '', 'trungphong3913@gmail.com', '2017-04-27 03:26:32', 1, 1, 1),
(4, '', '', '', NULL, '0000-00-00', '', '', 'admin@gmail.com', '2017-04-22 10:15:10', 1, 1, 1),
(5, '', '', '', NULL, '0000-00-00', '', '', 'customer@gmail.com', '2017-04-22 10:33:51', 1, 1, 1),
(6, '', '', '', NULL, '0000-00-00', '', '', 'phat123@gmail.com', '2017-04-22 10:53:23', 1, 1, 1),
(7, '', '', '', NULL, '0000-00-00', '', '', 'shopping@gmail.com', '2017-04-25 21:44:05', 1, 1, 1),
(15, 'admin002', 'admin002', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01654292454', 'admin002@gmail.com', '2017-04-26 00:18:47', 1, 1, 1),
(14, 'admin001', 'admin001', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01654292453', 'admin001@gmail.com', '2017-04-26 00:17:43', 1, 1, 1),
(13, 'admintest02', 'admintest02', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01654292451', 'admintest02@gmail.com', '2017-04-26 00:04:27', 1, 1, 1),
(16, 'admin009', 'admin009', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '09876543299', 'admin009@gmail.com', '2017-04-26 00:26:07', 1, 1, 1),
(17, 'supperadmin001', 'supperadmin001', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01234567819', 'supperadmin001@gmil.com', '2017-04-27 02:06:45', 1, 1, 1),
(18, 'admina1222', 'admina1', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01234567812', 'admina1@gmail.com', '2017-04-27 02:12:48', 1, 1, 1),
(19, 'admin123', 'admin123', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01234567813', 'admin123@gmail.com', '2017-04-27 02:15:37', 1, 1, 1),
(20, 'admin1234', 'admin1234', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01234567814', 'admin1234@gmail.com', '2017-04-27 02:24:23', 1, 1, 1),
(38, '', '', '', NULL, '0000-00-00', '', '', 'abcaxyz@gmail.com', '2017-05-13 00:52:23', 1, 1, 1),
(35, 'Sale 24hStore', 'Sale 24hStore', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01234567878', 'sale.24hstore@gmail.com', '2017-05-05 21:03:20', 1, 1, 1),
(39, 'Ngo Trung Phat', 'Phat Admin', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '0102030405', 'customer.24hstore@gmail.com', '2017-05-13 08:20:53', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_location`
--

CREATE TABLE `db_location` (
  `id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_location`
--

INSERT INTO `db_location` (`id`, `location`, `phone`, `email`) VALUES
(1, '11311424', '0123456789', 'abc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(6) NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `money` int(12) NOT NULL,
  `province` int(10) NOT NULL,
  `district` int(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_page`
--

CREATE TABLE `db_page` (
  `id` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `introtext` text NOT NULL,
  `fulltext` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_page`
--

INSERT INTO `db_page` (`id`, `id_type`, `title`, `slug`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `status`, `metakey`, `metadesc`) VALUES
(3, 1, 'Giới thiệu', 'gioi-thieu', 'Giới thiệu', '<p>Giới thiệu</p>\r\n', '', '2022-06-01', '4', 1, 'Giới thiệu', 'Giới thiệu');

-- --------------------------------------------------------

--
-- Table structure for table `db_page_type`
--

CREATE TABLE `db_page_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_page_type`
--

INSERT INTO `db_page_type` (`id`, `name`, `link`) VALUES
(1, 'Chính sách', 'chinh-sach'),
(4, 'Hỗ trợ khách hàng', 'ho-tro-khach-hang');

-- --------------------------------------------------------

--
-- Table structure for table `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `img` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_producer`
--

INSERT INTO `db_producer` (`id`, `name`, `code`, `keyword`, `created_at`, `created_by`, `modified`, `modified_by`, `status`, `trash`, `img`) VALUES
(1, 'Apple', 'APPLE', 'dienthoai, maytinhbang,phukien, laptop,phukien', '2017-04-10 22:18:45', 4, '2022-06-06 08:36:14', 4, 1, 1, 'Apple_logo_grey_svg.png'),
(2, 'Samsung', 'SAMSUNG', 'dienthoai, maytinhbang,dongho,phukien', '2017-04-10 22:35:02', 4, '2017-04-11 20:31:44', 6, 1, 0, ''),
(3, 'Oppo', 'OPPO', 'dienthoai, maytinhbang,phukien', '2017-04-10 22:35:16', 4, '2017-04-11 20:30:27', 6, 1, 0, ''),
(4, 'Sony', 'SONY', 'dienthoai, maytinhbang, phukien, laptop', '2017-04-10 22:50:16', 4, '2017-04-10 22:52:45', 4, 1, 0, ''),
(5, 'Asus', 'ASUS', 'dienthoai, maytinhbang, laptop,phukien', '2017-04-10 22:50:36', 4, '2017-04-11 20:28:30', 6, 1, 0, ''),
(6, 'HTC', 'HTC', 'dienthoai, maytinhbang,phukien', '2017-04-10 22:50:54', 4, '2017-04-11 20:30:17', 6, 1, 0, ''),
(7, 'Nokia', 'NOKIA', 'dienthoai, maytinhbang', '2017-04-10 22:51:44', 4, '2017-04-10 22:51:44', 4, 1, 0, ''),
(8, 'Huawei', 'HUAWEi', 'dienthoai, maytinhbang,phukien', '2017-04-10 22:52:01', 4, '2017-04-11 20:28:37', 6, 1, 0, ''),
(9, 'LG', 'LG', 'dienthoai, maytinhbang, laptop,phukien', '2017-04-10 22:52:09', 4, '2017-04-11 20:28:46', 6, 1, 0, ''),
(11, 'Apacer,Sandisk,Transcend', 'usb', 'usbapacer,usbSandisk,usbTranscend', '2017-04-11 19:52:11', 6, '2017-04-11 19:56:53', 6, 1, 0, ''),
(12, 'Micro', 'thenho', 'thenhomicro', '2017-04-11 20:01:46', 6, '2017-04-11 20:01:46', 6, 1, 0, ''),
(13, 'iphone', 'iphone', 'dienthoai,maytinh,dongho', '2017-04-11 20:07:00', 6, '2017-04-11 20:07:00', 6, 1, 0, ''),
(14, 'Xmobile', 'Xmobile', 'oplungXmobile', '2017-04-11 20:17:55', 6, '2017-04-11 20:17:55', 6, 1, 0, ''),
(15, 'lenovo', 'lenovo', 'dienthoai, maytinhbang, laptop,phukien', '2017-04-11 20:59:37', 6, '2022-06-06 08:34:09', 4, 1, 1, 'Lenovo_logo_2015_svg.png'),
(16, 'Mobell', 'Molbell', 'dienthoai, maytinhbang, laptop,phukien', '2017-04-11 21:00:34', 6, '2017-04-11 21:00:34', 6, 1, 0, ''),
(17, 'Acer', 'Acer', 'laptop,maytinhbang', '2017-04-11 21:03:58', 6, '2022-06-06 08:33:33', 4, 1, 1, 'Acer_Logo_svg.png'),
(18, 'HP', 'HP', 'laptop', '2017-04-12 19:05:09', 6, '2022-06-06 08:32:42', 4, 1, 1, '2048px-HP_logo_2012_svg.png'),
(19, 'Dell', 'Dell', 'laptop', '2017-04-12 19:09:47', 6, '2022-06-06 08:31:16', 4, 1, 1, 'Dell_Logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `sortDesc` text NOT NULL,
  `detail` text NOT NULL,
  `producer` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) NOT NULL DEFAULT 'HDL',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `metakey` varchar(155) NOT NULL,
  `metadesc` varchar(155) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_product`
--

INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`, `metakey`, `metadesc`) VALUES
(1, 2, 'HP Probook 450 G7', 'hp-probook-450-g7', '2cd863892213bf7a5e5f8032c0273381.jpg', '2cd863892213bf7a5e5f8032c0273381.jpg', 'HP Probook 450 G7 màu bạc cực sang trọng\r\n', '<p>M&aacute;y Nhật x&aacute;ch tay cực bền, h&igrave;nh thức như mới</p>\r\n\r\n<p>Cấu h&igrave;nh:</p>\r\n\r\n<p>CPU i5 10210u</p>\r\n\r\n<p>Ram 16gb</p>\r\n\r\n<p>Ổ cứng 1T SSD</p>\r\n\r\n<p>M&agrave;n h&igrave;nh 15,6</p>\r\n\r\n<p>Gi&aacute; 21,x tr</p>\r\n\r\n<p>BH 03 th&aacute;ng</p>\r\n\r\n<p>Tặng k&egrave;m cặp, chuột kh&ocirc;ng d&acirc;y mới</p>\r\n', '18', 1, 1, 0, 21000000, 21000000, '2022-06-06 11:13:28', '4', '2022-06-06 11:13:28', '4', 1, 1, 1, '', ''),
(2, 8, 'Nec Lavie LX850', 'nec-lavie-lx850', '', '285190565_414524797174392_1287337625674404125_n.jpg', 'Chiếc Ultrabook 15,6 inch mỏng nhất thế giới, được xem là \"kẻ kế nhiệm\" của chiếc Ultrabook nhẹ nhất thế giới Lavie Z mà hãng ra mắt. LaVie X gây ấn tượng đặc biệt với độ mỏng chỉ 12,8 mm và cân nặng chỉ khoảng 1,58 kg trong \"hình hài\" có thể coi là \"to lớn\" nhất trong làng Ultrabook hiện nay với màn hình 15,6 inch. \r\n', '<p>Nec Lavie LX850</p>\r\n\r\n<p>Chiếc Ultrabook 15,6 inch mỏng nhất thế giới, được xem l&agrave; &quot;kẻ kế nhiệm&quot; của chiếc Ultrabook nhẹ nhất thế giới Lavie Z m&agrave; h&atilde;ng ra mắt. LaVie X g&acirc;y ấn tượng đặc biệt với độ mỏng chỉ 12,8 mm v&agrave; c&acirc;n nặng chỉ khoảng 1,58 kg trong &quot;h&igrave;nh h&agrave;i&quot; c&oacute; thể coi l&agrave; &quot;to lớn&quot; nhất trong l&agrave;ng Ultrabook hiện nay với m&agrave;n h&igrave;nh 15,6 inch.</p>\r\n\r\n<p>Cấu h&igrave;nh:</p>\r\n\r\n<p>CPU i7 3537u</p>\r\n\r\n<p>Ram 4gb</p>\r\n\r\n<p>SSD 60gb</p>\r\n\r\n<p>Gi&aacute; 10.x tr (Gi&aacute; chuẩn l&agrave; 12,5tr tuy nhi&ecirc;n do pin k&eacute;m n&ecirc;n b&aacute;n = gi&aacute; pin hỏng)</p>\r\n\r\n<p>MAC STORE HP</p>\r\n', '18', 1, 1, 0, 12500000, 12500000, '2022-06-06 16:01:12', '4', '2022-06-06 16:01:12', '4', 0, 1, 1, '', ''),
(3, 8, 'faffsafsafs', 'faffsafsafs', 'default.png', '', 'sfsafsfs', '<p>faffsafsafs</p>\r\n', '19', 1, 1, 0, 100000, 100000, '2022-06-06 16:34:42', '4', '2022-06-06 16:34:42', '4', 0, 1, 1, '', ''),
(4, 8, '1`131313', '1-131313', 'default.png', 'c9aab1096a5e8c63420e33f9e2150fd8.jpg#c5721617b8ab5ac5116003dd93fc5078.jpg', '4142', '<p>42142421421</p>\r\n', '19', 1, 1, 0, 1000, 900, '2022-06-09 11:13:13', '4', '2022-06-09 11:13:13', '4', 0, 1, 1, '', ''),
(5, 8, '1314124214', '1314124214', 'cbe122601872b0925778d16c7b921b66.jpg', '17af9d5d150159de60714ad08b57d549.jpg#e7f45ac1c778466b43096805403406aa.jpg', '421424', '<p>214124214242421</p>\r\n', '19', 1, 1, 0, 10000, 10000, '2022-06-09 11:19:53', '4', '2022-06-09 11:19:53', '4', 0, 1, 1, '', ''),
(6, 1, '123', '123', '0a99d9e9098afcd5d4927c9af83308c5.jpg', '9f71102bc8b80834b43a9cd3ddadd704.png', '124214214', '<p>2142424214214242</p>\r\n', '19', 1, 1, 0, 100, 100, '2022-06-14 11:09:57', '4', '2022-06-14 11:09:57', '4', 0, 1, 1, '', ''),
(7, 8, 'abcdef', 'abcdef', '25530b0196db04faa842fa524894ee4e.png', 'b21d9cd3a6886a1598361435ba85073c.jpg', 'abcdef', '<p>abcdef</p>\r\n', '19', 100, 100, 0, 10000, 10000, '2022-06-16 16:35:41', '4', '2022-06-16 16:51:02', '4', 1, 1, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_product_instance`
--

CREATE TABLE `db_product_instance` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_option` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_product_instance`
--

INSERT INTO `db_product_instance` (`id`, `id_product`, `id_option`) VALUES
(1, 1, 5),
(2, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `db_product_option`
--

CREATE TABLE `db_product_option` (
  `id` int(11) NOT NULL,
  `cpu` varchar(255) NOT NULL,
  `ram` varchar(255) NOT NULL,
  `hard_drive` varchar(255) NOT NULL,
  `vga` varchar(255) NOT NULL,
  `screen` varchar(255) NOT NULL,
  `hdh` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `kichthuoc` varchar(255) NOT NULL,
  `cannang` varchar(255) NOT NULL,
  `phukien` varchar(255) NOT NULL,
  `sale` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_product_option`
--

INSERT INTO `db_product_option` (`id`, `cpu`, `ram`, `hard_drive`, `vga`, `screen`, `hdh`, `color`, `pin`, `kichthuoc`, `cannang`, `phukien`, `sale`, `price_sale`, `price`) VALUES
(1, '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', 0, 0, 0),
(2, '111', '111', '111', '111', '1111', '111', '111', '111', '111', '11', '1111', 0, 0, 0),
(3, '111', '111', '111', '111', '1111', '111', '111', '111', '111', '11', '1111', 0, 0, 0),
(4, '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', 0, 0, 0),
(5, '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', 0, 0, 0),
(6, '222', '222', '222', '222', '222', '222', '222', '222', '222', '222', '222', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_quanhuyen`
--

CREATE TABLE `db_quanhuyen` (
  `maqh` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `matp` varchar(5) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_quanhuyen`
--

INSERT INTO `db_quanhuyen` (`maqh`, `name`, `type`, `matp`) VALUES
('1', 'Quận Ba Đình', 'Quận', '1'),
('10', 'Huyện Sóc Sơn', 'Huyện', '1'),
('100', 'Huyện Điện Biên', 'Huyện', '11'),
('101', 'Huyện Điện Biên Đông', 'Huyện', '11'),
('102', 'Huyện Mường Ảng', 'Huyện', '11'),
('103', 'Huyện Nậm Pồ', 'Huyện', '11'),
('105', 'Thành phố Lai Châu', 'Thành phố', '12'),
('106', 'Huyện Tam Đường', 'Huyện', '12'),
('107', 'Huyện Mường Tè', 'Huyện', '12'),
('108', 'Huyện Sìn Hồ', 'Huyện', '12'),
('109', 'Huyện Phong Thổ', 'Huyện', '12'),
('11', 'Huyện Đông Anh', 'Huyện', '1'),
('110', 'Huyện Than Uyên', 'Huyện', '12'),
('111', 'Huyện Tân Uyên', 'Huyện', '12'),
('112', 'Huyện Nậm Nhùn', 'Huyện', '12'),
('116', 'Thành phố Sơn La', 'Thành phố', '14'),
('118', 'Huyện Quỳnh Nhai', 'Huyện', '14'),
('119', 'Huyện Thuận Châu', 'Huyện', '14'),
('120', 'Huyện Mường La', 'Huyện', '14'),
('121', 'Huyện Bắc Yên', 'Huyện', '14'),
('122', 'Huyện Phù Yên', 'Huyện', '14'),
('123', 'Huyện Mộc Châu', 'Huyện', '14'),
('124', 'Huyện Yên Châu', 'Huyện', '14'),
('125', 'Huyện Mai Sơn', 'Huyện', '14'),
('126', 'Huyện Sông Mã', 'Huyện', '14'),
('127', 'Huyện Sốp Cộp', 'Huyện', '14'),
('128', 'Huyện Vân Hồ', 'Huyện', '14'),
('132', 'Thành phố Yên Bái', 'Thành phố', '15'),
('133', 'Thị xã Nghĩa Lộ', 'Thị xã', '15'),
('135', 'Huyện Lục Yên', 'Huyện', '15'),
('136', 'Huyện Văn Yên', 'Huyện', '15'),
('137', 'Huyện Mù Căng Chải', 'Huyện', '15'),
('138', 'Huyện Trấn Yên', 'Huyện', '15'),
('139', 'Huyện Trạm Tấu', 'Huyện', '15'),
('140', 'Huyện Văn Chấn', 'Huyện', '15'),
('141', 'Huyện Yên Bình', 'Huyện', '15'),
('148', 'Thành phố Hòa Bình', 'Thành phố', '17'),
('150', 'Huyện Đà Bắc', 'Huyện', '17'),
('151', 'Huyện Kỳ Sơn', 'Huyện', '17'),
('152', 'Huyện Lương Sơn', 'Huyện', '17'),
('153', 'Huyện Kim Bôi', 'Huyện', '17'),
('154', 'Huyện Cao Phong', 'Huyện', '17'),
('155', 'Huyện Tân Lạc', 'Huyện', '17'),
('156', 'Huyện Mai Châu', 'Huyện', '17'),
('157', 'Huyện Lạc Sơn', 'Huyện', '17'),
('158', 'Huyện Yên Thủy', 'Huyện', '17'),
('159', 'Huyện Lạc Thủy', 'Huyện', '17'),
('164', 'Thành phố Thái Nguyên', 'Thành phố', '19'),
('165', 'Thành phố Sông Công', 'Thành phố', '19'),
('167', 'Huyện Định Hóa', 'Huyện', '19'),
('168', 'Huyện Phú Lương', 'Huyện', '19'),
('169', 'Huyện Đồng Hỷ', 'Huyện', '19'),
('170', 'Huyện Võ Nhai', 'Huyện', '19'),
('171', 'Huyện Đại Từ', 'Huyện', '19'),
('172', 'Thị xã Phổ Yên', 'Thị xã', '19'),
('173', 'Huyện Phú Bình', 'Huyện', '19'),
('178', 'Thành phố Lạng Sơn', 'Thành phố', '20'),
('18', 'Huyện Gia Lâm', 'Huyện', '1'),
('180', 'Huyện Tràng Định', 'Huyện', '20'),
('181', 'Huyện Bình Gia', 'Huyện', '20'),
('182', 'Huyện Văn Lãng', 'Huyện', '20'),
('183', 'Huyện Cao Lộc', 'Huyện', '20'),
('184', 'Huyện Văn Quan', 'Huyện', '20'),
('185', 'Huyện Bắc Sơn', 'Huyện', '20'),
('186', 'Huyện Hữu Lũng', 'Huyện', '20'),
('187', 'Huyện Chi Lăng', 'Huyện', '20'),
('188', 'Huyện Lộc Bình', 'Huyện', '20'),
('189', 'Huyện Đình Lập', 'Huyện', '20'),
('19', 'Quận Nam Từ Liêm', 'Quận', '1'),
('193', 'Thành phố Hạ Long', 'Thành phố', '22'),
('194', 'Thành phố Móng Cái', 'Thành phố', '22'),
('195', 'Thành phố Cẩm Phả', 'Thành phố', '22'),
('196', 'Thành phố Uông Bí', 'Thành phố', '22'),
('198', 'Huyện Bình Liêu', 'Huyện', '22'),
('199', 'Huyện Tiên Yên', 'Huyện', '22'),
('2', 'Quận Hoàn Kiếm', 'Quận', '1'),
('20', 'Huyện Thanh Trì', 'Huyện', '1'),
('200', 'Huyện Đầm Hà', 'Huyện', '22'),
('201', 'Huyện Hải Hà', 'Huyện', '22'),
('202', 'Huyện Ba Chẽ', 'Huyện', '22'),
('203', 'Huyện Vân Đồn', 'Huyện', '22'),
('204', 'Huyện Hoành Bồ', 'Huyện', '22'),
('205', 'Thị xã Đông Triều', 'Thị xã', '22'),
('206', 'Thị xã Quảng Yên', 'Thị xã', '22'),
('207', 'Huyện Cô Tô', 'Huyện', '22'),
('21', 'Quận Bắc Từ Liêm', 'Quận', '1'),
('213', 'Thành phố Bắc Giang', 'Thành phố', '24'),
('215', 'Huyện Yên Thế', 'Huyện', '24'),
('216', 'Huyện Tân Yên', 'Huyện', '24'),
('217', 'Huyện Lạng Giang', 'Huyện', '24'),
('218', 'Huyện Lục Nam', 'Huyện', '24'),
('219', 'Huyện Lục Ngạn', 'Huyện', '24'),
('220', 'Huyện Sơn Động', 'Huyện', '24'),
('221', 'Huyện Yên Dũng', 'Huyện', '24'),
('222', 'Huyện Việt Yên', 'Huyện', '24'),
('223', 'Huyện Hiệp Hòa', 'Huyện', '24'),
('227', 'Thành phố Việt Trì', 'Thành phố', '25'),
('228', 'Thị xã Phú Thọ', 'Thị xã', '25'),
('230', 'Huyện Đoan Hùng', 'Huyện', '25'),
('231', 'Huyện Hạ Hoà', 'Huyện', '25'),
('232', 'Huyện Thanh Ba', 'Huyện', '25'),
('233', 'Huyện Phù Ninh', 'Huyện', '25'),
('234', 'Huyện Yên Lập', 'Huyện', '25'),
('235', 'Huyện Cẩm Khê', 'Huyện', '25'),
('236', 'Huyện Tam Nông', 'Huyện', '25'),
('237', 'Huyện Lâm Thao', 'Huyện', '25'),
('238', 'Huyện Thanh Sơn', 'Huyện', '25'),
('239', 'Huyện Thanh Thuỷ', 'Huyện', '25'),
('24', 'Thành phố Hà Giang', 'Thành phố', '2'),
('240', 'Huyện Tân Sơn', 'Huyện', '25'),
('243', 'Thành phố Vĩnh Yên', 'Thành phố', '26'),
('244', 'Thị xã Phúc Yên', 'Thị xã', '26'),
('246', 'Huyện Lập Thạch', 'Huyện', '26'),
('247', 'Huyện Tam Dương', 'Huyện', '26'),
('248', 'Huyện Tam Đảo', 'Huyện', '26'),
('249', 'Huyện Bình Xuyên', 'Huyện', '26'),
('250', 'Huyện Mê Linh', 'Huyện', '1'),
('251', 'Huyện Yên Lạc', 'Huyện', '26'),
('252', 'Huyện Vĩnh Tường', 'Huyện', '26'),
('253', 'Huyện Sông Lô', 'Huyện', '26'),
('256', 'Thành phố Bắc Ninh', 'Thành phố', '27'),
('258', 'Huyện Yên Phong', 'Huyện', '27'),
('259', 'Huyện Quế Võ', 'Huyện', '27'),
('26', 'Huyện Đồng Văn', 'Huyện', '2'),
('260', 'Huyện Tiên Du', 'Huyện', '27'),
('261', 'Thị xã Từ Sơn', 'Thị xã', '27'),
('262', 'Huyện Thuận Thành', 'Huyện', '27'),
('263', 'Huyện Gia Bình', 'Huyện', '27'),
('264', 'Huyện Lương Tài', 'Huyện', '27'),
('268', 'Quận Hà Đông', 'Quận', '1'),
('269', 'Thị xã Sơn Tây', 'Thị xã', '1'),
('27', 'Huyện Mèo Vạc', 'Huyện', '2'),
('271', 'Huyện Ba Vì', 'Huyện', '1'),
('272', 'Huyện Phúc Thọ', 'Huyện', '1'),
('273', 'Huyện Đan Phượng', 'Huyện', '1'),
('274', 'Huyện Hoài Đức', 'Huyện', '1'),
('275', 'Huyện Quốc Oai', 'Huyện', '1'),
('276', 'Huyện Thạch Thất', 'Huyện', '1'),
('277', 'Huyện Chương Mỹ', 'Huyện', '1'),
('278', 'Huyện Thanh Oai', 'Huyện', '1'),
('279', 'Huyện Thường Tín', 'Huyện', '1'),
('28', 'Huyện Yên Minh', 'Huyện', '2'),
('280', 'Huyện Phú Xuyên', 'Huyện', '1'),
('281', 'Huyện Ứng Hòa', 'Huyện', '1'),
('282', 'Huyện Mỹ Đức', 'Huyện', '1'),
('288', 'Thành phố Hải Dương', 'Thành phố', '30'),
('29', 'Huyện Quản Bạ', 'Huyện', '2'),
('290', 'Thị xã Chí Linh', 'Thị xã', '30'),
('291', 'Huyện Nam Sách', 'Huyện', '30'),
('292', 'Huyện Kinh Môn', 'Huyện', '30'),
('293', 'Huyện Kim Thành', 'Huyện', '30'),
('294', 'Huyện Thanh Hà', 'Huyện', '30'),
('295', 'Huyện Cẩm Giàng', 'Huyện', '30'),
('296', 'Huyện Bình Giang', 'Huyện', '30'),
('297', 'Huyện Gia Lộc', 'Huyện', '30'),
('298', 'Huyện Tứ Kỳ', 'Huyện', '30'),
('299', 'Huyện Ninh Giang', 'Huyện', '30'),
('3', 'Quận Tây Hồ', 'Quận', '1'),
('30', 'Huyện Vị Xuyên', 'Huyện', '2'),
('300', 'Huyện Thanh Miện', 'Huyện', '30'),
('303', 'Quận Hồng Bàng', 'Quận', '31'),
('304', 'Quận Ngô Quyền', 'Quận', '31'),
('305', 'Quận Lê Chân', 'Quận', '31'),
('306', 'Quận Hải An', 'Quận', '31'),
('307', 'Quận Kiến An', 'Quận', '31'),
('308', 'Quận Đồ Sơn', 'Quận', '31'),
('309', 'Quận Dương Kinh', 'Quận', '31'),
('31', 'Huyện Bắc Mê', 'Huyện', '2'),
('311', 'Huyện Thuỷ Nguyên', 'Huyện', '31'),
('312', 'Huyện An Dương', 'Huyện', '31'),
('313', 'Huyện An Lão', 'Huyện', '31'),
('314', 'Huyện Kiến Thuỵ', 'Huyện', '31'),
('315', 'Huyện Tiên Lãng', 'Huyện', '31'),
('316', 'Huyện Vĩnh Bảo', 'Huyện', '31'),
('317', 'Huyện Cát Hải', 'Huyện', '31'),
('318', 'Huyện Bạch Long Vĩ', 'Huyện', '31'),
('32', 'Huyện Hoàng Su Phì', 'Huyện', '2'),
('323', 'Thành phố Hưng Yên', 'Thành phố', '33'),
('325', 'Huyện Văn Lâm', 'Huyện', '33'),
('326', 'Huyện Văn Giang', 'Huyện', '33'),
('327', 'Huyện Yên Mỹ', 'Huyện', '33'),
('328', 'Huyện Mỹ Hào', 'Huyện', '33'),
('329', 'Huyện Ân Thi', 'Huyện', '33'),
('33', 'Huyện Xín Mần', 'Huyện', '2'),
('330', 'Huyện Khoái Châu', 'Huyện', '33'),
('331', 'Huyện Kim Động', 'Huyện', '33'),
('332', 'Huyện Tiên Lữ', 'Huyện', '33'),
('333', 'Huyện Phù Cừ', 'Huyện', '33'),
('336', 'Thành phố Thái Bình', 'Thành phố', '34'),
('338', 'Huyện Quỳnh Phụ', 'Huyện', '34'),
('339', 'Huyện Hưng Hà', 'Huyện', '34'),
('34', 'Huyện Bắc Quang', 'Huyện', '2'),
('340', 'Huyện Đông Hưng', 'Huyện', '34'),
('341', 'Huyện Thái Thụy', 'Huyện', '34'),
('342', 'Huyện Tiền Hải', 'Huyện', '34'),
('343', 'Huyện Kiến Xương', 'Huyện', '34'),
('344', 'Huyện Vũ Thư', 'Huyện', '34'),
('347', 'Thành phố Phủ Lý', 'Thành phố', '35'),
('349', 'Huyện Duy Tiên', 'Huyện', '35'),
('35', 'Huyện Quang Bình', 'Huyện', '2'),
('350', 'Huyện Kim Bảng', 'Huyện', '35'),
('351', 'Huyện Thanh Liêm', 'Huyện', '35'),
('352', 'Huyện Bình Lục', 'Huyện', '35'),
('353', 'Huyện Lý Nhân', 'Huyện', '35'),
('356', 'Thành phố Nam Định', 'Thành phố', '36'),
('358', 'Huyện Mỹ Lộc', 'Huyện', '36'),
('359', 'Huyện Vụ Bản', 'Huyện', '36'),
('360', 'Huyện Ý Yên', 'Huyện', '36'),
('361', 'Huyện Nghĩa Hưng', 'Huyện', '36'),
('362', 'Huyện Nam Trực', 'Huyện', '36'),
('363', 'Huyện Trực Ninh', 'Huyện', '36'),
('364', 'Huyện Xuân Trường', 'Huyện', '36'),
('365', 'Huyện Giao Thủy', 'Huyện', '36'),
('366', 'Huyện Hải Hậu', 'Huyện', '36'),
('369', 'Thành phố Ninh Bình', 'Thành phố', '37'),
('370', 'Thành phố Tam Điệp', 'Thành phố', '37'),
('372', 'Huyện Nho Quan', 'Huyện', '37'),
('373', 'Huyện Gia Viễn', 'Huyện', '37'),
('374', 'Huyện Hoa Lư', 'Huyện', '37'),
('375', 'Huyện Yên Khánh', 'Huyện', '37'),
('376', 'Huyện Kim Sơn', 'Huyện', '37'),
('377', 'Huyện Yên Mô', 'Huyện', '37'),
('380', 'Thành phố Thanh Hóa', 'Thành phố', '38'),
('381', 'Thị xã Bỉm Sơn', 'Thị xã', '38'),
('382', 'Thị xã Sầm Sơn', 'Thị xã', '38'),
('384', 'Huyện Mường Lát', 'Huyện', '38'),
('385', 'Huyện Quan Hóa', 'Huyện', '38'),
('386', 'Huyện Bá Thước', 'Huyện', '38'),
('387', 'Huyện Quan Sơn', 'Huyện', '38'),
('388', 'Huyện Lang Chánh', 'Huyện', '38'),
('389', 'Huyện Ngọc Lặc', 'Huyện', '38'),
('390', 'Huyện Cẩm Thủy', 'Huyện', '38'),
('391', 'Huyện Thạch Thành', 'Huyện', '38'),
('392', 'Huyện Hà Trung', 'Huyện', '38'),
('393', 'Huyện Vĩnh Lộc', 'Huyện', '38'),
('394', 'Huyện Yên Định', 'Huyện', '38'),
('395', 'Huyện Thọ Xuân', 'Huyện', '38'),
('396', 'Huyện Thường Xuân', 'Huyện', '38'),
('397', 'Huyện Triệu Sơn', 'Huyện', '38'),
('398', 'Huyện Thiệu Hóa', 'Huyện', '38'),
('399', 'Huyện Hoằng Hóa', 'Huyện', '38'),
('4', 'Quận Long Biên', 'Quận', '1'),
('40', 'Thành phố Cao Bằng', 'Thành phố', '4'),
('400', 'Huyện Hậu Lộc', 'Huyện', '38'),
('401', 'Huyện Nga Sơn', 'Huyện', '38'),
('402', 'Huyện Như Xuân', 'Huyện', '38'),
('403', 'Huyện Như Thanh', 'Huyện', '38'),
('404', 'Huyện Nông Cống', 'Huyện', '38'),
('405', 'Huyện Đông Sơn', 'Huyện', '38'),
('406', 'Huyện Quảng Xương', 'Huyện', '38'),
('407', 'Huyện Tĩnh Gia', 'Huyện', '38'),
('412', 'Thành phố Vinh', 'Thành phố', '40'),
('413', 'Thị xã Cửa Lò', 'Thị xã', '40'),
('414', 'Thị xã Thái Hoà', 'Thị xã', '40'),
('415', 'Huyện Quế Phong', 'Huyện', '40'),
('416', 'Huyện Quỳ Châu', 'Huyện', '40'),
('417', 'Huyện Kỳ Sơn', 'Huyện', '40'),
('418', 'Huyện Tương Dương', 'Huyện', '40'),
('419', 'Huyện Nghĩa Đàn', 'Huyện', '40'),
('42', 'Huyện Bảo Lâm', 'Huyện', '4'),
('420', 'Huyện Quỳ Hợp', 'Huyện', '40'),
('421', 'Huyện Quỳnh Lưu', 'Huyện', '40'),
('422', 'Huyện Con Cuông', 'Huyện', '40'),
('423', 'Huyện Tân Kỳ', 'Huyện', '40'),
('424', 'Huyện Anh Sơn', 'Huyện', '40'),
('425', 'Huyện Diễn Châu', 'Huyện', '40'),
('426', 'Huyện Yên Thành', 'Huyện', '40'),
('427', 'Huyện Đô Lương', 'Huyện', '40'),
('428', 'Huyện Thanh Chương', 'Huyện', '40'),
('429', 'Huyện Nghi Lộc', 'Huyện', '40'),
('43', 'Huyện Bảo Lạc', 'Huyện', '4'),
('430', 'Huyện Nam Đàn', 'Huyện', '40'),
('431', 'Huyện Hưng Nguyên', 'Huyện', '40'),
('432', 'Thị xã Hoàng Mai', 'Thị xã', '40'),
('436', 'Thành phố Hà Tĩnh', 'Thành phố', '42'),
('437', 'Thị xã Hồng Lĩnh', 'Thị xã', '42'),
('439', 'Huyện Hương Sơn', 'Huyện', '42'),
('44', 'Huyện Thông Nông', 'Huyện', '4'),
('440', 'Huyện Đức Thọ', 'Huyện', '42'),
('441', 'Huyện Vũ Quang', 'Huyện', '42'),
('442', 'Huyện Nghi Xuân', 'Huyện', '42'),
('443', 'Huyện Can Lộc', 'Huyện', '42'),
('444', 'Huyện Hương Khê', 'Huyện', '42'),
('445', 'Huyện Thạch Hà', 'Huyện', '42'),
('446', 'Huyện Cẩm Xuyên', 'Huyện', '42'),
('447', 'Huyện Kỳ Anh', 'Huyện', '42'),
('448', 'Huyện Lộc Hà', 'Huyện', '42'),
('449', 'Thị xã Kỳ Anh', 'Thị xã', '42'),
('45', 'Huyện Hà Quảng', 'Huyện', '4'),
('450', 'Thành Phố Đồng Hới', 'Thành phố', '44'),
('452', 'Huyện Minh Hóa', 'Huyện', '44'),
('453', 'Huyện Tuyên Hóa', 'Huyện', '44'),
('454', 'Huyện Quảng Trạch', 'Thị xã', '44'),
('455', 'Huyện Bố Trạch', 'Huyện', '44'),
('456', 'Huyện Quảng Ninh', 'Huyện', '44'),
('457', 'Huyện Lệ Thủy', 'Huyện', '44'),
('458', 'Thị xã Ba Đồn', 'Huyện', '44'),
('46', 'Huyện Trà Lĩnh', 'Huyện', '4'),
('461', 'Thành phố Đông Hà', 'Thành phố', '45'),
('462', 'Thị xã Quảng Trị', 'Thị xã', '45'),
('464', 'Huyện Vĩnh Linh', 'Huyện', '45'),
('465', 'Huyện Hướng Hóa', 'Huyện', '45'),
('466', 'Huyện Gio Linh', 'Huyện', '45'),
('467', 'Huyện Đa Krông', 'Huyện', '45'),
('468', 'Huyện Cam Lộ', 'Huyện', '45'),
('469', 'Huyện Triệu Phong', 'Huyện', '45'),
('47', 'Huyện Trùng Khánh', 'Huyện', '4'),
('470', 'Huyện Hải Lăng', 'Huyện', '45'),
('471', 'Huyện Cồn Cỏ', 'Huyện', '45'),
('474', 'Thành phố Huế', 'Thành phố', '46'),
('476', 'Huyện Phong Điền', 'Huyện', '46'),
('477', 'Huyện Quảng Điền', 'Huyện', '46'),
('478', 'Huyện Phú Vang', 'Huyện', '46'),
('479', 'Thị xã Hương Thủy', 'Thị xã', '46'),
('48', 'Huyện Hạ Lang', 'Huyện', '4'),
('480', 'Thị xã Hương Trà', 'Thị xã', '46'),
('481', 'Huyện A Lưới', 'Huyện', '46'),
('482', 'Huyện Phú Lộc', 'Huyện', '46'),
('483', 'Huyện Nam Đông', 'Huyện', '46'),
('49', 'Huyện Quảng Uyên', 'Huyện', '4'),
('490', 'Quận Liên Chiểu', 'Quận', '48'),
('491', 'Quận Thanh Khê', 'Quận', '48'),
('492', 'Quận Hải Châu', 'Quận', '48'),
('493', 'Quận Sơn Trà', 'Quận', '48'),
('494', 'Quận Ngũ Hành Sơn', 'Quận', '48'),
('495', 'Quận Cẩm Lệ', 'Quận', '48'),
('497', 'Huyện Hòa Vang', 'Huyện', '48'),
('498', 'Huyện Hoàng Sa', 'Huyện', '48'),
('5', 'Quận Cầu Giấy', 'Quận', '1'),
('50', 'Huyện Phục Hoà', 'Huyện', '4'),
('502', 'Thành phố Tam Kỳ', 'Thành phố', '49'),
('503', 'Thành phố Hội An', 'Thành phố', '49'),
('504', 'Huyện Tây Giang', 'Huyện', '49'),
('505', 'Huyện Đông Giang', 'Huyện', '49'),
('506', 'Huyện Đại Lộc', 'Huyện', '49'),
('507', 'Thị xã Điện Bàn', 'Thị xã', '49'),
('508', 'Huyện Duy Xuyên', 'Huyện', '49'),
('509', 'Huyện Quế Sơn', 'Huyện', '49'),
('51', 'Huyện Hoà An', 'Huyện', '4'),
('510', 'Huyện Nam Giang', 'Huyện', '49'),
('511', 'Huyện Phước Sơn', 'Huyện', '49'),
('512', 'Huyện Hiệp Đức', 'Huyện', '49'),
('513', 'Huyện Thăng Bình', 'Huyện', '49'),
('514', 'Huyện Tiên Phước', 'Huyện', '49'),
('515', 'Huyện Bắc Trà My', 'Huyện', '49'),
('516', 'Huyện Nam Trà My', 'Huyện', '49'),
('517', 'Huyện Núi Thành', 'Huyện', '49'),
('518', 'Huyện Phú Ninh', 'Huyện', '49'),
('519', 'Huyện Nông Sơn', 'Huyện', '49'),
('52', 'Huyện Nguyên Bình', 'Huyện', '4'),
('522', 'Thành phố Quảng Ngãi', 'Thành phố', '51'),
('524', 'Huyện Bình Sơn', 'Huyện', '51'),
('525', 'Huyện Trà Bồng', 'Huyện', '51'),
('526', 'Huyện Tây Trà', 'Huyện', '51'),
('527', 'Huyện Sơn Tịnh', 'Huyện', '51'),
('528', 'Huyện Tư Nghĩa', 'Huyện', '51'),
('529', 'Huyện Sơn Hà', 'Huyện', '51'),
('53', 'Huyện Thạch An', 'Huyện', '4'),
('530', 'Huyện Sơn Tây', 'Huyện', '51'),
('531', 'Huyện Minh Long', 'Huyện', '51'),
('532', 'Huyện Nghĩa Hành', 'Huyện', '51'),
('533', 'Huyện Mộ Đức', 'Huyện', '51'),
('534', 'Huyện Đức Phổ', 'Huyện', '51'),
('535', 'Huyện Ba Tơ', 'Huyện', '51'),
('536', 'Huyện Lý Sơn', 'Huyện', '51'),
('540', 'Thành phố Qui Nhơn', 'Thành phố', '52'),
('542', 'Huyện An Lão', 'Huyện', '52'),
('543', 'Huyện Hoài Nhơn', 'Huyện', '52'),
('544', 'Huyện Hoài Ân', 'Huyện', '52'),
('545', 'Huyện Phù Mỹ', 'Huyện', '52'),
('546', 'Huyện Vĩnh Thạnh', 'Huyện', '52'),
('547', 'Huyện Tây Sơn', 'Huyện', '52'),
('548', 'Huyện Phù Cát', 'Huyện', '52'),
('549', 'Thị xã An Nhơn', 'Thị xã', '52'),
('550', 'Huyện Tuy Phước', 'Huyện', '52'),
('551', 'Huyện Vân Canh', 'Huyện', '52'),
('555', 'Thành phố Tuy Hoà', 'Thành phố', '54'),
('557', 'Thị xã Sông Cầu', 'Thị xã', '54'),
('558', 'Huyện Đồng Xuân', 'Huyện', '54'),
('559', 'Huyện Tuy An', 'Huyện', '54'),
('560', 'Huyện Sơn Hòa', 'Huyện', '54'),
('561', 'Huyện Sông Hinh', 'Huyện', '54'),
('562', 'Huyện Tây Hoà', 'Huyện', '54'),
('563', 'Huyện Phú Hoà', 'Huyện', '54'),
('564', 'Huyện Đông Hòa', 'Huyện', '54'),
('568', 'Thành phố Nha Trang', 'Thành phố', '56'),
('569', 'Thành phố Cam Ranh', 'Thành phố', '56'),
('570', 'Huyện Cam Lâm', 'Huyện', '56'),
('571', 'Huyện Vạn Ninh', 'Huyện', '56'),
('572', 'Thị xã Ninh Hòa', 'Thị xã', '56'),
('573', 'Huyện Khánh Vĩnh', 'Huyện', '56'),
('574', 'Huyện Diên Khánh', 'Huyện', '56'),
('575', 'Huyện Khánh Sơn', 'Huyện', '56'),
('576', 'Huyện Trường Sa', 'Huyện', '56'),
('58', 'Thành Phố Bắc Kạn', 'Thành phố', '6'),
('582', 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', '58'),
('584', 'Huyện Bác Ái', 'Huyện', '58'),
('585', 'Huyện Ninh Sơn', 'Huyện', '58'),
('586', 'Huyện Ninh Hải', 'Huyện', '58'),
('587', 'Huyện Ninh Phước', 'Huyện', '58'),
('588', 'Huyện Thuận Bắc', 'Huyện', '58'),
('589', 'Huyện Thuận Nam', 'Huyện', '58'),
('593', 'Thành phố Phan Thiết', 'Thành phố', '60'),
('594', 'Thị xã La Gi', 'Thị xã', '60'),
('595', 'Huyện Tuy Phong', 'Huyện', '60'),
('596', 'Huyện Bắc Bình', 'Huyện', '60'),
('597', 'Huyện Hàm Thuận Bắc', 'Huyện', '60'),
('598', 'Huyện Hàm Thuận Nam', 'Huyện', '60'),
('599', 'Huyện Tánh Linh', 'Huyện', '60'),
('6', 'Quận Đống Đa', 'Quận', '1'),
('60', 'Huyện Pác Nặm', 'Huyện', '6'),
('600', 'Huyện Đức Linh', 'Huyện', '60'),
('601', 'Huyện Hàm Tân', 'Huyện', '60'),
('602', 'Huyện Phú Quí', 'Huyện', '60'),
('608', 'Thành phố Kon Tum', 'Thành phố', '62'),
('61', 'Huyện Ba Bể', 'Huyện', '6'),
('610', 'Huyện Đắk Glei', 'Huyện', '62'),
('611', 'Huyện Ngọc Hồi', 'Huyện', '62'),
('612', 'Huyện Đắk Tô', 'Huyện', '62'),
('613', 'Huyện Kon Plông', 'Huyện', '62'),
('614', 'Huyện Kon Rẫy', 'Huyện', '62'),
('615', 'Huyện Đắk Hà', 'Huyện', '62'),
('616', 'Huyện Sa Thầy', 'Huyện', '62'),
('617', 'Huyện Tu Mơ Rông', 'Huyện', '62'),
('618', 'Huyện Ia H\' Drai', 'Huyện', '62'),
('62', 'Huyện Ngân Sơn', 'Huyện', '6'),
('622', 'Thành phố Pleiku', 'Thành phố', '64'),
('623', 'Thị xã An Khê', 'Thị xã', '64'),
('624', 'Thị xã Ayun Pa', 'Thị xã', '64'),
('625', 'Huyện KBang', 'Huyện', '64'),
('626', 'Huyện Đăk Đoa', 'Huyện', '64'),
('627', 'Huyện Chư Păh', 'Huyện', '64'),
('628', 'Huyện Ia Grai', 'Huyện', '64'),
('629', 'Huyện Mang Yang', 'Huyện', '64'),
('63', 'Huyện Bạch Thông', 'Huyện', '6'),
('630', 'Huyện Kông Chro', 'Huyện', '64'),
('631', 'Huyện Đức Cơ', 'Huyện', '64'),
('632', 'Huyện Chư Prông', 'Huyện', '64'),
('633', 'Huyện Chư Sê', 'Huyện', '64'),
('634', 'Huyện Đăk Pơ', 'Huyện', '64'),
('635', 'Huyện Ia Pa', 'Huyện', '64'),
('637', 'Huyện Krông Pa', 'Huyện', '64'),
('638', 'Huyện Phú Thiện', 'Huyện', '64'),
('639', 'Huyện Chư Pưh', 'Huyện', '64'),
('64', 'Huyện Chợ Đồn', 'Huyện', '6'),
('643', 'Thành phố Buôn Ma Thuột', 'Thành phố', '66'),
('644', 'Thị Xã Buôn Hồ', 'Thị xã', '66'),
('645', 'Huyện Ea H\'leo', 'Huyện', '66'),
('646', 'Huyện Ea Súp', 'Huyện', '66'),
('647', 'Huyện Buôn Đôn', 'Huyện', '66'),
('648', 'Huyện Cư M\'gar', 'Huyện', '66'),
('649', 'Huyện Krông Búk', 'Huyện', '66'),
('65', 'Huyện Chợ Mới', 'Huyện', '6'),
('650', 'Huyện Krông Năng', 'Huyện', '66'),
('651', 'Huyện Ea Kar', 'Huyện', '66'),
('652', 'Huyện M\'Đrắk', 'Huyện', '66'),
('653', 'Huyện Krông Bông', 'Huyện', '66'),
('654', 'Huyện Krông Pắc', 'Huyện', '66'),
('655', 'Huyện Krông A Na', 'Huyện', '66'),
('656', 'Huyện Lắk', 'Huyện', '66'),
('657', 'Huyện Cư Kuin', 'Huyện', '66'),
('66', 'Huyện Na Rì', 'Huyện', '6'),
('660', 'Thị xã Gia Nghĩa', 'Thị xã', '67'),
('661', 'Huyện Đăk Glong', 'Huyện', '67'),
('662', 'Huyện Cư Jút', 'Huyện', '67'),
('663', 'Huyện Đắk Mil', 'Huyện', '67'),
('664', 'Huyện Krông Nô', 'Huyện', '67'),
('665', 'Huyện Đắk Song', 'Huyện', '67'),
('666', 'Huyện Đắk R Lấp', 'Huyện', '67'),
('667', 'Huyện Tuy Đức', 'Huyện', '67'),
('672', 'Thành phố Đà Lạt', 'Thành phố', '68'),
('673', 'Thành phố Bảo Lộc', 'Thành phố', '68'),
('674', 'Huyện Đam Rông', 'Huyện', '68'),
('675', 'Huyện Lạc Dương', 'Huyện', '68'),
('676', 'Huyện Lâm Hà', 'Huyện', '68'),
('677', 'Huyện Đơn Dương', 'Huyện', '68'),
('678', 'Huyện Đức Trọng', 'Huyện', '68'),
('679', 'Huyện Di Linh', 'Huyện', '68'),
('680', 'Huyện Bảo Lâm', 'Huyện', '68'),
('681', 'Huyện Đạ Huoai', 'Huyện', '68'),
('682', 'Huyện Đạ Tẻh', 'Huyện', '68'),
('683', 'Huyện Cát Tiên', 'Huyện', '68'),
('688', 'Thị xã Phước Long', 'Thị xã', '70'),
('689', 'Thị xã Đồng Xoài', 'Thị xã', '70'),
('690', 'Thị xã Bình Long', 'Thị xã', '70'),
('691', 'Huyện Bù Gia Mập', 'Huyện', '70'),
('692', 'Huyện Lộc Ninh', 'Huyện', '70'),
('693', 'Huyện Bù Đốp', 'Huyện', '70'),
('694', 'Huyện Hớn Quản', 'Huyện', '70'),
('695', 'Huyện Đồng Phú', 'Huyện', '70'),
('696', 'Huyện Bù Đăng', 'Huyện', '70'),
('697', 'Huyện Chơn Thành', 'Huyện', '70'),
('698', 'Huyện Phú Riềng', 'Huyện', '70'),
('7', 'Quận Hai Bà Trưng', 'Quận', '1'),
('70', 'Thành phố Tuyên Quang', 'Thành phố', '8'),
('703', 'Thành phố Tây Ninh', 'Thành phố', '72'),
('705', 'Huyện Tân Biên', 'Huyện', '72'),
('706', 'Huyện Tân Châu', 'Huyện', '72'),
('707', 'Huyện Dương Minh Châu', 'Huyện', '72'),
('708', 'Huyện Châu Thành', 'Huyện', '72'),
('709', 'Huyện Hòa Thành', 'Huyện', '72'),
('71', 'Huyện Lâm Bình', 'Huyện', '8'),
('710', 'Huyện Gò Dầu', 'Huyện', '72'),
('711', 'Huyện Bến Cầu', 'Huyện', '72'),
('712', 'Huyện Trảng Bàng', 'Huyện', '72'),
('718', 'Thành phố Thủ Dầu Một', 'Thành phố', '74'),
('719', 'Huyện Bàu Bàng', 'Huyện', '74'),
('72', 'Huyện Nà Hang', 'Huyện', '8'),
('720', 'Huyện Dầu Tiếng', 'Huyện', '74'),
('721', 'Thị xã Bến Cát', 'Thị xã', '74'),
('722', 'Huyện Phú Giáo', 'Huyện', '74'),
('723', 'Thị xã Tân Uyên', 'Thị xã', '74'),
('724', 'Thị xã Dĩ An', 'Thị xã', '74'),
('725', 'Thị xã Thuận An', 'Thị xã', '74'),
('726', 'Huyện Bắc Tân Uyên', 'Huyện', '74'),
('73', 'Huyện Chiêm Hóa', 'Huyện', '8'),
('731', 'Thành phố Biên Hòa', 'Thành phố', '75'),
('732', 'Thị xã Long Khánh', 'Thị xã', '75'),
('734', 'Huyện Tân Phú', 'Huyện', '75'),
('735', 'Huyện Vĩnh Cửu', 'Huyện', '75'),
('736', 'Huyện Định Quán', 'Huyện', '75'),
('737', 'Huyện Trảng Bom', 'Huyện', '75'),
('738', 'Huyện Thống Nhất', 'Huyện', '75'),
('739', 'Huyện Cẩm Mỹ', 'Huyện', '75'),
('74', 'Huyện Hàm Yên', 'Huyện', '8'),
('740', 'Huyện Long Thành', 'Huyện', '75'),
('741', 'Huyện Xuân Lộc', 'Huyện', '75'),
('742', 'Huyện Nhơn Trạch', 'Huyện', '75'),
('747', 'Thành phố Vũng Tàu', 'Thành phố', '77'),
('748', 'Thành phố Bà Rịa', 'Thành phố', '77'),
('75', 'Huyện Yên Sơn', 'Huyện', '8'),
('750', 'Huyện Châu Đức', 'Huyện', '77'),
('751', 'Huyện Xuyên Mộc', 'Huyện', '77'),
('752', 'Huyện Long Điền', 'Huyện', '77'),
('753', 'Huyện Đất Đỏ', 'Huyện', '77'),
('754', 'Huyện Tân Thành', 'Huyện', '77'),
('755', 'Huyện Côn Đảo', 'Huyện', '77'),
('76', 'Huyện Sơn Dương', 'Huyện', '8'),
('760', 'Quận 1', 'Quận', '79'),
('761', 'Quận 12', 'Quận', '79'),
('762', 'Quận Thủ Đức', 'Quận', '79'),
('763', 'Quận 9', 'Quận', '79'),
('764', 'Quận Gò Vấp', 'Quận', '79'),
('765', 'Quận Bình Thạnh', 'Quận', '79'),
('766', 'Quận Tân Bình', 'Quận', '79'),
('767', 'Quận Tân Phú', 'Quận', '79'),
('768', 'Quận Phú Nhuận', 'Quận', '79'),
('769', 'Quận 2', 'Quận', '79'),
('770', 'Quận 3', 'Quận', '79'),
('771', 'Quận 10', 'Quận', '79'),
('772', 'Quận 11', 'Quận', '79'),
('773', 'Quận 4', 'Quận', '79'),
('774', 'Quận 5', 'Quận', '79'),
('775', 'Quận 6', 'Quận', '79'),
('776', 'Quận 8', 'Quận', '79'),
('777', 'Quận Bình Tân', 'Quận', '79'),
('778', 'Quận 7', 'Quận', '79'),
('783', 'Huyện Củ Chi', 'Huyện', '79'),
('784', 'Huyện Hóc Môn', 'Huyện', '79'),
('785', 'Huyện Bình Chánh', 'Huyện', '79'),
('786', 'Huyện Nhà Bè', 'Huyện', '79'),
('787', 'Huyện Cần Giờ', 'Huyện', '79'),
('794', 'Thành phố Tân An', 'Thành phố', '80'),
('795', 'Thị xã Kiến Tường', 'Thị xã', '80'),
('796', 'Huyện Tân Hưng', 'Huyện', '80'),
('797', 'Huyện Vĩnh Hưng', 'Huyện', '80'),
('798', 'Huyện Mộc Hóa', 'Huyện', '80'),
('799', 'Huyện Tân Thạnh', 'Huyện', '80'),
('8', 'Quận Hoàng Mai', 'Quận', '1'),
('80', 'Thành phố Lào Cai', 'Thành phố', '10'),
('800', 'Huyện Thạnh Hóa', 'Huyện', '80'),
('801', 'Huyện Đức Huệ', 'Huyện', '80'),
('802', 'Huyện Đức Hòa', 'Huyện', '80'),
('803', 'Huyện Bến Lức', 'Huyện', '80'),
('804', 'Huyện Thủ Thừa', 'Huyện', '80'),
('805', 'Huyện Tân Trụ', 'Huyện', '80'),
('806', 'Huyện Cần Đước', 'Huyện', '80'),
('807', 'Huyện Cần Giuộc', 'Huyện', '80'),
('808', 'Huyện Châu Thành', 'Huyện', '80'),
('815', 'Thành phố Mỹ Tho', 'Thành phố', '82'),
('816', 'Thị xã Gò Công', 'Thị xã', '82'),
('817', 'Thị xã Cai Lậy', 'Huyện', '82'),
('818', 'Huyện Tân Phước', 'Huyện', '82'),
('819', 'Huyện Cái Bè', 'Huyện', '82'),
('82', 'Huyện Bát Xát', 'Huyện', '10'),
('820', 'Huyện Cai Lậy', 'Thị xã', '82'),
('821', 'Huyện Châu Thành', 'Huyện', '82'),
('822', 'Huyện Chợ Gạo', 'Huyện', '82'),
('823', 'Huyện Gò Công Tây', 'Huyện', '82'),
('824', 'Huyện Gò Công Đông', 'Huyện', '82'),
('825', 'Huyện Tân Phú Đông', 'Huyện', '82'),
('829', 'Thành phố Bến Tre', 'Thành phố', '83'),
('83', 'Huyện Mường Khương', 'Huyện', '10'),
('831', 'Huyện Châu Thành', 'Huyện', '83'),
('832', 'Huyện Chợ Lách', 'Huyện', '83'),
('833', 'Huyện Mỏ Cày Nam', 'Huyện', '83'),
('834', 'Huyện Giồng Trôm', 'Huyện', '83'),
('835', 'Huyện Bình Đại', 'Huyện', '83'),
('836', 'Huyện Ba Tri', 'Huyện', '83'),
('837', 'Huyện Thạnh Phú', 'Huyện', '83'),
('838', 'Huyện Mỏ Cày Bắc', 'Huyện', '83'),
('84', 'Huyện Si Ma Cai', 'Huyện', '10'),
('842', 'Thành phố Trà Vinh', 'Thành phố', '84'),
('844', 'Huyện Càng Long', 'Huyện', '84'),
('845', 'Huyện Cầu Kè', 'Huyện', '84'),
('846', 'Huyện Tiểu Cần', 'Huyện', '84'),
('847', 'Huyện Châu Thành', 'Huyện', '84'),
('848', 'Huyện Cầu Ngang', 'Huyện', '84'),
('849', 'Huyện Trà Cú', 'Huyện', '84'),
('85', 'Huyện Bắc Hà', 'Huyện', '10'),
('850', 'Huyện Duyên Hải', 'Huyện', '84'),
('851', 'Thị xã Duyên Hải', 'Thị xã', '84'),
('855', 'Thành phố Vĩnh Long', 'Thành phố', '86'),
('857', 'Huyện Long Hồ', 'Huyện', '86'),
('858', 'Huyện Mang Thít', 'Huyện', '86'),
('859', 'Huyện  Vũng Liêm', 'Huyện', '86'),
('86', 'Huyện Bảo Thắng', 'Huyện', '10'),
('860', 'Huyện Tam Bình', 'Huyện', '86'),
('861', 'Thị xã Bình Minh', 'Thị xã', '86'),
('862', 'Huyện Trà Ôn', 'Huyện', '86'),
('863', 'Huyện Bình Tân', 'Huyện', '86'),
('866', 'Thành phố Cao Lãnh', 'Thành phố', '87'),
('867', 'Thành phố Sa Đéc', 'Thành phố', '87'),
('868', 'Thị xã Hồng Ngự', 'Thị xã', '87'),
('869', 'Huyện Tân Hồng', 'Huyện', '87'),
('87', 'Huyện Bảo Yên', 'Huyện', '10'),
('870', 'Huyện Hồng Ngự', 'Huyện', '87'),
('871', 'Huyện Tam Nông', 'Huyện', '87'),
('872', 'Huyện Tháp Mười', 'Huyện', '87'),
('873', 'Huyện Cao Lãnh', 'Huyện', '87'),
('874', 'Huyện Thanh Bình', 'Huyện', '87'),
('875', 'Huyện Lấp Vò', 'Huyện', '87'),
('876', 'Huyện Lai Vung', 'Huyện', '87'),
('877', 'Huyện Châu Thành', 'Huyện', '87'),
('88', 'Huyện Sa Pa', 'Huyện', '10'),
('883', 'Thành phố Long Xuyên', 'Thành phố', '89'),
('884', 'Thành phố Châu Đốc', 'Thành phố', '89'),
('886', 'Huyện An Phú', 'Huyện', '89'),
('887', 'Thị xã Tân Châu', 'Thị xã', '89'),
('888', 'Huyện Phú Tân', 'Huyện', '89'),
('889', 'Huyện Châu Phú', 'Huyện', '89'),
('89', 'Huyện Văn Bàn', 'Huyện', '10'),
('890', 'Huyện Tịnh Biên', 'Huyện', '89'),
('891', 'Huyện Tri Tôn', 'Huyện', '89'),
('892', 'Huyện Châu Thành', 'Huyện', '89'),
('893', 'Huyện Chợ Mới', 'Huyện', '89'),
('894', 'Huyện Thoại Sơn', 'Huyện', '89'),
('899', 'Thành phố Rạch Giá', 'Thành phố', '91'),
('9', 'Quận Thanh Xuân', 'Quận', '1'),
('900', 'Thị xã Hà Tiên', 'Thị xã', '91'),
('902', 'Huyện Kiên Lương', 'Huyện', '91'),
('903', 'Huyện Hòn Đất', 'Huyện', '91'),
('904', 'Huyện Tân Hiệp', 'Huyện', '91'),
('905', 'Huyện Châu Thành', 'Huyện', '91'),
('906', 'Huyện Giồng Riềng', 'Huyện', '91'),
('907', 'Huyện Gò Quao', 'Huyện', '91'),
('908', 'Huyện An Biên', 'Huyện', '91'),
('909', 'Huyện An Minh', 'Huyện', '91'),
('910', 'Huyện Vĩnh Thuận', 'Huyện', '91'),
('911', 'Huyện Phú Quốc', 'Huyện', '91'),
('912', 'Huyện Kiên Hải', 'Huyện', '91'),
('913', 'Huyện U Minh Thượng', 'Huyện', '91'),
('914', 'Huyện Giang Thành', 'Huyện', '91'),
('916', 'Quận Ninh Kiều', 'Quận', '92'),
('917', 'Quận Ô Môn', 'Quận', '92'),
('918', 'Quận Bình Thuỷ', 'Quận', '92'),
('919', 'Quận Cái Răng', 'Quận', '92'),
('923', 'Quận Thốt Nốt', 'Quận', '92'),
('924', 'Huyện Vĩnh Thạnh', 'Huyện', '92'),
('925', 'Huyện Cờ Đỏ', 'Huyện', '92'),
('926', 'Huyện Phong Điền', 'Huyện', '92'),
('927', 'Huyện Thới Lai', 'Huyện', '92'),
('930', 'Thành phố Vị Thanh', 'Thành phố', '93'),
('931', 'Thị xã Ngã Bảy', 'Thị xã', '93'),
('932', 'Huyện Châu Thành A', 'Huyện', '93'),
('933', 'Huyện Châu Thành', 'Huyện', '93'),
('934', 'Huyện Phụng Hiệp', 'Huyện', '93'),
('935', 'Huyện Vị Thuỷ', 'Huyện', '93'),
('936', 'Huyện Long Mỹ', 'Huyện', '93'),
('937', 'Thị xã Long Mỹ', 'Thị xã', '93'),
('94', 'Thành phố Điện Biên Phủ', 'Thành phố', '11'),
('941', 'Thành phố Sóc Trăng', 'Thành phố', '94'),
('942', 'Huyện Châu Thành', 'Huyện', '94'),
('943', 'Huyện Kế Sách', 'Huyện', '94'),
('944', 'Huyện Mỹ Tú', 'Huyện', '94'),
('945', 'Huyện Cù Lao Dung', 'Huyện', '94'),
('946', 'Huyện Long Phú', 'Huyện', '94'),
('947', 'Huyện Mỹ Xuyên', 'Huyện', '94'),
('948', 'Thị xã Ngã Năm', 'Thị xã', '94'),
('949', 'Huyện Thạnh Trị', 'Huyện', '94'),
('95', 'Thị Xã Mường Lay', 'Thị xã', '11'),
('950', 'Thị xã Vĩnh Châu', 'Thị xã', '94'),
('951', 'Huyện Trần Đề', 'Huyện', '94'),
('954', 'Thành phố Bạc Liêu', 'Thành phố', '95'),
('956', 'Huyện Hồng Dân', 'Huyện', '95'),
('957', 'Huyện Phước Long', 'Huyện', '95'),
('958', 'Huyện Vĩnh Lợi', 'Huyện', '95'),
('959', 'Thị xã Giá Rai', 'Thị xã', '95'),
('96', 'Huyện Mường Nhé', 'Huyện', '11'),
('960', 'Huyện Đông Hải', 'Huyện', '95'),
('961', 'Huyện Hoà Bình', 'Huyện', '95'),
('964', 'Thành phố Cà Mau', 'Thành phố', '96'),
('966', 'Huyện U Minh', 'Huyện', '96'),
('967', 'Huyện Thới Bình', 'Huyện', '96'),
('968', 'Huyện Trần Văn Thời', 'Huyện', '96'),
('969', 'Huyện Cái Nước', 'Huyện', '96'),
('97', 'Huyện Mường Chà', 'Huyện', '11'),
('970', 'Huyện Đầm Dơi', 'Huyện', '96'),
('971', 'Huyện Năm Căn', 'Huyện', '96'),
('972', 'Huyện Phú Tân', 'Huyện', '96'),
('973', 'Huyện Ngọc Hiển', 'Huyện', '96'),
('98', 'Huyện Tủa Chùa', 'Huyện', '11'),
('99', 'Huyện Tuần Giáo', 'Huyện', '11');

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `options` varchar(2) DEFAULT NULL,
  `active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `position`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`, `options`, `active`) VALUES
(7, 'Banner 2', 'google.com', 'slideshow', 'banner_coll_1_2.jpg', '2022-06-06 08:46:08', 'Supper Admin', '2022-06-06 08:46:08', 'Supper Admin', 1, 1, 1, NULL, 0),
(6, 'Banner 1', 'google.com', 'slideshow', 'banner_coll_1_3.jpg', '2022-06-06 08:45:54', 'Supper Admin', '2022-06-06 08:45:54', 'Supper Admin', 1, 1, 1, NULL, 0),
(3, 'test', 'test', 'slideshow', 'bottom_banner_2.jpg', '2022-05-31 11:52:24', 'Supper Admin', '2022-05-31 11:52:24', 'Supper Admin', 0, 1, 1, NULL, 0),
(4, 'test 2', 'test 2', 'slideshow', 'bottom_banner_3.jpg', '2022-05-31 11:52:47', 'Supper Admin', '2022-05-31 11:52:47', 'Supper Admin', 0, 1, 1, NULL, 0),
(5, 'test 3', 'test 3', 'slideshow', 'bottom_banner_1.jpg', '2022-05-31 11:52:59', 'Supper Admin', '2022-05-31 11:52:59', 'Supper Admin', 0, 1, 1, NULL, 0),
(8, 'Banner 3', 'google.com', 'slideshow', 'banner_coll_1_1.jpg', '2022-06-06 08:46:20', 'Supper Admin', '2022-06-06 08:46:20', 'Supper Admin', 1, 1, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_social`
--

CREATE TABLE `db_social` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_social`
--

INSERT INTO `db_social` (`id`, `icon`, `name`, `url`) VALUES
(1, 'logo-youtube-nut-play-youtube-png-387.png', 'youtube', 'youtube'),
(3, 'download.png', 'zalo', '01234567899'),
(4, '600px-Facebook-icon-1.png', 'facebook', 'fb.me');

-- --------------------------------------------------------

--
-- Table structure for table `db_submail`
--

CREATE TABLE `db_submail` (
  `id` int(11) NOT NULL,
  `mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `db_tinhthanhpho`
--

CREATE TABLE `db_tinhthanhpho` (
  `matp` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `db_tinhthanhpho`
--

INSERT INTO `db_tinhthanhpho` (`matp`, `name`, `type`) VALUES
('1', 'Thành phố Hà Nội', 'Thành phố Trung ương'),
('10', 'Tỉnh Lào Cai', 'Tỉnh'),
('11', 'Tỉnh Điện Biên', 'Tỉnh'),
('12', 'Tỉnh Lai Châu', 'Tỉnh'),
('14', 'Tỉnh Sơn La', 'Tỉnh'),
('15', 'Tỉnh Yên Bái', 'Tỉnh'),
('17', 'Tỉnh Hoà Bình', 'Tỉnh'),
('19', 'Tỉnh Thái Nguyên', 'Tỉnh'),
('2', 'Tỉnh Hà Giang', 'Tỉnh'),
('20', 'Tỉnh Lạng Sơn', 'Tỉnh'),
('22', 'Tỉnh Quảng Ninh', 'Tỉnh'),
('24', 'Tỉnh Bắc Giang', 'Tỉnh'),
('25', 'Tỉnh Phú Thọ', 'Tỉnh'),
('26', 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
('27', 'Tỉnh Bắc Ninh', 'Tỉnh'),
('30', 'Tỉnh Hải Dương', 'Tỉnh'),
('31', 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
('33', 'Tỉnh Hưng Yên', 'Tỉnh'),
('34', 'Tỉnh Thái Bình', 'Tỉnh'),
('35', 'Tỉnh Hà Nam', 'Tỉnh'),
('36', 'Tỉnh Nam Định', 'Tỉnh'),
('37', 'Tỉnh Ninh Bình', 'Tỉnh'),
('38', 'Tỉnh Thanh Hóa', 'Tỉnh'),
('4', 'Tỉnh Cao Bằng', 'Tỉnh'),
('40', 'Tỉnh Nghệ An', 'Tỉnh'),
('42', 'Tỉnh Hà Tĩnh', 'Tỉnh'),
('44', 'Tỉnh Quảng Bình', 'Tỉnh'),
('45', 'Tỉnh Quảng Trị', 'Tỉnh'),
('46', 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
('48', 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
('49', 'Tỉnh Quảng Nam', 'Tỉnh'),
('51', 'Tỉnh Quảng Ngãi', 'Tỉnh'),
('52', 'Tỉnh Bình Định', 'Tỉnh'),
('54', 'Tỉnh Phú Yên', 'Tỉnh'),
('56', 'Tỉnh Khánh Hòa', 'Tỉnh'),
('58', 'Tỉnh Ninh Thuận', 'Tỉnh'),
('6', 'Tỉnh Bắc Kạn', 'Tỉnh'),
('60', 'Tỉnh Bình Thuận', 'Tỉnh'),
('62', 'Tỉnh Kon Tum', 'Tỉnh'),
('64', 'Tỉnh Gia Lai', 'Tỉnh'),
('66', 'Tỉnh Đắk Lắk', 'Tỉnh'),
('67', 'Tỉnh Đắk Nông', 'Tỉnh'),
('68', 'Tỉnh Lâm Đồng', 'Tỉnh'),
('70', 'Tỉnh Bình Phước', 'Tỉnh'),
('72', 'Tỉnh Tây Ninh', 'Tỉnh'),
('74', 'Tỉnh Bình Dương', 'Tỉnh'),
('75', 'Tỉnh Đồng Nai', 'Tỉnh'),
('77', 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
('79', 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
('8', 'Tỉnh Tuyên Quang', 'Tỉnh'),
('80', 'Tỉnh Long An', 'Tỉnh'),
('82', 'Tỉnh Tiền Giang', 'Tỉnh'),
('83', 'Tỉnh Bến Tre', 'Tỉnh'),
('84', 'Tỉnh Trà Vinh', 'Tỉnh'),
('86', 'Tỉnh Vĩnh Long', 'Tỉnh'),
('87', 'Tỉnh Đồng Tháp', 'Tỉnh'),
('89', 'Tỉnh An Giang', 'Tỉnh'),
('91', 'Tỉnh Kiên Giang', 'Tỉnh'),
('92', 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
('93', 'Tỉnh Hậu Giang', 'Tỉnh'),
('94', 'Tỉnh Sóc Trăng', 'Tỉnh'),
('95', 'Tỉnh Bạc Liêu', 'Tỉnh'),
('96', 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(64) NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `img` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `img`, `created`, `trash`, `access`, `status`) VALUES
(4, 'Supper Admin', 'supperadmin', 'adc909449d4d5002003ac2a7613648305e681a83', 1, 'chungvd.it@gmail.com', 1, '0123456789', 'a22aeef917ae5c59006182ced50f72e8.png', '2016-10-03 22:30:00', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Quản trị', '2015-07-09 00:00:00', 4, '2015-07-09 00:00:00', 4, 1, 1, 1),
(2, 'Chủ shop', '2015-07-09 00:00:00', 4, '2015-07-09 00:00:00', 4, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_content_type`
--
ALTER TABLE `db_content_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_location`
--
ALTER TABLE `db_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_page`
--
ALTER TABLE `db_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_page_type`
--
ALTER TABLE `db_page_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product_instance`
--
ALTER TABLE `db_product_instance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product_option`
--
ALTER TABLE `db_product_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_quanhuyen`
--
ALTER TABLE `db_quanhuyen`
  ADD PRIMARY KEY (`maqh`);

--
-- Indexes for table `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_social`
--
ALTER TABLE `db_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_submail`
--
ALTER TABLE `db_submail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_tinhthanhpho`
--
ALTER TABLE `db_tinhthanhpho`
  ADD PRIMARY KEY (`matp`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `db_content_type`
--
ALTER TABLE `db_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `db_location`
--
ALTER TABLE `db_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `db_page`
--
ALTER TABLE `db_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_page_type`
--
ALTER TABLE `db_page_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `db_product_instance`
--
ALTER TABLE `db_product_instance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_product_option`
--
ALTER TABLE `db_product_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `db_social`
--
ALTER TABLE `db_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `db_submail`
--
ALTER TABLE `db_submail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
