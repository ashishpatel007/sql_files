-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 15, 2017 at 08:44 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `avatar` text NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`, `password`, `avatar`, `join_date`) VALUES
(1, '', '', '', '', '', '2017-05-15 17:06:05'),
(2, '', '', '', '', '', '2017-05-15 17:06:05'),
(3, '', '', '', '', '', '2017-05-15 17:07:51'),
(4, '', '', '', '', '', '2017-05-15 17:07:51'),
(5, '', '', '', '', '', '2017-05-15 17:07:51'),
(6, '', '', '', '', '', '2017-05-15 17:07:51'),
(7, '', '', '', '', '', '2017-05-15 17:07:51'),
(8, 'Sandy', 'Williams', 'sandy@gmail.com', '1234', 'images/sandy.jpg', '2017-05-15 18:31:15'),
(9, 'Ben', 'Barro', 'ben@gmail.com', '1234', 'images/ben.jpg', '2017-05-15 18:31:15'),
(10, 'William', 'Terry', 'william@gmail.com', '1234', 'images/william.jpg', '2017-05-15 18:31:15'),
(11, 'Sarah', 'Thompson', 'sarah@gmail.com', '1234', 'images/sarah.jpg', '2017-05-15 18:31:15'),
(12, 'Donald', 'Duck', 'donald@gmail.com', '1234', 'images/donald.jpg', '2017-05-15 18:31:15'),
(13, 'Beth', 'McAdams', 'beth@gmail.com', '1234', 'images/beth.jpg', '2017-05-15 18:31:15'),
(14, 'Harry', 'Henderson', 'harry@gmail.com', '1234', 'images/harry.jpg', '2017-05-15 18:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `address2` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `customer`, `address`, `address2`, `city`, `state`, `zipcode`) VALUES
(1, 1, '10 Main st', '', 'Boston', 'MA', '01929'),
(2, 2, '20 Main st', 'Apt 3', 'New York', 'NY', '01929'),
(3, 3, '30 Main st', '', 'Seaside Heights', 'NJ', '01929'),
(4, 4, '40 Main st', 'Unit 10', 'Baltimore', 'MD', '01929'),
(5, 5, '50 Main st', 'Apt 18', 'Miami', 'FL', '01929'),
(6, 6, '60 Main st', '', 'Chicago', 'IL', '01929'),
(7, 7, '70 Main st', '', 'Sacramento', 'CA', '01929');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer`, `product`) VALUES
(1, 1, 5),
(2, 2, 6),
(3, 1, 12),
(4, 6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `category` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `body`, `category`, `create_date`) VALUES
(1, 'About Us', 'This is the body for the about us page', 3, '2017-05-15 18:37:57'),
(2, 'Our Work', 'This is the body for the our work page', 2, '2017-05-15 18:37:57'),
(3, 'Testimonials', 'This is the body for the testimonials page', 2, '2017-05-15 18:37:57');

-- --------------------------------------------------------

--
-- Table structure for table `page_categories`
--

CREATE TABLE `page_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_categories`
--

INSERT INTO `page_categories` (`id`, `name`, `description`, `image`) VALUES
(1, 'Services', 'Service pages', 'images/services.jpg'),
(2, 'Portfolio', 'Portfolio pages', 'images/portfolio.jpg'),
(3, 'Company', 'Company pages', 'images/company.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(30) NOT NULL,
  `category` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category`, `image`, `create_date`) VALUES
(1, 'Android Phone', 'This is an Android based smartphone', '299.99', 1, '', '2017-05-15 16:39:07'),
(5, '', '', '', 1, '', '2017-05-15 17:09:15'),
(6, '', '', '', 1, '', '2017-05-15 17:09:15'),
(7, '', '', '', 1, '', '2017-05-15 17:11:50'),
(8, '', '', '', 1, '', '2017-05-15 17:11:50'),
(9, '', '', '', 1, '', '2017-05-15 17:11:50'),
(10, '', '', '', 1, '', '2017-05-15 17:11:50'),
(11, '', '', '', 1, '', '2017-05-15 17:11:50'),
(12, '', '', '', 1, '', '2017-05-15 17:11:59'),
(35, 'Surface Tablet', 'Microsoft Surface Pro with 128GB Memory', '499.99', 1, 'images/surface.jpg', '2017-05-15 18:26:30'),
(36, 'Nextbook Tablet', 'Nextbook 7 inch Tablet 8GB Memory', '99.99', 1, 'images/nextbook.jpg', '2017-05-15 18:26:30'),
(37, 'Philips BTM2180/37 Micro Music System', 'Wireless music streaming via Bluetooth', '149.99', 1, 'images/stereo.jpg', '2017-05-15 18:26:30'),
(38, 'Memorex Boombox', 'Memorex MP3142 - BoomBox', '45.99', 1, 'images/boombox.jpg', '2017-05-15 18:26:30'),
(39, 'Mossy Oak Infinity Seat Cover', 'High Quality, heavy mossy oak infinity seat cover', '19.99', 6, 'images/seatcover1.jpg', '2017-05-15 18:26:30'),
(40, 'Remington Floor Mat Set', 'Remington Best Fashion Carpet Floor Mat Set Tan 4pc', '29.99', 1, 'images/floormat.jpg', '2017-05-15 18:26:30'),
(41, 'Rawlings RGB36 Baseball Glove', 'Rawlings RGB36 Baseball Glove 12 inch', '29.99', 5, 'images/glove1.jpg', '2017-05-15 18:26:30'),
(42, 'Frankling Pro Batting Floves', 'Franklin Sports MLB Shok-Sorb Pro Batting Glove Pair', '19.99', 5, 'images/glove2.jpg', '2017-05-15 18:26:30'),
(43, 'Golds Gym Trainer 420', 'New Gold\'s Gym Trainer 420 Treadmill with bonus prize mat', '377.00', 5, 'images/treadmill.jpg', '2017-05-15 18:26:30'),
(44, 'Weslo Cadence G 5.9 Treadmill', 'Weslo Cadence G 5.9 Treadmill', '287.00', 5, 'images/treadmill2.jpg', '2017-05-15 18:26:30'),
(45, 'Golds Gym Trainer 315 Treadmill', 'Golds Gym Trainer 315 Treadmill', '258.00', 5, 'images/treadmill3.jpg', '2017-05-15 18:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `description`, `image`) VALUES
(1, 'Electronics', 'This is the electronics category', 'images/electronic.jpg'),
(3, 'Fashion', 'The latest fashions and accessories', 'images/fashion.jpg'),
(4, 'Music', 'Music instruments and albums', 'images/music.jpg'),
(5, 'Sports', 'Sporting equipment and jerseys', 'images/sports.jpg'),
(7, 'Home and Garden', 'Products for your home', 'images/home.jpg'),
(8, 'Auto', 'Auto parts and accessories', 'images/autos.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `rating` int(2) NOT NULL,
  `customer` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `review_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `title`, `body`, `rating`, `customer`, `product`, `review_date`) VALUES
(5, 'Great Product', 'This product was great', 9, 1, 1, '2017-05-15 18:35:52'),
(6, 'Okay Product', 'This product was okay', 6, 1, 2, '2017-05-15 18:35:52'),
(7, 'Decent Product', 'This product was decent', 8, 3, 4, '2017-05-15 18:35:52'),
(8, 'Bad Product', 'This product was really bad', 2, 5, 4, '2017-05-15 18:35:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer` (`customer`),
  ADD KEY `customer_2` (`customer`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer` (`customer`),
  ADD KEY `product` (`product`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `page_categories`
--
ALTER TABLE `page_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer` (`customer`),
  ADD KEY `product` (`product`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `page_categories`
--
ALTER TABLE `page_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD CONSTRAINT `customer_addresses_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customers` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product`) REFERENCES `products` (`id`);

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`category`) REFERENCES `page_categories` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category`) REFERENCES `product_categories` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customers` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
