-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2021 at 01:09 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plant`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`) VALUES
(1, 'Cactus & Succulents', 'type1.jpg'),
(2, 'Bonsai Plants', 'type2.jpg'),
(3, 'Flowering Plants', 'type3.jpg'),
(4, 'Climbers & Creepers', 'type4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `username`, `email`, `phone`, `message`) VALUES
(1, 'Shubham Jayprakash Palav', 'shubham@gmail.com', 9892899479, 'Provides good facilities.'),
(2, 'Shubham Jayprakash Palav', 'shubham@gmail.com', 9892899479, 'Provides good plants'),
(3, 'Shubham Jayprakash Palav', 'shubham@gmail.com', 9892899479, 'Hello'),
(4, 'shubham palav', 'shubham@gmail.com', 987553778, 'Provides good service');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `oid`, `type`, `pid`, `quantity`, `price`) VALUES
(1, 1, 'plants', 2, 1, '400.00'),
(2, 1, 'plants', 3, 1, '299.00'),
(3, 2, 'products', 1, 2, '260.00'),
(4, 2, 'products', 4, 1, '140.00'),
(5, 3, 'plants', 5, 2, '800.00'),
(6, 3, 'plants', 6, 2, '598.00'),
(7, 3, 'plants', 7, 1, '349.00'),
(8, 3, 'plants', 8, 1, '299.00'),
(9, 3, 'plants', 9, 3, '780.00'),
(10, 3, 'plants', 10, 1, '200.00'),
(11, 3, 'products', 11, 1, '130.00'),
(12, 3, 'products', 12, 1, '140.00'),
(13, 3, 'products', 13, 1, '228.00'),
(14, 5, 'products', 15, 2, '280.00'),
(15, 5, 'products', 16, 1, '450.00'),
(16, 5, 'plants', 17, 1, '999.00'),
(17, 5, 'plants', 18, 2, '1998.00'),
(18, 5, 'plants', 19, 2, '1998.00'),
(19, 6, 'products', 20, 1, '130.00'),
(20, 6, 'products', 21, 1, '140.00'),
(21, 6, 'products', 22, 1, '450.00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `pincode` int(6) NOT NULL,
  `numOfProducts` int(11) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `cid`, `contact`, `address`, `city`, `state`, `pincode`, `numOfProducts`, `Amount`) VALUES
(1, 1, 9892899479, '519 Mayuresh Building D L Marg Kalachowki Mumbai=4', 'Mumbai', 'Maharashtra', 400033, 2, '699.00'),
(2, 1, 9892899479, '519 Mayuresh Building D L Marg Kalachowki Mumbai=4', 'Mumbai', 'Maharashtra', 400033, 3, '400.00'),
(3, 1, 9892899765, 'Kurla Mumbai', 'Mumbai', 'Maharashtra', 400038, 13, '3524.00'),
(4, 1, 9892899765, 'Kurla Mumbai', 'Mumbai', 'Maharashtra', 400038, 0, '0.00'),
(5, 1, 9892899479, '519 Mayuresh Building D L Marg Kalachowki Mumbai=4', 'Mumbai', 'Maharashtra', 400033, 8, '5725.00'),
(6, 1, 9892899479, '519 Mayuresh Building D L Marg Kalachowki Mumbai=4', 'Mumbai', 'Maharashtra', 400033, 3, '720.00');

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plants`
--

INSERT INTO `plants` (`id`, `category_id`, `name`, `image`, `price`) VALUES
(1, 1, 'lively jade plant', 't1.jpg', '400.00'),
(2, 1, 'Microdasys Plant', 't2.jpg', '299.00'),
(3, 1, 'Huernia Zebrina Plant', 't3.jpg', '349.00'),
(4, 1, 'Echinopsis Chamaecereus Plant', 't4.jpg', '349.00'),
(5, 1, 'Columnar Cactus', 's1.jpg', '399.00'),
(6, 1, 'Bunny Ear Cactus', 's2.jpg', '1000.00'),
(7, 1, 'Echeverione Succulent Garden Potted Flower', 's3.jpg', '299.00'),
(8, 1, 'Fantastic Jade Terrarium', 's4.jpg', '200.00'),
(9, 2, 'Hyperboles Bonsai Wild Plant With Pot', 's8.jpg', '999.00'),
(10, 2, 'Hyperboles Bonsai Tree With Wooden Pot', 'p2.jpg', '999.00'),
(11, 2, 'Bonsai Dwarf Tree Plants', 'p3.jpg', '999.00'),
(12, 2, 'Miracle Bonsai Wild Plant', 'p4.jpg', '999.00'),
(13, 2, 'Bonsai Plant With Melamine Pot', 's5.jpg', '499.00'),
(14, 2, 'GoodLuck Bonsai Plant', 's6.jpg', '425.00'),
(15, 2, 'Japanese Bonsai Green Maple Tree', 's7.jpg', '482.00'),
(16, 2, 'Ficus Bonsai Plant', 'b.jpg', '1199.00'),
(17, 3, 'Gold Plants', 'd1.jpg', '260.00'),
(18, 3, 'Latina Flower Plant', 'd2.jpg', '199.00'),
(19, 3, 'Variegated Tagar Plant', 'd3.jpg', '256.00'),
(20, 3, 'Tagar Miniature Flower Plant', 'd4.jpg', '255.00'),
(21, 3, 'Bougainvillea Flower Plant', 'd5.jpg', '200.00'),
(22, 3, 'Chafa Plant', 'd6.jpg', '256.00'),
(23, 3, 'Flowering Plants', 'd7.jpg', '299.00'),
(24, 3, 'Orchid Plant', 'd8.jpg', '300.00'),
(25, 4, 'Live Madhumalati Honeysuckle Rangoon Creeper Plant', 'm1.jpg', '269.00'),
(26, 4, 'Seedscare Morning Glory Red', 'm2.jpg', '180.00'),
(27, 4, 'Nasturtium Climber Flower Plant', 'm3.jpg', '249.00'),
(28, 4, 'Creeper Net, Climber Plant Support Net UV Treated ', 'climb.jpg', '80.00'),
(29, 4, 'Parthenocissus Henryana', 'm4.jpg', '250.00'),
(30, 4, 'Muehlenbeckia Complexa', 'm5.jpg', '399.00'),
(31, 4, 'Jasminum Officinale', 'm6.jpg', '299.00'),
(32, 4, 'Wisteria Formosa', 'm7.jpg', '440.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`) VALUES
(1, 'ACCON', 'accon.jpg', '130.00'),
(2, 'Humitek - Humic Acid Formulation', 'prod1.jpg', '140.00'),
(3, 'Bhindi (Okra) F1 Hybrid Seeds', 'prod2.jpg', '450.00'),
(4, 'Terrific Trifecta', 'prod5.jpg', '799.00'),
(6, 'Plastic Germination Tray (102 Cells, Round) (set o', 'prod4.jpg', '299.00'),
(7, 'HDPE Rectangular Grow Bag - 36x12x12 Inches (3x1x1', 'prod6.jpg', '228.00'),
(8, 'Basic Garden Tool Kit - Gardening Tools', 'prod7.jpg', '799.00'),
(9, 'Gardening Made Easy with All-in-One Gardening Kit', 'prod8.jpg', '1299.00');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Shubham Palav', 'shubham@gmail.com', '123456'),
(2, 'Manish Kumar', 'manish@gmail.com', '123'),
(3, 'Manish Kumar', 'manish@gmail.com', '12'),
(4, 'Shubham', 'shubham@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `plants`
--
ALTER TABLE `plants`
  ADD CONSTRAINT `plants_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
