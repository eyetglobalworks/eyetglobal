-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2021 at 05:32 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `district_table`
--

CREATE TABLE `district_table` (
  `dis_id` int(11) NOT NULL,
  `dis_name` varchar(30) NOT NULL,
  `dis_active` int(11) NOT NULL DEFAULT 1,
  `dis_curdate` date NOT NULL,
  `dis_curtime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district_table`
--

INSERT INTO `district_table` (`dis_id`, `dis_name`, `dis_active`, `dis_curdate`, `dis_curtime`) VALUES
(1, 'Kozhikode', 1, '2021-01-11', '16:23:28'),
(2, 'Kochi', 1, '2021-01-11', '16:23:28'),
(3, 'Kollam', 1, '2021-01-11', '16:23:28'),
(4, 'Thrissur', 1, '2021-01-11', '16:23:28'),
(5, 'Kannur', 1, '2021-01-11', '16:23:28'),
(6, 'Kottayam', 1, '2021-01-11', '16:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_dist_id` int(11) NOT NULL,
  `product_code` varchar(35) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_img` varchar(5000) NOT NULL,
  `product_status` int(11) NOT NULL DEFAULT 1,
  `product_curdate` date NOT NULL,
  `product_curtime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_dist_id`, `product_code`, `product_name`, `product_price`, `product_img`, `product_status`, `product_curdate`, `product_curtime`) VALUES
(1, 1, 'MB101', 'Mobile 1', '15000', '6.img', 1, '2021-01-11', '16:53:18'),
(2, 1, 'MB102', 'Mobile 2', '16000', '2.png', 1, '2021-01-11', '16:53:18'),
(3, 1, 'MB103', 'Mobile 3', '17000', '4.png', 1, '2021-01-11', '16:53:18'),
(4, 1, 'MB103', 'Mobile 4', '18000', '1.png', 1, '2021-01-11', '16:53:19'),
(5, 1, 'MB104', 'Mobile 5', '19000', '3.png', 1, '2021-01-11', '16:53:19'),
(6, 1, 'MB105', 'Mobile 6', '20000', '2.png', 1, '2021-01-11', '16:53:19'),
(7, 2, 'MB106', 'Mobile 7', '20000', '4.png', 1, '2021-01-11', '16:53:19'),
(8, 2, 'MB107', 'Mobile 8', '10000', '1.png', 1, '2021-01-11', '16:53:19'),
(9, 2, 'MB108', 'Mobile 9', '35000', '5.png', 1, '2021-01-11', '16:53:19'),
(10, 2, 'MB109', 'Mobile 10', '25000', '1.png', 1, '2021-01-11', '16:53:19'),
(11, 2, 'MB1010', 'Mobile 11', '18000', '6.png', 1, '2021-01-11', '16:53:19'),
(12, 2, 'MB1011', 'Mobile 12', '13000', '2.png', 1, '2021-01-11', '16:53:19'),
(13, 3, 'MB1012', 'Mobile 13', '30000', '3.png', 1, '2021-01-11', '16:53:19'),
(14, 3, 'MB1013', 'Mobile 14', '10000', '5.png', 1, '2021-01-11', '16:53:19'),
(15, 3, 'MB1014', 'Mobile 15', '35000', '6.png', 1, '2021-01-11', '16:53:20'),
(16, 3, 'MB1015', 'Mobile 16', '25000', '1.png', 1, '2021-01-11', '16:53:20'),
(17, 3, 'MB1016', 'Mobile 17', '18000', '3.png', 1, '2021-01-11', '16:53:20'),
(18, 3, 'MB1017', 'Mobile 18', '40000', '6.png', 1, '2021-01-11', '16:53:20'),
(19, 4, 'MB1018', 'Mobile 19', '20000', '4.png', 1, '2021-01-11', '16:53:20'),
(20, 4, 'MB1019', 'Mobile 20', '80000', '2.png', 1, '2021-01-11', '16:53:20'),
(21, 4, 'MB1020', 'Mobile 21', '35000', '1.png', 1, '2021-01-11', '16:53:20'),
(22, 4, 'MB1021', 'Mobile 22', '9000', '5.png', 1, '2021-01-11', '16:53:20'),
(23, 4, 'MB1022', 'Mobile 23', '15000', '3.png', 1, '2021-01-11', '16:53:20'),
(24, 4, 'MB1023', 'Mobile 24', '13000', '4.png', 1, '2021-01-11', '16:53:21'),
(25, 5, 'MB1024', 'Mobile 25', '50000', '5.png', 1, '2021-01-11', '16:53:21'),
(26, 5, 'MB1025', 'Mobile 26', '16000', '2.png', 1, '2021-01-11', '16:53:21'),
(27, 5, 'MB1026', 'Mobile 27', '35000', '3.png', 1, '2021-01-11', '16:53:21'),
(28, 5, 'MB1027', 'Mobile 28', '25000', '4.png', 1, '2021-01-11', '16:53:21'),
(29, 5, 'MB1028', 'Mobile 29', '4000', '5.png', 1, '2021-01-11', '16:53:21'),
(30, 5, 'MB1029', 'Mobile 30', '13000', '6.png', 1, '2021-01-11', '16:53:21'),
(31, 6, 'MB1030', 'Mobile 31', '8000', '1.png', 1, '2021-01-11', '16:53:21'),
(32, 6, 'MB1031', 'Mobile 32', '10500', '2.png', 1, '2021-01-11', '16:53:21'),
(33, 6, 'MB1032', 'Mobile 33', '35000', '3.png', 1, '2021-01-11', '16:53:21'),
(34, 6, 'MB1033', 'Mobile 34', '35000', '4.png', 1, '2021-01-11', '16:53:22'),
(35, 6, 'MB1034', 'Mobile 35', '18000', '5.png', 1, '2021-01-11', '16:53:22'),
(36, 6, 'MB1035', 'Mobile 36', '13000', '6.png', 1, '2021-01-11', '16:53:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `district_table`
--
ALTER TABLE `district_table`
  ADD PRIMARY KEY (`dis_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `district_table`
--
ALTER TABLE `district_table`
  MODIFY `dis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
