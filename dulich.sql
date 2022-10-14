-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 13, 2022 lúc 06:19 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dulich`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(50) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`) VALUES
(1, 'tour miền nam'),
(2, 'tour miền trung'),
(3, 'tour miền bắc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) UNSIGNED NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Yến sào chưng đường phèn'),
(2, 'Yến chưng KID'),
(3, 'Yến chưng nhân sâm'),
(4, 'Yến chưng đông trùng hạ thảo'),
(5, 'Yến chưng Saffron'),
(6, 'Yến chưng hạt chia'),
(7, 'Yến chưng không đường'),
(8, 'Yến sào Táo Đỏ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `brand_id` int(11) UNSIGNED NOT NULL,
  `sanpham_name` varchar(255) NOT NULL,
  `sanpham_chitiet` text NOT NULL,
  `sanpham_gia` int(50) NOT NULL,
  `sanpham_giakhuyenmai` int(50) NOT NULL,
  `hinh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `brand_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_gia`, `sanpham_giakhuyenmai`, `hinh`) VALUES
(3, 1, 1, 'DU LỊCH LIÊN TUYẾN: HÀN QUỐC - BẮC KINH (THÁNG 1, 2, 3/2020)', 'Nha Trang với khí hậu ôn hòa, biển xanh trong quanh năm cùng những điểm vui chơi bậc nhất và không ngừng đổi mới hằng ngày luôn thu hút du khách gần xa. Đến với Nha Trang, du khách không chỉ tận hưởng những đợt gió biển trong nắng ấm mà còn có dịp thưởng thức hải sản tươi ngon cùng sự chào đón nồng hậu từ những người dân vùng biển nghĩa tình, cho Quý khách trải nghiệm khó quên tại vùng đất này.', 239000, 230000, '02.jpg'),
(4, 1, 1, 'DU LỊCH LIÊN TUYẾN: THƯỢNG HẢI - HÀN QUỐC (THÁNG 2, 3/2020)', 'Nha Trang với khí hậu ôn hòa, biển xanh trong quanh năm cùng những điểm vui chơi bậc nhất và không ngừng đổi mới hằng ngày luôn thu hút du khách gần xa. Đến với Nha Trang, du khách không chỉ tận hưởng những đợt gió biển trong nắng ấm mà còn có dịp thưởng thức hải sản tươi ngon cùng sự chào đón nồng hậu từ những người dân vùng biển nghĩa tình, cho Quý khách trải nghiệm khó quên tại vùng đất này.', 239000, 230000, '4.jfif'),
(5, 6, 1, 'DU LỊCH LIÊN TUYẾN: HỒNG KÔNG - HÀN QUỐC (SEOUL - NAMI - EVERLAND) - BAY HX - 2019 ', 'Nha Trang với khí hậu ôn hòa, biển xanh trong quanh năm cùng những điểm vui chơi bậc nhất và không ngừng đổi mới hằng ngày luôn thu hút du khách gần xa. Đến với Nha Trang, du khách không chỉ tận hưởng những đợt gió biển trong nắng ấm mà còn có dịp thưởng thức hải sản tươi ngon cùng sự chào đón nồng hậu từ những người dân vùng biển nghĩa tình, cho Quý khách trải nghiệm khó quên tại vùng đất này.', 249000, 240000, '21.jpg'),
(201, 3, 1, 'DU LỊCH LIÊN TUYẾN: HỒNG KÔNG - HÀN QUỐC (SEOUL - NAMI - EVERLAND) - BAY CX - 2019 ', 'Nha Trang với khí hậu ôn hòa, biển xanh trong quanh năm cùng những điểm vui chơi bậc nhất và không ngừng đổi mới hằng ngày luôn thu hút du khách gần xa. Đến với Nha Trang, du khách không chỉ tận hưởng những đợt gió biển trong nắng ấm mà còn có dịp thưởng thức hải sản tươi ngon cùng sự chào đón nồng hậu từ những người dân vùng biển nghĩa tình, cho Quý khách trải nghiệm khó quên tại vùng đất này.', 269000, 260000, '23.jpg'),
(202, 3, 1, 'DU LỊCH LIÊN TUYẾN: THƯỢNG HẢI - HÀN QUỐC 2019', 'Nha Trang với khí hậu ôn hòa, biển xanh trong quanh năm cùng những điểm vui chơi bậc nhất và không ngừng đổi mới hằng ngày luôn thu hút du khách gần xa. Đến với Nha Trang, du khách không chỉ tận hưởng những đợt gió biển trong nắng ấm mà còn có dịp thưởng thức hải sản tươi ngon cùng sự chào đón nồng hậu từ những người dân vùng biển nghĩa tình, cho Quý khách trải nghiệm khó quên tại vùng đất này.', 269000, 260000, '31.jpg'),
(205, 5, 1, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Nha Trang với khí hậu ôn hòa, biển xanh trong quanh năm cùng những điểm vui chơi bậc nhất và không ngừng đổi mới hằng ngày luôn thu hút du khách gần xa. Đến với Nha Trang, du khách không chỉ tận hưởng những đợt gió biển trong nắng ấm mà còn có dịp thưởng thức hải sản tươi ngon cùng sự chào đón nồng hậu từ những người dân vùng biển nghĩa tình, cho Quý khách trải nghiệm khó quên tại vùng đất này.', 269000, 260000, 'mb1.jpg'),
(206, 5, 2, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'một thắng cảnh tự nhiên nằm ở bờ biển phía Bắc thành phố Nha Trang. Nơi đây du khách có thể di chuyển vài bước đã chạm đến sóng biển hoặc chân đồi. Nhiều người bảo, Hòn Chồng là nơi giao nhau giữa biển và núi. Quần thể đá Hòn Chồng từ lâu đã trở thành điểm du lịch giàu tính nhân văn. Điều kỳ thú là những tảng đá lớn nằm chồng chất lên nhau bao đời nay nhưng sóng biển và mưa gió không thể xô ngã.', 269000, 260000, 'mb1.jpg'),
(302, 8, 2, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'một thắng cảnh tự nhiên nằm ở bờ biển phía Bắc thành phố Nha Trang. Nơi đây du khách có thể di chuyển vài bước đã chạm đến sóng biển hoặc chân đồi. Nhiều người bảo, Hòn Chồng là nơi giao nhau giữa biển và núi. Quần thể đá Hòn Chồng từ lâu đã trở thành điểm du lịch giàu tính nhân văn. Điều kỳ thú là những tảng đá lớn nằm chồng chất lên nhau bao đời nay nhưng sóng biển và mưa gió không thể xô ngã.', 248000, 240000, 'mb2.jpg'),
(303, 8, 2, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'một thắng cảnh tự nhiên nằm ở bờ biển phía Bắc thành phố Nha Trang. Nơi đây du khách có thể di chuyển vài bước đã chạm đến sóng biển hoặc chân đồi. Nhiều người bảo, Hòn Chồng là nơi giao nhau giữa biển và núi. Quần thể đá Hòn Chồng từ lâu đã trở thành điểm du lịch giàu tính nhân văn. Điều kỳ thú là những tảng đá lớn nằm chồng chất lên nhau bao đời nay nhưng sóng biển và mưa gió không thể xô ngã.', 248000, 240000, 'mb3.jpg'),
(306, 4, 3, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'một thắng cảnh tự nhiên nằm ở bờ biển phía Bắc thành phố Nha Trang. Nơi đây du khách có thể di chuyển vài bước đã chạm đến sóng biển hoặc chân đồi. Nhiều người bảo, Hòn Chồng là nơi giao nhau giữa biển và núi. Quần thể đá Hòn Chồng từ lâu đã trở thành điểm du lịch giàu tính nhân văn. Điều kỳ thú là những tảng đá lớn nằm chồng chất lên nhau bao đời nay nhưng sóng biển và mưa gió không thể xô ngã.', 269000, 260000, 'MN1.jpg'),
(401, 4, 3, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'một thắng cảnh tự nhiên nằm ở bờ biển phía Bắc thành phố Nha Trang. Nơi đây du khách có thể di chuyển vài bước đã chạm đến sóng biển hoặc chân đồi. Nhiều người bảo, Hòn Chồng là nơi giao nhau giữa biển và núi. Quần thể đá Hòn Chồng từ lâu đã trở thành điểm du lịch giàu tính nhân văn. Điều kỳ thú là những tảng đá lớn nằm chồng chất lên nhau bao đời nay nhưng sóng biển và mưa gió không thể xô ngã.', 269000, 260000, 'mn4.jpg'),
(402, 1, 3, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Sau bữa sáng, xe đưa Quý khách tham quan:\n- Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', 239000, 230000, 'mn4.jpg'),
(404, 1, 3, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Sau bữa sáng, xe đưa Quý khách tham quan:\n- Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', 255000, 250000, 'mb3.jpg'),
(405, 1, 3, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Sau bữa sáng, xe đưa Quý khách tham quan:\n- Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', 255000, 250000, 'mn4.jpg'),
(709, 6, 3, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Sau bữa sáng, xe đưa Quý khách tham quan:\n- Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', 265000, 259000, 'MN1.jpg'),
(713, 3, 3, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Sau bữa sáng, xe đưa Quý khách tham quan:\n- Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', 165000, 159000, '23.jpg'),
(714, 3, 3, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Sau bữa sáng, xe đưa Quý khách tham quan:\n- Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', 165000, 159000, 'MN1.jpg'),
(717, 8, 3, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Sau bữa sáng, xe đưa Quý khách tham quan:\n- Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', 265000, 255000, 'MN1.jpg'),
(718, 8, 3, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Sau bữa sáng, xe đưa Quý khách tham quan:\n- Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', 265000, 255000, '31.jpg'),
(721, 4, 1, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Sau bữa sáng, xe đưa Quý khách tham quan:\n- Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', 259000, 250000, 'MN1.jpg'),
(722, 4, 1, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Sau bữa sáng, xe đưa Quý khách tham quan:\n- Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', 259000, 250000, '23.jpg'),
(725, 4, 1, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Sau bữa sáng, xe đưa Quý khách tham quan:\n- Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', 259000, 250000, '31.jpg'),
(728, 1, 1, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Sau bữa sáng, xe đưa Quý khách tham quan:\n- Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', 229000, 220000, 'mb3.jpg'),
(729, 1, 1, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Sau bữa sáng, xe đưa Quý khách tham quan:\n- Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', 229000, 220000, '31.jpg'),
(733, 1, 1, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Sau bữa sáng, xe đưa Quý khách tham quan:\n- Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', 49000, 40000, '31.jpg'),
(734, 4, 1, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Sau bữa sáng, xe đưa Quý khách tham quan:\n- Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', 51000, 46000, 'mb3.jpg'),
(735, 8, 2, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Sau bữa sáng, xe đưa Quý khách tham quan:\n- Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', 248000, 240000, '23.jpg'),
(736, 5, 2, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Sau bữa sáng, xe đưa Quý khách tham quan:\n- Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', 269000, 260000, '02.jpg'),
(737, 8, 2, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Sau bữa sáng, xe đưa Quý khách tham quan:\n- Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', 248000, 240000, 'mb3.jpg'),
(738, 8, 2, 'DU LỊCH LIÊN TUYẾN: BẮC KINH - SEOUL - ĐẢO NAMI 2019', 'Sau bữa sáng, xe đưa Quý khách tham quan:\n- Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', 248000, 240000, 'mb3.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`),
  ADD KEY `category_id` (`category_id`,`brand_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=739;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD CONSTRAINT `tbl_sanpham_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`category_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_sanpham_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `tbl_brand` (`brand_id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
