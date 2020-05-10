-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 05, 2020 lúc 06:26 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: 'quanlycuahangdongho'
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng 'categories'
--

CREATE TABLE 'categories' (
  'id' int(11) NOT NULL,
  'categoryID' varchar(50) NOT NULL,
  'categoryName' varchar(150) NOT NULL,
  'description' varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng 'categories'
--

INSERT INTO 'categories' ('id', 'categoryID', 'categoryName', 'description') VALUES
(1, 'CAT01', 'Men\'s watches', 'Đồng hồ dành cho nam'),
(2, 'CAT02', 'Ladies watches', 'Đồng hồ dành cho nữ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng 'customers'
--

CREATE TABLE 'customers' (
  'id' int(11) NOT NULL,
  'customerID' varchar(20) NOT NULL,
  'password' varchar(32) NOT NULL,
  'email' varchar(50) NOT NULL,
  'phone' varchar(20) DEFAULT NULL,
  'address' varchar(200) DEFAULT NULL,
  'status' int(11) DEFAULT NULL,
  'fullName' varchar(100) NOT NULL,
  'birthDate' date DEFAULT NULL,
  'avatar' text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng 'customers'
--

INSERT INTO 'customers' ('id', 'customerID', 'password', 'email', 'phone', 'address', 'status', 'fullName', 'birthDate', 'avatar') VALUES
(1, 'CUS001', '123', 'nguyenvuphong@gmail.com', '0381465213', 'Hà Nội', NULL, 'Nguyễn Vũ Phong', NULL, NULL),
(2, 'CUS002', '123', 'nguyenvanan@gmail.com', '0331546212', 'Hải Phòng', NULL, 'Nguyễn Văn An', NULL, NULL),
(3, 'CUS003', '123', 'lethibinh@gmail.com', '0314526123', 'Nghệ An', NULL, 'Lê Thị Bình', NULL, NULL),
(4, 'CUS004', '456', 'nguyenhongnhung', '0331452369', 'Thái Bình', NULL, 'Nguyễn Hồng Nhung', NULL, NULL),
(5, 'CUS005', '456', 'phandinh@gmail.com', '0331245782', 'Hà Nội', NULL, 'Phan Văn Đình', NULL, NULL),
(6, 'CUS006', '456', 'lethiha@gmail.com', '0332645874', 'Thanh Hóa', NULL, 'Lê Thị Hà', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng 'employees'
--

CREATE TABLE 'employees' (
  'id' int(11) NOT NULL,
  'employeeID' varchar(20) NOT NULL,
  'employeeName' varchar(100) NOT NULL,
  'address' varchar(200) DEFAULT NULL,
  'email' varchar(100) NOT NULL,
  'password' varchar(32) NOT NULL,
  'phone' varchar(20) DEFAULT NULL,
  'birthDate' date DEFAULT NULL,
  'avatar' text DEFAULT NULL,
  'roll' varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng 'employees'
--

INSERT INTO 'employees' ('id', 'employeeID', 'employeeName', 'address', 'email', 'password', 'phone', 'birthDate', 'avatar', 'roll') VALUES
(1, 'EM001', 'Nguyễn Đình Lâm', 'Hà Nội', 'nguyendinhlam@gmail.com', '123', '0331232456', NULL, NULL, ''),
(2, 'EM002', 'Lê Minh Quang', 'Hà Nam', 'leminhquang@gmail.com', '123', '0314545782', NULL, NULL, ''),
(3, 'EM003', 'Đào Mạnh Đức', 'Hà Nội', 'daomanhduc@gmail.com', '123', '0331263148', NULL, NULL, ''),
(4, 'EM004', 'Hoàng Mạnh Cường', 'Thái Bình', 'hoangmanhcuong@gmail.com', '123', '0381497853', NULL, NULL, ''),
(5, 'EM005', 'Đoàn Thị Nga', 'Thái Bình', 'doanthinga@gmail.com', '123', '0312545879', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng 'orderdetail'
--

CREATE TABLE 'orderdetail' (
  'orderID' varchar(20) NOT NULL,
  'productID' varchar(20) NOT NULL,
  'unitPrice' int(11) DEFAULT NULL,
  'quantity' int(11) DEFAULT NULL,
  'discount' float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng 'orderdetail'
--

INSERT INTO 'orderdetail' ('orderID', 'productID', 'unitPrice', 'quantity', 'discount') VALUES
('ORD0001', 'PRO0007', 85738250, 2, 13),
('ORD0002', 'PRO0004', 139035000, 1, 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng 'orders'
--

CREATE TABLE 'orders' (
  'id' int(11) NOT NULL,
  'orderID' varchar(20) NOT NULL,
  'employeeID' varchar(20) NOT NULL,
  'customerID' varchar(20) NOT NULL,
  'orderDate' date DEFAULT NULL,
  'shipperID' varchar(20) DEFAULT NULL,
  'shippedDate' date DEFAULT NULL,
  'status' varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng 'orders'
--

INSERT INTO 'orders' ('id', 'orderID', 'employeeID', 'customerID', 'orderDate', 'shipperID', 'shippedDate', 'status') VALUES
(1, 'ORD0001', 'EM001', 'CUS001', '2019-12-14', 'SHIP001', '2019-12-20', '1'),
(2, 'ORD0002', 'EM002', 'CUS002', '2019-12-06', 'SHIP002', '2019-12-16', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng 'products'
--

CREATE TABLE 'products' (
  'id' int(11) NOT NULL,
  'productID' varchar(20) NOT NULL,
  'productName' varchar(150) NOT NULL,
  'supplierID' varchar(150) DEFAULT NULL,
  'categoryID' varchar(50) DEFAULT NULL,
  'quantity' int(11) DEFAULT NULL,
  'unitPrice' int(11) DEFAULT NULL,
  'discount' float DEFAULT NULL,
  'status' int(11) DEFAULT NULL,
  'description' text DEFAULT NULL,
  'thumbnail' varchar(500) NOT NULL,
  'image' text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng 'products'
--

INSERT INTO 'products' ('id', 'productID', 'productName', 'supplierID', 'categoryID', 'quantity', 'unitPrice', 'discount', 'status', 'description', 'thumbnail', 'image') VALUES
(1, 'PRO0001', 'Ballon Bleu de Silver Opaline Dial', 'SUP001', 'CAT01', 560, 129650137, 15, 1, 'Vỏ thép không gỉ với vòng thép không gỉ. Cố định khung thép không gỉ. Mặt số bằng bạc opaline với bàn tay màu xanh hình thanh kiếm và vạch số giờ La Mã. Đánh dấu phút xung quanh một vòng bên trong. Kiểu quay số: Analog. Tay phát quang và đánh dấu quay số. Hiển thị ngày ở vị trí 3 giờ. Chuyển động tự động với dự trữ năng lượng 42 giờ. Tinh thể sapphire chống trầy xước. Flute đẩy / kéo vương miện thiết lập với spinel tổng hợp hình cabbon. Trường hợp rắn trở lại. Đường kính vỏ: 42 mm. Độ dày vỏ: 13 mm. Hình dạng vỏ tròn. Chiều rộng dải: 12 mm. Chiều dài dải: 7 inch. Triển khai clasp. Chống nước ở 30 mét (100 feet). Chức năng: giờ, phút, giây, ngày. Kiểu dáng đồng hồ sang trọng. Nhãn đồng hồ: Swiss Made. Đồng hồ nam Cartier Ballon Bleu de Cartier Silver Opaline Dial thép không gỉ W69012Z4.', 'baume-et-mercier-capeland-chronograph-white-dial-watch-m0a10041.jpg', 'baume-et-mercier-capeland-chronograph-white-dial-watch-m0a10041.jpg;baume-et-mercier-capeland-chronograph-white-dial-watch-m0a10041_3.jpg;baume-et-mercier-capeland-chronograph-white-dial-watch-m0a10041_4.jpg;baume-et-mercier-capeland-chronograph-white-dial-watch-m0a10041_5.jpg\r\n '),
(5, 'PRO0002', 'Tank Opaline Dial', 'SUP001', 'CAT02', 500, 59089875, 4, 1, 'Vỏ thép không gỉ với dây đeo bằng da màu đen (da bê). Cố định khung thép không gỉ. Mặt số Opaline với bàn tay màu xanh và vạch số giờ La Mã. Đánh dấu phút xung quanh một vòng bên trong. Kiểu quay số: Analog. Chuyển động thạch anh. Tinh thể sapphire chống trầy xước. Trường hợp rắn trở lại. Kích thước vỏ: 34,8 mm x 27,4 mm. Độ dày vỏ: 5,55 mm. Hình chữ nhật trường hợp hình dạng. Triển khai clasp. Chống nước ở 30 mét / 100 feet. Chức năng: giờ, phút. Kiểu dáng đồng hồ sang trọng. Nhãn đồng hồ: Swiss Made. Đồng hồ đeo tay nữ Cartier Tank Opaline Dial WSTA0028.', ' calvin-klein-cheers-quartz-black-dial-watch-k8nx3ub1.jpg\r\n', ' calvin-klein-cheers-quartz-black-dial-watch-k8nx3ub1.jpg;calvin-klein-cheers-quartz-black-dial-watch-k8nx3ub1_2.jpg;calvin-klein-cheers-quartz-black-dial-watch-k8nx3ub1_3.jpg\r\n'),
(6, 'PRO0003', 'Santos-Dumont Quartz Silver Dial', 'SUP001', 'CAT01', 300, 90372750, 6, 1, 'Vỏ thép không gỉ với một dải cá sấu màu xanh. Cố định khung thép không gỉ màu bạc. Mặt số màu bạc với tay màu xanh và vạch số giờ La Mã. Kiểu quay số: Analog. Chuyển động thạch anh. Tinh thể sapphire chống trầy xước. Vít xuống vương miện. Trường hợp rắn trở lại. Hình dạng vỏ hình chữ nhật, kích thước vỏ: 43,5 mm x 31,4 mm, độ dày vỏ: 7,3 mm. Gấp qua kẹp. Chống nước ở 30 mét / 100 feet. Chức năng: giờ, phút. Thông tin bổ sung: hộp ban đầu, thẻ bảo hành quốc tế, hướng dẫn sử dụng (phụ kiện đầy đủ). Kiểu dáng đồng hồ sang trọng. Nhãn đồng hồ: Swiss Made. Đồng hồ nam mặt số bằng bạc Cartier Santos-Dumont Quartz WSSA0022.\r\n', ' calvin-klein-cheers-quartz-silver-dial-ladies-watch-k8ny3tk6.jpg\r\n', ' calvin-klein-cheers-quartz-silver-dial-ladies-watch-k8ny3tk6.jpg;calvin-klein-cheers-quartz-silver-dial-ladies-watch-k8ny3tk6_2.jpg;calvin-klein-cheers-quartz-silver-dial-ladies-watch-k8ny3tk6_3.jpg\r\n'),
(7, 'PRO0004', 'Ballon Bleu Automatic', 'SUP001', 'CAT01', 250, 139035000, 13, 1, 'Vỏ thép không gỉ với vòng thép không gỉ. Cố định khung thép không gỉ. Mặt số bằng bạc opaline với tay thép màu xanh và vạch số giờ La Mã màu đen. Đánh dấu phút xung quanh một vòng bên trong. Kiểu quay số: Analog. Chuyển động tự động với dự trữ năng lượng 38 giờ. Tinh thể sapphire chống trầy xước. Mão thép. Trường hợp rắn trở lại. Đường kính vỏ: 36,6 mm. Độ dày vỏ: 11,9 mm. Hình dạng vỏ tròn. Ẩn gấp clasp. Chống nước ở 30 mét / 100 feet. Chức năng: giờ, phút, giây. Kiểu dáng đồng hồ sang trọng.\r\n', ' citizen-eco-drive-blue-angels-chronograph-stainless-steel-mens-watch-at8020-54l.jpg\r\n', ' citizen-eco-drive-blue-angels-chronograph-stainless-steel-mens-watch-at8020-54l.jpg;citizen-eco-drive-blue-angels-chronograph-stainless-steel-mens-watch-at8020-54l_2.jpg;citizen-eco-drive-blue-angels-chronograph-stainless-steel-mens-watch-at8020-54l_3.jpg\r\n'),
(8, 'PRO0005', 'Tank Solo XL Automatic Silver Dia', 'SUP001', 'CAT01', 405, 85738250, 8, 1, 'Vỏ thép không gỉ với vòng thép không gỉ. Cố định khung thép không gỉ. Mặt số bằng bạc opaline với tay thép màu xanh và vạch số giờ La Mã. Đánh dấu phút xung quanh một vòng bên trong. Kiểu quay số: Analog. Hiển thị ngày xuất hiện ở vị trí 6 giờ. Chuyển động tự động với dự trữ năng lượng 42 giờ. Tinh thể sapphire chống trầy xước. Vương miện đính cườm thiết lập với một cabel spinel tổng hợp. Trường hợp rắn trở lại. Kích thước vỏ: 31 mm x 40,85 mm. Độ dày vỏ: 7,65 mm. Hình chữ nhật trường hợp hình dạng. Chiều rộng vòng đeo tay: 22 mm. Triển khai clasp với một nút nhấn phát hành. Chống nước ở 30 mét / 100 feet. Chức năng: ngày, giờ, phút, giây. Kiểu dáng đồng hồ sang trọng.\r\n', ' citizen-promaster-professional-diver-dark-blue-dial-men_s-watch-bn0151-09l.jpg\r\n', ' citizen-promaster-professional-diver-dark-blue-dial-men_s-watch-bn0151-09l.jpg;citizen-promaster-professional-diver-dark-blue-dial-men_s-watch-bn0151-09l_2.jpg;citizen-promaster-professional-diver-dark-blue-dial-men_s-watch-bn0151-09l_3.jpg\r\n'),
(9, 'PRO0006', 'Ronde Solo Automatic Silvered Opaline Dial', 'SUP001', 'CAT01', 320, 81103750, 10, 1, 'Vỏ thép không gỉ tông màu bạc với dây đeo bằng da màu đen (da bê). Cố định khung thép không gỉ màu bạc. Mặt số bằng bạc opaline với bàn tay màu xanh và vạch số giờ La Mã. Đánh dấu 24 giờ. đánh dấu phút xung quanh một vòng bên trong. Kiểu quay số: Analog. Chuyển động tự động với dự trữ năng lượng 42 giờ. Tinh thể sapphire chống trầy xước. Kéo / đẩy với một bộ với vương miện tổng hợp. Trường hợp rắn trở lại. Hình dạng vỏ tròn, kích thước vỏ: 42 mm, độ dày vỏ: 8,36 mm. Triển khai clasp. Chống nước ở 30 mét / 100 feet. Chức năng: giờ, phút, giây, 24 giờ. Kiểu dáng đồng hồ sang trọng.\r\n', ' fossil-grant-cream-dial-mens-chronograph-watch-fs4735ie.jpg\r\n', ' fossil-grant-cream-dial-mens-chronograph-watch-fs4735ie.jpg;fossil-grant-cream-dial-mens-chronograph-watch-fs4735ie_2.jpg;fossil-grant-cream-dial-mens-chronograph-watch-fs4735ie_3.jpg\r\n'),
(10, 'PRO0007', 'Santos-Dumont Quartz Silver Dial Ladies Watch', 'SUP001', 'CAT02', 300, 85738250, 13, 1, 'Vỏ thép không gỉ với dây đeo bằng da màu xanh (cá sấu). Cố định khung thép không gỉ. Mặt số bằng bạc với bàn tay hình thanh kiếm bằng thép và dấu số giờ La Mã. Đánh dấu phút xung quanh vành ngoài. Kiểu quay số: Analog. Chuyển động thạch anh. Tinh thể sapphire chống trầy xước. Đẩy / kéo vương miện được thiết lập với một chiếc taxi màu xanh. Trường hợp rắn trở lại. Hình chữ nhật trường hợp hình dạng. Kích thước vỏ: 38 mm x 27,5 mm. Độ dày vỏ: 7,3 mm. Tang kẹp. Chống nước ở 30 mét / 100 feet. Chức năng: giờ, phút. Thông tin bổ sung: hộp ban đầu, thẻ bảo hành quốc tế, hướng dẫn sử dụng (phụ kiện đầy đủ). Phong cách đồng hồ cao cấp\r\n', ' gucci-interlocking-automatic-ladies-watch-ya133516.jpg\r\n', ' gucci-interlocking-automatic-ladies-watch-ya133516.jpg;gucci-interlocking-automatic-ladies-watch-ya133516_2.jpg;gucci-interlocking-automatic-ladies-watch-ya133516_3.jpg\r\n'),
(11, 'PRO0008', 'Submariner Automatic Black Dial Men\'s Watch', 'SUP002', 'CAT01', 400, 240878137, 0, 1, 'Vỏ thép không gỉ với vòng đeo tay bằng thép không gỉ Rolex. Viền thép không gỉ một chiều với vòng trên cùng màu đen của Cerachrom. Mặt số màu đen với logo phát sáng của Mercedes, thanh kiếm và tay hình chữ phong cách Breguet và dấu chấm giờ. Đánh dấu phút xung quanh vành ngoài. Kiểu quay số: Analog. Tay phát quang và đánh dấu. Chuyển động tự động với dự trữ năng lượng 48 giờ. Tinh thể sapphire chống trầy xước. Vít xuống vương miện. Trường hợp rắn trở lại. Đường kính vỏ: 40 mm. Độ dày vỏ: 13 mm. Hình dạng vỏ tròn. Chiều rộng vòng đeo tay: 19,5 mm. Hàu kẹp. Chống nước ở 300 mét / 1000 feet. Chức năng: giờ, phút, giây. Kiểu dáng đồng hồ sang trọng. Nhãn đồng hồ: Swiss Made. Đồng hồ nam Rolex Submariner Black Dial thép không gỉ tự động 114060.\r\n', ' seiko-automatic-black-dial-black-rubber-men_s-watch-skx007j1.jpg\r\n', ' seiko-automatic-black-dial-black-rubber-men_s-watch-skx007j1.jpg;seiko-automatic-black-dial-black-rubber-men_s-watch-skx007j1_2.jpg;seiko-automatic-black-dial-black-rubber-men_s-watch-skx007j1_3.jpg\r\n'),
(12, 'PRO0009', 'Oyster Perpetual Submariner Black Dial Black Cerachrom Bezel Steel Men\'s Watch', 'SUP002', 'CAT01', 310, 278070000, 0, 1, 'Vỏ thép không gỉ màu bạc với vòng đeo tay bằng thép không gỉ màu bạc. Uni-directional quay bằng thép không gỉ màu đen với viền vòng trên màu đen cerachrom. Mặt số màu đen với logo màu bạc sáng chói của Mercedes, thanh kiếm và tay hình chữ Breguet và các dấu chấm giờ. Đánh dấu phút xung quanh vành ngoài. Kiểu quay số: Analog. Tay phát quang và đánh dấu giờ. Hiển thị ngày ở vị trí 3 giờ. Rolex Calibre 3135 chuyển động tự động với khả năng dự trữ năng lượng trong 50 giờ. Tinh thể sapphire chống trầy xước. Vít xuống vương miện. Trường hợp rắn trở lại. Hình dạng vỏ tròn, kích thước vỏ: 40 mm, độ dày vỏ: 13 mm. Chiều rộng dải: 20 mm. Triển khai clasp. Chống nước ở 300 mét / 1000 feet. Chức năng: ngày, giờ, phút, giây, đồng hồ bấm giờ. Kiểu dáng đồng hồ sang trọng. Nhãn đồng hồ: Swiss Made. Rolex Oyster Perpetual Submariner Black Dial Black Cerachrom Bezel Steel Mens 116610LN.\r\n', ' seiko-diver-orange-dial-automatic-mens-watch-skx011j1.jpg\r\n', ' seiko-diver-orange-dial-automatic-mens-watch-skx011j1.jpg;seiko-diver-orange-dial-automatic-mens-watch-skx011j1_2.jpg;seiko-diver-orange-dial-automatic-mens-watch-skx011j1_3.jpg\r\n'),
(13, 'PRO0010', 'Rolex GMT-Master II \" Batman\" Black and Blue Bezel Automatic Men\'s Jubilee Watch', 'SUP002', 'CAT01', 240, 370760000, 0, 1, '126710blnr. Vỏ thép không gỉ với vòng đeo tay bằng thép không gỉ rolex jubilee. Khung thép không gỉ xoay hai chiều với vòng màu đen và xanh (Người dơi) hiển thị các điểm đánh dấu 24 giờ. Mặt số màu đen với kim màu bạc sáng và vạch dấu chấm giờ. Đánh dấu phút xung quanh vành ngoài. Kiểu quay số: Analog. Tay phát quang và đánh dấu. Hiển thị ngày ở vị trí 3 giờ. Rolex calibre 3285 tự động chuyển động với dự trữ năng lượng 70 giờ. Tinh thể sapphire chống trầy xước. Vít xuống vương miện. Trường hợp rắn trở lại. Hình dạng vỏ tròn. Kích thước vỏ: 40 mm. Gấp hàu kẹp. Chống nước ở 100 mét / 330 feet. Chức năng: ngày, giờ, phút, giây, 24 giờ, GMT. Thông tin bổ sung: 126710blro-0001, m126710blro-0001. Kiểu dáng đồng hồ sang trọng. Nhãn đồng hồ: Swiss Made. Rolex GMT-Master II \"Batman\" Đồng hồ đeo tay nam màu đen và xanh tự động Bezel 126710BKSJ.\r\n', ' seiko-divers-automatic-black-dial-men_s-watch-skx009j1.jpg\r\n', ' seiko-divers-automatic-black-dial-men_s-watch-skx009j1.jpg;seiko-divers-automatic-black-dial-men_s-watch-skx009j1_2.jpg;seiko-divers-automatic-black-dial-men_s-watch-skx009j1_3.jpg\r\n'),
(14, 'PRO0011', 'Submariner \"Hulk\" Green Dial Steel Men\'s Watch', 'SUP002', 'CAT01', 230, 364966875, 0, 1, 'Vỏ thép không gỉ màu bạc với vòng đeo tay bằng thép không gỉ màu bạc. Uni-directional xoay màu xanh lá cây bằng thép không gỉ rinfg hàng đầu. Mặt đồng hồ màu xanh lá cây với logo màu bạc của Mercedes, thanh kiếm và tay hình chữ Breguet và vạch chỉ giờ phát sáng. Đánh dấu phút xung quanh vành ngoài. Kiểu quay số: Analog. Tay phát quang và đánh dấu quay số. Hiển thị ngày ở vị trí 3 giờ. Rolex Calibre 3135 chuyển động tự động với khả năng dự trữ năng lượng trong 50 giờ. Tinh thể sapphire chống trầy xước. Vít xuống vương miện. Trường hợp rắn trở lại. Hình dạng vỏ tròn, kích thước vỏ: 40 mm, độ dày vỏ: 13 mm. Chiều rộng dải: 20 mm. Oysterlock clasp. Chống nước ở 300 mét / 1000 feet. Chức năng: ngày, giờ, phút, giây, đồng hồ bấm giờ. Phong cách lặn đồng hồ. Nhãn đồng hồ: Swiss Made. Rolex Submariner Hulk Đồng hồ nam mặt thép màu xanh lá cây 116610LV.\r\n', ' tissot-femini-t-mother-of-pearl-dial-ladies-watch-t113.109.16.116.00.jpg\r\n', ' tissot-femini-t-mother-of-pearl-dial-ladies-watch-t113.109.16.116.00.jpg;tissot-femini-t-mother-of-pearl-dial-ladies-watch-t113.109.16.116.00_2.jpg;tissot-femini-t-mother-of-pearl-dial-ladies-watch-t113.109.16.116.00_3.jpg\r\n'),
(15, 'PRO0012', 'Explorer Black Dial Stainless Steel Oyster Bracelet Automatic Men\'s Watch', 'SUP002', 'CAT01', 250, 180629637, 0, 1, 'Vỏ thép không gỉ màu bạc với vòng đeo tay bằng thép không gỉ rolex tông màu bạc. Cố định khung thép không gỉ màu bạc. Mặt số màu đen với logo màu bạc sáng chói của Mercedes, thanh kiếm và tay hình chữ phong cách Breguet và vạch chỉ giờ. Chữ số Ả Rập đánh dấu các vị trí 3, 6 và 9 giờ. đánh dấu phút xung quanh vành ngoài. Kiểu quay số: Analog. Tay phát quang và đánh dấu. Rolex Calibre 3132 chuyển động tự động với dự trữ năng lượng 48 giờ. Tinh thể sapphire chống trầy xước. Vít xuống vương miện. Trường hợp rắn trở lại. Hình dạng vỏ tròn. Kích thước vỏ: 39 mm. Oysterlock clasp. Chống nước ở 100 mét / 330 feet. Chức năng: giờ, phút, giây, đồng hồ bấm giờ. Kiểu dáng đồng hồ sang trọng. Nhãn đồng hồ: Swiss Made. Mục biến thể: 214270-0003. Đồng hồ đeo tay nam bằng thép không gỉ Rolex Explorer Black Dial bằng thép không gỉ 214270BKASO.\r\n', ' tissot-femini-t-mother-of-pearl-diamond-dial-ladies-watch-t1131091611601.jpg\r\n', ' tissot-femini-t-mother-of-pearl-diamond-dial-ladies-watch-t1131091611601.jpg;tissot-femini-t-mother-of-pearl-diamond-dial-ladies-watch-t1131091611601_2.jpg;tissot-femini-t-mother-of-pearl-diamond-dial-ladies-watch-t1131091611601_3.jpg\r\n'),
(16, 'PRO0013', 'Yacht-Master Automatic Black Dial 18kt Everose Gold Black Rubber Strap Men\'s Watch BKSRS', 'SUP002', 'CAT01', 300, 578153875, 3, 1, 'Vỏ vàng 18kt everose với dây đeo cao su màu đen. Bi-directional quay vòng thời gian vòng màu đen cerachrom vòng 18kt everose vàng. Mặt số màu đen với logo Mercedes màu vàng sáng chói, thanh kiếm và bàn tay hình chữ phong cách Breguet và dấu chấm giờ. Đánh dấu phút xung quanh vành ngoài. Kiểu quay số: Analog. Tay phát quang và đánh dấu. Hiển thị ngày ở vị trí 3 giờ. Rolex Calibre 3135 tự động chuyển động với dự trữ năng lượng 48 giờ. Tinh thể sapphire chống trầy xước. Vít xuống vương miện. Trường hợp rắn trở lại. Hình dạng vỏ tròn. Kích thước vỏ: 40 mm. Gấp qua kẹp hàu. Chống nước ở 100 mét / 330 feet. Chức năng: ngày, giờ, phút, giây, đồng hồ bấm giờ. Kiểu dáng đồng hồ sang trọng. Nhãn đồng hồ: Swiss Made. Biến thể vật phẩm: 116655-STRAP, 126655-0002. Rolex Yacht-Master Automatic Black Dial 18kt Dây đeo cao su Everose vàng đen Everose 116655BKSRS.\r\n', ' tissot-le-locle-powermatic-80-automatic-mens-watch-t0064071603300.jpg\r\n', ' tissot-le-locle-powermatic-80-automatic-mens-watch-t0064071603300.jpg;tissot-le-locle-powermatic-80-automatic-mens-watch-t0064071603300_2.jpg;tissot-le-locle-powermatic-80-automatic-mens-watch-t0064071603300_3.jpg\r\n'),
(17, 'PRO0014', 'Datejust 41 Blue Dial Stainless Steel Men\'s Watch', 'SUP002', 'CAT01', 450, 217705637, 0, 1, 'Vỏ thép không gỉ với vòng đeo tay bằng thép không gỉ. Cố định khung thép không gỉ. Mặt số màu xanh với các kim màu bạc sáng và vạch chỉ giờ. Đánh dấu phút xung quanh vành ngoài. Kiểu quay số: Analog. Hiển thị ngày ở vị trí 3 giờ. Rolex calibre 3235 tự động chuyển động với dự trữ năng lượng 70 giờ. Tinh thể sapphire chống trầy xước. Vít xuống vương miện. Trường hợp rắn trở lại. Kích thước vỏ: 41 mm. Hình dạng vỏ tròn. Oysterlock clasp. Chống nước ở 100 mét / 330 feet. Chức năng: ngày, giờ, phút, giây. Kiểu dáng đồng hồ sang trọng. Nhãn đồng hồ: Swiss Made. Đồng hồ Rolex Datejust 41 Đồng hồ nam bằng thép không gỉ màu xanh 126300BLSO.\r\n', ' tissot-le-locle-powermatic-80-automatic-silver-dial-men_s-watch-t0064071103300.jpg\r\n', ' tissot-le-locle-powermatic-80-automatic-silver-dial-men_s-watch-t0064071103300.jpg;tissot-le-locle-powermatic-80-automatic-silver-dial-men_s-watch-t0064071103300_2.jpg;tissot-le-locle-powermatic-80-automatic-silver-dial-men_s-watch-t0064071103300_3.jpg\r\n'),
(19, 'PRO0015', 'PRO0014', 'SUP002', 'CAT01', 450, 217705637, 0, 1, '\r\nVỏ thép không gỉ với vòng đeo tay bằng thép không ...\r\n\r\n', ' tissot-luxury-automatic-diamond-silver-dial-two-tone-stainless-steel-men_s-watch-t0864082203600.jpg\r\n', ' tissot-luxury-automatic-diamond-silver-dial-two-tone-stainless-steel-men_s-watch-t0864082203600.jpg;tissot-luxury-automatic-diamond-silver-dial-two-tone-stainless-steel-men_s-watch-t0864082203600_2.jpg;tissot-luxury-automatic-diamond-silver-dial-two-tone-stainless-steel-men_s-watch-t0864082203600_3.jpg\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng 'shippers'
--

CREATE TABLE 'shippers' (
  'id' int(11) NOT NULL,
  'shipperID' varchar(20) NOT NULL,
  'companyName' varchar(100) NOT NULL,
  'phone' varchar(20) DEFAULT NULL,
  'description' text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng 'shippers'
--

INSERT INTO 'shippers' ('id', 'shipperID', 'companyName', 'phone', 'description') VALUES
(1, 'SHIP001', 'Minh Quang', '0377451648', 'Shipper của công ty Minh Quang'),
(2, 'SHIP002', 'Trường Phát', '0381546872', 'Shipper của công ty Trường Phát'),
(3, 'SHIP003', 'Minh Quang', '0124578620', 'Shipper của công ty Minh Quang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng 'suppliers'
--

CREATE TABLE 'suppliers' (
  'id' int(11) NOT NULL,
  'supplierID' varchar(20) NOT NULL,
  'companyName' varchar(150) NOT NULL,
  'address' varchar(150) DEFAULT NULL,
  'phone' varchar(20) DEFAULT NULL,
  'website' varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng 'suppliers'
--

INSERT INTO 'suppliers' ('id', 'supplierID', 'companyName', 'address', 'phone', 'website') VALUES
(1, 'SUP001', 'Cartier', 'Paris, France', '0334561254', 'cartier.com'),
(2, 'SUP002', 'Rolex', 'Geneva, Switzerland', '0381246597', 'Rolex.com'),
(3, 'SUP003', 'Citizen', 'Tokyo, Japan', '0345123645', 'citizen.co.jp'),
(4, 'SUP004', 'Seiko', 'Minato, Tokyo, Japan', '0314521987', 'seiko.co.jp'),
(5, 'SUP005', 'Longines', 'Saint-Imier, Switzerland', '0383939452', 'longines.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng 'categories'
--
ALTER TABLE 'categories'
  ADD PRIMARY KEY ('id'),
  ADD UNIQUE KEY 'categoryID' ('categoryID');

--
-- Chỉ mục cho bảng 'customers'
--
ALTER TABLE 'customers'
  ADD PRIMARY KEY ('id'),
  ADD UNIQUE KEY 'email' ('email'),
  ADD UNIQUE KEY 'phone' ('phone'),
  ADD KEY 'username' ('customerID') USING BTREE;

--
-- Chỉ mục cho bảng 'employees'
--
ALTER TABLE 'employees'
  ADD PRIMARY KEY ('id'),
  ADD UNIQUE KEY 'email' ('email'),
  ADD UNIQUE KEY 'FK_Employee_Order' ('employeeID'),
  ADD UNIQUE KEY 'phone' ('phone');

--
-- Chỉ mục cho bảng 'orderdetail'
--
ALTER TABLE 'orderdetail'
  ADD PRIMARY KEY ('orderID','productID'),
  ADD KEY 'productID' ('productID');

--
-- Chỉ mục cho bảng 'orders'
--
ALTER TABLE 'orders'
  ADD PRIMARY KEY ('id'),
  ADD UNIQUE KEY 'orderID' ('orderID') USING BTREE,
  ADD KEY 'shipperID' ('shipperID'),
  ADD KEY 'customerID' ('customerID') USING BTREE,
  ADD KEY 'employeeID' ('employeeID') USING BTREE;

--
-- Chỉ mục cho bảng 'products'
--
ALTER TABLE 'products'
  ADD PRIMARY KEY ('id'),
  ADD UNIQUE KEY 'productID' ('productID'),
  ADD KEY 'supplierID' ('supplierID'),
  ADD KEY 'categoryID' ('categoryID');

--
-- Chỉ mục cho bảng 'shippers'
--
ALTER TABLE 'shippers'
  ADD PRIMARY KEY ('id'),
  ADD UNIQUE KEY 'shipperID' ('shipperID'),
  ADD UNIQUE KEY 'phone' ('phone');

--
-- Chỉ mục cho bảng 'suppliers'
--
ALTER TABLE 'suppliers'
  ADD PRIMARY KEY ('id'),
  ADD UNIQUE KEY 'supplierID' ('supplierID');

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng 'categories'
--
ALTER TABLE 'categories'
  MODIFY 'id' int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng 'customers'
--
ALTER TABLE 'customers'
  MODIFY 'id' int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng 'employees'
--
ALTER TABLE 'employees'
  MODIFY 'id' int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng 'orders'
--
ALTER TABLE 'orders'
  MODIFY 'id' int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng 'products'
--
ALTER TABLE 'products'
  MODIFY 'id' int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng 'shippers'
--
ALTER TABLE 'shippers'
  MODIFY 'id' int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng 'suppliers'
--
ALTER TABLE 'suppliers'
  MODIFY 'id' int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng 'orderdetail'
--
ALTER TABLE 'orderdetail'
  ADD CONSTRAINT 'orderdetail_ibfk_2' FOREIGN KEY ('productID') REFERENCES 'products' ('productID'),
  ADD CONSTRAINT 'orderdetail_ibfk_3' FOREIGN KEY ('orderID') REFERENCES 'orders' ('orderID') ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng 'orders'
--
ALTER TABLE 'orders'
  ADD CONSTRAINT 'orders_ibfk_1' FOREIGN KEY ('shipperID') REFERENCES 'shippers' ('shipperID'),
  ADD CONSTRAINT 'orders_ibfk_2' FOREIGN KEY ('customerID') REFERENCES 'customers' ('customerID') ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT 'orders_ibfk_3' FOREIGN KEY ('employeeID') REFERENCES 'employees' ('employeeID') ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng 'products'
--
ALTER TABLE 'products'
  ADD CONSTRAINT 'products_ibfk_1' FOREIGN KEY ('supplierID') REFERENCES 'suppliers' ('supplierID'),
  ADD CONSTRAINT 'products_ibfk_2' FOREIGN KEY ('categoryID') REFERENCES 'categories' ('categoryID');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
