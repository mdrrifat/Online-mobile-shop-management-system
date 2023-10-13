-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2023 at 07:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(1, 2, 1, 'IPHONE 14 PRO MAX', 1200000, 1, 'Apple-iPhone-14-Pro_FINAL_featured-image-packshot-review-1-1024x691.jpg'),
(2, 1, 1, 'IPHONE 14 PRO MAX', 1200000, 2, 'Apple-iPhone-14-Pro_FINAL_featured-image-packshot-review-1-1024x691.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(2, 3, 'FAISAL AHMED', '20215103052@cse.bubt.edu.bd', '0171111111', 'Dear Sir/Madam, \r\nI am writing this Message to request a full refund for the Gadget I ordered from your store. I had received a lot of reviews which is why I ordered a Iphone 13 pro worth 90,000 taka. I regret to inform you that I am not satisfied with Product.');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 4, 'Rifat', '1326', 'a@mail.com', 'cash on delivery', 'flat no. 12, 12, Dhaka, Dhaka, BD - 456', 'IPHONE 14 PRO MAX (1200000 x 1) - ', 1200000, '2023-10-01', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`, `category`) VALUES
(1, 'IPHONE 14 PRO MAX', 'Display: 6.7″, LTPO Super Retina XDR OLED, 120Hz, HDR10, Dolby Vision\r\nCPU: Apple A16 Bionic (4 nm)\r\nGPU: Apple GPU (5-core graphics)\r\nFront Camera: 12 MP, Cinematic mode, gyro-EIS\r\nResolution: 1290 x 2796 pixels\r\nRAM: 6GB\r\nRear camera: 48MP (wide) +12MP (ultrawide) + 12MP (telephoto)\r\nBattery: Li-Ion 4323mAh', 1200000, 'iphone-14-pro.png', '421640-1280.jpg', 'iphone-14-pro.png', 'iphone'),
(10, 'Iphone 12 Pro', 'The iPhone 12 Pro features a 6.1-inch display (a bit bigger than the 5.8&#34; on the iPhone 11 Pro) and starts at a price of $1,000, and arrives in Apple&#39;s three signature colors: silver, graphite, and gold, as well as a fourth, brand new color option, a blue model. Storage for the base', 120000, 'iphone_12_PNG19.png', 'pngimg.com - iphone_12_PNG25.png', 'iphone-12-pacific-blue-color.webp', 'iphone'),
(11, 'Iphone 13 Pro', 'OS: iOS 15\r\nDisplay: 6.1&#34; 1170x2532 pixels\r\nCamera: 12MP 2160p\r\nRAM: 4GB RAM Apple A15 Bionic\r\nBattery: 3240mAh Li-Ion', 100000, 'png-transparent-iphone-14-pro.png', 'png-transparent-iphone-13-thumbnail.png', 'png-transparent-iphone-14-pro.png', 'iphone'),
(12, 'Samsung S23', 'Display: 6.1” FHD+ Dynamic AMOLED 2X, HDR10+, 120Hz\r\nCPU: Qualcomm Snapdragon 8 Gen 2\r\nGPU: Adreno 740\r\nFront Camera: 12MP (wide)\r\nResolution: 2340 x 1080 Pixels\r\nRear camera: 50MP + 12MP + 10MP\r\nBattery: 3900mAh, Fast charging 25W\r\nPhysical Dual Sim', 1200000, '2223.png', 'back.png', 's22.png', 'samsung'),
(13, 'Samsung S23 Ultra', 'Display: 6.8” QHD+ Dynamic AMOLED 2X, HDR10+, 120Hz\r\nCPU: Qualcomm Snapdragon 8 Gen 2\r\nGPU: Adreno 740\r\nFront Camera: 12MP (wide)\r\nResolution: 3088 x 1440 Pixels\r\nRear camera: 200MP + 12MP + 10MP + 10MP\r\nBattery: 5000mAh, Fast charging 45W', 1500000, 'samsung-galaxy-s23Ultra-black-front.png', 'ca-feature-galaxy-s.jpg', '2605.png', 'samsung'),
(14, 'Samsung Z Fold 4', 'Display: 7.6”, 2176 x 1812-pixels, QXGA+ Dynamic AMOLED 2X, 120Hz, HDR10+\r\nCover Display: 6.2″, 2316 x 904-pixels, Dynamic AMOLED 2X, 120Hz\r\nCPU: Qualcomm SM8475 Snapdragon 8+ Gen 1 (4 nm)\r\nGPU: Adreno 730\r\nFront Camera: 4 MP, f/1.8, under display\r\nCover camera: 10 MP, f/2.2, 24mm (wide)\r\nStorage: 12GB RAM 256GB/512GB ROM\r\nRear Camera: 50 MP (wide) OIS + 10 MP (telephoto) OIS + 12 MP (ultrawide)\r\nBattery: 4400mAh, Fast charging 25W', 2000000, 'e579158a453ebbe9eb3f9705b0adc29a6dcea5b1_592709.jpg', 'ac29a3a043752984bc28adf14e5ba7fa334525cf_592709_2.jpg', '0d55b0e6443857dc75494c159e8b29affe35f8e4_592709_7.jpg', 'samsung'),
(15, 'Xiaomi 12 Pro', 'Display: 6.67”, OLED, 120Hz, HDR10+\r\nCPU: MediaTek Dimensity 1080 (6 nm)\r\nGPU: Mali-G68 MC4\r\nFront Camera: 16MP\r\nResolution: 1080 x 2400 pixels\r\nRear camera: 200MP+8MP+2MP\r\nBattery: 5000mAh, 120W fast charging', 30000, 'mi-12-pro-5g-purple-2.png', 'xiaomi_12_P.png', 'Xiaomi-12-pro-1.png', 'mi'),
(16, 'Xiaomi Note 12', 'Display: 6.67” AMOLED, 120Hz\r\nCPU: Octa-Core Qualcomm SM6225 Snapdragon 685 (6 nm)\r\nGPU: Adreno 610\r\nFront Camera: 13MP\r\nResolution: 1080 x 2400 pixels\r\nRAM/ROM: 6GB/8GB & 128GB\r\nRear camera: 50MP+8MP+2MP\r\nBattery: 5000mAh, 33W fast charging', 30000, 'pms_1676949936.54586706.png', 'Xiaomi-Red.png', 'Xiaomi-Redmi-Note-12-500x500.jpg', 'mi'),
(17, 'Vivo V27', 'Display: 6.78 inches\r\nProcessor: MediaTek Dimensity 7200\r\nOS: Funtouch OS 13 Global\r\nFront Camera: 50MP\r\nRear Camera: 50MP+8MP+2MP\r\nRAM: 12GB\r\nStorage: 256GB\r\nBattery Capacity: 4600mAh (TYP), 4500mAh (MIN)', 54000, 'a3fe0a6675fede93f198a680274b06f7.png', 'Vivo-V27-Pro-1.png', 'afee365e27ec71ce13a2b6664ecde107.png', 'vivo');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'faisalksabd999@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(2, 'FAISAL AHMED', 'faisalbubtbin@outlook.com', '17ba0791499db908433b80f37c5fbc89b870084b'),
(3, 'FAISAL AHMED', '20215103052@cse.bubt.edu.bd', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(4, 'rifat', 'a@mail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
