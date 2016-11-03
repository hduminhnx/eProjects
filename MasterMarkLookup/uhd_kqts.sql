-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2016 at 06:01 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uhd_kqts`
--

-- --------------------------------------------------------

--
-- Table structure for table `caohoc`
--

CREATE TABLE `caohoc` (
  `sobaodanh` varchar(7) NOT NULL,
  `hovaten` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ngaysinh` varchar(10) NOT NULL,
  `gioitinh` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `quequan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `nganhduthi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `toankinhte` varchar(4) NOT NULL,
  `kinhtehoc` varchar(4) NOT NULL,
  `tienganh` varchar(4) NOT NULL,
  `tongdiem` varchar(4) NOT NULL,
  `trungtuyen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cmt` varchar(15) NOT NULL,
  `trangthai` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caohoc`
--

INSERT INTO `caohoc` (`sobaodanh`, `hovaten`, `ngaysinh`, `gioitinh`, `quequan`, `nganhduthi`, `toankinhte`, `kinhtehoc`, `tienganh`, `tongdiem`, `trungtuyen`, `cmt`, `trangthai`) VALUES
('DKT.001', 'Phạm Thị  Anh', '16/10/1984', 'Nữ', 'Thành phố Hải Dương - Tỉnh Hải Dương', 'Kế toán', '7.6', '6', '63.5', '13.6', 'Trúng tuyển', '142157289', 'HL'),
('DKT.003', 'Vũ Thị Ngọc Ánh', '28/09/1991', 'Nữ', 'Huyện Kim Động - Tỉnh Hưng Yên', 'Kế toán', '9.4', '8.25', '78', '17.6', 'Trúng tuyển', '142473737', 'HL'),
('DKT.004', 'Nguyễn Văn Bình', '30/09/1983', 'Nam', 'Huyện Lương Tài - Tỉnh Bắc Ninh', 'Kế toán', '6.7', '7.75', '69.5', '14.4', 'Trúng tuyển', '141884899', 'HL'),
('DKT.005', 'Vũ Thị Chúc', '23/02/1981', 'Nữ', 'Huyện Kinh Môn - Tỉnh Hải Dương', 'Kế toán', '8.9', '8.25', '65.5', '17.1', 'Trúng tuyển', '142286383', 'HL'),
('DKT.006', 'Nguyễn Đức Cường', '23/04/1993', 'Nam', 'Huyện Kinh Môn - Tỉnh Hải Dương', 'Kế toán', '7.3', '6', '61', '13.3', 'Trúng tuyển', '034183004175', 'HL'),
('DKT.007', 'Nguyễn Thị Hồng Gấm', '08/05/1992', 'Nữ', 'Huyện Gia Lộc - Tỉnh Hải Dương', 'Kế toán', '6.3', '8.75', '65', '15.0', 'Trúng tuyển', '142203092', 'HL'),
('DKT.008', 'Đinh Thị Hà', '23/05/1984', 'Nữ', 'Thành phố Hải Dương - Tỉnh Hải Dương', 'Kế toán', '6.7', '8.25', '63.5', '14.9', 'Trúng tuyển', '145065702', 'HL'),
('DKT.009', 'Nguyễn Thị Ngọc Hà', '15/06/1986', 'Nữ', 'Thành phố Hải Dương - Tỉnh Hải Dương', 'Kế toán', '6.6', '5.5', '60.5', '12.1', 'Trúng tuyển', '142021106', 'HL'),
('DKT.010', 'Nguyễn Thị Việt Hà', '06/02/1980', 'Nữ', 'Huyện Hà Trung - Tỉnh Thanh Hóa', 'Kế toán', '6.75', '5.25', 'Mi?n', '12', 'Trúng tuyển', '013640634', 'HL'),
('DKT.011', 'Phạm Thị  Hà', '02/03/1993', 'Nữ', 'Huyện Ninh Giang - Tỉnh Hải Dương', 'Kế toán', '8.4', '8.25', '65.1', '16.6', 'Trúng tuyển', '141904431', 'HL'),
('DKT.012', 'Đặng Văn Hải', '23/07/1981', 'Nam', 'Thành phố Yên Bái - Tỉnh Yên Bái', 'Kế toán', '8.2', '8', '66', '16.2', 'Trúng tuyển', '142602797', 'HL'),
('DKT.013', 'Phạm Thị Minh Hải', '04/01/1983', 'Nữ', 'Thành phố Hải Dương - Tỉnh Hải Dương', 'Kế toán', '8.05', '5', '60', '13.0', 'Trúng tuyển', '142572667', 'HL'),
('DKT.014', 'Vũ Thị Hải  Hậu', '02/01/1973', 'Nữ', 'Huyện Gia Lộc - Tỉnh Hải Dương', 'Kế toán', '7.5', '5.5', '73.2', '13', 'Trúng tuyển', '141977609', 'HL'),
('DKT.015', 'Phạm Thanh Hiệp', '07/07/1990', 'Nam', 'Thành phố Hải Dương - Tỉnh Hải Dương', 'Kế toán', '7.95', '6.75', '62.8', '14.7', 'Trúng tuyển', '145077126', 'HL'),
('DKT.016', 'Nguyễn Thị Hoa', '03/09/1982', 'Nữ', 'Huyện Nam Sách - Tỉnh Hải Dương', 'Kế toán', '8.1', '8', '69.5', '16.1', 'Trúng tuyển', '142405232', 'HL'),
('DKT.017', 'Nguyễn Việt  Hoà', '13/12/1979', 'Nữ', 'Huyện Gia Lộc - Tỉnh Hải Dương', 'Kế toán', '6.7', '8.5', '73.2', '15.2', 'Trúng tuyển', '141898757', 'HL'),
('DKT.018', 'Trần Thế  Hùng', '28/12/1991', 'Nam', 'Thành phố Hải Dương - Tỉnh Hải Dương', 'Kế toán', '7.6', '8.5', '77.8', '16.1', 'Trúng tuyển', '142225765', 'HL'),
('DKT.019', 'Đoàn Mạnh Hưng', '25/02/1975', 'Nam', 'Huyện Gia Lộc - Tỉnh Hải Dương', 'Kế toán', '7.05', '8', '65', '15.0', 'Trúng tuyển', '142084227', 'HL'),
('DKT.020', 'Nguyễn Thị Kim Huyên', '18/04/1982', 'Nữ', 'Huyện Tứ Kỳ - Tỉnh Hải Dương', 'Kế toán', '7.7', '8.25', '62.8', '15.9', 'Trúng tuyển', '033191000152', 'HL'),
('DKT.021', 'Nguyễn Thị Lan', '18/11/1982', 'Nữ', 'Thành phố Uông Bí  - Tỉnh Quảng Ninh', 'Kế toán', '8.15', '8', '86', '16.1', 'Trúng tuyển', '141909337', 'HL'),
('DKT.022', 'Hoàng Thị Liên', '22/06/1991', 'Nữ', 'Huyện Ninh Giang - Tỉnh Hải Dương', 'Kế toán', '7.6', '7.25', '86', '14.8', 'Trúng tuyển', '125215677', 'HL'),
('DKT.023', 'Hà Thị Tố Linh', '15/12/1972', 'Nữ', 'Huyện Thanh Miện - Tỉnh Hải Dương', 'Kế toán', '8.05', '7.75', '84.5', '15.8', 'Trúng tuyển', '145565475', 'HL'),
('DKT.024', 'Mạc Thị Thuỳ Linh', '17/10/1990', 'Nữ', 'Huyện Nam Sách - Tỉnh Hải Dương', 'Kế toán', '8.3', '7.75', '77.5', '16.0', 'Trúng tuyển', '142081939', 'HL'),
('DKT.025', 'Nguyễn Thị  Loan', '06/09/1987', 'Nữ', 'Huyện Thanh Hà - Tỉnh Hải Dương', 'Kế toán', '8.95', '7.5', '76', '16.4', 'Trúng tuyển', '30171000461', 'HL'),
('DKT.026', 'Tăng Bá Long', '01/04/1976', 'Nam', 'Huyện Thanh Hà - Tỉnh Hải Dương', 'Kế toán', '7.15', '7', '86', '14.1', 'Trúng tuyển', '141997159', 'HL'),
('DKT.027', 'Trần Đức Luân', '27/04/1985', 'Nam', 'Huyện Gia Lộc - Tỉnh Hải Dương', 'Kế toán', '8.45', '7.5', '56.5', '15.9', 'Trúng tuyển', '141859653', 'HL'),
('DKT.028', 'Trần Ngọc Minh', '30/11/1992', 'Nam', 'Huyện Đông Triều - Tỉnh Quảng Ninh', 'Kế toán', '8.95', '8.25', '81.5', '17.2', 'Trúng tuyển', '142161662', 'HL'),
('DKT.029', 'Trần Trung Nghĩa', '20/06/1988', 'Nam', 'Huyện Kim Động - Tỉnh Hưng Yên', 'Kế toán', '7.8', '7.75', '79.3', '15.5', 'Trúng tuyển', '142007713', 'HL'),
('DKT.030', 'Phạm Hạnh Ngọc', '02/06/1990', 'Nữ', 'Huyện Tứ Kỳ - Tỉnh Hải Dương', 'Kế toán', '6.5', '7', '80.5', '13.5', 'Trúng tuyển', '142006033', 'HL'),
('DKT.031', 'Vũ Thị Bích Ngọc', '20/10/1991', 'Nữ', 'Thành phố Hải Dương - Tỉnh Hải Dương', 'Kế toán', '7.6', '7.25', '75.5', '14.8', 'Trúng tuyển', '145709007', 'HL'),
('DKT.032', 'Trần Thị  Phượng', '30/11/1987', 'Nữ', 'Huyện Kinh Môn - Tỉnh Hải Dương', 'Kế toán', '7.6', '6.25', '85.8', '13.8', 'Trúng tuyển', '03017600521', 'HL'),
('DKT.033', 'Trần Thị  Quyến', '01/03/1990', 'Nữ', 'Huyện Kim Động - Tỉnh Hưng Yên', 'Kế toán', '7.1', '7.5', '66.3', '14.6', 'Trúng tuyển', '142627964', 'HL'),
('DKT.034', 'Nguyễn Châu  Quỳnh', '06/07/1975', 'Nữ', 'Thành phố Hải Dương - Tỉnh Hải Dương', 'Kế toán', '7.4', '7.75', '75.1', '15.1', 'Trúng tuyển', '125261991', 'HL'),
('DKT.035', 'Nguyễn Văn Sơn', '05/02/1986', 'Nam', 'Huyện Gia Lộc - Tỉnh Hải Dương', 'Kế toán', '6.95', '6.25', '78', '13.2', 'Trúng tuyển', '142106909', 'HL'),
('DKT.036', 'Vũ Văn Thản', '15/06/1979', 'Nam', 'Huyện Gia Lộc - Tỉnh Hải Dương', 'Kế toán', '7.3', '6.5', '80', '13.8', 'Trúng tuyển', '142662653', 'HL'),
('DKT.037', 'Bùi Văn  Thắng', '05/03/1979', 'Nam', 'Huyện Gia Lộc - Tỉnh Hải Dương', 'Kế toán', '7.2', '7.75', '71', '14.9', 'Trúng tuyển', '145631293', 'HL'),
('DKT.038', 'Hoàng Kim Thanh', '03/12/1976', 'Nam', 'Thành phố Hải Dương - Tỉnh Hải Dương', 'Kế toán', '7.85', '6.75', '76', '14.6', 'Trúng tuyển', '142546786', 'HL'),
('DKT.039', 'Nguyễn Thị Thanh', '13/06/1987', 'Nữ', 'Huyện Lương Tài - Tỉnh Bắc Ninh', 'Kế toán', '7.15', '5.5', '75.5', '12.6', 'Trúng tuyển', '142184246', 'HL'),
('DKT.040', 'Nguyễn Thị Thương Thương', '26/12/1981', 'Nữ', 'Thành phố Hải Dương - Tỉnh Hải Dương', 'Kế toán', '6.75', '6.75', '75', '13.5', 'Trúng tuyển', '141796027', 'HL'),
('DKT.041', 'Phạm Thị  Thuý', '23/03/1989', 'Nữ', 'Huyện Gia Lộc - Tỉnh Hải Dương', 'Kế toán', '8.1', '8.25', '70.5', '16.3', 'Trúng tuyển', '142167050', 'HL'),
('DKT.042', 'Nguyễn Thị Thanh Thủy', '06/07/1990', 'Nữ', 'Thành phố Hải Dương - Tỉnh Hải Dương', 'Kế toán', '6.9', '8', '78', '14.9', 'Trúng tuyển', '125382651', 'HL'),
('DKT.043', 'Phạm Quang  Tiến', '04/05/1978', 'Nam', 'Huyện Yên Sơn - Tỉnh Tuyên Quang', 'Kế toán', '6.6', '8', '77', '14.6', 'Trúng tuyển', '142008955', 'HL'),
('DKT.044', 'Trần Văn  Toàn', '14/01/1988', 'Nam', 'Huyện Đông Triều - Tỉnh Quảng Ninh', 'Kế toán', '6.8', '7.25', '74', '14.0', 'Trúng tuyển', '142740661', 'HL'),
('DKT.045', 'Nguyễn Thị Thu Trang', '19/04/1981', 'Nữ', 'Huyện Gia Lộc - Tỉnh Hải Dương', 'Kế toán', '7.1', '8.25', '78.5', '15.3', 'Trúng tuyển', '125403619', 'HL'),
('DKT.046', 'Vũ Văn Trọng', '28/09/1989', 'Nam', 'Huyện Kinh Môn - Tỉnh Hải Dương', 'Kế toán', '6.35', '7.5', '78', '13.8', 'Trúng tuyển', '142146632', 'HL'),
('DKT.047', 'Phạm Vũ  Trung', '12/08/1987', 'Nam', 'Huyện Gia Lộc - Tỉnh Hải Dương', 'Kế toán', '6.95', '6.5', '75', '13.4', 'Trúng tuyển', '141713518', 'HL'),
('DKT.048', 'Trần Danh  Trung', '21/04/1978', 'Nam', 'Huyện Thanh Miện - Tỉnh Hải Dương', 'Kế toán', '7.4', '6.75', '74', '14.1', 'Trúng tuyển', '142026292', 'HL'),
('DKT.049', 'Nguyễn Xuân Trường', '16/08/1978', 'Nam', 'Thành phố Hà Tỉnh - Tỉnh Hà Tĩnh', 'Kế toán', '7.25', '6.75', '66', '14', 'Trúng tuyển', '142225564', 'HL'),
('DKT.050', 'Nguyễn Đình Tú', '14/05/1989', 'Nam', 'Thành phố Hải Dương - Tỉnh Hải Dương', 'Kế toán', '7.55', '7', '70', '14.5', 'Trúng tuyển', '142350899', 'HL'),
('DKT.051', 'Mai Văn  Vinh', '23/01/1971', 'Nam', 'Huyện Thanh Miện - Tỉnh Hải Dương', 'Kế toán', '6.3', '6', '56.5', '12.3', 'Trúng tuyển', '142127659', 'HL'),
('DKT.052', 'Mai Văn  Vũ', '07/07/1974', 'Nam', 'Huyện Thanh Miện - Tỉnh Hải Dương', 'Kế toán', '7.25', '7', '61', '14.2', 'Trúng tuyển', '141586101', 'HL'),
('DKT.053', 'Nguyễn Thị Cảnh Xuân', '29/09/1980', 'Nữ', 'Huyện Đông Triều - Tỉnh Quảng Ninh', 'Kế toán', '7.85', '7.5', '70', '15.3', 'Trúng tuyển', '141558585', 'HL'),
('DKT.054', 'Nguyễn Thị Hải Yến', '22/09/1980', 'Nữ', 'Huyện Ninh Giang - Tỉnh Hải Dương', 'Kế toán', '8', '8', '74.5', '16', 'Trúng tuyển', '141883185', 'HL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caohoc`
--
ALTER TABLE `caohoc`
  ADD PRIMARY KEY (`sobaodanh`),
  ADD UNIQUE KEY `CMT` (`cmt`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
