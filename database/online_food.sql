-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2020 at 08:50 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `email`) VALUES
(1, 'Admin', 'admin', 'admin', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `heading` varchar(500) NOT NULL,
  `sub_heading` varchar(500) NOT NULL,
  `link` varchar(100) NOT NULL,
  `link_txt` varchar(100) NOT NULL,
  `order_number` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`, `heading`, `sub_heading`, `link`, `link_txt`, `order_number`, `added_on`, `status`) VALUES
(1, '533799913_banner-4.jpg', 'Drink & Heathy Food', 'Fresh Heathy and Organic', 'shop', 'Order Now', 1, '2020-06-23 03:00:05', 1),
(2, '546847873_banner-4.jpg', 'Drink & Heathy Food', 'Fresh Heathy and Organic', 'shop', 'Order Now', 1, '2020-06-23 03:06:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `order_number` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `order_number`, `status`, `added_on`) VALUES
(1, 'Chaat & Snacks', 1, 1, '2020-06-16 12:06:33'),
(2, 'Chinese', 2, 1, '2020-06-16 12:06:41'),
(3, 'South Indian', 3, 1, '2020-06-16 12:06:59'),
(4, 'Desserts', 4, 1, '2020-06-16 12:07:18'),
(5, 'Murg', 0, 1, '2020-06-27 12:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `subject`, `message`, `added_on`) VALUES
(1, 'Vishal', 'phpvishal@gmail.com', '9999999999', 'Test Subject', 'test message', '2020-06-23 03:21:43');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_code`
--

CREATE TABLE `coupon_code` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `coupon_type` enum('P','F') NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `expired_on` date NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_code`
--

INSERT INTO `coupon_code` (`id`, `coupon_code`, `coupon_type`, `coupon_value`, `cart_min_value`, `expired_on`, `status`, `added_on`) VALUES
(1, 'FIRST50', 'P', 10, 50, '2020-08-20', 1, '2020-06-20 05:31:03'),
(2, 'FRIDAY', 'F', 200, 200, '2020-07-15', 1, '2020-07-10 10:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`id`, `name`, `mobile`, `password`, `status`, `added_on`) VALUES
(1, 'Vishal', '1234567890', 'vishal', 1, '2020-07-08 08:06:06'),
(2, 'Amit', '1234567891', 'amit', 1, '2020-07-08 08:06:21');

-- --------------------------------------------------------

--
-- Table structure for table `dish`
--

CREATE TABLE `dish` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `dish` varchar(100) NOT NULL,
  `dish_detail` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `type` enum('veg','non-veg') NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish`
--

INSERT INTO `dish` (`id`, `category_id`, `dish`, `dish_detail`, `image`, `type`, `status`, `added_on`) VALUES
(1, 4, 'Gulab Jamun', 'Gulab Jamun', '977945963_862169053_gulab-jamun.jpg', 'veg', 1, '2020-06-17 10:43:59'),
(3, 2, 'Chow mein', 'Chow mein', '836724175_Chowmein.jpg', 'non-veg', 1, '2020-06-17 10:47:26'),
(4, 5, 'Butter Chicken', 'Butter chicken or murg makhani is a dish, originating in the Indian subcontinent, of chicken in a mildly spiced tomato sauce.', '348714192_30-Minute-Instant-Pot-Butter-Chicken-7.jpg', 'non-veg', 1, '2020-06-27 12:50:50'),
(5, 2, 'Testing', 'testing', '140977647_404.jpg', 'veg', 0, '2020-07-06 12:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `dish_cart`
--

CREATE TABLE `dish_cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dish_detail_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish_cart`
--

INSERT INTO `dish_cart` (`id`, `user_id`, `dish_detail_id`, `qty`, `added_on`) VALUES
(83, 1, 6, 3, '2020-07-17 06:07:02');

-- --------------------------------------------------------

--
-- Table structure for table `dish_details`
--

CREATE TABLE `dish_details` (
  `id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `attribute` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish_details`
--

INSERT INTO `dish_details` (`id`, `dish_id`, `attribute`, `price`, `status`, `added_on`) VALUES
(1, 3, 'Full', 300, 1, '2020-06-19 10:25:47'),
(2, 3, 'Half', 170, 1, '2020-06-19 10:49:45'),
(6, 1, 'Per Piece', 40, 1, '2020-06-20 00:00:00'),
(8, 4, 'Half', 250, 0, '2020-06-27 12:50:50'),
(9, 4, 'Full', 410, 1, '2020-06-27 12:50:50'),
(11, 5, 'Test1', 100, 1, '2020-07-06 12:00:24'),
(12, 5, 'Test2', 200, 0, '2020-07-06 12:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dish_details_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `dish_details_id`, `price`, `qty`) VALUES
(1, 1, 8, 250, 2),
(2, 1, 2, 170, 8),
(3, 1, 1, 300, 2),
(4, 2, 6, 40, 1),
(5, 3, 6, 40, 1),
(6, 3, 8, 250, 1),
(7, 4, 6, 40, 1),
(8, 4, 8, 250, 1),
(9, 5, 1, 300, 1),
(10, 6, 1, 300, 1),
(11, 7, 6, 40, 1),
(12, 8, 6, 40, 1),
(13, 9, 6, 40, 1),
(14, 10, 6, 40, 1),
(15, 11, 6, 40, 1),
(16, 12, 6, 40, 3),
(17, 13, 6, 40, 3),
(18, 14, 6, 40, 3),
(19, 15, 6, 40, 3),
(20, 16, 6, 40, 3),
(21, 17, 6, 40, 3),
(22, 18, 6, 40, 3),
(23, 19, 6, 40, 3),
(24, 20, 6, 40, 3),
(25, 21, 6, 40, 3),
(26, 22, 6, 40, 3);

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `total_price` float NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `final_price` float NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `payment_type` varchar(10) NOT NULL,
  `payment_id` varchar(100) NOT NULL,
  `order_status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`id`, `user_id`, `name`, `email`, `mobile`, `address`, `total_price`, `coupon_code`, `final_price`, `zipcode`, `delivery_boy_id`, `payment_status`, `payment_type`, `payment_id`, `order_status`, `added_on`) VALUES
(1, 1, 'Vishal', 'ervishalwebdeveloper@gmail.com', '99999999', 'A- Block, Sarita Vihar', 2460, '', 0, '110076', 1, 'success', '', '', 2, '2020-06-30 08:49:45'),
(2, 1, 'Vishal', 'ervishalwebdeveloper@gmail.com', '99999999', 'test', 40, '', 0, '110076', 2, 'pending', '', '', 2, '2020-06-30 08:53:41'),
(3, 1, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'Sarita Vihar, 110076', 290, '', 0, '110076', 0, 'pending', '', '', 1, '2020-07-03 07:02:12'),
(4, 2, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'Sarita Vihar, 110076', 290, '', 0, '110076', 0, 'pending', '', '', 1, '2020-07-03 07:03:11'),
(5, 1, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'Sarita Vihar. Delhi', 300, '', 0, '110076', 0, 'pending', '', '', 1, '2020-07-10 10:44:45'),
(6, 1, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'Sarita Vihar', 300, 'FRIDAY', 100, '110076', 0, 'pending', '', '', 4, '2020-07-10 10:48:52'),
(7, 10, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'Sarita Vihar', 40, '', 40, '110076', 0, 'pending', '', '', 1, '2020-07-13 04:47:56'),
(8, 1, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'test', 40, '', 40, '110076', 0, 'pending', 'paytm', '', 1, '2020-07-17 06:02:40'),
(9, 1, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'ad', 40, '', 40, 'sad', 0, 'pending', 'paytm', '', 1, '2020-07-17 06:03:40'),
(10, 1, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'ss', 40, '', 40, '110076', 0, 'pending', 'paytm', '', 1, '2020-07-17 06:05:09'),
(11, 1, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'Sarita Vihar', 40, '', 40, '110076', 0, 'pending', 'paytm', '', 1, '2020-07-17 06:05:28'),
(12, 1, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'd', 120, '', 120, '110076', 0, 'pending', 'paytm', '', 1, '2020-07-17 06:07:11'),
(13, 1, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'test', 120, '', 120, '110076', 0, 'pending', 'paytm', '', 1, '2020-07-17 06:07:47'),
(14, 1, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'Test', 120, '', 120, '110076', 0, 'pending', 'paytm', '', 1, '2020-07-17 06:08:17'),
(15, 1, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'Test', 120, '', 120, '110076', 0, 'pending', 'paytm', '', 1, '2020-07-17 06:09:44'),
(16, 1, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'Test', 120, '', 120, '110076', 0, 'pending', 'paytm', '', 1, '2020-07-17 06:10:16'),
(17, 1, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'Test', 120, '', 120, '110076', 0, 'pending', 'paytm', '', 1, '2020-07-17 06:11:57'),
(18, 1, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'test', 120, '', 120, '110076', 0, 'pending', 'paytm', '', 1, '2020-07-17 06:12:48'),
(19, 1, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'test', 120, '', 120, '110076', 0, 'pending', 'paytm', '', 1, '2020-07-17 06:14:12'),
(20, 1, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'Test', 120, '', 120, '110076', 0, 'pending', 'paytm', '', 1, '2020-07-17 06:23:44'),
(21, 1, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'test', 120, '', 120, '110076', 0, 'success', 'paytm', '20200717111212800110168138801732565', 1, '2020-07-17 06:25:23'),
(22, 1, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', 'test', 120, '', 120, '110076', 0, 'success', 'paytm', '20200717111212800110168389201714335', 1, '2020-07-17 06:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `order_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `order_status`) VALUES
(1, 'Pending'),
(2, 'Cooking '),
(3, 'On the Way'),
(4, 'Delivered'),
(5, 'Cancel');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dish_detail_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `user_id`, `order_id`, `dish_detail_id`, `rating`) VALUES
(1, 1, 6, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `cart_min_price` int(11) NOT NULL,
  `cart_min_price_msg` varchar(250) NOT NULL,
  `website_close` int(11) NOT NULL,
  `website_close_msg` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `cart_min_price`, `cart_min_price_msg`, `website_close`, `website_close_msg`) VALUES
(1, 40, 'Cart min price will be 50 rs', 0, 'Website Closed for today');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `email_verify` int(11) NOT NULL,
  `rand_str` varchar(20) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `password`, `status`, `email_verify`, `rand_str`, `added_on`) VALUES
(1, 'Vishal Gupta', 'ervishalwebdeveloper@gmail.com', '99999991', '$2y$10$U7SCtEfrBg2VfQ91l6EfZ.IOiSWiMA9l0d3vay0QKxNLhO6q8XcLy', 1, 1, 'mkgzxqptfsbwiga', '2020-06-25 12:29:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_code`
--
ALTER TABLE `coupon_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish`
--
ALTER TABLE `dish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_cart`
--
ALTER TABLE `dish_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_details`
--
ALTER TABLE `dish_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon_code`
--
ALTER TABLE `coupon_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dish`
--
ALTER TABLE `dish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dish_cart`
--
ALTER TABLE `dish_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `dish_details`
--
ALTER TABLE `dish_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
