-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 04:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
  `apartment_id` int(11) NOT NULL,
  `landlord_id` int(11) DEFAULT NULL,
  `bathrooms` int(11) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `imgURL` text NOT NULL,
  `price` int(11) NOT NULL,
  `streetAddress` varchar(50) NOT NULL,
  `zipcode` int(11) NOT NULL,
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
(1, 13, 3, 3, 'https://images.unsplash.com/photo-1716576587284-691abcf83267?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNzF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 3700, '210 N Breese Ter', 53726, 1, 0, 0, 0, 1, 1, 0),
(2, 15, 1, 1, 'https://images.unsplash.com/photo-1608580579761-33eb6f730b86?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMDF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1433, '215 N Pinckney St #2', 53703, 0, 0, 0, 0, 0, 0, 0),
(3, 19, 2, 3, 'https://images.unsplash.com/photo-1614083511337-49069ad58b9f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNDl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1695, '3117 Muir Field Rd', 53719, 0, 1, 1, 1, 0, 0, 1),
(4, 2, 1, 2, 'https://images.unsplash.com/photo-1484961361402-1ee9b1c7accb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxN3x8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 1660, '218 Judd St', 53714, 0, 1, 1, 1, 0, 0, 1),
(5, 3, 2, 2, 'https://images.unsplash.com/photo-1534655610770-dd69616f05ff?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNnx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 1795, '309 Orchard Dr', 53705, 1, 1, 0, 1, 0, 1, 1),
(6, 20, 2, 2, 'https://images.unsplash.com/photo-1646920957868-da2c72740290?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNTl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1700, '1027 S Sunnyvale Ln UNIT A', 53713, 0, 1, 1, 0, 1, 1, 1),
(7, 30, 1, 2, 'https://images.unsplash.com/photo-1666532937398-f7cdbb7d9588?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzODl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1400, '329 Kedzie St APT 4', 53704, 0, 1, 0, 1, 0, 1, 0),
(8, 1, 1, 3, 'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxfHxhcGFydG1lbnR8ZW58MHx8fHwxNzMzODc5MzgzfDA&ixlib=rb-4.0.3&q=80&w=1080', 1950, '5405 Louden Ln', 53716, 1, 1, 1, 0, 1, 0, 1),
(9, 29, 1, 1, 'https://images.unsplash.com/photo-1517208013238-c78ce0b0c313?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNzV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1310, '23 E Johnson St #12662412', 53703, 1, 0, 0, 1, 1, 0, 1),
(10, 16, 3, 3, 'https://images.unsplash.com/photo-1633099681867-8c2986c25501?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMTJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2700, '6152 Stoney Oak Ln', 53718, 1, 1, 0, 1, 1, 0, 1),
(11, 24, 1, 2, 'https://images.unsplash.com/photo-1630829421842-fc4f5a296e49?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMTV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1395, '2838 Coolidge St #B', 53704, 1, 1, 1, 0, 0, 0, 0),
(12, 12, 4, 5, 'https://images.unsplash.com/photo-1554893023-ded7f13536e8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNTN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 3595, '821 Ondossagon Way', 53719, 1, 1, 0, 0, 0, 1, 1),
(13, 23, 1, 1, 'https://images.unsplash.com/photo-1647363302408-25b51dafcdc5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyOTV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 1310, '222 N Pinckney St #17822813', 53703, 1, 0, 1, 0, 1, 1, 0),
(14, 12, 1, 1, 'https://images.unsplash.com/photo-1518494679888-8e283cf7d722?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNTR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1950, '1030 Spaight St #3', 53703, 0, 0, 0, 0, 1, 0, 1),
(15, 11, 2, 3, 'https://images.unsplash.com/photo-1520532240459-395dc4a823b1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMzh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 2850, '4337 Herrick Ln', 53711, 0, 1, 0, 1, 1, 0, 0),
(16, 19, 2, 3, 'https://images.unsplash.com/photo-1618237693938-0fbc85b93774?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNTB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 3750, '4746 Lafayette Dr', 53705, 1, 1, 0, 1, 0, 1, 0),
(17, 25, 1, 0, 'https://images.unsplash.com/photo-1621919200669-2779566a6eaf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMzB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1050, '529 N Pinckney St APT 2', 53703, 0, 1, 0, 1, 0, 1, 0),
(18, 16, 1, 3, 'https://images.unsplash.com/photo-1659112409705-a4fabfc37982?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMTN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2165, '645 E Johnson St #3B-1BA', 53703, 0, 1, 0, 1, 1, 1, 0),
(19, 21, 1, 3, 'https://images.unsplash.com/photo-1629655003719-55860b5a1dcf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNjh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1525, '1214 E Mifflin St APT 1', 53703, 0, 0, 1, 1, 0, 0, 1),
(20, 6, 2, 3, 'https://images.unsplash.com/photo-1533661277712-9df5aad6bb17?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw3Nnx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 2385, '810 E Gorham St #3B-2BA', 53703, 0, 1, 1, 0, 1, 0, 0),
(21, 23, 1, 4, 'https://images.unsplash.com/photo-1516697346631-fea02c692049?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyOTZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 2700, '639 E Johnson St #4B-1BA', 53703, 1, 0, 0, 0, 0, 0, 1),
(22, 16, 1, 3, 'https://images.unsplash.com/photo-1615347497551-277d6616b959?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMTR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2430, '745 E Gorham St #3B-1BA', 53703, 0, 0, 1, 0, 0, 1, 0),
(23, 6, 2, 5, 'https://images.unsplash.com/photo-1530748374584-4b2649043eb4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw3N3x8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 4350, '20 N Broom St APT 1', 53703, 0, 0, 0, 0, 1, 0, 0),
(24, 8, 1, 2, 'https://images.unsplash.com/photo-1500314170724-9eca92963c76?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMDR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1250, '616 S Mills St', 53715, 0, 1, 0, 1, 0, 1, 0),
(25, 23, 1, 2, 'https://images.unsplash.com/photo-1494966934515-39734248c516?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyOTd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 1550, '1212 Vilas Ave #1', 53715, 0, 1, 0, 0, 1, 0, 1),
(26, 23, 2, 0, 'https://images.unsplash.com/photo-1506016360332-abdfbe6b2c58?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyOTh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 695, '2609 University Ave #1B', 53705, 1, 1, 0, 0, 1, 1, 1),
(27, 9, 1, 2, 'https://images.unsplash.com/photo-1521604784100-e0318b4b2bad?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMTh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1200, '3814 School Rd #C', 53704, 0, 0, 1, 0, 0, 0, 1),
(28, 15, 1, 2, 'https://images.unsplash.com/photo-1568760649164-794833a3e826?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMDJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1200, '3806 School Rd #B', 53704, 1, 1, 1, 1, 1, 1, 1),
(29, 13, 2, 2, 'https://images.unsplash.com/photo-1691902588918-2f44d73f6d8b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNzJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1650, '5335 Brody Dr UNIT 204', 53705, 0, 0, 0, 1, 1, 1, 1),
(30, 1, 1, 0, 'https://images.unsplash.com/photo-1493809842364-78817add7ffb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyfHxhcGFydG1lbnR8ZW58MHx8fHwxNzMzODc5MzgzfDA&ixlib=rb-4.0.3&q=80&w=1080', 2000, '722 Ruskin St SUITE B', 53704, 0, 1, 0, 0, 0, 1, 1),
(31, 12, 1, 1, 'https://images.unsplash.com/photo-1502266396468-2df8ec051ea0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNTV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1230, '941 E Gorham St APT 4', 53703, 1, 0, 1, 0, 1, 0, 1),
(32, 1, 1, 1, 'https://images.unsplash.com/photo-1499916078039-922301b0eb9b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzfHxhcGFydG1lbnR8ZW58MHx8fHwxNzMzODc5MzgzfDA&ixlib=rb-4.0.3&q=80&w=1080', 1100, '902 E Johnson St #3', 53703, 1, 1, 0, 0, 1, 0, 0),
(33, 27, 1, 3, 'https://images.unsplash.com/photo-1488546881144-bac05b0f3e65?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNDl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1650, '703 E Gorham St APT 3', 53703, 1, 1, 1, 1, 1, 0, 1),
(34, 2, 1, 0, 'https://images.unsplash.com/photo-1529408632839-a54952c491e5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxOHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 1295, '1227 Regent St #F & R', 53715, 0, 1, 1, 0, 0, 1, 1),
(35, 4, 1, 1, 'https://images.unsplash.com/photo-1490556561036-0361c1a00995?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw0OXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 980, '16 E Gorham St APT 1', 53703, 0, 1, 1, 0, 0, 1, 0),
(36, 18, 1, 2, 'https://images.unsplash.com/photo-1656025896899-a6dc62c770f9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMzl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1600, '6731 Park Edge Dr APT A', 53719, 1, 0, 0, 1, 1, 0, 0),
(37, 6, 1, 1, 'https://images.unsplash.com/photo-1475115688296-63fa31716337?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw3OHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 1105, '525 Moorland Rd #310', 53713, 0, 0, 1, 0, 0, 1, 0),
(38, 14, 1, 3, 'https://images.unsplash.com/photo-1732090710564-930fd2f8b296?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxODV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 2100, '1502 Williamson St', 53703, 0, 0, 1, 1, 0, 0, 1),
(39, 15, 2, 3, 'https://images.unsplash.com/photo-1610286986642-057ece0c3656?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMDN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 2200, '1029 Short St', 53715, 1, 0, 1, 1, 1, 0, 0),
(40, 25, 3, 4, 'https://images.unsplash.com/photo-1475415949483-6d6590e8d475?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMzF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2550, '7329 Blue Maple Trl', 53719, 1, 0, 1, 0, 1, 1, 0),
(41, 30, 1, 2, 'https://images.unsplash.com/photo-1515080436033-5724a92601d7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzOTB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2295, '811 Spaight St #3', 53703, 1, 0, 1, 0, 1, 0, 1),
(42, 28, 2, 3, 'https://images.unsplash.com/photo-1627471694823-d337d099138b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNTh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2300, '4509 Tennessee Trl', 53704, 0, 0, 0, 1, 0, 0, 0),
(43, 30, 2, 3, 'https://images.unsplash.com/photo-1632974059061-ffb87fa5013d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzOTF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTN8MA&ixlib=rb-4.0.3&q=80&w=1080', 1900, '1416 Prairie Rd', 53711, 1, 1, 0, 1, 0, 1, 1),
(44, 11, 2, 3, 'https://images.unsplash.com/photo-1521620112244-f1d36327c766?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMzl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 4200, '215 S Bedford St', 53703, 0, 1, 0, 0, 1, 0, 0),
(45, 1, 1, 2, 'https://images.unsplash.com/photo-1467043153537-a4fba2cd39ef?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw0fHxhcGFydG1lbnR8ZW58MHx8fHwxNzMzODc5MzgzfDA&ixlib=rb-4.0.3&q=80&w=1080', 1395, '1166 Petra Pl APT 8', 53713, 1, 1, 1, 0, 1, 1, 0),
(46, 4, 1, 3, 'https://images.unsplash.com/photo-1490122417551-6ee9691429d0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw1MHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 2095, '941 Dane St', 53713, 0, 1, 0, 0, 1, 1, 0),
(47, 25, 3, 4, 'https://images.unsplash.com/photo-1485700822982-6fffdf079c1a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMzJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2595, '809 Amnicon Trl', 53718, 1, 0, 0, 0, 1, 0, 1),
(48, 12, 1, 2, 'https://images.unsplash.com/photo-1502639446168-0a1124e06354?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNTZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1950, '701 W Lakeside St #1', 53715, 0, 1, 0, 1, 0, 1, 0),
(49, 24, 1, 0, 'https://images.unsplash.com/photo-1523284996692-73bf0060ecfa?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMTZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 875, '3917 Lien Rd #150', 53704, 1, 1, 1, 0, 1, 1, 0),
(50, 10, 1, 2, 'https://images.unsplash.com/photo-1519051055036-2dccc830edc5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMzF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1700, '(undisclosed Address)', 53704, 1, 0, 0, 1, 0, 1, 1),
(51, 11, 2, 3, 'https://images.unsplash.com/photo-1695724112297-3665b4d6531f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNDB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 3800, '613 Chatham Ter', 53711, 1, 1, 1, 0, 1, 1, 1),
(52, 25, 1, 2, 'https://images.unsplash.com/photo-1534332215439-3ba410027504?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMzN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1600, '329 Kedzie St APT 2', 53704, 1, 0, 1, 0, 0, 0, 0),
(53, 21, 2, 3, 'https://images.unsplash.com/photo-1619025873617-7b8f12c37578?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNjl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 3000, '5518 Englewood Dr', 53705, 1, 0, 1, 1, 0, 0, 0),
(54, 13, 1, 1, 'https://images.unsplash.com/photo-1709145883296-4443310e3be0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNzN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1250, '1202 Chandler St #2', 53715, 0, 0, 0, 1, 1, 1, 1),
(55, 11, 1, 2, 'https://images.unsplash.com/photo-1710418561655-7a9460df902b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNDF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1990, '411 Paunack Pl #2014', 53726, 1, 0, 1, 0, 0, 0, 0),
(56, 28, 2, 3, 'https://images.unsplash.com/photo-1556983852-43bf21186b2a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNTl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2410, '6918-6922 Chester Dr #6918CH', 53719, 1, 0, 1, 1, 1, 0, 1),
(57, 28, 3, 3, 'https://images.unsplash.com/photo-1653974123072-cfb9d69725d9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNjB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2535, '4973-4975 Marsh Rd #4975CG', 53718, 1, 1, 1, 0, 1, 1, 0),
(58, 29, 3, 2, 'https://images.unsplash.com/photo-1653971858332-bf68a22f7e22?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNzZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2460, '8137-8139 Broadmoor St #8137BM', 53719, 1, 1, 1, 0, 1, 1, 0),
(59, 17, 1, 1, 'https://images.unsplash.com/photo-1663807946801-90e80df48b0b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMjd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2800, '143 American Pkwy #143', 53718, 0, 1, 0, 1, 1, 0, 0),
(60, 21, 1, 2, 'https://images.unsplash.com/photo-1472851342459-470a4dfa8a4b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNzB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1300, '407 W Doty St APT 3', 53703, 0, 0, 0, 1, 0, 1, 0),
(61, 2, 2, 2, 'https://images.unsplash.com/photo-1486304873000-235643847519?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxOXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 2700, '5030 Flambeau Rd', 53705, 0, 0, 0, 1, 0, 0, 0),
(62, 9, 3, 2, 'https://images.unsplash.com/photo-1528255671579-01b9e182ed1d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMTl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2555, '153 Dayton Row', 53703, 0, 0, 0, 1, 1, 0, 1),
(63, 21, 1, 0, 'https://images.unsplash.com/photo-1623278903309-bd6066bc57e0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNzF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 885, '7502 Westward Way', 53717, 0, 1, 0, 1, 0, 1, 1),
(64, 6, 3, 3, 'https://images.unsplash.com/photo-1532578664190-cce8f2d9b4d3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw3OXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 2699, '793 Sky Ridge Dr', 53719, 0, 0, 1, 1, 1, 0, 1),
(65, 14, 1, 2, 'https://images.unsplash.com/photo-1681039580747-569f9cd54858?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxODZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1600, '717 Glenway St #2', 53711, 1, 1, 1, 0, 0, 0, 0),
(66, 23, 1, 2, 'https://images.unsplash.com/photo-1499846461897-8686c5b7ddb9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyOTl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 1600, '3312 Milwaukee St APT 4', 53714, 0, 0, 1, 0, 1, 0, 0),
(67, 9, 1, 1, 'https://images.unsplash.com/photo-1600705722756-4d0abb287cd1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMjB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1835, '2550 University Ave', 53705, 0, 0, 0, 1, 0, 1, 1),
(68, 2, 1, 2, 'https://images.unsplash.com/photo-1494458453337-e9062e968178?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 1100, '2201 Catalpa Rd APT D', 53713, 1, 1, 0, 0, 0, 0, 1),
(69, 12, 3, 2, 'https://images.unsplash.com/photo-1516707777878-caf57fb63951?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNTd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 2050, '7131 Discovery Ln', 53719, 0, 1, 1, 0, 0, 0, 1),
(70, 20, 1, 3, 'https://images.unsplash.com/photo-1656727067396-b8bf45581fba?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNjB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2250, '403 W Main St', 53703, 1, 1, 1, 0, 0, 1, 0),
(71, 29, 1, 2, 'https://images.unsplash.com/photo-1661796428215-04fc2830aae6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNzd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2145, '318 W Gorham St #6386484', 53703, 0, 0, 0, 0, 0, 0, 0),
(72, 11, 3, 3, 'https://images.unsplash.com/photo-1542285902-ed0cf6c8d617?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNDJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 2195, '7655 Farmington Way #0', 53717, 0, 1, 0, 1, 0, 1, 1),
(73, 6, 1, 2, 'https://images.unsplash.com/photo-1472691522854-dc5db7884168?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw4MHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 1900, '134 Ohio Ave', 53704, 0, 1, 0, 0, 0, 0, 1),
(74, 29, 1, 4, 'https://images.unsplash.com/photo-1719451461624-27871cca168b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNzh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2485, '207 N Pinckney St #STREET207-1', 53703, 0, 1, 0, 1, 0, 0, 0),
(75, 5, 1, 2, 'https://images.unsplash.com/photo-1528827816431-d3f46a4427f7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw2MXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 2095, '445 W Dayton St APT 2', 53703, 0, 0, 1, 0, 1, 0, 0),
(76, 24, 4, 10, 'https://images.unsplash.com/photo-1627811732414-45c003f9eeec?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMTd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 10500, '504 N Carroll St #1-10', 53703, 1, 1, 1, 0, 0, 0, 0),
(77, 4, 1, 0, 'https://images.unsplash.com/photo-1490309465502-86ef8656e567?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw1MXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 990, '106 S Hancock St #2576306', 53703, 0, 1, 0, 1, 1, 1, 0),
(78, 30, 1, 2, 'https://images.unsplash.com/photo-1516641396056-0ce60a85d49f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzOTJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTN8MA&ixlib=rb-4.0.3&q=80&w=1080', 1750, '1154 Jenifer St #11898052', 53703, 0, 1, 0, 0, 1, 0, 1),
(79, 7, 2, 1, 'https://images.unsplash.com/photo-1534604554657-0581d533ef41?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw5MHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 2200, '654 E Johnson St', 53703, 0, 0, 1, 0, 0, 1, 1),
(80, 23, 1, 2, 'https://images.unsplash.com/photo-1525679294577-23da0a2bf841?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMDB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 1200, '1134-48 Petra Pl #4', 53713, 1, 1, 1, 0, 1, 1, 1),
(81, 5, 2, 4, 'https://images.unsplash.com/photo-1534113356284-9aa4ea943778?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw2Mnx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 3200, '105 Richland Ln', 53705, 1, 0, 1, 1, 1, 0, 0),
(82, 14, 2, 2, 'https://images.unsplash.com/photo-1684996487240-065dc5be41af?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxODd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1600, '136 N Lakewood Gardens Ln', 53704, 0, 1, 1, 0, 0, 0, 1),
(83, 14, 1, 2, 'https://images.unsplash.com/photo-1689592609292-69e2344f0ff1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxODh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1960, '825 E Gorham St #1', 53703, 1, 0, 0, 0, 0, 1, 0),
(84, 10, 1, 0, 'https://images.unsplash.com/photo-1543053927-0f3795a46e24?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMzJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1500, '514 E Mifflin St', 53703, 1, 1, 1, 1, 1, 1, 1),
(85, 23, 2, 3, 'https://images.unsplash.com/photo-1603133666754-7466b9d68ce8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMDF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 2400, '3073 Cimarron Trl', 53719, 1, 1, 1, 1, 0, 1, 1),
(86, 14, 1, 2, 'https://images.unsplash.com/photo-1681197841333-703c7bc2dcbb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxODl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1510, '204 N Pinckney St #12662409', 53703, 1, 0, 1, 1, 1, 0, 1),
(87, 2, 1, 0, 'https://images.unsplash.com/photo-1515263487990-61b07816b324?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 1150, '3080 State Highway Dm #4124573', 53713, 0, 1, 1, 0, 1, 1, 1),
(88, 24, 1, 1, 'https://images.unsplash.com/photo-1634502013177-d52491a2bfc7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMTh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1270, '1207-1217 E Wilson St #14713103', 53703, 1, 1, 1, 0, 0, 1, 1),
(89, 17, 1, 2, 'https://images.unsplash.com/photo-1582731489422-b48dce6916a6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMjh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2300, '5726 Bittersweet Pl', 53705, 0, 1, 1, 0, 0, 1, 0),
(90, 20, 2, 3, 'https://images.unsplash.com/photo-1658464402236-aa829e6daf5a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNjF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2195, '5219 Trafalger Pl', 53714, 0, 0, 1, 1, 0, 1, 0),
(91, 15, 2, 3, 'https://images.unsplash.com/photo-1680724865725-6b8963f99975?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMDR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 2500, '1209 Rutledge St', 53703, 0, 0, 1, 1, 0, 0, 1),
(92, 30, 1, 1, 'https://images.unsplash.com/photo-1574800034994-eb34bd3d3f5b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzOTN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTN8MA&ixlib=rb-4.0.3&q=80&w=1080', 1095, '(undisclosed Address)', 53711, 0, 1, 0, 1, 1, 1, 0),
(93, 28, 1, 1, 'https://images.unsplash.com/photo-1620700230864-3152d2b0eb53?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNjF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1180, '137 Capitol View Ter APT 2', 53713, 1, 0, 1, 0, 1, 0, 0),
(94, 21, 1, 1, 'https://images.unsplash.com/photo-1732090711222-e5b82cc6818c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNzJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 1195, '4332 Melody Ln UNIT 111', 53704, 0, 0, 1, 1, 1, 1, 0),
(95, 29, 1, 1, 'https://images.unsplash.com/photo-1552954877-e96a0f0728c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNzl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1195, '529-533 McCormick Ave #14658317', 53704, 1, 0, 0, 0, 1, 1, 0),
(96, 22, 1, 3, 'https://images.unsplash.com/photo-1708168583024-ab1826128190?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyODR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 1545, '1024 Fiedler Ln APT 1', 53713, 1, 0, 1, 0, 0, 0, 1),
(97, 23, 1, 1, 'https://images.unsplash.com/photo-1506265641542-1f3fd9066e92?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMDJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1125, '1023 Fiedler Ln APT 8', 53713, 1, 0, 0, 0, 1, 1, 1),
(98, 29, 1, 1, 'https://images.unsplash.com/photo-1701817059860-e99a0865f8a1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzODB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 850, '710 Dexter St #2', 53704, 1, 0, 0, 0, 1, 1, 1),
(99, 6, 1, 3, 'https://images.unsplash.com/photo-1485819196298-11222a657b31?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw4MXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 2035, '1215 Mound St #2', 53715, 1, 1, 1, 1, 1, 1, 1),
(100, 29, 1, 1, 'https://images.unsplash.com/photo-1663293761258-c167c852bb0d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzODF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1050, '922 Melvin Ct #2', 53704, 0, 0, 1, 0, 1, 1, 0),
(101, 7, 2, 3, 'https://images.unsplash.com/photo-1509660933844-6910e12765a0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw5MXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4Nnww&ixlib=rb-4.0.3&q=80&w=1080', 2900, '1401 W Skyline Dr', 53705, 0, 0, 1, 0, 1, 1, 0),
(102, 20, 3, 3, 'https://images.unsplash.com/photo-1680724864457-df084e3160d4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNjJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2995, '1513 Longview St', 53704, 0, 0, 0, 0, 1, 1, 1),
(103, 6, 1, 0, 'https://images.unsplash.com/photo-1527232165582-78c982a1cad1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw4Mnx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 550, '2019 Sherman Ave #16490030', 53704, 1, 0, 0, 0, 0, 0, 1),
(104, 14, 1, 2, 'https://images.unsplash.com/photo-1713359003488-53609bbd95c7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxOTB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1650, '827 Dane St #2', 53713, 1, 1, 0, 0, 1, 1, 0),
(105, 3, 1, 2, 'https://images.unsplash.com/photo-1509647924673-bbb53e22eeb8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzN3x8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 1995, '1714 Rowland Ave', 53704, 0, 0, 1, 0, 1, 0, 0),
(106, 27, 3, 3, 'https://images.unsplash.com/photo-1530460570660-c2760987beb6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNTB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2750, '3041 Bradbury Rd', 53719, 1, 0, 0, 0, 0, 1, 0),
(107, 18, 1, 3, 'https://images.unsplash.com/photo-1641289426957-1748d0b5de04?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNDB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1995, '5534 Larry Ln', 53704, 0, 1, 0, 1, 0, 0, 0),
(108, 21, 4, 3, 'https://images.unsplash.com/photo-1629294879990-316e6bb1ad91?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNzN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 2900, '3010 Winter Park Pl', 53719, 0, 1, 0, 1, 1, 1, 0),
(109, 24, 2, 2, 'https://images.unsplash.com/photo-1680919838857-d54e011093d3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMTl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1479, '1401 McKenna Blvd #2', 53711, 0, 1, 0, 1, 1, 1, 0),
(110, 20, 3, 3, 'https://images.unsplash.com/photo-1574284664302-127c16f0cc11?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNjN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2400, '2107 Carver St #1', 53713, 0, 0, 1, 1, 1, 0, 1),
(111, 30, 1, 1, 'https://images.unsplash.com/photo-1684520976246-024aae3d8158?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzOTR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTN8MA&ixlib=rb-4.0.3&q=80&w=1080', 1090, '229 N Marquette St #B', 53704, 1, 0, 0, 1, 0, 1, 0),
(112, 12, 2, 2, 'https://images.unsplash.com/photo-1518462334125-9683302994df?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNTh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1600, '825 N Gammon Rd', 53717, 0, 1, 0, 0, 1, 0, 0),
(113, 12, 1, 2, 'https://images.unsplash.com/photo-1719579019072-96e65b294301?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNTl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1645, '413 S Charter St #2', 53715, 1, 0, 1, 0, 1, 1, 1),
(114, 27, 1, 2, 'https://images.unsplash.com/photo-1419454073861-6e5bccea68ae?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNTF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1825, '108 S Bassett St #7909000', 53703, 0, 0, 1, 0, 0, 0, 0),
(115, 26, 1, 2, 'https://images.unsplash.com/photo-1478774982626-3fa098a394e1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNDJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1595, '110 S Bassett St #4017251', 53703, 0, 0, 0, 0, 1, 0, 1),
(116, 22, 1, 0, 'https://images.unsplash.com/photo-1516069429726-51d80d545cbf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyODV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 1075, '126 S Franklin St APT 2B', 53703, 1, 1, 0, 0, 0, 0, 1),
(117, 30, 1, 1, 'https://images.unsplash.com/photo-1655258103845-b17785ce8972?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzOTV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTN8MA&ixlib=rb-4.0.3&q=80&w=1080', 1745, '1917 Monroe St #312', 53711, 1, 1, 0, 1, 0, 1, 0),
(118, 15, 1, 2, 'https://images.unsplash.com/photo-1617341623760-1919df79274c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMDV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1250, '12 Morrow Ct', 53704, 0, 0, 0, 1, 0, 1, 1),
(119, 15, 2, 4, 'https://images.unsplash.com/photo-1645106718432-c77e7e098ea9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMDZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 3575, '120 N Franklin St #2', 53703, 1, 0, 0, 1, 0, 0, 1),
(120, 2, 1, 2, 'https://images.unsplash.com/photo-1531383339897-f369f6422e40?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMnx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 1650, '4602 Martha Ln', 53714, 1, 0, 0, 1, 1, 0, 1),
(121, 15, 2, 5, 'https://images.unsplash.com/photo-1600664248836-bdeeb2d2b77e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMDd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 4494, '1202 Spring St #B', 53715, 0, 1, 1, 0, 0, 0, 0),
(122, 14, 1, 2, 'https://images.unsplash.com/photo-1703929119947-72e4d83b00a8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxOTF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1350, '215 Deer Valley Rd #7', 53713, 1, 0, 1, 0, 0, 1, 1),
(123, 9, 1, 2, 'https://images.unsplash.com/photo-1464288550599-43d5a73451b8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMjF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1525, '4542 Commercial Ave', 53714, 1, 1, 0, 1, 0, 1, 1),
(124, 25, 1, 1, 'https://images.unsplash.com/photo-1522126170624-c1b58813158f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMzR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1400, '415 S Few St', 53703, 1, 1, 1, 1, 0, 0, 1),
(125, 1, 1, 2, 'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw1fHxhcGFydG1lbnR8ZW58MHx8fHwxNzMzODc5MzgzfDA&ixlib=rb-4.0.3&q=80&w=1080', 1400, '4937 Whitcomb Dr #7', 53711, 1, 0, 1, 0, 1, 1, 0),
(126, 1, 1, 3, 'https://images.unsplash.com/photo-1499955085172-a104c9463ece?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw2fHxhcGFydG1lbnR8ZW58MHx8fHwxNzMzODc5MzgzfDA&ixlib=rb-4.0.3&q=80&w=1080', 2495, '22 S Franklin St', 53703, 1, 0, 0, 1, 1, 0, 0),
(127, 12, 1, 4, 'https://images.unsplash.com/photo-1705874930275-83ff45ad2ca6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNjB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 3295, '501 W Main St', 53703, 0, 1, 0, 1, 0, 1, 1),
(128, 1, 1, 3, 'https://images.unsplash.com/photo-1502672023488-70e25813eb80?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw3fHxhcGFydG1lbnR8ZW58MHx8fHwxNzMzODc5MzgzfDA&ixlib=rb-4.0.3&q=80&w=1080', 2250, '622 S Mills St', 53715, 0, 1, 1, 0, 0, 1, 0),
(129, 21, 1, 4, 'https://images.unsplash.com/photo-1535706830408-60fde3567409?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNzR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 2095, '321 E Johnson St', 53703, 0, 1, 1, 1, 0, 1, 1),
(130, 28, 1, 2, 'https://images.unsplash.com/photo-1600592858560-9fef0f602f40?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNjJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1675, '1126 Vilas Ave #4013935', 53715, 1, 1, 0, 1, 1, 0, 0),
(131, 24, 2, 4, 'https://images.unsplash.com/photo-1509047532910-60a033a1350d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMjB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 2950, '3717 Eliot Ln', 53704, 0, 0, 0, 1, 1, 0, 1),
(132, 12, 1, 2, 'https://images.unsplash.com/photo-1681197841670-834045674f78?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNjF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1850, '221 N Livingston St #15429710', 53703, 0, 1, 0, 1, 0, 0, 1),
(133, 7, 2, 5, 'https://images.unsplash.com/photo-1491315893496-ba88c5f640c3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw5Mnx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4Nnww&ixlib=rb-4.0.3&q=80&w=1080', 3725, '204 N Livingston St #10623102', 53703, 1, 0, 0, 1, 0, 0, 1),
(134, 21, 2, 4, 'https://images.unsplash.com/photo-1509715918772-5ba8de6d0cfa?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNzV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 4295, '548 W Main St #8768471', 53703, 0, 1, 1, 0, 0, 1, 0),
(135, 2, 1, 2, 'https://images.unsplash.com/photo-1529408686214-b48b8532f72c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyM3x8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 1675, '522 W Doty St', 53703, 1, 1, 1, 1, 1, 1, 0),
(136, 14, 1, 4, 'https://images.unsplash.com/photo-1732090712582-b15a760763d6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxOTJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1995, '430 W Doty St', 53703, 0, 1, 1, 1, 0, 0, 0),
(137, 30, 1, 3, 'https://images.unsplash.com/photo-1653972233597-05822baa3c4e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzOTZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTN8MA&ixlib=rb-4.0.3&q=80&w=1080', 2950, '2020 Kendall Ave #4013545', 53726, 1, 1, 1, 1, 1, 1, 1),
(138, 21, 1, 0, 'https://images.unsplash.com/photo-1528165863029-b0985cb510ac?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNzZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 1165, '1109 Vilas Ave #4017247', 53715, 1, 0, 0, 1, 0, 0, 1),
(139, 3, 1, 3, 'https://images.unsplash.com/photo-1501459530422-244942cf51f5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzOHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 2095, '917 E Johnson St', 53703, 1, 1, 0, 1, 1, 1, 1),
(140, 27, 1, 1, 'https://images.unsplash.com/photo-1525183877869-fb8338380d0b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNTJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1495, '1406 Drake St', 53711, 1, 0, 0, 1, 1, 0, 0),
(141, 27, 2, 2, 'https://images.unsplash.com/photo-1528545657093-2928f2e17013?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNTN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1825, '5831 Lupine Ln #4952640', 53718, 1, 0, 1, 1, 0, 0, 1),
(142, 13, 1, 2, 'https://images.unsplash.com/photo-1691902588772-c93ed83b7f38?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNzR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1895, '152 Rodney Ct', 53715, 1, 0, 0, 0, 0, 0, 0),
(143, 10, 3, 4, 'https://images.unsplash.com/photo-1541972177884-bd205febbfad?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMzN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 2000, '117 N Franklin Ave', 53705, 0, 0, 1, 1, 0, 0, 1),
(144, 7, 3, 4, 'https://images.unsplash.com/photo-1516003276715-4702ae06c970?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw5M3x8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4Nnww&ixlib=rb-4.0.3&q=80&w=1080', 3000, '4921 Marathon Dr', 53705, 1, 0, 0, 1, 0, 0, 1),
(145, 18, 2, 4, 'https://images.unsplash.com/photo-1635425510840-57c21121a858?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNDF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2795, '3430 Kingman Ln', 53719, 0, 1, 1, 1, 0, 1, 0),
(146, 14, 1, 1, 'https://images.unsplash.com/photo-1602860739770-4831c41e003d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxOTN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1200, '110 N Blair St #2', 53703, 1, 1, 0, 1, 0, 1, 0),
(147, 15, 1, 2, 'https://images.unsplash.com/photo-1730170788262-152f85b25171?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMDh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1400, '42 Northridge Ter APT 4', 53704, 0, 1, 0, 0, 1, 0, 0),
(148, 11, 1, 2, 'https://images.unsplash.com/photo-1658218729615-167c32d70537?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNDN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1953, '715 E Gorham St APT 3', 53703, 0, 1, 1, 1, 1, 0, 0),
(149, 5, 1, 0, 'https://images.unsplash.com/photo-1473742925119-519edfdba49d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw2M3x8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 1400, '821 Williamson St #306', 53703, 1, 0, 0, 1, 0, 0, 1),
(150, 5, 2, 2, 'https://images.unsplash.com/photo-1486591038957-19e7c73bdc41?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw2NHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 1400, '2500 Fiedler Ln APT 11', 53713, 1, 1, 1, 1, 0, 1, 0),
(151, 2, 2, 4, 'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 3000, '14 S Midvale Blvd', 53705, 1, 0, 1, 0, 0, 1, 1),
(152, 8, 1, 1, 'https://images.unsplash.com/photo-1529998648927-793aacd33d1e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMDV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1465, '128 W Gilman St #1B-1BA', 53703, 1, 0, 0, 0, 0, 1, 0),
(153, 22, 1, 1, 'https://images.unsplash.com/photo-1484208666570-518513c5a05b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyODZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 1270, '504 N Henry St #1B-1BA', 53703, 0, 1, 0, 0, 1, 0, 1),
(154, 4, 1, 0, 'https://images.unsplash.com/photo-1472806215488-02c49f97bb5a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw1Mnx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 1215, '104 E Gilman St #0B-1BA', 53703, 0, 0, 1, 0, 1, 0, 1),
(155, 23, 1, 1, 'https://images.unsplash.com/photo-1722492559309-8f235c08975d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMDN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1195, '118 W Johnson St #1B-1BA', 53703, 0, 1, 1, 1, 1, 1, 0),
(156, 28, 1, 1, 'https://images.unsplash.com/photo-1645081929991-cce4db276104?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNjN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1200, '2222 Independence Ln UNIT 16', 53704, 1, 0, 1, 1, 0, 1, 0),
(157, 28, 2, 3, 'https://images.unsplash.com/photo-1661796428177-ab7abcc2aa5a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNjR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2100, '222 Merry St APT 5', 53704, 1, 1, 1, 1, 1, 0, 1),
(158, 7, 1, 1, 'https://images.unsplash.com/photo-1503472181089-15157a973a5c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw5NHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4Nnww&ixlib=rb-4.0.3&q=80&w=1080', 1450, '615 Pine St #2', 53715, 1, 1, 1, 1, 0, 1, 0),
(159, 14, 1, 4, 'https://images.unsplash.com/photo-1727583118338-456c300bfd4d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxOTR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1750, '334 W Wilson St #1', 53703, 1, 0, 0, 1, 0, 0, 1),
(160, 30, 2, 2, 'https://images.unsplash.com/photo-1655988940601-7702d8685f95?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzOTd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTN8MA&ixlib=rb-4.0.3&q=80&w=1080', 3250, '524 W Shore Dr', 53715, 0, 0, 0, 1, 0, 0, 0),
(161, 7, 2, 2, 'https://images.unsplash.com/photo-1533179660807-a52395618a9b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw5NXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4Nnww&ixlib=rb-4.0.3&q=80&w=1080', 1725, '3156 Muir Field Rd #3148-306', 53719, 1, 0, 0, 0, 0, 0, 0),
(162, 18, 3, 2, 'https://images.unsplash.com/photo-1636810163038-5d8d8996c561?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNDJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2000, '7123 Discovery Ln', 53719, 0, 0, 0, 0, 1, 0, 0),
(163, 13, 1, 1, 'https://images.unsplash.com/photo-1714646581400-6df6797b2af2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNzV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1379, '6749 Hammersley Rd #3', 53711, 0, 0, 1, 1, 1, 1, 0),
(164, 28, 4, 3, 'https://images.unsplash.com/photo-1650138318699-a7916aced967?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNjV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2725, '7313 Secret Bluff Dr', 53719, 1, 0, 1, 0, 0, 0, 1),
(165, 30, 2, 3, 'https://images.unsplash.com/photo-1566508160525-b8913592a593?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzOTh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTN8MA&ixlib=rb-4.0.3&q=80&w=1080', 2650, '4414 Somerset Ln', 53711, 0, 1, 0, 0, 1, 1, 0),
(166, 23, 1, 2, 'https://images.unsplash.com/photo-1731611538357-7e0eb6644c27?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMDR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1200, '2 S Fair Oaks Ave APT 4', 53714, 0, 1, 1, 0, 1, 1, 1),
(167, 30, 2, 2, 'https://images.unsplash.com/photo-1727785613082-282326900911?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzOTl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTN8MA&ixlib=rb-4.0.3&q=80&w=1080', 1500, '2233 Luann Ln APT 2', 53713, 0, 0, 0, 0, 1, 0, 0),
(168, 14, 1, 0, 'https://images.unsplash.com/photo-1660052844755-88521bd98527?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxOTV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 999, '1912 Birge Ter APT 2', 53726, 0, 0, 0, 1, 0, 0, 1),
(169, 7, 2, 3, 'https://images.unsplash.com/photo-1492138645880-160f6a5136fa?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw5Nnx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4Nnww&ixlib=rb-4.0.3&q=80&w=1080', 2450, '937 Clarence Ct', 53715, 0, 1, 1, 0, 0, 1, 1),
(170, 14, 4, 12, 'https://images.unsplash.com/photo-1694706196071-fe7736191b6d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxOTZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 8995, '1726 Hoyt St', 53726, 1, 0, 0, 1, 0, 0, 1),
(171, 4, 1, 3, 'https://images.unsplash.com/photo-1531986843419-b19c72e2fe6e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw1M3x8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 2100, '1718 Martin St UNIT 2', 53713, 0, 1, 1, 0, 1, 0, 1),
(172, 6, 3, 3, 'https://images.unsplash.com/photo-1502612364452-6b25b2701e2f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw4M3x8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 2800, '2709 Post Rd', 53713, 0, 0, 0, 0, 0, 0, 0),
(173, 17, 1, 3, 'https://images.unsplash.com/photo-1651752523215-9bf678c29355?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMjl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2500, '20 Brompton Cir', 53711, 1, 0, 0, 1, 1, 1, 0),
(174, 2, 1, 1, 'https://images.unsplash.com/photo-1484154218962-a197022b5858?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 1135, '1001 S Brooks St #4', 53715, 1, 0, 0, 0, 0, 1, 1),
(175, 7, 1, 2, 'https://images.unsplash.com/photo-1448540070421-656189681da5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw5N3x8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4Nnww&ixlib=rb-4.0.3&q=80&w=1080', 1200, '1717 Onsgard Rd #17720999', 53704, 0, 0, 0, 1, 1, 0, 0),
(176, 21, 3, 9, 'https://images.unsplash.com/photo-1474093828191-04f9d7ce040d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNzd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 8550, '515 W Washington Ave', 53703, 0, 1, 1, 1, 0, 1, 0);
INSERT INTO `apartments` (`apartment_id`, `landlord_id`, `bathrooms`, `bedrooms`, `imgURL`, `price`, `streetAddress`, `zipcode`, `parking`, `pets`, `RI`, `heat`, `ac`, `washdry`, `dishwasher`) VALUES
(177, 8, 2, 3, 'https://images.unsplash.com/photo-1519322308203-4a49330b5c06?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMDZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2900, '718 Parman Ter', 53711, 0, 0, 0, 1, 1, 0, 0),
(178, 29, 2, 2, 'https://images.unsplash.com/photo-1488972685288-c3fd157d7c7a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzODJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1495, '4002 Bruns Ave', 53714, 0, 0, 1, 0, 0, 1, 1),
(179, 2, 1, 2, 'https://images.unsplash.com/photo-1421941027568-40ab08ee5592?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNnx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 1255, '917 Magnolia Ln #B', 53713, 0, 1, 1, 0, 0, 1, 1),
(180, 22, 1, 2, 'https://images.unsplash.com/photo-1623171736835-e9ef57d4425e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyODd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 1500, '152 E Gorham St #1', 53703, 0, 0, 1, 0, 0, 0, 1),
(181, 8, 1, 1, 'https://images.unsplash.com/photo-1486748719772-dac71e23eaa1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMDd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1250, '721 Pinecrest Dr #1', 53714, 0, 1, 0, 1, 0, 1, 0),
(182, 18, 1, 3, 'https://images.unsplash.com/photo-1656025896905-e82e6aca73a2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNDN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 3206, '3105 Worthington Ave', 53714, 1, 0, 0, 1, 0, 1, 1),
(183, 8, 2, 2, 'https://images.unsplash.com/photo-1506522457281-97da410743d3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMDh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1230, '1959 E Mifflin St #14943497', 53704, 0, 1, 0, 1, 1, 0, 0),
(184, 3, 1, 2, 'https://images.unsplash.com/photo-1495433324511-bf8e92934d90?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzOXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 1895, '114 W Olin Ave', 53715, 0, 1, 1, 0, 1, 0, 1),
(185, 21, 1, 1, 'https://images.unsplash.com/photo-1647527269878-d3c7b033ba2c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNzh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 1700, '5100 Silvertree Run #300', 53705, 1, 1, 0, 1, 0, 0, 0),
(186, 11, 2, 2, 'https://images.unsplash.com/photo-1658218635253-64728f6234be?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNDR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 2495, '1813 Kropf Ave', 53704, 0, 1, 0, 1, 0, 0, 1),
(187, 9, 1, 1, 'https://images.unsplash.com/photo-1469032923574-4f1413034019?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMjJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1050, '1709 Onsgard Rd #17701238', 53704, 1, 0, 1, 1, 0, 0, 0),
(188, 28, 2, 3, 'https://images.unsplash.com/photo-1680697577780-5cc7d8ba8962?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNjZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2500, '24 Brompton Cir', 53711, 0, 0, 0, 1, 0, 0, 1),
(189, 5, 1, 3, 'https://images.unsplash.com/photo-1533929702053-9986939ea193?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw2NXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 1700, '213 N Hamilton St APT 1N', 53703, 0, 1, 0, 1, 0, 0, 1),
(190, 29, 1, 2, 'https://images.unsplash.com/photo-1551806406-3d0835050227?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzODN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1550, '303 Princeton Ave #3947433', 53726, 0, 0, 0, 0, 1, 0, 0),
(191, 14, 1, 1, 'https://images.unsplash.com/photo-1645106718022-a6dcba953b51?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxOTd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1400, '2408 Kendall Ave #3947426', 53726, 0, 1, 1, 1, 1, 0, 1),
(192, 5, 2, 4, 'https://images.unsplash.com/photo-1523192159590-edbd468b9518?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw2Nnx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 3950, '141 E Gorham St APT 2', 53703, 0, 1, 0, 1, 0, 0, 0),
(193, 3, 1, 3, 'https://images.unsplash.com/photo-1461828813484-4a99a0fddf40?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw0MHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 3000, '2529 Commercial Ave #2', 53704, 0, 1, 0, 0, 0, 1, 0),
(194, 12, 1, 2, 'https://images.unsplash.com/photo-1721623905125-af5f7b7fb18b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNjJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1425, '4670 Hayes Rd', 53704, 0, 0, 0, 1, 0, 1, 1),
(195, 3, 1, 3, 'https://images.unsplash.com/photo-1508587778265-ec18342abc66?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw0MXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 2000, '501 Algoma St', 53704, 0, 0, 0, 1, 1, 1, 1),
(196, 22, 2, 3, 'https://images.unsplash.com/photo-1584988321985-4392b2b40e25?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyODh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 2175, '5017 Tokay Blvd', 53711, 0, 1, 0, 1, 1, 1, 1),
(197, 9, 1, 1, 'https://images.unsplash.com/photo-1533782045316-555ee4cf4c06?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMjN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 2250, '807 & 825 E Mifflin St #406', 53703, 1, 0, 0, 0, 1, 1, 0),
(198, 13, 2, 2, 'https://images.unsplash.com/photo-1686772664728-cf3db6017d52?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNzZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1500, '9 Woodridge Ct APT 5', 53704, 0, 1, 1, 0, 1, 1, 0),
(199, 8, 1, 0, 'https://images.unsplash.com/photo-1531020192069-d56a71272be4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMDl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 995, '622 Howard Pl #F', 53703, 0, 0, 1, 0, 0, 0, 0),
(200, 4, 1, 2, 'https://images.unsplash.com/photo-1471551533078-82c5761775dd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw1NHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 1440, '30 Goldenrod Ln', 53719, 0, 0, 0, 1, 1, 1, 1),
(201, 24, 1, 2, 'https://images.unsplash.com/photo-1656877789912-5cc6b47f40c3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMjF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1795, '1213 Vilas Ave', 53715, 1, 1, 1, 0, 0, 0, 0),
(202, 24, 3, 7, 'https://images.unsplash.com/photo-1614057695465-14b7b7a798ae?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMjJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 6300, '412 W Main St #17573613', 53703, 0, 0, 0, 1, 1, 0, 1),
(203, 6, 1, 3, 'https://images.unsplash.com/photo-1516646878057-11a11c9372fd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw4NHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 1795, '1431 Loreen Dr', 53711, 1, 1, 0, 0, 1, 0, 1),
(204, 16, 1, 2, 'https://images.unsplash.com/photo-1614331358939-7ff75e9e9dd3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMTV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1495, '1433 Loreen Dr', 53711, 1, 0, 1, 1, 0, 0, 1),
(205, 30, 1, 1, 'https://images.unsplash.com/photo-1601272237586-e39f3d239951?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw0MDB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTN8MA&ixlib=rb-4.0.3&q=80&w=1080', 1525, '3554 Johns St', 53714, 1, 1, 1, 0, 1, 1, 0),
(206, 23, 2, 2, 'https://images.unsplash.com/photo-1731611538723-7aee2e64e2d3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMDV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1750, '2942 Holborn Cir', 53718, 1, 0, 1, 0, 0, 0, 0),
(207, 12, 3, 4, 'https://images.unsplash.com/photo-1732090710605-7f1a21d71666?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNjN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 3650, '4322 Keating Ter', 53711, 0, 0, 0, 1, 1, 1, 0),
(208, 22, 1, 4, 'https://images.unsplash.com/photo-1600827454749-2575619d682c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyODl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 2700, '916 Vilas Ave #935-A', 53715, 1, 0, 0, 0, 1, 1, 0),
(209, 6, 2, 4, 'https://images.unsplash.com/photo-1494512163437-5d01c88c0e5a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw4NXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 3250, '111 E Gorham St APT 4', 53703, 1, 0, 0, 1, 0, 1, 1),
(210, 5, 1, 3, 'https://images.unsplash.com/photo-1482042519045-a51ea0cfb61d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw2N3x8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 1950, '110 S Blair St #1', 53703, 0, 1, 0, 0, 0, 1, 0),
(211, 9, 1, 2, 'https://images.unsplash.com/photo-1523318171868-b73cd0c70c68?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMjR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1695, '165 Division St #2', 53704, 0, 0, 1, 0, 0, 0, 1),
(212, 13, 2, 2, 'https://images.unsplash.com/photo-1708164336115-d9977c72ebd3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNzd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1750, '705 N Thompson Dr APT 3', 53704, 0, 0, 1, 1, 1, 1, 0),
(213, 10, 2, 2, 'https://images.unsplash.com/photo-1492659991124-ba70990ba2f4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMzR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1595, '42 Park Heights Ct APT 3', 53711, 1, 1, 0, 1, 0, 1, 1),
(214, 27, 1, 3, 'https://images.unsplash.com/photo-1683293567554-e2814fd6736d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNTR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1975, '2817 Union St', 53704, 0, 0, 0, 1, 0, 1, 0),
(215, 28, 1, 3, 'https://images.unsplash.com/photo-1708127665466-1f9a166a24c8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNjd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2100, '217 N Livingston St', 53703, 1, 1, 1, 0, 1, 1, 0),
(216, 9, 2, 2, 'https://images.unsplash.com/photo-1498450067505-1e6cec4224fc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMjV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 2200, '5437 Esther Beach Rd', 53713, 0, 0, 0, 0, 0, 0, 0),
(217, 8, 3, 3, 'https://images.unsplash.com/photo-1502455887060-a914f3555391?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMTB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2950, '6410 Driscoll Dr', 53718, 1, 0, 1, 0, 0, 0, 1),
(218, 26, 1, 3, 'https://images.unsplash.com/photo-1535007135893-61091db8c179?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNDN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2400, '514 E Johnson St #2', 53703, 0, 1, 1, 1, 0, 0, 1),
(219, 1, 2, 3, 'https://images.unsplash.com/photo-1690987601363-83022d125159?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw4fHxhcGFydG1lbnR8ZW58MHx8fHwxNzMzODc5MzgzfDA&ixlib=rb-4.0.3&q=80&w=1080', 2399, '5134 Pepin Pl', 53705, 1, 1, 1, 1, 0, 1, 1),
(220, 25, 1, 1, 'https://images.unsplash.com/photo-1445233476082-3d17ccb8b29f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMzV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1095, '3710-3714 Packers Ave #17663418', 53704, 0, 1, 1, 0, 0, 1, 0),
(221, 19, 1, 2, 'https://images.unsplash.com/photo-1647527237466-2ca4e19c2034?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNTF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1350, '1110 N Sherman Ave #10347090', 53704, 1, 1, 0, 1, 0, 1, 1),
(222, 13, 1, 3, 'https://images.unsplash.com/photo-1732090712486-54caae6c2480?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNzh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1233, '513 W Mifflin St UNIT 1', 53703, 1, 1, 0, 0, 1, 1, 0),
(223, 5, 1, 2, 'https://images.unsplash.com/photo-1541321987399-ddf3f3355dfa?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw2OHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 1150, '1340 E Dayton St APT 1', 53703, 1, 0, 1, 0, 1, 1, 0),
(224, 6, 1, 2, 'https://images.unsplash.com/photo-1501877008226-4fca48ee50c1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw4Nnx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 1950, '2039 Winnebago St APT 2', 53704, 0, 1, 1, 0, 0, 1, 1),
(225, 4, 2, 5, 'https://images.unsplash.com/photo-1542142608-a72920c0c114?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw1NXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 4750, '8 N Broom St APT 2', 53703, 1, 0, 0, 1, 0, 1, 0),
(226, 21, 2, 3, 'https://images.unsplash.com/photo-1697371024440-e2eeb40b80ed?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNzl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 2400, '2 Sonora Ct', 53719, 1, 0, 0, 0, 1, 0, 1),
(227, 12, 1, 2, 'https://images.unsplash.com/photo-1678919624924-3e97768b2c2e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNjR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1580, '641 W Main St #5738247', 53703, 1, 1, 0, 1, 0, 1, 1),
(228, 3, 1, 3, 'https://images.unsplash.com/photo-1525953776754-6c4b7ee655ab?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw0Mnx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 2600, '4202 Mineral Point Rd', 53705, 0, 0, 1, 0, 1, 1, 0),
(229, 21, 2, 1, 'https://images.unsplash.com/photo-1645621929515-099bb957569f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyODB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 2495, '123 W Washington Ave UNIT 706', 53703, 1, 1, 0, 1, 0, 1, 1),
(230, 1, 2, 4, 'https://images.unsplash.com/photo-1501876725168-00c445821c9e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw5fHxhcGFydG1lbnR8ZW58MHx8fHwxNzMzODc5MzgzfDA&ixlib=rb-4.0.3&q=80&w=1080', 4407, '211 W Gilman St #1E', 53703, 0, 1, 0, 1, 1, 0, 0),
(231, 20, 2, 4, 'https://images.unsplash.com/photo-1595320078268-43862afaa9a5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNjR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 4549, '549 Conklin Pl', 53703, 1, 0, 0, 1, 0, 0, 0),
(232, 19, 1, 3, 'https://images.unsplash.com/photo-1622638374225-a889b878ed12?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNTJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2980, '121 N Bedford St', 53703, 1, 1, 0, 0, 1, 1, 0),
(233, 19, 1, 2, 'https://images.unsplash.com/photo-1645107366525-44c7cb89c71f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNTN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1550, '2031 Sherman Ave #15160483', 53704, 0, 0, 1, 0, 1, 1, 1),
(234, 16, 3, 3, 'https://images.unsplash.com/photo-1536825934444-6c8b6efc5a6e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMTZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2700, '(undisclosed Address)', 53713, 1, 1, 0, 0, 0, 1, 0),
(235, 28, 1, 2, 'https://images.unsplash.com/photo-1630699294887-fa8852095404?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNjh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1595, '3202 Quincy Ave', 53704, 0, 1, 1, 0, 0, 0, 0),
(236, 9, 1, 1, 'https://images.unsplash.com/photo-1510295892303-a94d83c5a85a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMjZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1189, '434 W Mifflin St #28282', 53703, 1, 0, 1, 1, 1, 1, 1),
(237, 11, 2, 2, 'https://images.unsplash.com/photo-1583781087045-83417258d698?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNDV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1450, '1517 Martin St #17647568', 53713, 1, 1, 0, 1, 0, 0, 0),
(238, 1, 1, 1, 'https://images.unsplash.com/photo-1556020685-ae41abfc9365?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 1125, '1019 Fiedler Ln APT 6', 53713, 1, 0, 0, 1, 0, 1, 0),
(239, 17, 2, 4, 'https://images.unsplash.com/photo-1723460040907-03ce61cb3c37?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMzB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 3575, '122 N Franklin St', 53703, 0, 1, 1, 0, 0, 0, 1),
(240, 20, 2, 5, 'https://images.unsplash.com/photo-1708095540249-f0977b6c9f09?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNjV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 3995, '126 N Franklin St', 53703, 1, 1, 0, 1, 1, 0, 0),
(241, 22, 1, 3, 'https://images.unsplash.com/photo-1658962183977-cdfcf7b20d47?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyOTB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 2695, '124 N Franklin St APT 1', 53703, 0, 0, 1, 0, 1, 1, 0),
(242, 3, 1, 0, 'https://images.unsplash.com/photo-1520106392146-ef585c111254?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw0M3x8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 2138, '723 Jenifer St #B-1BA-300SQFT', 53703, 0, 1, 0, 0, 1, 1, 1),
(243, 18, 2, 3, 'https://images.unsplash.com/photo-1629257670377-65b4377777d9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNDR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2460, '3709 Hillcrest Dr', 53705, 0, 0, 1, 0, 1, 1, 0),
(244, 23, 1, 1, 'https://images.unsplash.com/photo-1731611538391-d0495328030c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMDZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1100, '1113-1127 E Dayton St #11486993', 53703, 1, 1, 1, 0, 1, 1, 1),
(245, 14, 1, 3, 'https://images.unsplash.com/photo-1701836924083-16899083a8b7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxOTh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1850, '1905 Baird St', 53713, 1, 1, 0, 1, 0, 1, 1),
(246, 16, 3, 3, 'https://images.unsplash.com/photo-1623278904497-428a4eabd517?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMTd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2595, '518 N High Point Rd', 53717, 1, 0, 0, 1, 0, 0, 1),
(247, 8, 1, 2, 'https://images.unsplash.com/photo-1509951649684-454baa53f2a5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMTF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1400, '2 Craig Ave #045C927D7', 53705, 0, 1, 1, 1, 1, 1, 0),
(248, 30, 1, 4, 'https://images.unsplash.com/photo-1680965075898-39e6c2db33a8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw0MDF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTN8MA&ixlib=rb-4.0.3&q=80&w=1080', 515, '1009 Vilas Ave APT 3', 53715, 1, 0, 0, 1, 0, 1, 1),
(249, 11, 2, 2, 'https://images.unsplash.com/photo-1484606075493-62da7cd65654?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNDZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1300, '4316 Melody Ln APT 203', 53704, 0, 1, 1, 0, 1, 0, 1),
(250, 2, 2, 3, 'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyN3x8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 2000, '9-11 Edgartown Ct #17546615', 53719, 0, 0, 1, 1, 1, 0, 1),
(251, 23, 1, 2, 'https://images.unsplash.com/photo-1731611538695-54b664e945e2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMDd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1350, '2809-2811 Andes Dr #17621725', 53719, 1, 0, 1, 0, 0, 0, 1),
(252, 23, 2, 2, 'https://images.unsplash.com/photo-1731611538799-bcadda7e119e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMDh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1995, '1945 Winnebago St', 53704, 0, 1, 1, 0, 0, 0, 1),
(253, 2, 2, 3, 'https://images.unsplash.com/photo-1466098672325-c9ddda4b7975?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyOHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 1825, '1317 S Thompson Dr', 53716, 0, 0, 1, 1, 1, 0, 0),
(254, 26, 2, 3, 'https://images.unsplash.com/photo-1713420560043-cc218e86cc86?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNDR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2095, '2837 Cimarron Trl', 53719, 0, 0, 1, 1, 0, 0, 0),
(255, 4, 1, 2, 'https://images.unsplash.com/photo-1472148083604-64f1084980b9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw1Nnx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 2095, '4513 Rahel St', 53716, 1, 1, 0, 1, 1, 1, 0),
(256, 12, 1, 1, 'https://images.unsplash.com/photo-1725219596870-22520adad2c1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNjV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 2195, '2810 Arbor Dr #8277157', 53711, 0, 0, 0, 1, 1, 1, 0),
(257, 12, 1, 2, 'https://images.unsplash.com/photo-1717158042331-baa3306c6d16?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNjZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1650, '7702 Carrington Dr #A', 53719, 1, 0, 1, 1, 1, 0, 1),
(258, 19, 1, 0, 'https://images.unsplash.com/photo-1582732585790-f329cda08ada?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNTR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 999, '3917 Lien Rd #147', 53704, 0, 1, 1, 0, 1, 1, 1),
(259, 29, 2, 2, 'https://images.unsplash.com/photo-1516235328748-f58ef03d0aad?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzODR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1800, '12 Fordem Ct #12', 53704, 1, 1, 0, 1, 0, 0, 0),
(260, 20, 2, 2, 'https://images.unsplash.com/photo-1696681701899-3a8e9dee77d0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNjZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1800, '4 Fordem Ct #4', 53704, 0, 1, 0, 0, 0, 0, 1),
(261, 20, 2, 5, 'https://images.unsplash.com/photo-1472835560847-37d024ebacdc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNjd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 3975, '215 N Bassett St', 53703, 1, 0, 0, 0, 1, 1, 0),
(262, 18, 2, 2, 'https://images.unsplash.com/photo-1619994121399-f7c6d353ac2a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNDV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1700, '5301 Manitowoc Pkwy', 53705, 1, 0, 0, 1, 1, 1, 1),
(263, 17, 1, 2, 'https://images.unsplash.com/photo-1619994121345-b61cd610c5a6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMzF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1750, '1801 Reetz Rd', 53711, 0, 1, 0, 0, 1, 0, 0),
(264, 7, 2, 3, 'https://images.unsplash.com/photo-1472858192915-0131aeda1404?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw5OHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4Nnww&ixlib=rb-4.0.3&q=80&w=1080', 2425, '2106 McKenna Blvd', 53711, 0, 0, 0, 1, 1, 1, 0),
(265, 24, 3, 3, 'https://images.unsplash.com/photo-1658057438974-9806d726598e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMjN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 2495, '6757 Hammersley Rd', 53711, 0, 1, 1, 1, 0, 1, 1),
(266, 3, 2, 2, 'https://images.unsplash.com/photo-1542309175-9b88d743f89f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw0NHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 2250, '1114 Mound St #1', 53715, 0, 1, 0, 0, 1, 1, 0),
(267, 10, 1, 3, 'https://images.unsplash.com/photo-1469366379702-59bb9f45c11e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMzV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 2000, '4310 Mohawk Dr #2', 53711, 0, 1, 1, 1, 1, 0, 1),
(268, 5, 1, 2, 'https://images.unsplash.com/photo-1501491740426-93c809643084?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw2OXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 1750, '122 State St #117-3', 53703, 1, 1, 1, 1, 0, 1, 0),
(269, 15, 1, 3, 'https://images.unsplash.com/photo-1608974007646-4343e2b83b77?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMDl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1850, '5215 Old Middleton Rd', 53705, 1, 1, 1, 1, 1, 0, 1),
(270, 15, 2, 3, 'https://images.unsplash.com/photo-1645107035905-145279a84f7d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMTB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 2200, '5304 Manitowoc Pkwy', 53705, 0, 0, 0, 0, 0, 1, 1),
(271, 29, 1, 2, 'https://images.unsplash.com/photo-1690721981329-a9154cdeed8a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzODV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1695, '735 Williamson St #734', 53703, 1, 0, 0, 0, 0, 1, 0),
(272, 15, 3, 2, 'https://images.unsplash.com/photo-1708095224708-4810af40591b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMTF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2100, '8107 Mansion Hill Ave', 53719, 0, 1, 0, 1, 0, 0, 1),
(273, 8, 1, 1, 'https://images.unsplash.com/photo-1524589982174-6d88e46399e4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMTJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1075, '1630 Monroe St #G', 53711, 1, 1, 1, 1, 0, 0, 0),
(274, 26, 1, 2, 'https://images.unsplash.com/photo-1536586001077-2dc058d0705b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNDV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1450, '1514-1518 Loftsgordon Ave', 53704, 1, 1, 1, 1, 0, 0, 0),
(275, 4, 2, 3, 'https://images.unsplash.com/photo-1523932606238-1906274465c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw1N3x8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 2200, '5303 Manitowoc Pkwy', 53705, 1, 1, 0, 1, 1, 1, 1),
(276, 8, 1, 1, 'https://images.unsplash.com/photo-1486556753611-3ab5a466e2a4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMTN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1750, '116 E Gorham St #112', 53703, 1, 0, 1, 0, 0, 0, 1),
(277, 9, 3, 2, 'https://images.unsplash.com/photo-1506317708861-e31daf822eb7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMjd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1850, '6746 Fairhaven Rd APT 9', 53719, 0, 0, 1, 0, 1, 0, 1),
(278, 8, 1, 3, 'https://images.unsplash.com/photo-1518695340118-1cf93466b479?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMTR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2800, '1007 Edgewood Ave', 53711, 1, 1, 0, 0, 1, 0, 0),
(279, 28, 1, 1, 'https://images.unsplash.com/photo-1640354460345-8482c36e2fea?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNjl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1475, '5850 Charon Ln APT 211', 53718, 1, 0, 1, 1, 1, 1, 1),
(280, 11, 1, 2, 'https://images.unsplash.com/photo-1504262869-c8429e84fa5f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNDd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1525, '5322-24 Milwaukee St #5322', 53714, 1, 1, 0, 1, 1, 1, 1),
(281, 16, 1, 1, 'https://images.unsplash.com/photo-1667238324671-c2fe726f6084?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMTh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1350, '929 S Brooks St #2', 53715, 1, 0, 1, 1, 1, 0, 0),
(282, 11, 2, 4, 'https://images.unsplash.com/photo-1528838059403-95f01420989b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNDh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 2495, '4417 Hollow Ridge Rd', 53704, 0, 0, 0, 0, 0, 1, 0),
(283, 23, 1, 2, 'https://images.unsplash.com/photo-1722492559290-860c28a9bc61?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMDl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1640, '1038 Williamson St', 53703, 0, 1, 0, 1, 0, 0, 1),
(284, 14, 1, 3, 'https://images.unsplash.com/photo-1646948683246-2abacf9007c8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxOTl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1885, '823 E Johnson St APT 3', 53703, 0, 1, 0, 1, 0, 0, 1),
(285, 16, 1, 1, 'https://images.unsplash.com/photo-1649686367401-41059a60158d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMTl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1675, '360 W Washington Ave UNIT 612', 53703, 1, 0, 1, 0, 1, 0, 1),
(286, 12, 1, 2, 'https://images.unsplash.com/photo-1719258833451-1e47c1498467?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNjd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1795, '20 Sherman Ter UNIT 3', 53704, 0, 0, 0, 0, 1, 1, 1),
(287, 7, 3, 2, 'https://images.unsplash.com/photo-1486443495078-bb812ab92f6b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw5OXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4Nnww&ixlib=rb-4.0.3&q=80&w=1080', 1995, '6711-6741 Fairhaven Rd #6723', 53719, 0, 0, 1, 0, 0, 0, 0),
(288, 17, 2, 5, 'https://images.unsplash.com/photo-1719855412960-3c83f413e3b2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMzJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 3000, '142 N Hancock St', 53703, 1, 1, 1, 0, 1, 0, 1),
(289, 24, 2, 2, 'https://images.unsplash.com/photo-1524228660630-5dd523c28fff?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMjR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1500, '1 Mesa Ct #17571838', 53719, 1, 1, 1, 1, 1, 0, 0),
(290, 18, 1, 1, 'https://images.unsplash.com/photo-1645107035895-566694cbb752?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNDZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1100, '445 W Gilman St #1164', 53703, 1, 0, 0, 1, 1, 0, 1),
(291, 1, 1, 2, 'https://images.unsplash.com/photo-1571598301081-36702bef5e81?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 1725, '1046 Jenifer St APT 1', 53703, 1, 1, 0, 0, 0, 0, 0),
(292, 3, 2, 3, 'https://images.unsplash.com/photo-1460317442991-0ec209397118?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw0NXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 1850, '3145 View Rd', 53711, 0, 0, 0, 1, 1, 1, 0),
(293, 8, 3, 4, 'https://images.unsplash.com/photo-1533864940958-e627c819cb82?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMTV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2995, '138 Briar Crest St', 53704, 1, 0, 0, 1, 0, 1, 1),
(294, 4, 3, 2, 'https://images.unsplash.com/photo-1541929164234-0d8e7ec1e8c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw1OHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 1925, '8129 Broadmoor St #8129', 53719, 0, 1, 0, 1, 1, 0, 0),
(295, 2, 2, 4, 'https://images.unsplash.com/photo-1465799764858-e630882adf82?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyOXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 2395, '2709 Muir Field Rd', 53719, 0, 0, 0, 1, 0, 0, 0),
(296, 1, 1, 4, 'https://images.unsplash.com/photo-1496180727794-817822f65950?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMnx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 2100, '411 E Johnson St', 53703, 1, 0, 1, 0, 0, 0, 0),
(297, 17, 1, 4, 'https://images.unsplash.com/photo-1693801873642-7154ccd93c85?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMzN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2100, '409 E Johnson St', 53703, 1, 1, 1, 0, 0, 0, 0),
(298, 28, 1, 1, 'https://images.unsplash.com/photo-1690721981571-59a9cae87e87?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNzB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 950, '1 W Gilman St', 53703, 1, 0, 1, 1, 0, 0, 1),
(299, 10, 1, 3, 'https://images.unsplash.com/photo-1495766682737-d96292f4eb4a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMzZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1800, '314 S Hamilton St', 53703, 0, 0, 0, 0, 1, 0, 0),
(300, 12, 1, 1, 'https://images.unsplash.com/photo-1681197841361-e50d187d9251?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNjh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1050, '141 N Butler St', 53703, 1, 1, 0, 0, 0, 0, 1),
(301, 25, 1, 1, 'https://images.unsplash.com/photo-1533015876763-16ee187b8dd0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMzZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 895, '143-145 W Gilman St', 53703, 1, 0, 1, 0, 1, 0, 1),
(302, 23, 1, 1, 'https://images.unsplash.com/photo-1602863826714-3f84de0dbd26?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMTB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 895, '142 N Franklin St', 53703, 1, 0, 0, 0, 0, 0, 1),
(303, 5, 1, 1, 'https://images.unsplash.com/photo-1476240089339-1d4426572a99?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw3MHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 3036, '729 Jenifer St #2', 53703, 1, 1, 0, 0, 0, 0, 0),
(304, 19, 2, 3, 'https://images.unsplash.com/photo-1465509419584-d2b0ff1ce390?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNTV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2625, '6414 Pizarro Cir', 53719, 0, 0, 0, 1, 1, 0, 0),
(305, 17, 1, 1, 'https://images.unsplash.com/photo-1632077209523-e9dede9b6b31?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMzR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1250, '5110 Esker Dr #2', 53704, 0, 1, 1, 1, 0, 0, 0),
(306, 25, 2, 2, 'https://images.unsplash.com/photo-1486286737269-736ac332b729?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMzd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1500, '1 Mesa Ct #3', 53719, 1, 0, 1, 1, 0, 1, 1),
(307, 23, 2, 2, 'https://images.unsplash.com/photo-1614115863913-b04024ec4ed1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMTF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1500, '2021 Sherman Ave #8', 53704, 0, 1, 1, 1, 0, 1, 1),
(308, 17, 2, 3, 'https://images.unsplash.com/photo-1605640214887-5f1f80e46cd4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMzV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2650, '302 N Meadow Ln', 53705, 1, 1, 0, 0, 0, 0, 0),
(309, 28, 1, 1, 'https://images.unsplash.com/photo-1724966974920-f390f30ad6f2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNzF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1245, '531 Donofrio Dr UNIT 8', 53719, 0, 0, 0, 1, 1, 0, 0),
(310, 10, 1, 3, 'https://images.unsplash.com/photo-1431782830394-384a6499a87b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMzd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1650, '1332 Jenifer St', 53703, 0, 0, 1, 1, 1, 0, 0),
(311, 27, 1, 1, 'https://images.unsplash.com/photo-1685665018097-17b32c0b1ec2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNTV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1795, '826 W Lakeside St APT 5', 53715, 1, 1, 1, 1, 0, 0, 1),
(312, 25, 1, 2, 'https://images.unsplash.com/photo-1523192193543-6e7296d960e4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMzh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1900, '2033 Adderbury Ln', 53711, 0, 0, 1, 1, 1, 0, 1),
(313, 29, 1, 1, 'https://images.unsplash.com/photo-1661526351558-3504f46083e8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzODZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1145, '801 Fairmont Ave APT B', 53714, 0, 1, 0, 1, 1, 0, 0),
(314, 30, 2, 3, 'https://images.unsplash.com/photo-1462180744199-87947354c7fe?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw0MDJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTN8MA&ixlib=rb-4.0.3&q=80&w=1080', 2495, '7817 W Oakbrook Cir', 53717, 0, 0, 0, 0, 0, 1, 0),
(315, 26, 1, 2, 'https://images.unsplash.com/photo-1455653706389-72ad5fe2dc78?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNDZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1600, '437 N Ingersoll St #1', 53703, 1, 0, 0, 0, 0, 0, 1),
(316, 27, 1, 2, 'https://images.unsplash.com/photo-1597061446714-dee3886db628?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNTZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1675, '592 Donofrio Dr #C', 53719, 0, 1, 1, 0, 0, 0, 0),
(317, 5, 2, 3, 'https://images.unsplash.com/photo-1536008046477-01746710ffb9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw3MXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 2350, '2330 Harley Dr', 53711, 1, 1, 1, 0, 0, 0, 1),
(318, 7, 1, 3, 'https://images.unsplash.com/photo-1486847484273-512bf6dae1d1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMDB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1750, '257 Corry St', 53704, 1, 0, 1, 1, 1, 1, 1),
(319, 11, 2, 3, 'https://images.unsplash.com/photo-1531041984289-be60233b4119?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNDl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 2495, '905 Dane St', 53713, 0, 0, 1, 0, 1, 0, 0),
(320, 11, 1, 1, 'https://images.unsplash.com/photo-1519110466169-102db60f74d5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNTB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1700, '622 W Wilson St #210', 53703, 1, 1, 1, 0, 1, 0, 1),
(321, 9, 2, 4, 'https://images.unsplash.com/photo-1415773597812-902cca1c1550?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMjh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 2250, '417 North St', 53704, 0, 1, 0, 1, 1, 1, 1),
(322, 24, 1, 1, 'https://images.unsplash.com/photo-1588148208486-a3b096a44537?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMjV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1395, '2838 Dryden Dr #206', 53704, 0, 1, 1, 0, 1, 1, 1),
(323, 8, 2, 1, 'https://images.unsplash.com/photo-1536860374420-4103d5332748?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMTZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 695, '1111 Bowen Ct', 53715, 0, 0, 1, 1, 1, 1, 1),
(324, 2, 3, 2, 'https://images.unsplash.com/photo-1528914137830-c85ee162f588?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 2000, '(undisclosed Address)', 53717, 0, 1, 0, 0, 1, 1, 1),
(325, 1, 4, 3, 'https://images.unsplash.com/photo-1527772482340-7895c3f2b3f7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxM3x8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 4500, '1016 Lincoln St', 53711, 0, 1, 1, 1, 0, 0, 0),
(326, 6, 1, 1, 'https://images.unsplash.com/photo-1509940473077-6e7950fbb0be?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw4N3x8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 1500, '121 Metro Ter UNIT 206', 53718, 1, 1, 0, 0, 0, 0, 0),
(327, 2, 2, 3, 'https://images.unsplash.com/photo-1497898871738-28f5fb9b275c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 2150, '3329 Webb Ave', 53714, 1, 1, 0, 1, 1, 1, 0),
(328, 29, 1, 2, 'https://images.unsplash.com/photo-1578266848416-c291bc0b2940?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzODd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1695, '2021 E Dayton St', 53704, 1, 0, 1, 0, 0, 1, 0),
(329, 12, 1, 2, 'https://images.unsplash.com/photo-1681197841681-543ec02922a7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNjl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1450, '121 E Gilman St APT 10', 53703, 0, 1, 0, 1, 1, 0, 0),
(330, 9, 2, 3, 'https://images.unsplash.com/photo-1531420082871-1c5eb4d20871?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMjl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 2500, '2926 Muir Field Rd', 53719, 1, 0, 1, 1, 0, 1, 1),
(331, 1, 1, 2, 'https://images.unsplash.com/photo-1460408037948-b89a5e837b41?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 1799, '1810 Kendall Ave', 53726, 1, 0, 0, 1, 1, 0, 0),
(332, 29, 3, 5, 'https://images.unsplash.com/photo-1672349561607-6e1d40902889?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzODh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 4500, '502 S Owen Dr', 53711, 1, 1, 0, 0, 1, 0, 1),
(333, 19, 2, 3, 'https://images.unsplash.com/photo-1483970533241-d4fff564ed3e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNTZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 3050, '317 S Segoe Rd', 53705, 1, 1, 1, 0, 0, 1, 1),
(334, 3, 4, 3, 'https://images.unsplash.com/photo-1504624720567-64a41aa25d70?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw0Nnx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 2595, '8136 Broadmoor St', 53719, 0, 1, 0, 0, 0, 0, 0),
(335, 28, 2, 3, 'https://images.unsplash.com/photo-1726981898362-c32d407d3b0b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNzJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1660, '8002 Ritz Dr #307', 53719, 0, 0, 0, 1, 1, 0, 0),
(336, 5, 1, 2, 'https://images.unsplash.com/photo-1470920941400-7998c026b8ce?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw3Mnx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 1450, '2506 Fremont Ave APT 2', 53704, 1, 1, 0, 0, 1, 0, 1),
(337, 17, 1, 2, 'https://images.unsplash.com/photo-1645107367135-7ade05376280?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMzZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2200, '2614 E Johnson St', 53704, 1, 0, 1, 0, 1, 1, 1),
(338, 16, 2, 1, 'https://images.unsplash.com/photo-1659621222272-f65c27b6f182?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMjB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1695, '2929 Atwood Ave APT 210', 53704, 1, 1, 0, 0, 0, 0, 0),
(339, 16, 2, 2, 'https://images.unsplash.com/photo-1551583996-f0a1d53f5bfd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMjF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 3335, '333 W Mifflin St FLOOR 8', 53703, 0, 1, 0, 1, 1, 0, 1),
(340, 18, 1, 2, 'https://images.unsplash.com/photo-1573587123834-6d7bf7b3c542?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNDd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2350, '1115 E Johnson St', 53703, 1, 0, 1, 1, 1, 1, 0),
(341, 9, 2, 2, 'https://images.unsplash.com/photo-1523755231516-e43fd2e8dca5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMzB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1780, '3033 Maple Valley Dr #302', 53719, 1, 0, 1, 1, 0, 1, 1),
(342, 16, 2, 2, 'https://images.unsplash.com/photo-1677161795040-7cf4d7007312?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMjJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1780, '3118 Maple Valley Dr APT 304', 53719, 0, 1, 0, 0, 1, 1, 0),
(343, 25, 2, 2, 'https://images.unsplash.com/photo-1523181729404-8a3b7b6f918d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMzl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1780, '3118 Maple Valley Dr APT 301', 53719, 1, 1, 1, 0, 1, 0, 0),
(344, 1, 3, 3, 'https://images.unsplash.com/photo-1489936724440-afaf5a115ede?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 2750, '7877 E Oakbrook Cir', 53717, 1, 1, 0, 0, 0, 0, 0),
(345, 17, 1, 2, 'https://images.unsplash.com/photo-1547895750-6c7e99f066fc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMzd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1475, '1309 Ruskin St APT 1', 53704, 0, 1, 1, 0, 0, 0, 0),
(346, 21, 2, 2, 'https://images.unsplash.com/photo-1662022344160-d1b8a1fbce87?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyODF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 1600, '1309 Jewel Ct', 53711, 1, 0, 1, 1, 1, 1, 1),
(347, 30, 1, 1, 'https://images.unsplash.com/photo-1652882861109-570be85c2b92?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw0MDN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTN8MA&ixlib=rb-4.0.3&q=80&w=1080', 1650, '219 N Meadow Ln', 53705, 1, 0, 1, 1, 0, 0, 1),
(348, 30, 1, 1, 'https://images.unsplash.com/photo-1617741679940-1477d98551f9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw0MDR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTN8MA&ixlib=rb-4.0.3&q=80&w=1080', 950, '424 Wisconsin Ave #619', 53703, 1, 1, 0, 1, 0, 1, 1),
(349, 2, 1, 2, 'https://images.unsplash.com/photo-1500307353842-81f527a10685?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMnx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 2400, '1214 Carpenter St', 53704, 1, 1, 0, 0, 0, 0, 0),
(350, 13, 1, 1, 'https://images.unsplash.com/photo-1692927637015-c8c577f3a9f6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNzl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1295, '301 N 5th St APT 6', 53704, 1, 0, 0, 1, 0, 1, 0),
(351, 5, 1, 1, 'https://images.unsplash.com/photo-1469022563428-aa04fef9f5a2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw3M3x8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 975, '2507 E Johnson St UNIT 2', 53704, 1, 1, 1, 0, 0, 0, 1),
(352, 19, 1, 2, 'https://images.unsplash.com/photo-1597715186877-69a03e8945c9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNTd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1595, '1209-11 S Thompson Dr', 53716, 0, 1, 0, 1, 0, 0, 1);
INSERT INTO `apartments` (`apartment_id`, `landlord_id`, `bathrooms`, `bedrooms`, `imgURL`, `price`, `streetAddress`, `zipcode`, `parking`, `pets`, `RI`, `heat`, `ac`, `washdry`, `dishwasher`) VALUES
(353, 16, 3, 4, 'https://images.unsplash.com/photo-1623278904195-4d3a786c01f6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMjN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2395, '3737 Frosted Leaf Dr', 53719, 1, 1, 1, 1, 1, 0, 1),
(354, 21, 1, 2, 'https://images.unsplash.com/photo-1524084044367-dd2854ae256d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyODJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 1495, '1301 Ruskin St #2', 53704, 0, 1, 1, 1, 1, 1, 0),
(355, 24, 3, 3, 'https://images.unsplash.com/photo-1490085964525-79c2e1236eca?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMjZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 2500, '1003 Middleton St', 53717, 1, 0, 0, 0, 1, 1, 1),
(356, 23, 3, 3, 'https://images.unsplash.com/photo-1691902589112-8799be647f18?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMTJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 2600, '7008 Longmeadow Rd', 53717, 0, 1, 0, 0, 0, 1, 1),
(357, 17, 1, 3, 'https://images.unsplash.com/photo-1645107366766-09a003e45954?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMzh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2200, '14 S Franklin St #1', 53703, 0, 0, 0, 0, 0, 0, 1),
(358, 6, 1, 3, 'https://images.unsplash.com/photo-1482942034933-80911239f17e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw4OHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 2095, '443 445th St #11486982', 53703, 0, 0, 0, 1, 0, 1, 1),
(359, 22, 1, 2, 'https://images.unsplash.com/photo-1603738365596-08c0147fda4d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyOTF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 1295, '3002 Ashford Ln #1', 53713, 1, 0, 1, 1, 1, 1, 0),
(360, 23, 3, 4, 'https://images.unsplash.com/photo-1603729135293-2821f0f76385?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMTN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 2595, '2921 Brandon Rd', 53719, 0, 1, 0, 1, 1, 1, 1),
(361, 28, 1, 2, 'https://images.unsplash.com/photo-1520700325158-0537038a4c46?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNzN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1395, '729 Clark Ct #2', 53715, 1, 1, 1, 0, 1, 1, 0),
(362, 19, 1, 2, 'https://images.unsplash.com/photo-1643833620242-1d99398a35f2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNTh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2350, '427 E Gorham St #13956336', 53703, 0, 0, 0, 1, 1, 0, 0),
(363, 22, 2, 4, 'https://images.unsplash.com/photo-1637717693629-f992d6bcb038?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyOTJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 3100, '202 S Segoe Rd', 53705, 0, 0, 0, 1, 1, 1, 0),
(364, 13, 3, 3, 'https://images.unsplash.com/photo-1681197841410-bfd78f11e963?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxODB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 3290, '5809 Sanctuary Dr', 53718, 0, 0, 0, 1, 1, 1, 1),
(365, 23, 1, 2, 'https://images.unsplash.com/photo-1731611538351-722bb062ec0e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMTR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1400, '4005-4007 Claire St #4005', 53716, 0, 0, 0, 1, 0, 1, 1),
(366, 4, 1, 1, 'https://images.unsplash.com/photo-1521124678359-f3f6248f1914?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw1OXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 1150, '2420 E Washington Ave #11', 53704, 0, 1, 0, 0, 0, 0, 0),
(367, 2, 1, 3, 'https://images.unsplash.com/photo-1494281232141-90a40b0b06c9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzM3x8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 2000, '3 Nantucket Ct', 53719, 1, 1, 0, 0, 0, 1, 0),
(368, 28, 3, 2, 'https://images.unsplash.com/photo-1621891336682-341097be99cd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNzR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2695, '582 N Midvale Blvd', 53705, 1, 1, 1, 0, 0, 0, 0),
(369, 26, 1, 3, 'https://images.unsplash.com/photo-1534868317133-359451858ba0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNDd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 3300, '2005 Rutledge St', 53704, 0, 0, 0, 1, 1, 0, 0),
(370, 22, 2, 3, 'https://images.unsplash.com/photo-1647527245499-f4ea74b09be0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyOTN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 2200, '28 Heritage Cir APT 8', 53711, 0, 1, 0, 1, 0, 0, 1),
(371, 16, 1, 2, 'https://images.unsplash.com/photo-1646337072638-f9706130eb5c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMjR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 1195, '4250 Lumley Rd #3', 53711, 1, 0, 0, 1, 1, 1, 1),
(372, 8, 2, 3, 'https://images.unsplash.com/photo-1525601845090-541404bbf3fd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMTd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2675, '8415 Mid Town Rd', 53719, 1, 1, 0, 1, 0, 1, 0),
(373, 24, 1, 1, 'https://images.unsplash.com/photo-1495110823793-aa4ed8127d6e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMjd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1050, '309 Island Dr #321-4', 53705, 0, 1, 0, 0, 0, 1, 1),
(374, 13, 1, 2, 'https://images.unsplash.com/photo-1716978497661-48bfa34130c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxODF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1795, '2811 Monroe St #3', 53711, 0, 1, 0, 0, 1, 0, 1),
(375, 21, 1, 1, 'https://images.unsplash.com/photo-1706179767946-ac5e207586f2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyODN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 1099, '502 E Main St #17266390', 53703, 1, 1, 1, 0, 1, 1, 1),
(376, 24, 1, 2, 'https://images.unsplash.com/photo-1676680071181-0a0b45968d23?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMjh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1450, '2609-2617 E Johnson St #227-2617', 53704, 1, 1, 0, 1, 0, 1, 0),
(377, 6, 1, 2, 'https://images.unsplash.com/photo-1504682018535-8ba8ca0afbbb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw4OXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 1700, '664 Sprague St APT 1', 53711, 0, 1, 1, 1, 1, 1, 0),
(378, 14, 1, 2, 'https://images.unsplash.com/photo-1691902588893-661a9c220ea8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMDB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1795, '2821 Monroe St #1', 53711, 0, 1, 0, 1, 0, 0, 1),
(379, 3, 2, 3, 'https://images.unsplash.com/photo-1528772822659-a1701f579ef1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw0N3x8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 2395, '7105 Tempe Dr', 53719, 1, 1, 1, 0, 0, 0, 0),
(380, 18, 2, 2, 'https://images.unsplash.com/photo-1704489608759-09f889b1c13d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyNDh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2800, '4522 Hammersley Rd APT 8', 53711, 0, 0, 0, 1, 0, 0, 1),
(381, 30, 1, 1, 'https://images.unsplash.com/photo-1698824241382-677abdbee593?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw0MDV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTN8MA&ixlib=rb-4.0.3&q=80&w=1080', 1100, '1667 Capital Ave #11199578', 53705, 0, 1, 0, 1, 0, 0, 1),
(382, 11, 1, 2, 'https://images.unsplash.com/photo-1521708266372-b3547456cc2d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNTF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 1125, '4318 Nakoosa Trl APT 1', 53714, 1, 0, 1, 1, 1, 1, 0),
(383, 16, 2, 3, 'https://images.unsplash.com/photo-1727743111953-a7318c51574e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMjV8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 3500, '6422 Enterprise Ln #2C', 53719, 0, 0, 0, 1, 0, 0, 1),
(384, 16, 3, 3, 'https://images.unsplash.com/photo-1717924601473-49aee3a39f19?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyMjZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODl8MA&ixlib=rb-4.0.3&q=80&w=1080', 2695, '4022-4024 Dolphin Dr', 53719, 1, 0, 1, 0, 0, 1, 1),
(385, 30, 2, 3, 'https://images.unsplash.com/photo-1662685315883-71b852331b5e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw0MDZ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTN8MA&ixlib=rb-4.0.3&q=80&w=1080', 2200, '10 Heritage Cir #6', 53711, 0, 1, 1, 1, 1, 1, 0),
(386, 25, 1, 1, 'https://images.unsplash.com/photo-1521104405960-2da894640142?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNDB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1275, '410 Castle Pl #1307193', 53703, 0, 0, 0, 1, 0, 1, 1),
(387, 27, 0, 0, 'https://images.unsplash.com/photo-1612320648993-61c1cd604b71?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNTd8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 775, '31 E Gorham St #5', 53703, 0, 0, 0, 1, 1, 0, 1),
(388, 7, 1, 1, 'https://images.unsplash.com/photo-1444047427283-88a67f631b3e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMDF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1065, '2306 Badger Pkwy APT 7', 53713, 0, 0, 0, 0, 1, 0, 1),
(389, 13, 2, 2, 'https://images.unsplash.com/photo-1716657721912-48bc33857bc9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxODJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 2750, '3100 Lake Mendota Dr APT 601', 53705, 0, 1, 0, 0, 1, 1, 1),
(390, 3, 1, 2, 'https://images.unsplash.com/photo-1517227394671-e166629172e6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw0OHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 1100, '2505 Calypso Rd #D148D807B', 53704, 1, 0, 0, 0, 0, 0, 1),
(391, 12, 2, 3, 'https://images.unsplash.com/photo-1676817710465-f977383c49c6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNzB8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 2295, '1132 Gammon Ln', 53719, 0, 0, 0, 0, 0, 0, 1),
(392, 7, 2, 3, 'https://images.unsplash.com/photo-1520646519483-506cf8a2a15a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMDJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 3080, '2163 Autumn Lake Pkwy', 53718, 0, 0, 1, 1, 1, 0, 0),
(393, 22, 1, 3, 'https://images.unsplash.com/photo-1696975969992-49eeee0db9b6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwyOTR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTB8MA&ixlib=rb-4.0.3&q=80&w=1080', 2495, '121 N Blair St #121', 53703, 1, 0, 1, 0, 0, 0, 0),
(394, 1, 4, 5, 'https://images.unsplash.com/photo-1531835551805-16d864c8d311?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNnx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4M3ww&ixlib=rb-4.0.3&q=80&w=1080', 3500, '940 E Dayton St', 53703, 1, 0, 1, 0, 0, 1, 1),
(395, 2, 2, 3, 'https://images.unsplash.com/photo-1510782977572-76493a0a7f57?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 2195, '701 McCormick Ave', 53704, 0, 0, 1, 0, 0, 1, 1),
(396, 5, 1, 2, 'https://images.unsplash.com/photo-1501470262479-018846ae6baa?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw3NHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 1250, '2822 Ashford Ln #B47448008', 53713, 0, 1, 1, 1, 0, 1, 1),
(397, 7, 1, 2, 'https://images.unsplash.com/photo-1531364689381-1454a9bbee64?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxMDN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODZ8MA&ixlib=rb-4.0.3&q=80&w=1080', 1600, '3118 Harvey St #2', 53705, 0, 0, 0, 0, 0, 0, 0),
(398, 25, 3, 3, 'https://images.unsplash.com/photo-1701922740276-26327da2c051?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNDF8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2835, '5813 Sanctuary Ln', 53718, 1, 1, 0, 0, 1, 1, 0),
(399, 26, 2, 3, 'https://images.unsplash.com/photo-1515960310964-e51de7b4fb7a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNDh8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTJ8MA&ixlib=rb-4.0.3&q=80&w=1080', 2295, '3122 Churchill Dr', 53713, 1, 0, 0, 0, 1, 1, 0),
(400, 5, 1, 2, 'https://images.unsplash.com/photo-1521633290170-46b208e84322?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw3NXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NXww&ixlib=rb-4.0.3&q=80&w=1080', 1375, '219 E Mifflin St APT 3', 53703, 1, 1, 0, 0, 0, 1, 1),
(401, 11, 2, 3, 'https://images.unsplash.com/photo-1483621129376-f4592be75170?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxNTJ8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODd8MA&ixlib=rb-4.0.3&q=80&w=1080', 3600, '437 N Frances St', 53703, 1, 0, 0, 0, 0, 0, 0),
(402, 13, 1, 2, 'https://images.unsplash.com/photo-1729110275798-62639cf43df0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxODN8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1399, '5806 Raymond Rd #2C3434F7D', 53711, 1, 0, 1, 0, 1, 0, 1),
(403, 13, 1, 0, 'https://images.unsplash.com/photo-1681197841875-19beab8085ff?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwxODR8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzODh8MA&ixlib=rb-4.0.3&q=80&w=1080', 1050, '2702 Syene Rd', 53713, 0, 0, 1, 1, 0, 0, 0),
(404, 4, 2, 3, 'https://images.unsplash.com/photo-1518695455935-62feccc5f280?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHw2MHx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 2915, '1345 Williamson St APT 1', 53703, 0, 0, 1, 0, 1, 1, 0),
(405, 24, 1, 1, 'https://images.unsplash.com/photo-1454692879716-176cf9058183?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzMjl8fGFwYXJ0bWVudHxlbnwwfHx8fDE3MzM4NzkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1080', 1055, '619 W Mifflin St #33DDE5F58', 53703, 1, 1, 0, 1, 1, 0, 1),
(406, 2, 1, 2, 'https://images.unsplash.com/photo-1520386950581-900a51cbbc93?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2ODUxMjN8MHwxfHNlYXJjaHwzNXx8YXBhcnRtZW50fGVufDB8fHx8MTczMzg3OTM4NHww&ixlib=rb-4.0.3&q=80&w=1080', 2250, '1042 E Gorham St #1042', 53703, 0, 1, 0, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `landlords`
--

CREATE TABLE `landlords` (
  `landlord_id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='v1';

--
-- Dumping data for table `landlords`
--

INSERT INTO `landlords` (`landlord_id`, `firstName`, `lastName`, `phone`, `email`, `password`) VALUES
(1, 'Alfonso', 'Barbieri', '+1 505-644-2081', 'Alfonso.Barbieri@gmail.com', ''),
(2, 'Roxana', 'Slaven', '+1 419-485-2181', 'Roxana.Slaven@gmail.com', ''),
(3, 'Kadin', 'Juan', '+1 505-644-9224', 'Kadin.Juan@gmail.com', ''),
(4, 'Iverson', 'Pruitt', '+1 505-631-9087', 'Iverson.Pruitt@gmail.com', ''),
(5, 'Kristine', 'Lesko', '+1 472-244-7116', 'Kristine.Lesko@gmail.com', ''),
(6, 'Maniyah', 'Dove', '+1 505-635-9105', 'Maniyah.Dove@gmail.com', ''),
(7, 'Scout', 'Fortner', '+1 229-975-7296', 'Scout.Fortner@gmail.com', ''),
(8, 'Marta', 'Deering', '+1 505-677-9662', 'Marta.Deering@gmail.com', ''),
(9, 'Joaquin', 'Goodnight', '+1 505-621-3322', 'Joaquin.Goodnight@gmail.com', ''),
(10, 'Mouhamed', 'Bailey', '+1 321-849-5425', 'Mouhamed.Bailey@gmail.com', ''),
(11, 'Ellen', 'Runnels', '+1 505-615-0752', 'Ellen.Runnels@gmail.com', ''),
(12, 'Jae', 'Castaneda', '+1 505-651-0053', 'Jae.Castaneda@gmail.com', ''),
(13, 'Mirabelle', 'Gregoire', '+1 505-710-1485', 'Mirabelle.Gregoire@gmail.com', ''),
(14, 'Yareni', 'Augustin', '+1 505-495-7277', 'Yareni.Augustin@gmail.com', ''),
(15, 'Cayla', 'Wesson', '+1 505-646-8181', 'Cayla.Wesson@gmail.com', ''),
(16, 'Everest', 'Clemens', '+1 472-230-8345', 'Everest.Clemens@gmail.com', ''),
(17, 'Braulio', 'Chabot', '+1 681-446-4514', 'Braulio.Chabot@gmail.com', ''),
(18, 'Leelan', 'Eisele', '+1 505-789-1407', 'Leelan.Eisele@gmail.com', ''),
(19, 'Emmilyn', 'Lussier', '+1 505-630-4512', 'Emmilyn.Lussier@gmail.com', ''),
(20, 'Yehuda', 'Blythe', '+1 505-644-6548', 'Yehuda.Blythe@gmail.com', ''),
(21, 'Kylah', 'Derosa', '+1 505-644-2548', 'Kylah.Derosa@gmail.com', ''),
(22, 'Azarias', 'Benally', '+1 505-891-4810', 'Azarias.Benally@gmail.com', ''),
(23, 'Yamileth', 'Crawford', '+1 472-236-4367', 'Yamileth.Crawford@gmail.com', ''),
(24, 'Stanton', 'Gomes', '+1 505-646-3663', 'Stanton.Gomes@gmail.com', ''),
(25, 'Krystina', 'Gillam', '+1 505-646-3263', 'Krystina.Gillam@gmail.com', ''),
(26, 'Jaciel', 'Welter', '+1 302-956-1794', 'Jaciel.Welter@gmail.com', ''),
(27, 'Ayse', 'Persaud', '+1 505-688-3611', 'Ayse.Persaud@gmail.com', ''),
(28, 'Carlin', 'Coronado', '+1 505-971-5257', 'Carlin.Coronado@gmail.com', ''),
(29, 'Maliya', 'Hotchkiss', '+1 505-609-4510', 'Maliya.Hotchkiss@gmail.com', ''),
(30, 'Rosetta', 'Broughton', '+1 505-718-2811', 'Rosetta.Broughton@gmail.com', ''),
(31, 'Anastasia', 'Lassiter', '+1 505-601-3125', 'Anastasia.Lassiter@gmail.com', ''),
(32, 'Aryan', 'Carothers', '+1 505-646-5432', 'Aryan.Carothers@gmail.com', ''),
(33, 'Jaci', 'Billingsley', '+1 472-255-8691', 'Jaci.Billingsley@gmail.com', ''),
(34, 'Cielo', 'Aker', '+1 337-446-4683', 'Cielo.Aker@gmail.com', ''),
(35, 'Andersen', 'Glover', '+1 505-644-9296', 'Andersen.Glover@gmail.com', ''),
(36, 'Jovie', 'Wilbanks', '+1 472-205-9254', 'Jovie.Wilbanks@gmail.com', ''),
(37, 'Kroy', 'Steward', '+1 321-689-3962', 'Kroy.Steward@gmail.com', ''),
(38, 'Zebadiah', 'Olsen', '+1 505-781-3043', 'Zebadiah.Olsen@gmail.com', ''),
(39, 'Dyani', 'Forster', '+1 505-981-1077', 'Dyani.Forster@gmail.com', ''),
(40, 'Saylor', 'Vance', '+1 505-644-0588', 'Saylor.Vance@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `savedlistings`
--

CREATE TABLE `savedlistings` (
  `listing_id` int(11) NOT NULL,
  `apartment_id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `applied` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `savedlistings`
--

INSERT INTO `savedlistings` (`listing_id`, `apartment_id`, `tenant_id`, `applied`) VALUES
(1, 2, 3, 0),
(2, 52, 3, 0),
(3, 1, 6, 0),
(4, 3, 6, 0),
(5, 5, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `tenant_id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `apartment_id` int(11) DEFAULT NULL,
  `leaseStart` int(11) DEFAULT NULL,
  `leaseEnd` int(11) DEFAULT NULL,
  `pets` tinyint(1) DEFAULT NULL,
  `incomeRestrict` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='v1';

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`tenant_id`, `firstName`, `lastName`, `email`, `password`, `phone`, `apartment_id`, `leaseStart`, `leaseEnd`, `pets`, `incomeRestrict`) VALUES
(1, 'Elizabeth ', 'Blackwood', 'elizabeth.blackwood@gmail.com', '', '6082348329', NULL, NULL, NULL, 1, 0),
(3, 'Bryan', 'Rivera', 'bryan@gmail.com', 'd74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1', '4143507369', NULL, NULL, NULL, NULL, NULL),
(6, 'Soniya', 'Jimenez', 'soniya.jimenez@gmail.com', 'df545d97ede966f0201f812714fe2a5a72cf84a0609db9b997a862e8f2aa7f22', '608-960-1247', NULL, NULL, NULL, NULL, NULL),
(7, 'Soniya', 'Jimenez', 'soniya@gmail.com', '2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824', '960-123-4728', NULL, NULL, NULL, 0, 1);

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
-- Indexes for table `savedlistings`
--
ALTER TABLE `savedlistings`
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
  MODIFY `apartment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

--
-- AUTO_INCREMENT for table `landlords`
--
ALTER TABLE `landlords`
  MODIFY `landlord_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `savedlistings`
--
ALTER TABLE `savedlistings`
  MODIFY `listing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
  MODIFY `tenant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apartments`
--
ALTER TABLE `apartments`
  ADD CONSTRAINT `apartments_ibfk_1` FOREIGN KEY (`landlord_id`) REFERENCES `landlords` (`landlord_id`);

--
-- Constraints for table `savedlistings`
--
ALTER TABLE `savedlistings`
  ADD CONSTRAINT `apartmentFK` FOREIGN KEY (`apartment_id`) REFERENCES `apartments` (`apartment_id`),
  ADD CONSTRAINT `tenantFK` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`tenant_id`);

--
-- Constraints for table `tenants`
--
ALTER TABLE `tenants`
  ADD CONSTRAINT `tenants_ibfk_1` FOREIGN KEY (`apartment_id`) REFERENCES `apartments` (`apartment_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
