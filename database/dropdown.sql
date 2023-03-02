-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2023 at 03:32 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dropdown`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_img` varchar(255) NOT NULL,
  `cat_headline` varchar(255) NOT NULL,
  `cat_txt` varchar(255) NOT NULL,
  `cat_div` varchar(255) NOT NULL,
  `cat_productgend` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_img`, `cat_headline`, `cat_txt`, `cat_div`, `cat_productgend`) VALUES
(1, 'https://images.unsplash.com/photo-1618001789196-8b986847cd5e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', 'Man Shirt', 'This is the man shirts', 'shirt', ''),
(2, 'https://images.unsplash.com/photo-1541101767792-f9b2b1c4f127?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80', 'Woman Shirt', 'This is the women shirt', 'shirt', ''),
(3, 'https://images.unsplash.com/photo-1660595060627-eac6590cb0d3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80', 'Kid Shirt', 'This is the kids Shirt', 'shirt', ''),
(7, 'https://images.unsplash.com/photo-1548883354-7622d03aca27?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', 'Man Pant', 'This is the man pant', 'pant', ''),
(8, 'https://images.unsplash.com/photo-1594633312681-425c7b97ccd1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', 'Woman Pant', 'This is the woman pant', 'pant', ''),
(9, 'https://images.unsplash.com/photo-1541580620-23a640b30338?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=699&q=80', 'Kid Pant', 'This is the kids pant', 'pant', ''),
(10, 'https://images.unsplash.com/photo-1525019461548-85e61dd8e83a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=734&q=80', 'Man Watch', 'This is the man watch', 'watch', ''),
(11, 'https://images.unsplash.com/photo-1506193095-80bc749473f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80', 'Woman Watch', 'This is the woman watch', 'watch', ''),
(12, 'https://images.unsplash.com/photo-1622434641406-a158123450f9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=704&q=80', 'Kids Watch', 'This is the kids watch', 'watch', ''),
(13, 'https://images.unsplash.com/photo-1547941126-3d5322b218b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', 'Man Shoe', 'This is the man shoe', 'shoe', ''),
(14, 'https://images.unsplash.com/photo-1531310197839-ccf54634509e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80', 'Woman Shoe', 'This is the woman shoe', 'shoe', ''),
(15, 'https://images.unsplash.com/photo-1574946943172-4800feadfab7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80', 'Kid Shoe', 'This is kid shoe', 'shoe', '');

-- --------------------------------------------------------

--
-- Table structure for table `dropdownmenu`
--

CREATE TABLE `dropdownmenu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `menu_div` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dropdownmenu`
--

INSERT INTO `dropdownmenu` (`id`, `name`, `menu_div`) VALUES
(1, 'Shirts', 'shirt'),
(2, 'Pants', 'pant'),
(3, 'Watch', 'watch'),
(4, 'Shoe', 'shoe');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `product_details` varchar(255) NOT NULL,
  `product_div` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_img`, `product_details`, `product_div`) VALUES
(1, 'Venice Relaxed Fit Short Sleeve Button-Up Camp Shirt', 'https://n.nordstrommedia.com/id/sr3/cba16137-5905-486f-8256-a222d1179920.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196&dpr=2', 'Laid-back style is the calling card of this sweet shirt with vintage-inspired appeal.', 'Man Shirt'),
(2, 'Trim Fit Solid Linen Button-Down Shirt', 'https://n.nordstrommedia.com/id/sr3/0a23807e-8a15-4b3a-bab9-cb7c61b605ec.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196', 'This versatile shirt cut from breathable fabric with a smart button-down collar is one you\'ll want in every color.', 'Man Shirt'),
(3, 'Benson Arrow Print Stretch Short Sleeve Button-Down Shirt', 'https://n.nordstrommedia.com/id/sr3/91cf98cc-584a-4403-ac39-b89354f82260.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196', 'Ditsy arrows point in all directions on a shirt cut from a stretchy cotton blend with a fit that\'s ideal for bigger and taller guys.', 'Man Shirt'),
(4, 'Plaid Boyfriend Shirt', 'https://n.nordstrommedia.com/id/sr3/1430f0f3-9a03-458a-b371-142ff7b531c5.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196', 'Quench your madness for plaidness in this boyfriend-style button-up complete with a chest patch pocket and available in a panoply of plaids.', 'Woman Shirt'),
(5, 'Imitation Pearl Button-Up Cotton Shirt', 'https://n.nordstrommedia.com/id/sr3/967a5811-4e77-436a-aebf-9dc5d81c04c7.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=1950&h=2990', 'Dazzling daisies fasten a staple shirt cut from crisp cotton in a relaxed fit.', 'Woman Shirt'),
(6, 'Drapey Classic Shirt', 'https://n.nordstrommedia.com/id/sr3/fde2bc9a-584f-489b-90e0-c15439755987.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=1950&h=2990', 'An ultrasoft and lightweight cotton-blend shirt is perfectly drapey, with a partially hidden front-button closure adding sleek interest to the look.', 'Woman Shirt'),
(7, 'Short Sleeve Poplin Shirt', 'https://n.nordstrommedia.com/id/sr3/00553667-9a11-4c90-aaca-41bb13492bf2.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196', 'This patterned shirt with a patch pocket and breezy short sleeves goes great in any cool kid\'s closet.', 'kid shirt'),
(8, 'Kids\' Stripe Poplin Button-Up Shirt', 'https://n.nordstrommedia.com/id/sr3/db638a03-1744-4112-9416-e99fc8a66ae1.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196', 'Little Boy & Big Boy', 'kid shirt'),
(9, 'Kids\' Gingham Performance Whale Button-Down Shirt', 'https://n.nordstrommedia.com/id/sr3/5a740172-0ec9-4082-98d5-b4eaf693ec0b.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196', 'Stretchy, moisture-wicking fabric keeps him comfortable all day in a gingham sport shirt that resists wrinkles to stay looking dapper and smart.', 'kid shirt'),
(10, 'Rip and Repair Skinny Jeans', 'https://n.nordstrommedia.com/id/sr3/2b36e5ab-5140-4297-85e1-739933de1023.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=1950&h=2990', 'Ripped and repaired construction adds to the lived-in character of skinny jeans fashioned with just a hint of stretch.', 'man pant'),
(11, 'Skinny Fit Stretch Cotton Chinos', 'https://n.nordstrommedia.com/id/sr3/af03eea7-9f86-49a3-ad20-ff960389c0c4.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196', 'Topman\'s skinny-fit chinos are crafted from soft, stretchy cotton twill to allow for better movement in a very close fit.', 'man pant'),
(12, 'Relaxed Cargo Trousers', 'https://n.nordstrommedia.com/id/sr3/116b38ec-9df2-4473-95b5-76b3dd82dae8.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=1950&h=2990', 'The convenience of cargos with the refined fit of trousers, these relaxed-fit pants offer you the best of both worlds, making them a favorite for any wardrobe.', 'man pant'),
(13, '\'Ab\'Solution High Waist Ankle Straight Leg Jeans', 'https://n.nordstrommedia.com/id/sr3/8f74f8d9-3e4b-4c2e-90e9-1e17d3cdce61.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196', 'Heavy sanding and whiskering authenticate the lived-in look of straight-leg jeans featuring \'Ab\'solution technology that smoothes and shapes.', 'woman pant'),
(14, 'Live In Pocket Joggers', 'https://n.nordstrommedia.com/id/sr3/ee29c0a1-326e-47f1-ba35-40bc0bfad621.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196', 'Lightweight knit joggers are cut in a versatile, slim profile and make racing to the finish line or grocery store exceptionally comfortable.', 'woman pant'),
(15, '\'Ab\'Solution Itty Bitty Bootcut Jeans', 'https://n.nordstrommedia.com/id/sr3/e053c863-1976-44d2-a91b-26638bd7d9b2.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196', 'Stretch jeans in a polished dark wash get a lean and leggy look from a slim cut balanced with a narrow boot-leg opening.', 'woman pant'),
(16, 'Kids\' Everyday Cotton Joggers', 'https://n.nordstrommedia.com/id/sr3/7293ca05-9f0f-466f-b7d1-8e4939b2db36.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=1950&h=2990', 'These lightweight jogger-style sweatpants made from cotton keep them cozy on weekend days and beyond.', 'kid pant'),
(17, 'Kids\' Floral Embroidered Pull-On Bootcut Knit Pants', 'https://n.nordstrommedia.com/id/sr3/4410f1d2-f1cf-45c3-a66a-63d9b2f85778.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=1950&h=2990', 'Your kid can rock a retro look in groovy, indigo-dyed and faded bootcut pants featuring a comfy elastic waist and a sprinkling of floral embroidery.', 'kid pant'),
(18, 'Kids\' Relaxed Cotton Blend Pants', 'https://n.nordstrommedia.com/id/sr3/317670d1-82eb-47e8-8f29-16ffdcc1bfd9.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=1950&h=2990', 'A soft cotton blend offers easy comfort in smart kid-sized sweatpants that will be a go-to choice in their playtime rotation.', 'kid pant');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `dropdownmenu`
--
ALTER TABLE `dropdownmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dropdownmenu`
--
ALTER TABLE `dropdownmenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
