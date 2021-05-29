-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2021 at 12:14 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javainventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Drinks'),
(2, 'Vitamins\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `status`) VALUES
(1, 'admin', 'Active'),
(2, 'user', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `musers`
--

CREATE TABLE `musers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userrole` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `musers`
--

INSERT INTO `musers` (`id`, `name`, `username`, `password`, `userrole`, `status`) VALUES
(1, 'User', 'user', 'user', 'User', 'Active'),
(2, 'Admin', 'admin', 'admin', 'Admin', 'Active'),
(4, 'Junjun', 'junjun', 'junjun', 'Admin', 'Active'),
(5, 'Joy Chan', 'joychan', 'joychan', 'Admin', 'Active'),
(7, 'angelica', 'angelica', 'angelica', 'User', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `productorder`
--

CREATE TABLE `productorder` (
  `id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `pieces` int(11) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `total` decimal(25,2) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productorder`
--

INSERT INTO `productorder` (`id`, `product_title`, `category`, `pieces`, `price`, `total`, `date`) VALUES
(14, 'Zesto', 'Drinks', 10, '10.00', '0.00', 'Wed May 05 21:29:02 CST 2021'),
(15, 'Peridin-C', 'Vitamins', 10, '15.00', '0.00', 'Thu May 06 21:29:19 CST 2021'),
(16, 'Yakult', 'Drinks', 30, '15.00', '0.00', 'Tue May 11 21:29:42 CST 2021'),
(17, 'Enervon', 'Vitamins', 2, '27.00', '0.00', 'Sat May 01 00:00:00 CST 2021'),
(18, 'Zesto', 'Drinks', 1, '10.00', '0.00', 'Sun May 02 21:30:38 CST 2021'),
(19, 'Zesto', 'Drinks', 2, '27.00', '0.00', 'Mon May 10 21:35:39 CST 2021'),
(21, 'Zesto', 'Drinks', 1, '1.00', '0.00', 'Tue May 04 00:00:00 CST 2021'),
(22, 'Yakult', 'Drinks', 12, '15.00', '0.00', 'Tue May 11 21:43:04 CST 2021'),
(23, 'Zesto', 'Drinks', 12, '10.00', '120.00', 'Tue May 04 00:00:00 CST 2021'),
(24, 'Zesto', 'Drinks', 34, '10.00', '0.00', 'Tue May 04 23:10:39 CST 2021'),
(25, 'Zesto', 'Drinks', 1, '10.00', '10.00', 'Tue May 11 11:41:31 CST 2021'),
(26, 'Zesto', 'Drinks', 2, '10.00', '20.00', 'Thu May 13 12:12:20 CST 2021'),
(27, 'Yakult', 'Drinks', 3, '15.00', '45.00', 'Wed May 05 12:13:45 CST 2021'),
(28, 'Enervon', 'Vitamins', 1, '27.00', '27.00', 'Wed May 05 12:16:37 CST 2021');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `in_stock` int(11) NOT NULL,
  `buying_price` decimal(25,2) NOT NULL,
  `selling_price` decimal(25,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_title`, `category`, `in_stock`, `buying_price`, `selling_price`) VALUES
(15, 'Yakult', 'Drinks', 20, '12.00', '15.00'),
(17, 'Zesto', 'Drinks', 50, '7.00', '10.00'),
(18, 'Enervon', 'Vitamins', 20, '25.00', '27.00'),
(21, 'Peridin-C', 'Vitamins', 45, '12.00', '15.00'),
(23, 'Zesto', 'Drinks', 10, '7.00', '10.00'),
(27, 'Yakult', 'Drinks', 20, '12.00', '15.00'),
(28, 'Yakult', 'Drinks', 20, '12.00', '15.00'),
(29, 'Zesto', 'Drinks', 20, '12.00', '15.00'),
(30, 'Zesto', 'Drinks', 9, '12.00', '15.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `status`) VALUES
(1, 'user', 'user', 'Active'),
(2, 'admin', 'admin', 'Active'),
(4, 'junjun', 'junjun', 'Active'),
(5, 'joychan', 'joychan', 'Active'),
(7, 'angelica', 'angelica', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `musers`
--
ALTER TABLE `musers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productorder`
--
ALTER TABLE `productorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `musers`
--
ALTER TABLE `musers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `productorder`
--
ALTER TABLE `productorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
