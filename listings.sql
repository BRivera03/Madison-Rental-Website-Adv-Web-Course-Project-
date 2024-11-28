-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Nov 17, 2024 at 08:58 PM
-- Server version: 8.0.39
-- PHP Version: 8.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `listings`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartments`
--

CREATE TABLE `apartments` (
  `apartment_id` int NOT NULL,
  `landlord_id` int DEFAULT NULL,
  `bathrooms` int NOT NULL,
  `bedrooms` int NOT NULL,
  `imgURL` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `streetAddress` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `zipcode` int NOT NULL,
  `parking` tinyint(1) DEFAULT NULL,
  `pets` tinyint(1) DEFAULT NULL,
  `RI` tinyint(1) DEFAULT NULL,
  `heat` tinyint(1) DEFAULT NULL,
  `ac` tinyint(1) DEFAULT NULL,
  `washdry` tinyint(1) DEFAULT NULL,
  `dishwasher` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='v1';

--
-- Dumping data for table `apartments`
--

INSERT INTO `apartments` (`apartment_id`, `landlord_id`, `bathrooms`, `bedrooms`, `imgURL`, `price`, `streetAddress`, `zipcode`, `parking`, `pets`, `RI`, `heat`, `ac`, `washdry`, `dishwasher`) VALUES
(1, 13, 3, 3, 'https://photos.zillowstatic.com/fp/6deb9adade08c90', 3700, '210 N Breese Ter', 53726, 1, 0, 0, 0, 1, 1, 0),
(2, 15, 1, 1, 'https://photos.zillowstatic.com/fp/048e1d86ebc7809', 1433, '215 N Pinckney St #2', 53703, 0, 0, 0, 0, 0, 0, 0),
(3, 19, 2, 3, 'https://photos.zillowstatic.com/fp/306b9b3f699d981', 1695, '3117 Muir Field Rd', 53719, 0, 1, 1, 1, 0, 0, 1),
(4, 2, 1, 2, 'https://photos.zillowstatic.com/fp/6e3522016a7f432', 1660, '218 Judd St', 53714, 0, 1, 1, 1, 0, 0, 1),
(5, 3, 2, 2, 'https://photos.zillowstatic.com/fp/6dba8415d44eac4', 1795, '309 Orchard Dr', 53705, 1, 1, 0, 1, 0, 1, 1),
(6, 20, 2, 2, 'https://photos.zillowstatic.com/fp/60c12e01bfed47a', 1700, '1027 S Sunnyvale Ln UNIT A', 53713, 0, 1, 1, 0, 1, 1, 1),
(7, 30, 1, 2, 'https://photos.zillowstatic.com/fp/f436662bd4a6a1b', 1400, '329 Kedzie St APT 4', 53704, 0, 1, 0, 1, 0, 1, 0),
(8, 1, 1, 3, 'https://photos.zillowstatic.com/fp/b311ce6b4d46f71', 1950, '5405 Louden Ln', 53716, 1, 1, 1, 0, 1, 0, 1),
(9, 29, 1, 1, 'https://photos.zillowstatic.com/fp/84c7a1ee622c6d3', 1310, '23 E Johnson St #12662412', 53703, 1, 0, 0, 1, 1, 0, 1),
(10, 16, 3, 3, 'https://photos.zillowstatic.com/fp/242bead1ec12d34', 2700, '6152 Stoney Oak Ln', 53718, 1, 1, 0, 1, 1, 0, 1),
(11, 24, 1, 2, 'https://photos.zillowstatic.com/fp/a70c1c333a41fbb', 1395, '2838 Coolidge St #B', 53704, 1, 1, 1, 0, 0, 0, 0),
(12, 12, 4, 5, 'https://photos.zillowstatic.com/fp/e8f8270f9fdc69d', 3595, '821 Ondossagon Way', 53719, 1, 1, 0, 0, 0, 1, 1),
(13, 23, 1, 1, 'https://photos.zillowstatic.com/fp/302f982edc7fc3d', 1310, '222 N Pinckney St #17822813', 53703, 1, 0, 1, 0, 1, 1, 0),
(14, 12, 1, 1, 'https://photos.zillowstatic.com/fp/ec78742bc35c2d0', 1950, '1030 Spaight St #3', 53703, 0, 0, 0, 0, 1, 0, 1),
(15, 11, 2, 3, 'https://photos.zillowstatic.com/fp/2802ee3be884dfc', 2850, '4337 Herrick Ln', 53711, 0, 1, 0, 1, 1, 0, 0),
(16, 19, 2, 3, 'https://photos.zillowstatic.com/fp/4088a6fae5d6e42', 3750, '4746 Lafayette Dr', 53705, 1, 1, 0, 1, 0, 1, 0),
(17, 25, 1, 0, 'https://photos.zillowstatic.com/fp/36381871a1bc8db', 1050, '529 N Pinckney St APT 2', 53703, 0, 1, 0, 1, 0, 1, 0),
(18, 16, 1, 3, 'https://photos.zillowstatic.com/fp/002626f481d7cfa', 2165, '645 E Johnson St #3B-1BA', 53703, 0, 1, 0, 1, 1, 1, 0),
(19, 21, 1, 3, 'https://photos.zillowstatic.com/fp/eb7fb928e6ad3d1', 1525, '1214 E Mifflin St APT 1', 53703, 0, 0, 1, 1, 0, 0, 1),
(20, 6, 2, 3, 'https://photos.zillowstatic.com/fp/e7365a9de785b75', 2385, '810 E Gorham St #3B-2BA', 53703, 0, 1, 1, 0, 1, 0, 0),
(21, 23, 1, 4, 'https://photos.zillowstatic.com/fp/824d0aa1fdab1fd', 2700, '639 E Johnson St #4B-1BA', 53703, 1, 0, 0, 0, 0, 0, 1),
(22, 16, 1, 3, 'https://photos.zillowstatic.com/fp/a2697ddfe3a438c', 2430, '745 E Gorham St #3B-1BA', 53703, 0, 0, 1, 0, 0, 1, 0),
(23, 6, 2, 5, 'https://photos.zillowstatic.com/fp/75c46ec9b2b1651', 4350, '20 N Broom St APT 1', 53703, 0, 0, 0, 0, 1, 0, 0),
(24, 8, 1, 2, 'https://photos.zillowstatic.com/fp/507484356c740ad', 1250, '616 S Mills St', 53715, 0, 1, 0, 1, 0, 1, 0),
(25, 23, 1, 2, 'https://photos.zillowstatic.com/fp/1b9178d52cb4440', 1550, '1212 Vilas Ave #1', 53715, 0, 1, 0, 0, 1, 0, 1),
(26, 23, 2, 0, 'https://photos.zillowstatic.com/fp/138501d83566b75', 695, '2609 University Ave #1B', 53705, 1, 1, 0, 0, 1, 1, 1),
(27, 9, 1, 2, 'https://photos.zillowstatic.com/fp/53e44daae186047', 1200, '3814 School Rd #C', 53704, 0, 0, 1, 0, 0, 0, 1),
(28, 15, 1, 2, 'https://photos.zillowstatic.com/fp/53e44daae186047', 1200, '3806 School Rd #B', 53704, 1, 1, 1, 1, 1, 1, 1),
(29, 13, 2, 2, 'https://photos.zillowstatic.com/fp/039903090d3f4e2', 1650, '5335 Brody Dr UNIT 204', 53705, 0, 0, 0, 1, 1, 1, 1),
(30, 1, 1, 0, 'https://photos.zillowstatic.com/fp/73bd192e2eb0567', 2000, '722 Ruskin St SUITE B', 53704, 0, 1, 0, 0, 0, 1, 1),
(31, 12, 1, 1, 'https://photos.zillowstatic.com/fp/5aedbd3d992b285', 1230, '941 E Gorham St APT 4', 53703, 1, 0, 1, 0, 1, 0, 1),
(32, 1, 1, 1, 'https://photos.zillowstatic.com/fp/82896a973adf7ad', 1100, '902 E Johnson St #3', 53703, 1, 1, 0, 0, 1, 0, 0),
(33, 27, 1, 3, 'https://photos.zillowstatic.com/fp/efb81037d5688e8', 1650, '703 E Gorham St APT 3', 53703, 1, 1, 1, 1, 1, 0, 1),
(34, 2, 1, 0, 'https://photos.zillowstatic.com/fp/d89a477b3fde914', 1295, '1227 Regent St #F & R', 53715, 0, 1, 1, 0, 0, 1, 1),
(35, 4, 1, 1, 'https://photos.zillowstatic.com/fp/db33f4627c205dd', 980, '16 E Gorham St APT 1', 53703, 0, 1, 1, 0, 0, 1, 0),
(36, 18, 1, 2, 'https://photos.zillowstatic.com/fp/94cf81911a13c7a', 1600, '6731 Park Edge Dr APT A', 53719, 1, 0, 0, 1, 1, 0, 0),
(37, 6, 1, 1, 'https://photos.zillowstatic.com/fp/f8e3e5b46e61234', 1105, '525 Moorland Rd #310', 53713, 0, 0, 1, 0, 0, 1, 0),
(38, 14, 1, 3, 'https://photos.zillowstatic.com/fp/2ef36988e0d29ed', 2100, '1502 Williamson St', 53703, 0, 0, 1, 1, 0, 0, 1),
(39, 15, 2, 3, 'https://photos.zillowstatic.com/fp/6321029cff3186e', 2200, '1029 Short St', 53715, 1, 0, 1, 1, 1, 0, 0),
(40, 25, 3, 4, 'https://photos.zillowstatic.com/fp/c4e54fe12956a8c', 2550, '7329 Blue Maple Trl', 53719, 1, 0, 1, 0, 1, 1, 0),
(41, 30, 1, 2, 'https://photos.zillowstatic.com/fp/355ae2487b807a1', 2295, '811 Spaight St #3', 53703, 1, 0, 1, 0, 1, 0, 1),
(42, 28, 2, 3, 'https://photos.zillowstatic.com/fp/fb00f6dfb0bbaca', 2300, '4509 Tennessee Trl', 53704, 0, 0, 0, 1, 0, 0, 0),
(43, 30, 2, 3, 'https://photos.zillowstatic.com/fp/c1bf0cdc6fd2aba', 1900, '1416 Prairie Rd', 53711, 1, 1, 0, 1, 0, 1, 1),
(44, 11, 2, 3, 'https://photos.zillowstatic.com/fp/40cf69aa66e8544', 4200, '215 S Bedford St', 53703, 0, 1, 0, 0, 1, 0, 0),
(45, 1, 1, 2, 'https://photos.zillowstatic.com/fp/7c2b7db895a04a0', 1395, '1166 Petra Pl APT 8', 53713, 1, 1, 1, 0, 1, 1, 0),
(46, 4, 1, 3, 'https://photos.zillowstatic.com/fp/6511be1ced1364a', 2095, '941 Dane St', 53713, 0, 1, 0, 0, 1, 1, 0),
(47, 25, 3, 4, 'https://photos.zillowstatic.com/fp/bf3234c9307e648', 2595, '809 Amnicon Trl', 53718, 1, 0, 0, 0, 1, 0, 1),
(48, 12, 1, 2, 'https://photos.zillowstatic.com/fp/236800228ba7728', 1950, '701 W Lakeside St #1', 53715, 0, 1, 0, 1, 0, 1, 0),
(49, 24, 1, 0, 'https://photos.zillowstatic.com/fp/0139e523b137071', 875, '3917 Lien Rd #150', 53704, 1, 1, 1, 0, 1, 1, 0),
(50, 10, 1, 2, 'https://photos.zillowstatic.com/fp/4be1b07c962be6a', 1700, '(undisclosed Address)', 53704, 1, 0, 0, 1, 0, 1, 1),
(51, 11, 2, 3, 'https://photos.zillowstatic.com/fp/f963238ce723e9b', 3800, '613 Chatham Ter', 53711, 1, 1, 1, 0, 1, 1, 1),
(52, 25, 1, 2, 'https://photos.zillowstatic.com/fp/154bbccd9838820', 1600, '329 Kedzie St APT 2', 53704, 1, 0, 1, 0, 0, 0, 0),
(53, 21, 2, 3, 'https://photos.zillowstatic.com/fp/c917636de75bb29', 3000, '5518 Englewood Dr', 53705, 1, 0, 1, 1, 0, 0, 0),
(54, 13, 1, 1, 'https://photos.zillowstatic.com/fp/39a864448e66330', 1250, '1202 Chandler St #2', 53715, 0, 0, 0, 1, 1, 1, 1),
(55, 11, 1, 2, 'https://photos.zillowstatic.com/fp/e83a64bb3a98658', 1990, '411 Paunack Pl #2014', 53726, 1, 0, 1, 0, 0, 0, 0),
(56, 28, 2, 3, 'https://photos.zillowstatic.com/fp/cabd45a0fe037b8', 2410, '6918-6922 Chester Dr #6918CH', 53719, 1, 0, 1, 1, 1, 0, 1),
(57, 28, 3, 3, 'https://photos.zillowstatic.com/fp/1bd2a352c44c2ec', 2535, '4973-4975 Marsh Rd #4975CG', 53718, 1, 1, 1, 0, 1, 1, 0),
(58, 29, 3, 2, 'https://photos.zillowstatic.com/fp/cabd45a0fe037b8', 2460, '8137-8139 Broadmoor St #8137BM', 53719, 1, 1, 1, 0, 1, 1, 0),
(59, 17, 1, 1, 'https://photos.zillowstatic.com/fp/84ea31a2c287812', 2800, '143 American Pkwy #143', 53718, 0, 1, 0, 1, 1, 0, 0),
(60, 21, 1, 2, 'https://photos.zillowstatic.com/fp/16ddc3e8b1a72dd', 1300, '407 W Doty St APT 3', 53703, 0, 0, 0, 1, 0, 1, 0),
(61, 2, 2, 2, 'https://photos.zillowstatic.com/fp/a86ec5a67f28eb6', 2700, '5030 Flambeau Rd', 53705, 0, 0, 0, 1, 0, 0, 0),
(62, 9, 3, 2, 'https://photos.zillowstatic.com/fp/e1db19938e02ea2', 2555, '153 Dayton Row', 53703, 0, 0, 0, 1, 1, 0, 1),
(63, 21, 1, 0, 'https://photos.zillowstatic.com/fp/5f56639a929c7a1', 885, '7502 Westward Way', 53717, 0, 1, 0, 1, 0, 1, 1),
(64, 6, 3, 3, 'https://photos.zillowstatic.com/fp/80d4875720476af', 2699, '793 Sky Ridge Dr', 53719, 0, 0, 1, 1, 1, 0, 1),
(65, 14, 1, 2, 'https://photos.zillowstatic.com/fp/7beb97e9c892a5c', 1600, '717 Glenway St #2', 53711, 1, 1, 1, 0, 0, 0, 0),
(66, 23, 1, 2, 'https://photos.zillowstatic.com/fp/8a1703cef89f09e', 1600, '3312 Milwaukee St APT 4', 53714, 0, 0, 1, 0, 1, 0, 0),
(67, 9, 1, 1, 'https://photos.zillowstatic.com/fp/ca379d90d24b4d5', 1835, '2550 University Ave', 53705, 0, 0, 0, 1, 0, 1, 1),
(68, 2, 1, 2, 'https://photos.zillowstatic.com/fp/55d9467b125a572', 1100, '2201 Catalpa Rd APT D', 53713, 1, 1, 0, 0, 0, 0, 1),
(69, 12, 3, 2, 'https://photos.zillowstatic.com/fp/5f1d8be6d86ed9c', 2050, '7131 Discovery Ln', 53719, 0, 1, 1, 0, 0, 0, 1),
(70, 20, 1, 3, 'https://photos.zillowstatic.com/fp/68ff0d9644dbaa1', 2250, '403 W Main St', 53703, 1, 1, 1, 0, 0, 1, 0),
(71, 29, 1, 2, 'https://photos.zillowstatic.com/fp/8f329f1b3b9df67', 2145, '318 W Gorham St #6386484', 53703, 0, 0, 0, 0, 0, 0, 0),
(72, 11, 3, 3, 'https://photos.zillowstatic.com/fp/a00c74c15f87239', 2195, '7655 Farmington Way #0', 53717, 0, 1, 0, 1, 0, 1, 1),
(73, 6, 1, 2, 'https://photos.zillowstatic.com/fp/0fda3002f154081', 1900, '134 Ohio Ave', 53704, 0, 1, 0, 0, 0, 0, 1),
(74, 29, 1, 4, 'https://photos.zillowstatic.com/fp/628af20ebf47738', 2485, '207 N Pinckney St #STREET207-1', 53703, 0, 1, 0, 1, 0, 0, 0),
(75, 5, 1, 2, 'https://photos.zillowstatic.com/fp/c2210985aac8c41', 2095, '445 W Dayton St APT 2', 53703, 0, 0, 1, 0, 1, 0, 0),
(76, 24, 4, 10, 'https://photos.zillowstatic.com/fp/a0ada3ac7b57f18', 10500, '504 N Carroll St #1-10', 53703, 1, 1, 1, 0, 0, 0, 0),
(77, 4, 1, 0, 'https://photos.zillowstatic.com/fp/c2b266a6050c98b', 990, '106 S Hancock St #2576306', 53703, 0, 1, 0, 1, 1, 1, 0),
(78, 30, 1, 2, 'https://photos.zillowstatic.com/fp/3e6f96625128e0f', 1750, '1154 Jenifer St #11898052', 53703, 0, 1, 0, 0, 1, 0, 1),
(79, 7, 2, 1, 'https://photos.zillowstatic.com/fp/99a3b34ec6952a0', 2200, '654 E Johnson St', 53703, 0, 0, 1, 0, 0, 1, 1),
(80, 23, 1, 2, 'https://photos.zillowstatic.com/fp/d152f1d04b58880', 1200, '1134-48 Petra Pl #4', 53713, 1, 1, 1, 0, 1, 1, 1),
(81, 5, 2, 4, 'https://photos.zillowstatic.com/fp/5d166ec7ff32a6d', 3200, '105 Richland Ln', 53705, 1, 0, 1, 1, 1, 0, 0),
(82, 14, 2, 2, 'https://photos.zillowstatic.com/fp/7e0af24d9ce0057', 1600, '136 N Lakewood Gardens Ln', 53704, 0, 1, 1, 0, 0, 0, 1),
(83, 14, 1, 2, 'https://photos.zillowstatic.com/fp/ead2a4384f21365', 1960, '825 E Gorham St #1', 53703, 1, 0, 0, 0, 0, 1, 0),
(84, 10, 1, 0, 'https://photos.zillowstatic.com/fp/3c5e7ac0affed70', 1500, '514 E Mifflin St', 53703, 1, 1, 1, 1, 1, 1, 1),
(85, 23, 2, 3, 'https://photos.zillowstatic.com/fp/19f5c426c9f7603', 2400, '3073 Cimarron Trl', 53719, 1, 1, 1, 1, 0, 1, 1),
(86, 14, 1, 2, 'https://photos.zillowstatic.com/fp/0bf7f8c7736bedb', 1510, '204 N Pinckney St #12662409', 53703, 1, 0, 1, 1, 1, 0, 1),
(87, 2, 1, 0, 'https://photos.zillowstatic.com/fp/5799b1fd70d0afe', 1150, '3080 State Highway Dm #4124573', 53713, 0, 1, 1, 0, 1, 1, 1),
(88, 24, 1, 1, 'https://photos.zillowstatic.com/fp/905113bfb36fa29', 1270, '1207-1217 E Wilson St #14713103', 53703, 1, 1, 1, 0, 0, 1, 1),
(89, 17, 1, 2, 'https://photos.zillowstatic.com/fp/0b9776902f46c60', 2300, '5726 Bittersweet Pl', 53705, 0, 1, 1, 0, 0, 1, 0),
(90, 20, 2, 3, 'https://photos.zillowstatic.com/fp/1036ab001ea8093', 2195, '5219 Trafalger Pl', 53714, 0, 0, 1, 1, 0, 1, 0),
(91, 15, 2, 3, 'https://photos.zillowstatic.com/fp/94e79afa538ad12', 2500, '1209 Rutledge St', 53703, 0, 0, 1, 1, 0, 0, 1),
(92, 30, 1, 1, 'https://photos.zillowstatic.com/fp/0f81c9bce3ec3da', 1095, '(undisclosed Address)', 53711, 0, 1, 0, 1, 1, 1, 0),
(93, 28, 1, 1, 'https://photos.zillowstatic.com/fp/5ea02908ae009b0', 1180, '137 Capitol View Ter APT 2', 53713, 1, 0, 1, 0, 1, 0, 0),
(94, 21, 1, 1, 'https://photos.zillowstatic.com/fp/941db9afc3ebe47', 1195, '4332 Melody Ln UNIT 111', 53704, 0, 0, 1, 1, 1, 1, 0),
(95, 29, 1, 1, 'https://photos.zillowstatic.com/fp/1a1daf53c4afd10', 1195, '529-533 McCormick Ave #14658317', 53704, 1, 0, 0, 0, 1, 1, 0),
(96, 22, 1, 3, 'https://photos.zillowstatic.com/fp/983ad3a21476fb5', 1545, '1024 Fiedler Ln APT 1', 53713, 1, 0, 1, 0, 0, 0, 1),
(97, 23, 1, 1, 'https://photos.zillowstatic.com/fp/145d2c57f01bd31', 1125, '1023 Fiedler Ln APT 8', 53713, 1, 0, 0, 0, 1, 1, 1),
(98, 29, 1, 1, 'https://photos.zillowstatic.com/fp/e3df7e5104cea3f', 850, '710 Dexter St #2', 53704, 1, 0, 0, 0, 1, 1, 1),
(99, 6, 1, 3, 'https://photos.zillowstatic.com/fp/e62ce93bf3c3b65', 2035, '1215 Mound St #2', 53715, 1, 1, 1, 1, 1, 1, 1),
(100, 29, 1, 1, 'https://photos.zillowstatic.com/fp/e2fe08cffba880d', 1050, '922 Melvin Ct #2', 53704, 0, 0, 1, 0, 1, 1, 0),
(101, 7, 2, 3, 'https://photos.zillowstatic.com/fp/4ea41fb2f5fd717', 2900, '1401 W Skyline Dr', 53705, 0, 0, 1, 0, 1, 1, 0),
(102, 20, 3, 3, 'https://photos.zillowstatic.com/fp/6c03de0eab60678', 2995, '1513 Longview St', 53704, 0, 0, 0, 0, 1, 1, 1),
(103, 6, 1, 0, 'https://photos.zillowstatic.com/fp/6714be475af5388', 550, '2019 Sherman Ave #16490030', 53704, 1, 0, 0, 0, 0, 0, 1),
(104, 14, 1, 2, 'https://photos.zillowstatic.com/fp/9a033e5827d87ec', 1650, '827 Dane St #2', 53713, 1, 1, 0, 0, 1, 1, 0),
(105, 3, 1, 2, 'https://photos.zillowstatic.com/fp/170a53c6f0bb9b5', 1995, '1714 Rowland Ave', 53704, 0, 0, 1, 0, 1, 0, 0),
(106, 27, 3, 3, 'https://photos.zillowstatic.com/fp/2a991d48d4e52e9', 2750, '3041 Bradbury Rd', 53719, 1, 0, 0, 0, 0, 1, 0),
(107, 18, 1, 3, 'https://photos.zillowstatic.com/fp/debcc5ba4077a89', 1995, '5534 Larry Ln', 53704, 0, 1, 0, 1, 0, 0, 0),
(108, 21, 4, 3, 'https://photos.zillowstatic.com/fp/89b7ef73e0eb5a1', 2900, '3010 Winter Park Pl', 53719, 0, 1, 0, 1, 1, 1, 0),
(109, 24, 2, 2, 'https://photos.zillowstatic.com/fp/901123f139cb449', 1479, '1401 McKenna Blvd #2', 53711, 0, 1, 0, 1, 1, 1, 0),
(110, 20, 3, 3, 'https://maps.googleapis.com/maps/api/staticmap?mob', 2400, '2107 Carver St #1', 53713, 0, 0, 1, 1, 1, 0, 1),
(111, 30, 1, 1, 'https://photos.zillowstatic.com/fp/ecea0d53f417d72', 1090, '229 N Marquette St #B', 53704, 1, 0, 0, 1, 0, 1, 0),
(112, 12, 2, 2, 'https://photos.zillowstatic.com/fp/9d61d6044ba7cc6', 1600, '825 N Gammon Rd', 53717, 0, 1, 0, 0, 1, 0, 0),
(113, 12, 1, 2, 'https://photos.zillowstatic.com/fp/d702e1c156e2dde', 1645, '413 S Charter St #2', 53715, 1, 0, 1, 0, 1, 1, 1),
(114, 27, 1, 2, 'https://photos.zillowstatic.com/fp/cb3ad05992cfbad', 1825, '108 S Bassett St #7909000', 53703, 0, 0, 1, 0, 0, 0, 0),
(115, 26, 1, 2, 'https://photos.zillowstatic.com/fp/73d1d5f49e412ca', 1595, '110 S Bassett St #4017251', 53703, 0, 0, 0, 0, 1, 0, 1),
(116, 22, 1, 0, 'https://maps.googleapis.com/maps/api/staticmap?mob', 1075, '126 S Franklin St APT 2B', 53703, 1, 1, 0, 0, 0, 0, 1),
(117, 30, 1, 1, 'https://photos.zillowstatic.com/fp/c8c540fbf50eeb4', 1745, '1917 Monroe St #312', 53711, 1, 1, 0, 1, 0, 1, 0),
(118, 15, 1, 2, 'https://photos.zillowstatic.com/fp/69f08abd19cb86c', 1250, '12 Morrow Ct', 53704, 0, 0, 0, 1, 0, 1, 1),
(119, 15, 2, 4, 'https://photos.zillowstatic.com/fp/931152f115164eb', 3575, '120 N Franklin St #2', 53703, 1, 0, 0, 1, 0, 0, 1),
(120, 2, 1, 2, 'https://photos.zillowstatic.com/fp/201623dc8319cb5', 1650, '4602 Martha Ln', 53714, 1, 0, 0, 1, 1, 0, 1),
(121, 15, 2, 5, 'https://photos.zillowstatic.com/fp/cc0f2f79b5a0976', 4494, '1202 Spring St #B', 53715, 0, 1, 1, 0, 0, 0, 0),
(122, 14, 1, 2, 'https://photos.zillowstatic.com/fp/fee39fd3d650864', 1350, '215 Deer Valley Rd #7', 53713, 1, 0, 1, 0, 0, 1, 1),
(123, 9, 1, 2, 'https://photos.zillowstatic.com/fp/e8b86e932c9428a', 1525, '4542 Commercial Ave', 53714, 1, 1, 0, 1, 0, 1, 1),
(124, 25, 1, 1, 'https://photos.zillowstatic.com/fp/a4a5891361443c8', 1400, '415 S Few St', 53703, 1, 1, 1, 1, 0, 0, 1),
(125, 1, 1, 2, 'https://photos.zillowstatic.com/fp/1a2ba6e64488ec2', 1400, '4937 Whitcomb Dr #7', 53711, 1, 0, 1, 0, 1, 1, 0),
(126, 1, 1, 3, 'https://photos.zillowstatic.com/fp/abc1f76f5fb0203', 2495, '22 S Franklin St', 53703, 1, 0, 0, 1, 1, 0, 0),
(127, 12, 1, 4, 'https://photos.zillowstatic.com/fp/dbcdc7988a63fca', 3295, '501 W Main St', 53703, 0, 1, 0, 1, 0, 1, 1),
(128, 1, 1, 3, 'https://photos.zillowstatic.com/fp/fa5f4bef6ef1417', 2250, '622 S Mills St', 53715, 0, 1, 1, 0, 0, 1, 0),
(129, 21, 1, 4, 'https://photos.zillowstatic.com/fp/f8f53e5a6cd2ee2', 2095, '321 E Johnson St', 53703, 0, 1, 1, 1, 0, 1, 1),
(130, 28, 1, 2, 'https://photos.zillowstatic.com/fp/606a684fb39a0a3', 1675, '1126 Vilas Ave #4013935', 53715, 1, 1, 0, 1, 1, 0, 0),
(131, 24, 2, 4, 'https://maps.googleapis.com/maps/api/staticmap?mob', 2950, '3717 Eliot Ln', 53704, 0, 0, 0, 1, 1, 0, 1),
(132, 12, 1, 2, 'https://photos.zillowstatic.com/fp/162e9fe9c5c71ba', 1850, '221 N Livingston St #15429710', 53703, 0, 1, 0, 1, 0, 0, 1),
(133, 7, 2, 5, 'https://photos.zillowstatic.com/fp/31dd0cfeb32cd17', 3725, '204 N Livingston St #10623102', 53703, 1, 0, 0, 1, 0, 0, 1),
(134, 21, 2, 4, 'https://photos.zillowstatic.com/fp/9b0933e819ca3cc', 4295, '548 W Main St #8768471', 53703, 0, 1, 1, 0, 0, 1, 0),
(135, 2, 1, 2, 'https://photos.zillowstatic.com/fp/428f484b826cd45', 1675, '522 W Doty St', 53703, 1, 1, 1, 1, 1, 1, 0),
(136, 14, 1, 4, 'https://photos.zillowstatic.com/fp/186a15c0820ba5f', 1995, '430 W Doty St', 53703, 0, 1, 1, 1, 0, 0, 0),
(137, 30, 1, 3, 'https://photos.zillowstatic.com/fp/6fdb3862cc9d427', 2950, '2020 Kendall Ave #4013545', 53726, 1, 1, 1, 1, 1, 1, 1),
(138, 21, 1, 0, 'https://photos.zillowstatic.com/fp/f1e31ced01f38b7', 1165, '1109 Vilas Ave #4017247', 53715, 1, 0, 0, 1, 0, 0, 1),
(139, 3, 1, 3, 'https://photos.zillowstatic.com/fp/119f0de4db8759f', 2095, '917 E Johnson St', 53703, 1, 1, 0, 1, 1, 1, 1),
(140, 27, 1, 1, 'https://photos.zillowstatic.com/fp/9a02edb461c999b', 1495, '1406 Drake St', 53711, 1, 0, 0, 1, 1, 0, 0),
(141, 27, 2, 2, 'https://photos.zillowstatic.com/fp/11230c4f5fbe307', 1825, '5831 Lupine Ln #4952640', 53718, 1, 0, 1, 1, 0, 0, 1),
(142, 13, 1, 2, 'https://photos.zillowstatic.com/fp/4cea968c771b4d8', 1895, '152 Rodney Ct', 53715, 1, 0, 0, 0, 0, 0, 0),
(143, 10, 3, 4, 'https://photos.zillowstatic.com/fp/5584f33d72f649a', 2000, '117 N Franklin Ave', 53705, 0, 0, 1, 1, 0, 0, 1),
(144, 7, 3, 4, 'https://photos.zillowstatic.com/fp/c21bc61260b40ea', 3000, '4921 Marathon Dr', 53705, 1, 0, 0, 1, 0, 0, 1),
(145, 18, 2, 4, 'https://photos.zillowstatic.com/fp/1f44b5e4fb622dd', 2795, '3430 Kingman Ln', 53719, 0, 1, 1, 1, 0, 1, 0),
(146, 14, 1, 1, 'https://photos.zillowstatic.com/fp/cbcc3f0a1f25dac', 1200, '110 N Blair St #2', 53703, 1, 1, 0, 1, 0, 1, 0),
(147, 15, 1, 2, 'https://photos.zillowstatic.com/fp/0033215c28dbd22', 1400, '42 Northridge Ter APT 4', 53704, 0, 1, 0, 0, 1, 0, 0),
(148, 11, 1, 2, 'https://photos.zillowstatic.com/fp/f0134105899406c', 1953, '715 E Gorham St APT 3', 53703, 0, 1, 1, 1, 1, 0, 0),
(149, 5, 1, 0, 'https://photos.zillowstatic.com/fp/b19411e2f6d7ad1', 1400, '821 Williamson St #306', 53703, 1, 0, 0, 1, 0, 0, 1),
(150, 5, 2, 2, 'https://photos.zillowstatic.com/fp/a0a0ff322e4d965', 1400, '2500 Fiedler Ln APT 11', 53713, 1, 1, 1, 1, 0, 1, 0),
(151, 2, 2, 4, 'https://photos.zillowstatic.com/fp/f7f508f701248c7', 3000, '14 S Midvale Blvd', 53705, 1, 0, 1, 0, 0, 1, 1),
(152, 8, 1, 1, 'https://photos.zillowstatic.com/fp/c3abd9cc30712dc', 1465, '128 W Gilman St #1B-1BA', 53703, 1, 0, 0, 0, 0, 1, 0),
(153, 22, 1, 1, 'https://photos.zillowstatic.com/fp/bc4ae49b25f57ab', 1270, '504 N Henry St #1B-1BA', 53703, 0, 1, 0, 0, 1, 0, 1),
(154, 4, 1, 0, 'https://photos.zillowstatic.com/fp/dc1a19b2451ab76', 1215, '104 E Gilman St #0B-1BA', 53703, 0, 0, 1, 0, 1, 0, 1),
(155, 23, 1, 1, 'https://photos.zillowstatic.com/fp/32d568d850a75c1', 1195, '118 W Johnson St #1B-1BA', 53703, 0, 1, 1, 1, 1, 1, 0),
(156, 28, 1, 1, 'https://photos.zillowstatic.com/fp/b9f71bc698ebf5c', 1200, '2222 Independence Ln UNIT 16', 53704, 1, 0, 1, 1, 0, 1, 0),
(157, 28, 2, 3, 'https://photos.zillowstatic.com/fp/32b682d00b81593', 2100, '222 Merry St APT 5', 53704, 1, 1, 1, 1, 1, 0, 1),
(158, 7, 1, 1, 'https://photos.zillowstatic.com/fp/792c8e749697f47', 1450, '615 Pine St #2', 53715, 1, 1, 1, 1, 0, 1, 0),
(159, 14, 1, 4, 'https://photos.zillowstatic.com/fp/728cfb26c48cc43', 1750, '334 W Wilson St #1', 53703, 1, 0, 0, 1, 0, 0, 1),
(160, 30, 2, 2, 'https://photos.zillowstatic.com/fp/96eef1bb9fdd7b9', 3250, '524 W Shore Dr', 53715, 0, 0, 0, 1, 0, 0, 0),
(161, 7, 2, 2, 'https://photos.zillowstatic.com/fp/e409aafa391c7a4', 1725, '3156 Muir Field Rd #3148-306', 53719, 1, 0, 0, 0, 0, 0, 0),
(162, 18, 3, 2, 'https://photos.zillowstatic.com/fp/fc93cc188a1ab25', 2000, '7123 Discovery Ln', 53719, 0, 0, 0, 0, 1, 0, 0),
(163, 13, 1, 1, 'https://photos.zillowstatic.com/fp/a3e5dfb8f245229', 1379, '6749 Hammersley Rd #3', 53711, 0, 0, 1, 1, 1, 1, 0),
(164, 28, 4, 3, 'https://photos.zillowstatic.com/fp/820777df3af7c13', 2725, '7313 Secret Bluff Dr', 53719, 1, 0, 1, 0, 0, 0, 1),
(165, 30, 2, 3, 'https://photos.zillowstatic.com/fp/a0fe8d9a19526fd', 2650, '4414 Somerset Ln', 53711, 0, 1, 0, 0, 1, 1, 0),
(166, 23, 1, 2, 'https://maps.googleapis.com/maps/api/staticmap?mob', 1200, '2 S Fair Oaks Ave APT 4', 53714, 0, 1, 1, 0, 1, 1, 1),
(167, 30, 2, 2, 'https://photos.zillowstatic.com/fp/3e70af11023ee63', 1500, '2233 Luann Ln APT 2', 53713, 0, 0, 0, 0, 1, 0, 0),
(168, 14, 1, 0, 'https://photos.zillowstatic.com/fp/a2802c9b8e5541f', 999, '1912 Birge Ter APT 2', 53726, 0, 0, 0, 1, 0, 0, 1),
(169, 7, 2, 3, 'https://photos.zillowstatic.com/fp/b73362d66004e79', 2450, '937 Clarence Ct', 53715, 0, 1, 1, 0, 0, 1, 1),
(170, 14, 4, 12, 'https://photos.zillowstatic.com/fp/174ecc21418287c', 8995, '1726 Hoyt St', 53726, 1, 0, 0, 1, 0, 0, 1),
(171, 4, 1, 3, 'https://photos.zillowstatic.com/fp/ca3bdb3c81f120b', 2100, '1718 Martin St UNIT 2', 53713, 0, 1, 1, 0, 1, 0, 1),
(172, 6, 3, 3, 'https://photos.zillowstatic.com/fp/8de7f2b7d8e744e', 2800, '2709 Post Rd', 53713, 0, 0, 0, 0, 0, 0, 0),
(173, 17, 1, 3, 'https://maps.googleapis.com/maps/api/staticmap?mob', 2500, '20 Brompton Cir', 53711, 1, 0, 0, 1, 1, 1, 0),
(174, 2, 1, 1, 'https://photos.zillowstatic.com/fp/4d2b0dcf5f01205', 1135, '1001 S Brooks St #4', 53715, 1, 0, 0, 0, 0, 1, 1),
(175, 7, 1, 2, 'https://photos.zillowstatic.com/fp/9d77af903761d26', 1200, '1717 Onsgard Rd #17720999', 53704, 0, 0, 0, 1, 1, 0, 0),
(176, 21, 3, 9, 'https://photos.zillowstatic.com/fp/a27b20990379b50', 8550, '515 W Washington Ave', 53703, 0, 1, 1, 1, 0, 1, 0),
(177, 8, 2, 3, 'https://photos.zillowstatic.com/fp/5883dd0aad79795', 2900, '718 Parman Ter', 53711, 0, 0, 0, 1, 1, 0, 0),
(178, 29, 2, 2, 'https://photos.zillowstatic.com/fp/ce69a83bb993d69', 1495, '4002 Bruns Ave', 53714, 0, 0, 1, 0, 0, 1, 1),
(179, 2, 1, 2, 'https://photos.zillowstatic.com/fp/3c29f7f4cd0ecc3', 1255, '917 Magnolia Ln #B', 53713, 0, 1, 1, 0, 0, 1, 1),
(180, 22, 1, 2, 'https://photos.zillowstatic.com/fp/c175cc13e1e2f37', 1500, '152 E Gorham St #1', 53703, 0, 0, 1, 0, 0, 0, 1),
(181, 8, 1, 1, 'https://photos.zillowstatic.com/fp/fd3c64a899a402a', 1250, '721 Pinecrest Dr #1', 53714, 0, 1, 0, 1, 0, 1, 0),
(182, 18, 1, 3, 'https://photos.zillowstatic.com/fp/49d476c475d21a2', 3206, '3105 Worthington Ave', 53714, 1, 0, 0, 1, 0, 1, 1),
(183, 8, 2, 2, 'https://photos.zillowstatic.com/fp/1eccd3a30bda2cf', 1230, '1959 E Mifflin St #14943497', 53704, 0, 1, 0, 1, 1, 0, 0),
(184, 3, 1, 2, 'https://photos.zillowstatic.com/fp/fc725312d6201b5', 1895, '114 W Olin Ave', 53715, 0, 1, 1, 0, 1, 0, 1),
(185, 21, 1, 1, 'https://photos.zillowstatic.com/fp/10423584c125d0a', 1700, '5100 Silvertree Run #300', 53705, 1, 1, 0, 1, 0, 0, 0),
(186, 11, 2, 2, 'https://photos.zillowstatic.com/fp/9d55784bb25c14a', 2495, '1813 Kropf Ave', 53704, 0, 1, 0, 1, 0, 0, 1),
(187, 9, 1, 1, 'https://photos.zillowstatic.com/fp/0dc4b941278d5fd', 1050, '1709 Onsgard Rd #17701238', 53704, 1, 0, 1, 1, 0, 0, 0),
(188, 28, 2, 3, 'https://maps.googleapis.com/maps/api/staticmap?mob', 2500, '24 Brompton Cir', 53711, 0, 0, 0, 1, 0, 0, 1),
(189, 5, 1, 3, 'https://photos.zillowstatic.com/fp/7f66d5c7adca4c7', 1700, '213 N Hamilton St APT 1N', 53703, 0, 1, 0, 1, 0, 0, 1),
(190, 29, 1, 2, 'https://photos.zillowstatic.com/fp/aa2c6b167d97fda', 1550, '303 Princeton Ave #3947433', 53726, 0, 0, 0, 0, 1, 0, 0),
(191, 14, 1, 1, 'https://photos.zillowstatic.com/fp/22b2c8a42c795d3', 1400, '2408 Kendall Ave #3947426', 53726, 0, 1, 1, 1, 1, 0, 1),
(192, 5, 2, 4, 'https://photos.zillowstatic.com/fp/a36eedbb0284dc0', 3950, '141 E Gorham St APT 2', 53703, 0, 1, 0, 1, 0, 0, 0),
(193, 3, 1, 3, 'https://photos.zillowstatic.com/fp/5cc16db3f87020b', 3000, '2529 Commercial Ave #2', 53704, 0, 1, 0, 0, 0, 1, 0),
(194, 12, 1, 2, 'https://photos.zillowstatic.com/fp/e92fb3d3a162f8d', 1425, '4670 Hayes Rd', 53704, 0, 0, 0, 1, 0, 1, 1),
(195, 3, 1, 3, 'https://photos.zillowstatic.com/fp/d847f6dea5bb1c3', 2000, '501 Algoma St', 53704, 0, 0, 0, 1, 1, 1, 1),
(196, 22, 2, 3, 'https://photos.zillowstatic.com/fp/d81c10e42aa6f42', 2175, '5017 Tokay Blvd', 53711, 0, 1, 0, 1, 1, 1, 1),
(197, 9, 1, 1, 'https://photos.zillowstatic.com/fp/228d9e510651add', 2250, '807 & 825 E Mifflin St #406', 53703, 1, 0, 0, 0, 1, 1, 0),
(198, 13, 2, 2, 'https://photos.zillowstatic.com/fp/e3ee63e37a74aa7', 1500, '9 Woodridge Ct APT 5', 53704, 0, 1, 1, 0, 1, 1, 0),
(199, 8, 1, 0, 'https://photos.zillowstatic.com/fp/bcc4e450b95530d', 995, '622 Howard Pl #F', 53703, 0, 0, 1, 0, 0, 0, 0),
(200, 4, 1, 2, 'https://photos.zillowstatic.com/fp/65e9d167a5e08f5', 1440, '30 Goldenrod Ln', 53719, 0, 0, 0, 1, 1, 1, 1),
(201, 24, 1, 2, 'https://photos.zillowstatic.com/fp/fcae9259320bbda', 1795, '1213 Vilas Ave', 53715, 1, 1, 1, 0, 0, 0, 0),
(202, 24, 3, 7, 'https://photos.zillowstatic.com/fp/1610f0d0af6f1c3', 6300, '412 W Main St #17573613', 53703, 0, 0, 0, 1, 1, 0, 1),
(203, 6, 1, 3, 'https://photos.zillowstatic.com/fp/cb2c2b09d85f2bd', 1795, '1431 Loreen Dr', 53711, 1, 1, 0, 0, 1, 0, 1),
(204, 16, 1, 2, 'https://photos.zillowstatic.com/fp/3e08e8781cd0708', 1495, '1433 Loreen Dr', 53711, 1, 0, 1, 1, 0, 0, 1),
(205, 30, 1, 1, 'https://photos.zillowstatic.com/fp/a372073b51891e4', 1525, '3554 Johns St', 53714, 1, 1, 1, 0, 1, 1, 0),
(206, 23, 2, 2, 'https://photos.zillowstatic.com/fp/fc3b508ed37a904', 1750, '2942 Holborn Cir', 53718, 1, 0, 1, 0, 0, 0, 0),
(207, 12, 3, 4, 'https://photos.zillowstatic.com/fp/dac23980342079b', 3650, '4322 Keating Ter', 53711, 0, 0, 0, 1, 1, 1, 0),
(208, 22, 1, 4, 'https://photos.zillowstatic.com/fp/d91b41a1dc1f899', 2700, '916 Vilas Ave #935-A', 53715, 1, 0, 0, 0, 1, 1, 0),
(209, 6, 2, 4, 'https://photos.zillowstatic.com/fp/cd9e29987089dec', 3250, '111 E Gorham St APT 4', 53703, 1, 0, 0, 1, 0, 1, 1),
(210, 5, 1, 3, 'https://photos.zillowstatic.com/fp/d9413cb32eb750a', 1950, '110 S Blair St #1', 53703, 0, 1, 0, 0, 0, 1, 0),
(211, 9, 1, 2, 'https://photos.zillowstatic.com/fp/bdd74c9b4bd00aa', 1695, '165 Division St #2', 53704, 0, 0, 1, 0, 0, 0, 1),
(212, 13, 2, 2, 'https://photos.zillowstatic.com/fp/8bc3b0d7db56c6c', 1750, '705 N Thompson Dr APT 3', 53704, 0, 0, 1, 1, 1, 1, 0),
(213, 10, 2, 2, 'https://photos.zillowstatic.com/fp/2895feddfb5ddb0', 1595, '42 Park Heights Ct APT 3', 53711, 1, 1, 0, 1, 0, 1, 1),
(214, 27, 1, 3, 'https://photos.zillowstatic.com/fp/80f5d67a787b063', 1975, '2817 Union St', 53704, 0, 0, 0, 1, 0, 1, 0),
(215, 28, 1, 3, 'https://photos.zillowstatic.com/fp/65cc5b880d5b8f7', 2100, '217 N Livingston St', 53703, 1, 1, 1, 0, 1, 1, 0),
(216, 9, 2, 2, 'https://photos.zillowstatic.com/fp/047c8cd9c070667', 2200, '5437 Esther Beach Rd', 53713, 0, 0, 0, 0, 0, 0, 0),
(217, 8, 3, 3, 'https://photos.zillowstatic.com/fp/7c10de29fca44d6', 2950, '6410 Driscoll Dr', 53718, 1, 0, 1, 0, 0, 0, 1),
(218, 26, 1, 3, 'https://photos.zillowstatic.com/fp/17709bade95ba8c', 2400, '514 E Johnson St #2', 53703, 0, 1, 1, 1, 0, 0, 1),
(219, 1, 2, 3, 'https://photos.zillowstatic.com/fp/8a11bfe36c9a913', 2399, '5134 Pepin Pl', 53705, 1, 1, 1, 1, 0, 1, 1),
(220, 25, 1, 1, 'https://photos.zillowstatic.com/fp/016162f082f2278', 1095, '3710-3714 Packers Ave #17663418', 53704, 0, 1, 1, 0, 0, 1, 0),
(221, 19, 1, 2, 'https://photos.zillowstatic.com/fp/21096eedfcc6732', 1350, '1110 N Sherman Ave #10347090', 53704, 1, 1, 0, 1, 0, 1, 1),
(222, 13, 1, 3, 'https://photos.zillowstatic.com/fp/845fdf8032a55e2', 1233, '513 W Mifflin St UNIT 1', 53703, 1, 1, 0, 0, 1, 1, 0),
(223, 5, 1, 2, 'https://photos.zillowstatic.com/fp/fd82393987be6c5', 1150, '1340 E Dayton St APT 1', 53703, 1, 0, 1, 0, 1, 1, 0),
(224, 6, 1, 2, 'https://photos.zillowstatic.com/fp/25c81ec8af0cf53', 1950, '2039 Winnebago St APT 2', 53704, 0, 1, 1, 0, 0, 1, 1),
(225, 4, 2, 5, 'https://photos.zillowstatic.com/fp/704599778653076', 4750, '8 N Broom St APT 2', 53703, 1, 0, 0, 1, 0, 1, 0),
(226, 21, 2, 3, 'https://photos.zillowstatic.com/fp/016fc3a52f3dea9', 2400, '2 Sonora Ct', 53719, 1, 0, 0, 0, 1, 0, 1),
(227, 12, 1, 2, 'https://photos.zillowstatic.com/fp/6ddc73898462409', 1580, '641 W Main St #5738247', 53703, 1, 1, 0, 1, 0, 1, 1),
(228, 3, 1, 3, 'https://photos.zillowstatic.com/fp/0d68f02a1ccce48', 2600, '4202 Mineral Point Rd', 53705, 0, 0, 1, 0, 1, 1, 0),
(229, 21, 2, 1, 'https://photos.zillowstatic.com/fp/cecd79b8de92422', 2495, '123 W Washington Ave UNIT 706', 53703, 1, 1, 0, 1, 0, 1, 1),
(230, 1, 2, 4, 'https://photos.zillowstatic.com/fp/2ce55baba48e0c9', 4407, '211 W Gilman St #1E', 53703, 0, 1, 0, 1, 1, 0, 0),
(231, 20, 2, 4, 'https://photos.zillowstatic.com/fp/ec68e1af02d95b8', 4549, '549 Conklin Pl', 53703, 1, 0, 0, 1, 0, 0, 0),
(232, 19, 1, 3, 'https://photos.zillowstatic.com/fp/09748758839176f', 2980, '121 N Bedford St', 53703, 1, 1, 0, 0, 1, 1, 0),
(233, 19, 1, 2, 'https://photos.zillowstatic.com/fp/4a0e1680f861e7e', 1550, '2031 Sherman Ave #15160483', 53704, 0, 0, 1, 0, 1, 1, 1),
(234, 16, 3, 3, 'https://photos.zillowstatic.com/fp/c2ed04f31d57f2f', 2700, '(undisclosed Address)', 53713, 1, 1, 0, 0, 0, 1, 0),
(235, 28, 1, 2, 'https://photos.zillowstatic.com/fp/f14c6101b5dffe9', 1595, '3202 Quincy Ave', 53704, 0, 1, 1, 0, 0, 0, 0),
(236, 9, 1, 1, 'https://photos.zillowstatic.com/fp/7a1097fc6541cae', 1189, '434 W Mifflin St #28282', 53703, 1, 0, 1, 1, 1, 1, 1),
(237, 11, 2, 2, 'https://photos.zillowstatic.com/fp/f66481743d1d8bb', 1450, '1517 Martin St #17647568', 53713, 1, 1, 0, 1, 0, 0, 0),
(238, 1, 1, 1, 'https://photos.zillowstatic.com/fp/3df62cdfc2a1287', 1125, '1019 Fiedler Ln APT 6', 53713, 1, 0, 0, 1, 0, 1, 0),
(239, 17, 2, 4, 'https://photos.zillowstatic.com/fp/05b776270b4e583', 3575, '122 N Franklin St', 53703, 0, 1, 1, 0, 0, 0, 1),
(240, 20, 2, 5, 'https://photos.zillowstatic.com/fp/b0e7b7aa76bc64f', 3995, '126 N Franklin St', 53703, 1, 1, 0, 1, 1, 0, 0),
(241, 22, 1, 3, 'https://photos.zillowstatic.com/fp/5fd9343d1fd4193', 2695, '124 N Franklin St APT 1', 53703, 0, 0, 1, 0, 1, 1, 0),
(242, 3, 1, 0, 'https://photos.zillowstatic.com/fp/c18a8fa75d9e71a', 2138, '723 Jenifer St #B-1BA-300SQFT', 53703, 0, 1, 0, 0, 1, 1, 1),
(243, 18, 2, 3, 'https://photos.zillowstatic.com/fp/96fae8dfac0d5d2', 2460, '3709 Hillcrest Dr', 53705, 0, 0, 1, 0, 1, 1, 0),
(244, 23, 1, 1, 'https://photos.zillowstatic.com/fp/2a59601f6b682a9', 1100, '1113-1127 E Dayton St #11486993', 53703, 1, 1, 1, 0, 1, 1, 1),
(245, 14, 1, 3, 'https://photos.zillowstatic.com/fp/5490ba82f2a39e3', 1850, '1905 Baird St', 53713, 1, 1, 0, 1, 0, 1, 1),
(246, 16, 3, 3, 'https://photos.zillowstatic.com/fp/c5be79ac723570b', 2595, '518 N High Point Rd', 53717, 1, 0, 0, 1, 0, 0, 1),
(247, 8, 1, 2, 'https://photos.zillowstatic.com/fp/88bea73e38e724a', 1400, '2 Craig Ave #045C927D7', 53705, 0, 1, 1, 1, 1, 1, 0),
(248, 30, 1, 4, 'https://photos.zillowstatic.com/fp/a935077d0c646ec', 515, '1009 Vilas Ave APT 3', 53715, 1, 0, 0, 1, 0, 1, 1),
(249, 11, 2, 2, 'https://photos.zillowstatic.com/fp/78ad70c18d625bc', 1300, '4316 Melody Ln APT 203', 53704, 0, 1, 1, 0, 1, 0, 1),
(250, 2, 2, 3, 'https://photos.zillowstatic.com/fp/734d64c556f9f62', 2000, '9-11 Edgartown Ct #17546615', 53719, 0, 0, 1, 1, 1, 0, 1),
(251, 23, 1, 2, 'https://photos.zillowstatic.com/fp/45b86b53a60ccdc', 1350, '2809-2811 Andes Dr #17621725', 53719, 1, 0, 1, 0, 0, 0, 1),
(252, 23, 2, 2, 'https://photos.zillowstatic.com/fp/e2bbd15629857b5', 1995, '1945 Winnebago St', 53704, 0, 1, 1, 0, 0, 0, 1),
(253, 2, 2, 3, 'https://photos.zillowstatic.com/fp/e78874da935e029', 1825, '1317 S Thompson Dr', 53716, 0, 0, 1, 1, 1, 0, 0),
(254, 26, 2, 3, 'https://photos.zillowstatic.com/fp/2a94bd2448a6c3a', 2095, '2837 Cimarron Trl', 53719, 0, 0, 1, 1, 0, 0, 0),
(255, 4, 1, 2, 'https://photos.zillowstatic.com/fp/3a9b429bb78ebf3', 2095, '4513 Rahel St', 53716, 1, 1, 0, 1, 1, 1, 0),
(256, 12, 1, 1, 'https://photos.zillowstatic.com/fp/91b8f71ccd06292', 2195, '2810 Arbor Dr #8277157', 53711, 0, 0, 0, 1, 1, 1, 0),
(257, 12, 1, 2, 'https://photos.zillowstatic.com/fp/309d15bc6787cd2', 1650, '7702 Carrington Dr #A', 53719, 1, 0, 1, 1, 1, 0, 1),
(258, 19, 1, 0, 'https://photos.zillowstatic.com/fp/7d0fa43368504ba', 999, '3917 Lien Rd #147', 53704, 0, 1, 1, 0, 1, 1, 1),
(259, 29, 2, 2, 'https://photos.zillowstatic.com/fp/61fed41f0287bf8', 1800, '12 Fordem Ct #12', 53704, 1, 1, 0, 1, 0, 0, 0),
(260, 20, 2, 2, 'https://photos.zillowstatic.com/fp/18a79a948a5a5dd', 1800, '4 Fordem Ct #4', 53704, 0, 1, 0, 0, 0, 0, 1),
(261, 20, 2, 5, 'https://photos.zillowstatic.com/fp/4cd63e8c3ab0874', 3975, '215 N Bassett St', 53703, 1, 0, 0, 0, 1, 1, 0),
(262, 18, 2, 2, 'https://photos.zillowstatic.com/fp/e5e90e7744c0539', 1700, '5301 Manitowoc Pkwy', 53705, 1, 0, 0, 1, 1, 1, 1),
(263, 17, 1, 2, 'https://photos.zillowstatic.com/fp/d48d10d6eb153a7', 1750, '1801 Reetz Rd', 53711, 0, 1, 0, 0, 1, 0, 0),
(264, 7, 2, 3, 'https://photos.zillowstatic.com/fp/6e6a9fb1d125dc7', 2425, '2106 McKenna Blvd', 53711, 0, 0, 0, 1, 1, 1, 0),
(265, 24, 3, 3, 'https://photos.zillowstatic.com/fp/7161bb5a7bd394e', 2495, '6757 Hammersley Rd', 53711, 0, 1, 1, 1, 0, 1, 1),
(266, 3, 2, 2, 'https://photos.zillowstatic.com/fp/3d1ad3dc316790d', 2250, '1114 Mound St #1', 53715, 0, 1, 0, 0, 1, 1, 0),
(267, 10, 1, 3, 'https://photos.zillowstatic.com/fp/e13632a06ad7176', 2000, '4310 Mohawk Dr #2', 53711, 0, 1, 1, 1, 1, 0, 1),
(268, 5, 1, 2, 'https://photos.zillowstatic.com/fp/79c840ce111def9', 1750, '122 State St #117-3', 53703, 1, 1, 1, 1, 0, 1, 0),
(269, 15, 1, 3, 'https://photos.zillowstatic.com/fp/5531bd17793326f', 1850, '5215 Old Middleton Rd', 53705, 1, 1, 1, 1, 1, 0, 1),
(270, 15, 2, 3, 'https://photos.zillowstatic.com/fp/81dde3401ca2cbf', 2200, '5304 Manitowoc Pkwy', 53705, 0, 0, 0, 0, 0, 1, 1),
(271, 29, 1, 2, 'https://photos.zillowstatic.com/fp/53cddbdca0f1828', 1695, '735 Williamson St #734', 53703, 1, 0, 0, 0, 0, 1, 0),
(272, 15, 3, 2, 'https://photos.zillowstatic.com/fp/03154c2e2e033b2', 2100, '8107 Mansion Hill Ave', 53719, 0, 1, 0, 1, 0, 0, 1),
(273, 8, 1, 1, 'https://photos.zillowstatic.com/fp/aa8b57c19cb7787', 1075, '1630 Monroe St #G', 53711, 1, 1, 1, 1, 0, 0, 0),
(274, 26, 1, 2, 'https://photos.zillowstatic.com/fp/516d0efc53a5548', 1450, '1514-1518 Loftsgordon Ave', 53704, 1, 1, 1, 1, 0, 0, 0),
(275, 4, 2, 3, 'https://photos.zillowstatic.com/fp/bd3210e269c7b6c', 2200, '5303 Manitowoc Pkwy', 53705, 1, 1, 0, 1, 1, 1, 1),
(276, 8, 1, 1, 'https://photos.zillowstatic.com/fp/8a4406d3c6bb0b6', 1750, '116 E Gorham St #112', 53703, 1, 0, 1, 0, 0, 0, 1),
(277, 9, 3, 2, 'https://photos.zillowstatic.com/fp/66e99210a30871f', 1850, '6746 Fairhaven Rd APT 9', 53719, 0, 0, 1, 0, 1, 0, 1),
(278, 8, 1, 3, 'https://photos.zillowstatic.com/fp/d188c8a7c59c8b3', 2800, '1007 Edgewood Ave', 53711, 1, 1, 0, 0, 1, 0, 0),
(279, 28, 1, 1, 'https://photos.zillowstatic.com/fp/c1fd5be7f878a75', 1475, '5850 Charon Ln APT 211', 53718, 1, 0, 1, 1, 1, 1, 1),
(280, 11, 1, 2, 'https://photos.zillowstatic.com/fp/e2143db4611e159', 1525, '5322-24 Milwaukee St #5322', 53714, 1, 1, 0, 1, 1, 1, 1),
(281, 16, 1, 1, 'https://photos.zillowstatic.com/fp/f205250848c2bdf', 1350, '929 S Brooks St #2', 53715, 1, 0, 1, 1, 1, 0, 0),
(282, 11, 2, 4, 'https://photos.zillowstatic.com/fp/b1efdff52c49f9c', 2495, '4417 Hollow Ridge Rd', 53704, 0, 0, 0, 0, 0, 1, 0),
(283, 23, 1, 2, 'https://photos.zillowstatic.com/fp/58564cb7737858d', 1640, '1038 Williamson St', 53703, 0, 1, 0, 1, 0, 0, 1),
(284, 14, 1, 3, 'https://photos.zillowstatic.com/fp/2e62a63c0ddd5f0', 1885, '823 E Johnson St APT 3', 53703, 0, 1, 0, 1, 0, 0, 1),
(285, 16, 1, 1, 'https://photos.zillowstatic.com/fp/88a98699737bc45', 1675, '360 W Washington Ave UNIT 612', 53703, 1, 0, 1, 0, 1, 0, 1),
(286, 12, 1, 2, 'https://photos.zillowstatic.com/fp/f6f1b4a43cd67e7', 1795, '20 Sherman Ter UNIT 3', 53704, 0, 0, 0, 0, 1, 1, 1),
(287, 7, 3, 2, 'https://photos.zillowstatic.com/fp/e79f9f40c1fac11', 1995, '6711-6741 Fairhaven Rd #6723', 53719, 0, 0, 1, 0, 0, 0, 0),
(288, 17, 2, 5, 'https://photos.zillowstatic.com/fp/7e19cd5d0cbce1f', 3000, '142 N Hancock St', 53703, 1, 1, 1, 0, 1, 0, 1),
(289, 24, 2, 2, 'https://photos.zillowstatic.com/fp/eda62f69778b68c', 1500, '1 Mesa Ct #17571838', 53719, 1, 1, 1, 1, 1, 0, 0),
(290, 18, 1, 1, 'https://photos.zillowstatic.com/fp/5328515c83c3c6f', 1100, '445 W Gilman St #1164', 53703, 1, 0, 0, 1, 1, 0, 1),
(291, 1, 1, 2, 'https://photos.zillowstatic.com/fp/9d9fce8cf68518c', 1725, '1046 Jenifer St APT 1', 53703, 1, 1, 0, 0, 0, 0, 0),
(292, 3, 2, 3, 'https://photos.zillowstatic.com/fp/9dc41b134c4c64f', 1850, '3145 View Rd', 53711, 0, 0, 0, 1, 1, 1, 0),
(293, 8, 3, 4, 'https://photos.zillowstatic.com/fp/f34dd1f8e865e34', 2995, '138 Briar Crest St', 53704, 1, 0, 0, 1, 0, 1, 1),
(294, 4, 3, 2, 'https://photos.zillowstatic.com/fp/316d4bf62cf3ee1', 1925, '8129 Broadmoor St #8129', 53719, 0, 1, 0, 1, 1, 0, 0),
(295, 2, 2, 4, 'https://photos.zillowstatic.com/fp/dca5c7c2e7fca6e', 2395, '2709 Muir Field Rd', 53719, 0, 0, 0, 1, 0, 0, 0),
(296, 1, 1, 4, 'https://photos.zillowstatic.com/fp/3488d55da49395d', 2100, '411 E Johnson St', 53703, 1, 0, 1, 0, 0, 0, 0),
(297, 17, 1, 4, 'https://photos.zillowstatic.com/fp/8ece167d6c1491f', 2100, '409 E Johnson St', 53703, 1, 1, 1, 0, 0, 0, 0),
(298, 28, 1, 1, 'https://photos.zillowstatic.com/fp/2d576be6ea8206c', 950, '1 W Gilman St', 53703, 1, 0, 1, 1, 0, 0, 1),
(299, 10, 1, 3, 'https://photos.zillowstatic.com/fp/0d39a10d49587c1', 1800, '314 S Hamilton St', 53703, 0, 0, 0, 0, 1, 0, 0),
(300, 12, 1, 1, 'https://photos.zillowstatic.com/fp/609b453d198c33d', 1050, '141 N Butler St', 53703, 1, 1, 0, 0, 0, 0, 1),
(301, 25, 1, 1, 'https://photos.zillowstatic.com/fp/e5785eb6a3af9d7', 895, '143-145 W Gilman St', 53703, 1, 0, 1, 0, 1, 0, 1),
(302, 23, 1, 1, 'https://photos.zillowstatic.com/fp/e4b94c4f11f4347', 895, '142 N Franklin St', 53703, 1, 0, 0, 0, 0, 0, 1),
(303, 5, 1, 1, 'https://photos.zillowstatic.com/fp/2ce128b61da6287', 3036, '729 Jenifer St #2', 53703, 1, 1, 0, 0, 0, 0, 0),
(304, 19, 2, 3, 'https://photos.zillowstatic.com/fp/e15780896dd4173', 2625, '6414 Pizarro Cir', 53719, 0, 0, 0, 1, 1, 0, 0),
(305, 17, 1, 1, 'https://photos.zillowstatic.com/fp/bcf5c3032745252', 1250, '5110 Esker Dr #2', 53704, 0, 1, 1, 1, 0, 0, 0),
(306, 25, 2, 2, 'https://photos.zillowstatic.com/fp/fe6591333f67c50', 1500, '1 Mesa Ct #3', 53719, 1, 0, 1, 1, 0, 1, 1),
(307, 23, 2, 2, 'https://photos.zillowstatic.com/fp/379a1e3c2da2628', 1500, '2021 Sherman Ave #8', 53704, 0, 1, 1, 1, 0, 1, 1),
(308, 17, 2, 3, 'https://photos.zillowstatic.com/fp/7ae8e2cf0c9488c', 2650, '302 N Meadow Ln', 53705, 1, 1, 0, 0, 0, 0, 0),
(309, 28, 1, 1, 'https://photos.zillowstatic.com/fp/c04380cdef09af6', 1245, '531 Donofrio Dr UNIT 8', 53719, 0, 0, 0, 1, 1, 0, 0),
(310, 10, 1, 3, 'https://photos.zillowstatic.com/fp/b1770df785854ab', 1650, '1332 Jenifer St', 53703, 0, 0, 1, 1, 1, 0, 0),
(311, 27, 1, 1, 'https://photos.zillowstatic.com/fp/cd3e7701e280240', 1795, '826 W Lakeside St APT 5', 53715, 1, 1, 1, 1, 0, 0, 1),
(312, 25, 1, 2, 'https://photos.zillowstatic.com/fp/4f1b55fa1de3db6', 1900, '2033 Adderbury Ln', 53711, 0, 0, 1, 1, 1, 0, 1),
(313, 29, 1, 1, 'https://photos.zillowstatic.com/fp/12ed7ffdf88e459', 1145, '801 Fairmont Ave APT B', 53714, 0, 1, 0, 1, 1, 0, 0),
(314, 30, 2, 3, 'https://photos.zillowstatic.com/fp/e239cf8ba789841', 2495, '7817 W Oakbrook Cir', 53717, 0, 0, 0, 0, 0, 1, 0),
(315, 26, 1, 2, 'https://photos.zillowstatic.com/fp/1d0cf1b484da13e', 1600, '437 N Ingersoll St #1', 53703, 1, 0, 0, 0, 0, 0, 1),
(316, 27, 1, 2, 'https://photos.zillowstatic.com/fp/309d15bc6787cd2', 1675, '592 Donofrio Dr #C', 53719, 0, 1, 1, 0, 0, 0, 0),
(317, 5, 2, 3, 'https://photos.zillowstatic.com/fp/d23fc6e617b07d9', 2350, '2330 Harley Dr', 53711, 1, 1, 1, 0, 0, 0, 1),
(318, 7, 1, 3, 'https://photos.zillowstatic.com/fp/ee915b2d18776d4', 1750, '257 Corry St', 53704, 1, 0, 1, 1, 1, 1, 1),
(319, 11, 2, 3, 'https://photos.zillowstatic.com/fp/4a70a8c9f61d4d0', 2495, '905 Dane St', 53713, 0, 0, 1, 0, 1, 0, 0),
(320, 11, 1, 1, 'https://photos.zillowstatic.com/fp/737ca73a48de351', 1700, '622 W Wilson St #210', 53703, 1, 1, 1, 0, 1, 0, 1),
(321, 9, 2, 4, 'https://photos.zillowstatic.com/fp/5afa08d842573b6', 2250, '417 North St', 53704, 0, 1, 0, 1, 1, 1, 1),
(322, 24, 1, 1, 'https://photos.zillowstatic.com/fp/b8d15cb075ccd50', 1395, '2838 Dryden Dr #206', 53704, 0, 1, 1, 0, 1, 1, 1),
(323, 8, 2, 1, 'https://photos.zillowstatic.com/fp/e9f099ef46c41ea', 695, '1111 Bowen Ct', 53715, 0, 0, 1, 1, 1, 1, 1),
(324, 2, 3, 2, 'https://photos.zillowstatic.com/fp/4028ea68eaf9028', 2000, '(undisclosed Address)', 53717, 0, 1, 0, 0, 1, 1, 1),
(325, 1, 4, 3, 'https://photos.zillowstatic.com/fp/0cf5963f3edabe1', 4500, '1016 Lincoln St', 53711, 0, 1, 1, 1, 0, 0, 0),
(326, 6, 1, 1, 'https://photos.zillowstatic.com/fp/9d39462185a91a6', 1500, '121 Metro Ter UNIT 206', 53718, 1, 1, 0, 0, 0, 0, 0),
(327, 2, 2, 3, 'https://photos.zillowstatic.com/fp/0c8496999be9c54', 2150, '3329 Webb Ave', 53714, 1, 1, 0, 1, 1, 1, 0),
(328, 29, 1, 2, 'https://photos.zillowstatic.com/fp/bb8b54c935e6c8f', 1695, '2021 E Dayton St', 53704, 1, 0, 1, 0, 0, 1, 0),
(329, 12, 1, 2, 'https://photos.zillowstatic.com/fp/331d8ea732f3c31', 1450, '121 E Gilman St APT 10', 53703, 0, 1, 0, 1, 1, 0, 0),
(330, 9, 2, 3, 'https://photos.zillowstatic.com/fp/25b109c26b2960b', 2500, '2926 Muir Field Rd', 53719, 1, 0, 1, 1, 0, 1, 1),
(331, 1, 1, 2, 'https://photos.zillowstatic.com/fp/2681606b25ba118', 1799, '1810 Kendall Ave', 53726, 1, 0, 0, 1, 1, 0, 0),
(332, 29, 3, 5, 'https://photos.zillowstatic.com/fp/dd6b431df70a949', 4500, '502 S Owen Dr', 53711, 1, 1, 0, 0, 1, 0, 1),
(333, 19, 2, 3, 'https://photos.zillowstatic.com/fp/808c5471db05bce', 3050, '317 S Segoe Rd', 53705, 1, 1, 1, 0, 0, 1, 1),
(334, 3, 4, 3, 'https://photos.zillowstatic.com/fp/bbc0f763651b604', 2595, '8136 Broadmoor St', 53719, 0, 1, 0, 0, 0, 0, 0),
(335, 28, 2, 3, 'https://photos.zillowstatic.com/fp/614fbb948086621', 1660, '8002 Ritz Dr #307', 53719, 0, 0, 0, 1, 1, 0, 0),
(336, 5, 1, 2, 'https://photos.zillowstatic.com/fp/30059e59a408c83', 1450, '2506 Fremont Ave APT 2', 53704, 1, 1, 0, 0, 1, 0, 1),
(337, 17, 1, 2, 'https://photos.zillowstatic.com/fp/1996dc9eac5dcdb', 2200, '2614 E Johnson St', 53704, 1, 0, 1, 0, 1, 1, 1),
(338, 16, 2, 1, 'https://photos.zillowstatic.com/fp/dd2404c82e4958a', 1695, '2929 Atwood Ave APT 210', 53704, 1, 1, 0, 0, 0, 0, 0),
(339, 16, 2, 2, 'https://photos.zillowstatic.com/fp/bf69eda6c3cf840', 3335, '333 W Mifflin St FLOOR 8', 53703, 0, 1, 0, 1, 1, 0, 1),
(340, 18, 1, 2, 'https://photos.zillowstatic.com/fp/bb4be9e1244b92e', 2350, '1115 E Johnson St', 53703, 1, 0, 1, 1, 1, 1, 0),
(341, 9, 2, 2, 'https://maps.googleapis.com/maps/api/staticmap?mob', 1780, '3033 Maple Valley Dr #302', 53719, 1, 0, 1, 1, 0, 1, 1),
(342, 16, 2, 2, 'https://maps.googleapis.com/maps/api/staticmap?mob', 1780, '3118 Maple Valley Dr APT 304', 53719, 0, 1, 0, 0, 1, 1, 0),
(343, 25, 2, 2, 'https://maps.googleapis.com/maps/api/staticmap?mob', 1780, '3118 Maple Valley Dr APT 301', 53719, 1, 1, 1, 0, 1, 0, 0),
(344, 1, 3, 3, 'https://photos.zillowstatic.com/fp/cd8258b7d823b82', 2750, '7877 E Oakbrook Cir', 53717, 1, 1, 0, 0, 0, 0, 0),
(345, 17, 1, 2, 'https://photos.zillowstatic.com/fp/74a4f2adbfafa84', 1475, '1309 Ruskin St APT 1', 53704, 0, 1, 1, 0, 0, 0, 0),
(346, 21, 2, 2, 'https://photos.zillowstatic.com/fp/62bd591cf518229', 1600, '1309 Jewel Ct', 53711, 1, 0, 1, 1, 1, 1, 1),
(347, 30, 1, 1, 'https://photos.zillowstatic.com/fp/862ec0031dd1572', 1650, '219 N Meadow Ln', 53705, 1, 0, 1, 1, 0, 0, 1),
(348, 30, 1, 1, 'https://photos.zillowstatic.com/fp/2d576be6ea8206c', 950, '424 Wisconsin Ave #619', 53703, 1, 1, 0, 1, 0, 1, 1),
(349, 2, 1, 2, 'https://photos.zillowstatic.com/fp/700ebacde343b03', 2400, '1214 Carpenter St', 53704, 1, 1, 0, 0, 0, 0, 0),
(350, 13, 1, 1, 'https://photos.zillowstatic.com/fp/557d499f13aa678', 1295, '301 N 5th St APT 6', 53704, 1, 0, 0, 1, 0, 1, 0),
(351, 5, 1, 1, 'https://photos.zillowstatic.com/fp/9ace6699dbcccf6', 975, '2507 E Johnson St UNIT 2', 53704, 1, 1, 1, 0, 0, 0, 1),
(352, 19, 1, 2, 'https://photos.zillowstatic.com/fp/37ce78719e6696d', 1595, '1209-11 S Thompson Dr', 53716, 0, 1, 0, 1, 0, 0, 1),
(353, 16, 3, 4, 'https://photos.zillowstatic.com/fp/1b5d147ebca6979', 2395, '3737 Frosted Leaf Dr', 53719, 1, 1, 1, 1, 1, 0, 1),
(354, 21, 1, 2, 'https://photos.zillowstatic.com/fp/b759e61d208d8df', 1495, '1301 Ruskin St #2', 53704, 0, 1, 1, 1, 1, 1, 0),
(355, 24, 3, 3, 'https://photos.zillowstatic.com/fp/663aefd4ff1e0b5', 2500, '1003 Middleton St', 53717, 1, 0, 0, 0, 1, 1, 1),
(356, 23, 3, 3, 'https://photos.zillowstatic.com/fp/1a2f98c881f6a9d', 2600, '7008 Longmeadow Rd', 53717, 0, 1, 0, 0, 0, 1, 1),
(357, 17, 1, 3, 'https://photos.zillowstatic.com/fp/8dfde577488cafe', 2200, '14 S Franklin St #1', 53703, 0, 0, 0, 0, 0, 0, 1),
(358, 6, 1, 3, 'https://photos.zillowstatic.com/fp/f5be4e7f7f1a800', 2095, '443 445th St #11486982', 53703, 0, 0, 0, 1, 0, 1, 1),
(359, 22, 1, 2, 'https://photos.zillowstatic.com/fp/9be3cfe968a96ec', 1295, '3002 Ashford Ln #1', 53713, 1, 0, 1, 1, 1, 1, 0),
(360, 23, 3, 4, 'https://photos.zillowstatic.com/fp/128a313a61b09c3', 2595, '2921 Brandon Rd', 53719, 0, 1, 0, 1, 1, 1, 1),
(361, 28, 1, 2, 'https://photos.zillowstatic.com/fp/4b2cdaaedacec3b', 1395, '729 Clark Ct #2', 53715, 1, 1, 1, 0, 1, 1, 0),
(362, 19, 1, 2, 'https://photos.zillowstatic.com/fp/f1db790b43847bb', 2350, '427 E Gorham St #13956336', 53703, 0, 0, 0, 1, 1, 0, 0),
(363, 22, 2, 4, 'https://photos.zillowstatic.com/fp/2b4943cff4b528e', 3100, '202 S Segoe Rd', 53705, 0, 0, 0, 1, 1, 1, 0),
(364, 13, 3, 3, 'https://photos.zillowstatic.com/fp/6a1df645cf25bbe', 3290, '5809 Sanctuary Dr', 53718, 0, 0, 0, 1, 1, 1, 1),
(365, 23, 1, 2, 'https://photos.zillowstatic.com/fp/d643174c6686055', 1400, '4005-4007 Claire St #4005', 53716, 0, 0, 0, 1, 0, 1, 1),
(366, 4, 1, 1, 'https://photos.zillowstatic.com/fp/6358d918de3bc93', 1150, '2420 E Washington Ave #11', 53704, 0, 1, 0, 0, 0, 0, 0),
(367, 2, 1, 3, 'https://photos.zillowstatic.com/fp/3b8a94793a8ad10', 2000, '3 Nantucket Ct', 53719, 1, 1, 0, 0, 0, 1, 0),
(368, 28, 3, 2, 'https://photos.zillowstatic.com/fp/0a13d0a143f5b46', 2695, '582 N Midvale Blvd', 53705, 1, 1, 1, 0, 0, 0, 0),
(369, 26, 1, 3, 'https://photos.zillowstatic.com/fp/235de4d694261df', 3300, '2005 Rutledge St', 53704, 0, 0, 0, 1, 1, 0, 0),
(370, 22, 2, 3, 'https://photos.zillowstatic.com/fp/82ce676bb37ad9f', 2200, '28 Heritage Cir APT 8', 53711, 0, 1, 0, 1, 0, 0, 1),
(371, 16, 1, 2, 'https://photos.zillowstatic.com/fp/18963314204db58', 1195, '4250 Lumley Rd #3', 53711, 1, 0, 0, 1, 1, 1, 1),
(372, 8, 2, 3, 'https://photos.zillowstatic.com/fp/17ee653961f156e', 2675, '8415 Mid Town Rd', 53719, 1, 1, 0, 1, 0, 1, 0),
(373, 24, 1, 1, 'https://maps.googleapis.com/maps/api/staticmap?mob', 1050, '309 Island Dr #321-4', 53705, 0, 1, 0, 0, 0, 1, 1),
(374, 13, 1, 2, 'https://photos.zillowstatic.com/fp/81bf5023846fb7d', 1795, '2811 Monroe St #3', 53711, 0, 1, 0, 0, 1, 0, 1),
(375, 21, 1, 1, 'https://photos.zillowstatic.com/fp/d6bfdbde9662d54', 1099, '502 E Main St #17266390', 53703, 1, 1, 1, 0, 1, 1, 1),
(376, 24, 1, 2, 'https://photos.zillowstatic.com/fp/57033a2b5c63591', 1450, '2609-2617 E Johnson St #227-2617', 53704, 1, 1, 0, 1, 0, 1, 0),
(377, 6, 1, 2, 'https://photos.zillowstatic.com/fp/3509e61062749c2', 1700, '664 Sprague St APT 1', 53711, 0, 1, 1, 1, 1, 1, 0),
(378, 14, 1, 2, 'https://photos.zillowstatic.com/fp/9cac52bad645095', 1795, '2821 Monroe St #1', 53711, 0, 1, 0, 1, 0, 0, 1),
(379, 3, 2, 3, 'https://photos.zillowstatic.com/fp/8770603c5c0eb83', 2395, '7105 Tempe Dr', 53719, 1, 1, 1, 0, 0, 0, 0),
(380, 18, 2, 2, 'https://photos.zillowstatic.com/fp/3ae7ca8df7c3795', 2800, '4522 Hammersley Rd APT 8', 53711, 0, 0, 0, 1, 0, 0, 1),
(381, 30, 1, 1, 'https://photos.zillowstatic.com/fp/316ac8516a967c4', 1100, '1667 Capital Ave #11199578', 53705, 0, 1, 0, 1, 0, 0, 1),
(382, 11, 1, 2, 'https://photos.zillowstatic.com/fp/8e9dd654f1951fe', 1125, '4318 Nakoosa Trl APT 1', 53714, 1, 0, 1, 1, 1, 1, 0),
(383, 16, 2, 3, 'https://photos.zillowstatic.com/fp/e9308a245075dcc', 3500, '6422 Enterprise Ln #2C', 53719, 0, 0, 0, 1, 0, 0, 1),
(384, 16, 3, 3, 'https://photos.zillowstatic.com/fp/eb8bed19d16296c', 2695, '4022-4024 Dolphin Dr', 53719, 1, 0, 1, 0, 0, 1, 1),
(385, 30, 2, 3, 'https://photos.zillowstatic.com/fp/ec7ce179fe3e716', 2200, '10 Heritage Cir #6', 53711, 0, 1, 1, 1, 1, 1, 0),
(386, 25, 1, 1, 'https://photos.zillowstatic.com/fp/c535d29b17124ec', 1275, '410 Castle Pl #1307193', 53703, 0, 0, 0, 1, 0, 1, 1),
(387, 27, 0, 0, 'https://photos.zillowstatic.com/fp/abbb5c8d8725c16', 775, '31 E Gorham St #5', 53703, 0, 0, 0, 1, 1, 0, 1),
(388, 7, 1, 1, 'https://photos.zillowstatic.com/fp/5a7b511a8b92258', 1065, '2306 Badger Pkwy APT 7', 53713, 0, 0, 0, 0, 1, 0, 1),
(389, 13, 2, 2, 'https://photos.zillowstatic.com/fp/f6d061e2603d25e', 2750, '3100 Lake Mendota Dr APT 601', 53705, 0, 1, 0, 0, 1, 1, 1),
(390, 3, 1, 2, 'https://photos.zillowstatic.com/fp/2d0dfd3348a65d4', 1100, '2505 Calypso Rd #D148D807B', 53704, 1, 0, 0, 0, 0, 0, 1),
(391, 12, 2, 3, 'https://photos.zillowstatic.com/fp/22de851b068dd98', 2295, '1132 Gammon Ln', 53719, 0, 0, 0, 0, 0, 0, 1),
(392, 7, 2, 3, 'https://photos.zillowstatic.com/fp/8fdf5fec2b17178', 3080, '2163 Autumn Lake Pkwy', 53718, 0, 0, 1, 1, 1, 0, 0),
(393, 22, 1, 3, 'https://photos.zillowstatic.com/fp/f754a31bdcfb87b', 2495, '121 N Blair St #121', 53703, 1, 0, 1, 0, 0, 0, 0),
(394, 1, 4, 5, 'https://photos.zillowstatic.com/fp/7b819f424450f8f', 3500, '940 E Dayton St', 53703, 1, 0, 1, 0, 0, 1, 1),
(395, 2, 2, 3, 'https://photos.zillowstatic.com/fp/2f10f75f82e6cc9', 2195, '701 McCormick Ave', 53704, 0, 0, 1, 0, 0, 1, 1),
(396, 5, 1, 2, 'https://photos.zillowstatic.com/fp/6aad6180c7ee475', 1250, '2822 Ashford Ln #B47448008', 53713, 0, 1, 1, 1, 0, 1, 1);
INSERT INTO `apartments` (`apartment_id`, `landlord_id`, `bathrooms`, `bedrooms`, `imgURL`, `price`, `streetAddress`, `zipcode`, `parking`, `pets`, `RI`, `heat`, `ac`, `washdry`, `dishwasher`) VALUES
(397, 7, 1, 2, 'https://photos.zillowstatic.com/fp/e048e3d51e5a6a2', 1600, '3118 Harvey St #2', 53705, 0, 0, 0, 0, 0, 0, 0),
(398, 25, 3, 3, 'https://photos.zillowstatic.com/fp/d5b02c726ce33a8', 2835, '5813 Sanctuary Ln', 53718, 1, 1, 0, 0, 1, 1, 0),
(399, 26, 2, 3, 'https://photos.zillowstatic.com/fp/a1ae03f05190611', 2295, '3122 Churchill Dr', 53713, 1, 0, 0, 0, 1, 1, 0),
(400, 5, 1, 2, 'https://photos.zillowstatic.com/fp/7770b2e81c5446f', 1375, '219 E Mifflin St APT 3', 53703, 1, 1, 0, 0, 0, 1, 1),
(401, 11, 2, 3, 'https://photos.zillowstatic.com/fp/bdfcfb89230647b', 3600, '437 N Frances St', 53703, 1, 0, 0, 0, 0, 0, 0),
(402, 13, 1, 2, 'https://photos.zillowstatic.com/fp/089c62c30cb006f', 1399, '5806 Raymond Rd #2C3434F7D', 53711, 1, 0, 1, 0, 1, 0, 1),
(403, 13, 1, 0, 'https://photos.zillowstatic.com/fp/b44be6d39a8f461', 1050, '2702 Syene Rd', 53713, 0, 0, 1, 1, 0, 0, 0),
(404, 4, 2, 3, 'https://photos.zillowstatic.com/fp/5f186b2a9a71960', 2915, '1345 Williamson St APT 1', 53703, 0, 0, 1, 0, 1, 1, 0),
(405, 24, 1, 1, 'https://photos.zillowstatic.com/fp/076d65020401b23', 1055, '619 W Mifflin St #33DDE5F58', 53703, 1, 1, 0, 1, 1, 0, 1),
(406, 2, 1, 2, 'https://photos.zillowstatic.com/fp/1daae670cb3d470', 2250, '1042 E Gorham St #1042', 53703, 0, 1, 0, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `landlords`
--

CREATE TABLE `landlords` (
  `landlord_id` int NOT NULL,
  `firstName` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lastName` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='v1';

--
-- Dumping data for table `landlords`
--

INSERT INTO `landlords` (`landlord_id`, `firstName`, `lastName`, `phone`, `email`, `password`) VALUES
(1, 'Alfonso', 'Barbieri', '+1 505-644-2081', NULL, ''),
(2, 'Roxana', 'Slaven', '+1 419-485-2181', NULL, ''),
(3, 'Kadin', 'Juan', '+1 505-644-9224', NULL, ''),
(4, 'Iverson', 'Pruitt', '+1 505-631-9087', NULL, ''),
(5, 'Kristine', 'Lesko', '+1 472-244-7116', NULL, ''),
(6, 'Maniyah', 'Dove', '+1 505-635-9105', NULL, ''),
(7, 'Scout', 'Fortner', '+1 229-975-7296', NULL, ''),
(8, 'Marta', 'Deering', '+1 505-677-9662', NULL, ''),
(9, 'Joaquin', 'Goodnight', '+1 505-621-3322', NULL, ''),
(10, 'Mouhamed', 'Bailey', '+1 321-849-5425', NULL, ''),
(11, 'Ellen', 'Runnels', '+1 505-615-0752', NULL, ''),
(12, 'Jae', 'Castaneda', '+1 505-651-0053', NULL, ''),
(13, 'Mirabelle', 'Gregoire', '+1 505-710-1485', NULL, ''),
(14, 'Yareni', 'Augustin', '+1 505-495-7277', NULL, ''),
(15, 'Cayla', 'Wesson', '+1 505-646-8181', NULL, ''),
(16, 'Everest', 'Clemens', '+1 472-230-8345', NULL, ''),
(17, 'Braulio', 'Chabot', '+1 681-446-4514', NULL, ''),
(18, 'Leelan', 'Eisele', '+1 505-789-1407', NULL, ''),
(19, 'Emmilyn', 'Lussier', '+1 505-630-4512', NULL, ''),
(20, 'Yehuda', 'Blythe', '+1 505-644-6548', NULL, ''),
(21, 'Kylah', 'Derosa', '+1 505-644-2548', NULL, ''),
(22, 'Azarias', 'Benally', '+1 505-891-4810', NULL, ''),
(23, 'Yamileth', 'Crawford', '+1 472-236-4367', NULL, ''),
(24, 'Stanton', 'Gomes', '+1 505-646-3663', NULL, ''),
(25, 'Krystina', 'Gillam', '+1 505-646-3263', NULL, ''),
(26, 'Jaciel', 'Welter', '+1 302-956-1794', NULL, ''),
(27, 'Ayse', 'Persaud', '+1 505-688-3611', NULL, ''),
(28, 'Carlin', 'Coronado', '+1 505-971-5257', NULL, ''),
(29, 'Maliya', 'Hotchkiss', '+1 505-609-4510', NULL, ''),
(30, 'Rosetta', 'Broughton', '+1 505-718-2811', NULL, ''),
(31, 'Anastasia', 'Lassiter', '+1 505-601-3125', NULL, ''),
(32, 'Aryan', 'Carothers', '+1 505-646-5432', NULL, ''),
(33, 'Jaci', 'Billingsley', '+1 472-255-8691', NULL, ''),
(34, 'Cielo', 'Aker', '+1 337-446-4683', NULL, ''),
(35, 'Andersen', 'Glover', '+1 505-644-9296', NULL, ''),
(36, 'Jovie', 'Wilbanks', '+1 472-205-9254', NULL, ''),
(37, 'Kroy', 'Steward', '+1 321-689-3962', NULL, ''),
(38, 'Zebadiah', 'Olsen', '+1 505-781-3043', NULL, ''),
(39, 'Dyani', 'Forster', '+1 505-981-1077', NULL, ''),
(40, 'Saylor', 'Vance', '+1 505-644-0588', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `savedListings`
--

CREATE TABLE `savedListings` (
  `listing_id` int NOT NULL,
  `apartment_id` int NOT NULL,
  `tenant_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `savedListings`
--

INSERT INTO `savedListings` (`listing_id`, `apartment_id`, `tenant_id`) VALUES
(1, 2, 3),
(2, 52, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `tenant_id` int NOT NULL,
  `firstName` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lastName` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `DOB` date DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `apartment_id` int DEFAULT NULL,
  `leaseStart` int DEFAULT NULL,
  `leaseEnd` int DEFAULT NULL,
  `pets` tinyint(1) DEFAULT NULL,
  `incomeRestrict` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='v1';

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`tenant_id`, `firstName`, `lastName`, `DOB`, `email`, `password`, `phone`, `apartment_id`, `leaseStart`, `leaseEnd`, `pets`, `incomeRestrict`) VALUES
(1, 'Elizabeth ', 'Blackwood', '1999-05-03', 'elizabeth.blackwood@gmail.com', '', '6082348329', NULL, NULL, NULL, 1, 0),
(3, 'Bryan', 'Rivera', NULL, 'bryan@gmail.com', 'd74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1', '4143507369', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartments`
--
ALTER TABLE `apartments`
  ADD PRIMARY KEY (`apartment_id`),
  ADD KEY `landlord_id` (`landlord_id`);

--
-- Indexes for table `landlords`
--
ALTER TABLE `landlords`
  ADD PRIMARY KEY (`landlord_id`);

--
-- Indexes for table `savedListings`
--
ALTER TABLE `savedListings`
  ADD PRIMARY KEY (`listing_id`),
  ADD KEY `apartmentFK` (`apartment_id`),
  ADD KEY `tenantFK` (`tenant_id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`tenant_id`),
  ADD KEY `apartment_id` (`apartment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartments`
--
ALTER TABLE `apartments`
  MODIFY `apartment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

--
-- AUTO_INCREMENT for table `landlords`
--
ALTER TABLE `landlords`
  MODIFY `landlord_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `savedListings`
--
ALTER TABLE `savedListings`
  MODIFY `listing_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
  MODIFY `tenant_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apartments`
--
ALTER TABLE `apartments`
  ADD CONSTRAINT `apartments_ibfk_1` FOREIGN KEY (`landlord_id`) REFERENCES `landlords` (`landlord_id`);

--
-- Constraints for table `savedListings`
--
ALTER TABLE `savedListings`
  ADD CONSTRAINT `apartmentFK` FOREIGN KEY (`apartment_id`) REFERENCES `apartments` (`apartment_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tenantFK` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`tenant_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `tenants`
--
ALTER TABLE `tenants`
  ADD CONSTRAINT `tenants_ibfk_1` FOREIGN KEY (`apartment_id`) REFERENCES `apartments` (`apartment_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
