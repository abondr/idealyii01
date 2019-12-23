-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 23, 2019 at 10:14 AM
-- Server version: 5.7.28-0ubuntu0.16.04.2
-- PHP Version: 7.1.33-3+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edhik_updated`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_recorder`
--

CREATE TABLE `action_recorder` (
  `id` int(11) NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `success` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `address_book_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `entry_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_zone_id` int(11) NOT NULL DEFAULT '0',
  `entry_mobile` bigint(20) DEFAULT NULL,
  `entry_country` text COLLATE utf8_unicode_ci,
  `entry_landmark` text COLLATE utf8_unicode_ci,
  `entry_address` text COLLATE utf8_unicode_ci,
  `entry_name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `address_book`
--

INSERT INTO `address_book` (`address_book_id`, `customers_id`, `entry_company`, `entry_postcode`, `entry_city`, `entry_state`, `entry_zone_id`, `entry_mobile`, `entry_country`, `entry_landmark`, `entry_address`, `entry_name`) VALUES
(1, 16, 'home', '441601', 'gondia', 'maharastra', 2, 9823352748, 'India', 'mama chawk', 'asaas', 'akshat'),
(2, 17, '', '834008', 'RANCHI', 'JHARKHAND', 0, NULL, 'India', 'RVWEB', 'Dre,dsdfd,', 'Harshdeep'),
(3, 17, '', '834006', 'RANCHI', 'JHARKHAND', 0, 89787896708, 'India', 'RVWeb', 'AshokNagar', 'Ranjan'),
(4, 17, '', '834001', 'RANCHI', 'JHARKHAND', 0, 1800909282, 'India', 'Jurassic Park', 'AshokNagar', 'Dinosaur'),
(5, 17, '', '834008', 'RANCHI', 'JHARKHAND', 0, 97897907878, 'India', 'Brooklyn Bridge', 'Japan', 'Godzilla'),
(6, 18, '', '834004', 'RANCHI', 'JHARKHAND', 0, 9031777877, 'India', 'argora', 'argora', 'ranjan'),
(7, 18, '', '834005', 'RANCHI', 'JHARKHAND', 0, 7360818181, 'India', 'sail city', 'new pundag', 'rakesh');

-- --------------------------------------------------------

--
-- Table structure for table `address_format`
--

CREATE TABLE `address_format` (
  `address_format_id` int(11) NOT NULL,
  `address_format` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `address_summary` varchar(48) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `myid` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `adminType` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`myid`, `user_name`, `first_name`, `last_name`, `email`, `password`, `isActive`, `address`, `city`, `state`, `zip`, `country`, `phone`, `image`, `adminType`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '', 'Admin', '', 'demo@ecommerce.com', '$2y$10$vbQE1Lbu1kXCAILSvaH0uOZ3oA6oZdCf/0kjQB16iGnjc3eTaFBeu', 1, 'address', 'Nivada', '12', '38000', '223', '0312 6545 874', 'resources/views/admin/images/admin_profile/1513671470.fast.jpg', 1, 'g02jTJfQdmkwuiSt37TTUanoPrzsJTAiK8MGD5pADUua19NoGLlnFeLcz031', '0000-00-00 00:00:00', '2017-12-18 21:32:50'),
(8, 'Admin', 'Admin', '', 'demo@android.com', '$2y$10$vbQE1Lbu1kXCAILSvaH0uOZ3oA6oZdCf/0kjQB16iGnjc3eTaFBeu', 1, 'address', 'Nivada', '12', '38000', '223', '', 'resources/views/admin/images/admin_profile/1513671470.fast.jpg', 1, 'resources/views/admin/images/admin_profile/1505132393.1486628854.fast.jpg', NULL, NULL),
(9, 'admin2', 'Admin', '', 'demo@ionic.com', '$2y$10$vbQE1Lbu1kXCAILSvaH0uOZ3oA6oZdCf/0kjQB16iGnjc3eTaFBeu', 1, 'address', 'Nivada', '12', '38000', '223', '', 'resources/views/admin/images/admin_profile/1513671470.fast.jpg', 1, 'resources/views/admin/images/admin_profile/1505132393.1486628854.fast.jpg', NULL, NULL),
(10, 'vectorcoder', 'Vector', 'Coder', 'vectorcoder@gmail.com', '$2y$10$TKJBNrT7bkFqz49XazJL7.mTa49DI9CeCcZipjuFer1h.OeZWsaHC', 1, 'address', 'Nivada', '12', '38000', '223', '', 'resources/views/admin/images/admin_profile/1513671470.fast.jpg', 1, 'resources/views/admin/images/admin_profile/1505132393.1486628854.fast.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_logins`
--

CREATE TABLE `admin_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_logins`
--

INSERT INTO `admin_logins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'edhik@gmail.com', '$2y$10$MXjugq2WasD9A5p.jaEk5ufWCIS/5HDJ/EXZ8g54lFOVeRID1X7/.', 'VfNwdQnNMLqGXti4LysQqGQ2RfaDTdn5NGVzGHvy5sgRdnW85V1ztkTU48My', '2019-05-11 22:35:11', '2019-05-11 22:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `alert_settings`
--

CREATE TABLE `alert_settings` (
  `alert_id` int(100) NOT NULL,
  `create_customer_email` tinyint(1) NOT NULL DEFAULT '0',
  `create_customer_notification` tinyint(1) NOT NULL DEFAULT '0',
  `order_status_email` tinyint(1) NOT NULL DEFAULT '0',
  `order_status_notification` tinyint(1) NOT NULL DEFAULT '0',
  `new_product_email` tinyint(1) NOT NULL DEFAULT '0',
  `new_product_notification` tinyint(1) NOT NULL DEFAULT '0',
  `forgot_email` tinyint(1) NOT NULL DEFAULT '0',
  `forgot_notification` tinyint(1) NOT NULL DEFAULT '0',
  `news_email` tinyint(1) NOT NULL DEFAULT '0',
  `news_notification` tinyint(1) NOT NULL DEFAULT '0',
  `contact_us_email` tinyint(1) NOT NULL DEFAULT '0',
  `contact_us_notification` tinyint(1) NOT NULL DEFAULT '0',
  `order_email` tinyint(1) NOT NULL DEFAULT '0',
  `order_notification` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alert_settings`
--

INSERT INTO `alert_settings` (`alert_id`, `create_customer_email`, `create_customer_notification`, `order_status_email`, `order_status_notification`, `new_product_email`, `new_product_notification`, `forgot_email`, `forgot_notification`, `news_email`, `news_notification`, `contact_us_email`, `contact_us_notification`, `order_email`, `order_notification`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `api_calls_list`
--

CREATE TABLE `api_calls_list` (
  `id` int(100) NOT NULL,
  `nonce` text NOT NULL,
  `url` varchar(64) NOT NULL,
  `device_id` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assemble_products`
--

CREATE TABLE `assemble_products` (
  `assemble_product_id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `has_support` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `banners_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banners_image` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `banners_group` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `banners_html_text` mediumtext COLLATE utf8_unicode_ci,
  `expires_impressions` int(7) DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banners_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `banners_group`, `banners_html_text`, `expires_impressions`, `expires_date`, `date_scheduled`, `date_added`, `date_status_change`, `status`, `type`, `banners_slug`) VALUES
(1, 'banner-1', '81', 'resources/assets/images/banner_images/1504099866.banner_1.jpg', '', NULL, 0, '2030-01-01 00:00:00', NULL, '2018-03-30 10:45:41', '2018-03-30 10:45:41', 1, 'product', ''),
(2, 'Banner-2', '12', 'resources/assets/images/banner_images/1502370343.banner_2.jpg', '', NULL, 0, '2020-01-01 00:00:00', NULL, '2017-08-10 13:05:43', NULL, 1, 'category', ''),
(3, 'Banner-3', '23', 'resources/assets/images/banner_images/1502370366.banner_3.jpg', '', NULL, 0, '2030-01-01 00:00:00', NULL, '2017-08-10 13:06:06', NULL, 1, 'category', ''),
(4, 'Banner-4', '17', 'resources/assets/images/banner_images/1502370387.banner_4.jpg', '', NULL, 0, '2030-01-01 00:00:00', NULL, '2017-08-10 13:06:27', NULL, 1, 'category', ''),
(5, 'Banner-5', '19', 'resources/assets/images/banner_images/1502370406.banner_5.jpg', '', NULL, 0, '2030-01-01 00:00:00', NULL, '2017-08-10 13:06:46', NULL, 1, 'Big Banner', '');

-- --------------------------------------------------------

--
-- Table structure for table `banners_history`
--

CREATE TABLE `banners_history` (
  `banners_history_id` int(11) NOT NULL,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(5) NOT NULL DEFAULT '0',
  `banners_clicked` int(5) NOT NULL DEFAULT '0',
  `banners_history_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categories_image` mediumtext COLLATE utf8_unicode_ci,
  `categories_icon` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `categories_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filter_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `categories_slug`, `filter_group`) VALUES
(1, 'new_one', NULL, '', 0, 1, '2019-05-13 22:31:16', '2019-05-13 22:31:16', 'new_one', 0),
(2, 'sdffsdf ds dsfs', NULL, '', 0, 2, '2019-05-13 22:47:51', '2019-05-13 22:47:51', 'dsf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categoriestree`
--

CREATE TABLE `categoriestree` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categoriestrees`
--

CREATE TABLE `categoriestrees` (
  `id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categoriestrees`
--

INSERT INTO `categoriestrees` (`id`, `title`, `categories_image`, `categories_icon`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Category1', NULL, NULL, 0, '2018-09-30 18:26:44', '2018-09-30 18:26:44'),
(2, 'Sub category 1', NULL, NULL, 1, '2018-09-30 18:26:59', '2018-09-30 18:26:59'),
(3, 'subcategory', NULL, NULL, 2, '2018-09-30 18:27:45', '2018-09-30 18:27:45'),
(4, 'ranjan', NULL, NULL, 1, '2018-09-30 18:28:13', '2018-09-30 18:28:13'),
(5, 'Sub category  2', NULL, NULL, 1, '2018-09-30 18:28:22', '2018-09-30 18:28:22'),
(6, 'Mobile', NULL, NULL, 0, '2018-09-30 18:28:45', '2018-09-30 18:28:45'),
(7, 'Samsung', NULL, NULL, 6, '2018-09-30 18:29:03', '2018-09-30 18:29:03'),
(9, 'Samsung galaxy', NULL, NULL, 7, '2018-09-30 18:29:42', '2018-09-30 18:29:42'),
(10, 'Samsung galaxy  1', NULL, NULL, 9, '2018-09-30 18:30:02', '2018-09-30 18:30:02'),
(11, 'Samsung galaxy 2', NULL, NULL, 9, '2018-09-30 18:30:32', '2018-09-30 18:30:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories_description`
--

CREATE TABLE `categories_description` (
  `categories_description_id` int(100) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories_description`
--

INSERT INTO `categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(1, 1, 1, 'Computers & Peripherals'),
(2, 2, 1, 'Laptops'),
(3, 3, 1, 'Printers & Inks'),
(4, 4, 1, 'Storage'),
(5, 5, 1, 'Computer Accessories'),
(6, 6, 1, 'Software'),
(7, 7, 1, 'Computer Components'),
(8, 8, 1, 'Routers & Modems'),
(9, 9, 1, 'Desktops'),
(10, 10, 1, 'Monitors'),
(11, 11, 1, 'Data Cards'),
(12, 12, 1, 'Extended Warranty & Insurance'),
(13, 13, 1, 'Refurbished Laptops, Printers & '),
(14, 14, 1, 'Scanners'),
(15, 15, 1, 'Intel Atom'),
(16, 16, 1, 'Intel Celeron'),
(17, 17, 1, 'Intel Pentium'),
(18, 18, 1, 'Intel Core i3'),
(19, 19, 1, 'Intel Core i5'),
(20, 20, 1, 'Intel Core i7'),
(21, 21, 1, 'AMD'),
(22, 22, 1, 'Pen Drives'),
(23, 23, 1, 'External Hard Disks'),
(24, 24, 1, 'Memory Cards'),
(25, 25, 1, 'Mobile & tablets'),
(26, 26, 1, 'SSD'),
(27, 27, 1, 'Mouse'),
(28, 28, 1, 'Keyboard'),
(29, 29, 1, 'Mobile Phones'),
(30, 30, 1, 'Tablets'),
(31, 31, 1, 'Laptop Batteries'),
(32, 32, 1, 'Mobiles Accessories'),
(33, 33, 1, 'Laptop Adapters'),
(34, 34, 1, 'Laptop Adapters'),
(35, 35, 1, 'Mobiles Accessories'),
(36, 36, 1, 'Laptop Skins'),
(37, 37, 1, 'USB Connectors & Hubs'),
(38, 38, 1, 'USB Fan, Lights & Gadgets'),
(39, 39, 1, 'Mobiles Accessories'),
(40, 40, 1, 'Tablet Accessories'),
(41, 41, 1, 'Mobile Insurance & Warranty'),
(42, 42, 1, 'Refurbished Mobiles'),
(43, 43, 1, 'Refurbished Tablets'),
(44, 44, 1, 'Feature Phone'),
(45, 45, 1, 'Used Mobiles'),
(46, 46, 1, 'Wearable Smart Devices'),
(47, 47, 1, 'Power Banks'),
(48, 48, 1, 'Bluetooth Devices'),
(49, 49, 1, 'Wearable & Smartwatches'),
(50, 50, 1, 'Smartwatch Accessories'),
(51, 51, 1, 'Mobile Screen Guards'),
(52, 52, 1, 'Selfie Sticks & Accessories'),
(53, 53, 1, 'Chargers & Cables'),
(54, 54, 1, 'Batteries'),
(55, 55, 1, 'Mobile Spare Parts'),
(56, 56, 1, 'Memory Cards'),
(57, 57, 1, 'Car Mobile Chargers & Holders'),
(58, 58, 1, 'Mobile Enhancements'),
(59, 59, 1, 'Cases & Covers'),
(60, 60, 1, 'Screen Guards'),
(61, 61, 1, '3D Glasses'),
(62, 62, 1, 'Cleaning Cloths, Docks & Stands'),
(63, 63, 1, 'Stylus Pen'),
(64, 64, 1, 'Anti Radiation Chips'),
(65, 65, 1, 'Keyboards'),
(66, 66, 1, 'Designer Stickers'),
(67, 67, 1, 'Cables & Chargers'),
(68, 68, 1, 'Smart Watches'),
(69, 69, 1, 'Smart Bands'),
(70, 70, 1, 'Bluetooth Hats'),
(71, 71, 1, 'Smart Gloves'),
(72, 72, 1, 'Smart Glasses'),
(73, 73, 1, 'Smart Headphones'),
(74, 74, 1, 'Smart Pendants'),
(75, 75, 1, 'Wearable Accessories'),
(76, 76, 1, 'Smart Trackers'),
(77, 77, 1, 'Smart Footwears'),
(78, 78, 1, 'Bluetooth Item Finders'),
(79, 79, 1, 'Smart Helmets'),
(80, 80, 1, 'TVs, Audio & Video'),
(81, 81, 1, 'Home Audio Systems'),
(82, 82, 1, 'Headphones & Earphones'),
(83, 83, 1, 'Speakers'),
(84, 84, 1, 'Computer Speakers'),
(85, 85, 1, 'DTH Services'),
(86, 86, 1, 'Video Players'),
(87, 87, 1, 'Landline Phones'),
(88, 88, 1, 'Audio & Video Accessories'),
(89, 89, 1, 'Extended Warranty'),
(90, 90, 1, 'Stereo Components'),
(91, 91, 1, 'MP3 & Media Players'),
(92, 92, 1, 'DJ & Karaoke'),
(93, 93, 1, 'Portable Audio Players'),
(94, 94, 1, 'Projectors & Accessories'),
(95, 95, 1, 'Refurbished Audio & Music Access'),
(96, 96, 1, 'Cameras & Accessories'),
(97, 97, 1, 'Digital Cameras'),
(98, 98, 1, 'Camera Accessories'),
(99, 99, 1, 'Camera Lenses'),
(100, 100, 1, 'DSLR'),
(101, 101, 1, 'Camcorders'),
(102, 102, 1, 'Camera Lenses'),
(103, 103, 1, 'Binoculars & Telescopes'),
(104, 104, 1, 'Imported Camera Accessories'),
(105, 105, 1, 'Imported Camera Accessories'),
(106, 106, 1, 'Tripods'),
(107, 107, 1, 'Studio Equipment'),
(108, 108, 1, 'Batteries'),
(109, 109, 1, 'Battery Chargers'),
(110, 110, 1, 'Screen Protectors'),
(111, 111, 1, 'Filters'),
(112, 112, 1, 'Microphones'),
(113, 113, 1, 'Card Reader'),
(114, 114, 1, 'Cables & Cords'),
(115, 115, 1, 'Camera Bags'),
(116, 116, 1, 'Flashes'),
(117, 117, 1, 'DSLR Straps'),
(118, 118, 1, 'Card Readers'),
(119, 119, 1, 'Hard Drive Cases'),
(120, 120, 1, 'Mouse Pads'),
(121, 121, 1, 'Bundles'),
(122, 122, 1, 'Webcams'),
(123, 123, 1, 'Cooling Pads/Laptop Tables'),
(124, 124, 1, 'Converters'),
(125, 125, 1, 'Wireless Laser Presenter'),
(126, 126, 1, 'Other Accessories'),
(127, 127, 1, 'Spike Busters & Surge Protectors'),
(128, 128, 1, 'Keyboard Protector'),
(129, 129, 1, 'Screen Guards'),
(130, 130, 1, 'Display Stands'),
(131, 131, 1, 'Laptop Bags & Sleeves'),
(132, 132, 1, 'USB Finger Print Scanners (EKYC)'),
(133, 133, 1, 'Electronics Drawing Pads'),
(134, 134, 1, 'Blank CD/DVDs'),
(135, 135, 1, 'CD Cases'),
(136, 136, 1, 'Imported Computer Accessories'),
(137, 137, 1, 'Operating System'),
(138, 138, 1, 'Security'),
(139, 139, 1, 'Office'),
(140, 140, 1, 'Educational'),
(141, 141, 1, 'Motherboards'),
(142, 142, 1, 'Graphics Card'),
(143, 143, 1, 'Internal Hard Drives'),
(144, 144, 1, 'RAM'),
(145, 145, 1, 'Cabinets'),
(146, 146, 1, 'Sound Cards'),
(147, 147, 1, 'PCI & TV Tuner Cards'),
(148, 148, 1, 'Power & Cooling Solutions'),
(149, 149, 1, 'All In One Desktops'),
(150, 150, 1, 'Tower Desktops'),
(151, 151, 1, 'Mini PCs'),
(152, 152, 1, 'Assembled Desktop'),
(153, 153, 1, 'Single Function Printers'),
(154, 154, 1, 'Multi Function Printers'),
(155, 155, 1, 'Appliances'),
(156, 156, 1, 'Appliances'),
(157, 157, 1, 'Large Appliances'),
(158, 158, 1, 'Large Appliances'),
(159, 159, 1, 'Home Appliances'),
(160, 160, 1, 'Personal Care Appliances'),
(161, 161, 1, 'Kitchen Appliances'),
(162, 162, 1, 'Washing Machine'),
(163, 163, 1, 'Air Conditioners'),
(164, 164, 1, 'Air Coolers'),
(165, 165, 1, 'Refrigerators'),
(166, 166, 1, 'Microwaves'),
(167, 167, 1, 'Fans'),
(168, 168, 1, 'Geysers & Heaters'),
(169, 169, 1, 'Solar Appliances'),
(170, 170, 1, 'Voltage Stabilizers'),
(171, 171, 1, 'Inverter & Batteries'),
(172, 172, 1, 'Irons'),
(173, 173, 1, 'Sewing Machines'),
(174, 174, 1, 'Sewing Machines Accessories'),
(175, 175, 1, 'Vacuum Cleaners'),
(176, 176, 1, 'Vacuum Cleaners Accesories'),
(177, 177, 1, 'Air Purifiers & Dehumidifiers'),
(178, 178, 1, 'Security Systems'),
(179, 179, 1, 'Dishwashers & Sonic Cleaners'),
(180, 180, 1, 'Ultrasonic Cleaners'),
(181, 181, 1, 'Garment Steamers'),
(182, 182, 1, 'Irons Accessories'),
(183, 183, 1, 'Trimmers'),
(184, 184, 1, 'Shavers'),
(185, 185, 1, 'Clippers'),
(186, 186, 1, 'Grooming Kits'),
(187, 187, 1, 'Body Groomers'),
(188, 188, 1, 'Hair Straighteners'),
(189, 189, 1, 'Hair Dryers'),
(190, 190, 1, 'Hair Curlers & More'),
(191, 191, 1, 'Epilators'),
(192, 192, 1, 'Massagers & More'),
(193, 193, 1, 'Beauty Care'),
(194, 194, 1, 'Refurbished Personal Care Applia'),
(195, 195, 1, 'Personal Care Appliances Accesso'),
(196, 196, 1, 'Juicers/Mixers/Grinders'),
(197, 197, 1, 'Food Processors'),
(198, 198, 1, 'Food Processors'),
(199, 199, 1, 'Water Purifiers'),
(200, 200, 1, 'Gas Stoves'),
(201, 201, 1, 'Chimneys'),
(202, 202, 1, 'Induction Cooktops'),
(203, 203, 1, 'Electric Cookers'),
(204, 204, 1, 'Coffee Makers & Electric Kettles'),
(205, 205, 1, 'Toasters & Sandwich Makers'),
(206, 206, 1, 'Hand Blenders & Choppers'),
(207, 207, 1, 'Roti Makers'),
(208, 208, 1, 'Grills'),
(209, 209, 1, 'Snack Makers'),
(210, 210, 1, 'Speakers'),
(211, 211, 1, 'Bluetooth Speakers'),
(212, 212, 1, 'Bluetooth Speakers'),
(213, 213, 1, 'Bluetooth Speakers'),
(214, 214, 1, 'Bluetooth Speakers'),
(215, 215, 1, 'Home Audio Systems'),
(216, 216, 1, '4.1 Speakers'),
(217, 217, 1, '4.1 Speakers'),
(218, 218, 1, '4.1 Speakers'),
(219, 219, 1, '4.1 Speakers'),
(220, 220, 1, '4.1 Speakers'),
(221, 221, 1, '5.1 Speakers'),
(222, 222, 1, '5.1 Speakers'),
(223, 223, 1, 'Soundbars & Soundbase'),
(224, 224, 1, 'Home Theatre Systems'),
(225, 225, 1, 'Hi-Fi  Systems'),
(226, 226, 1, 'Portable Speakers'),
(227, 227, 1, 'Tower Speakers'),
(228, 228, 1, 'Docking speakers'),
(229, 229, 1, 'Bookshelf Speakers'),
(230, 230, 1, 'Subwoofers'),
(231, 231, 1, 'Ceiling & Wall Mount Speakers'),
(232, 232, 1, 'Speaker Accessories'),
(233, 233, 1, 'Camera Memory Card'),
(234, 234, 1, 'Adapters'),
(235, 235, 1, 'Cleaners'),
(236, 236, 1, 'Camera Pouches'),
(237, 237, 1, 'Remote Controls'),
(238, 238, 1, 'Mounts'),
(239, 239, 1, 'Card Holder'),
(240, 240, 1, 'Flash Diffuser'),
(241, 241, 1, 'Drones'),
(242, 242, 1, 'Monopods'),
(243, 243, 1, 'Battery Grips'),
(244, 244, 1, 'Brackets'),
(245, 245, 1, 'Stepping Rings'),
(246, 246, 1, 'Remote Controls'),
(247, 247, 1, 'Dry Cabinet'),
(248, 248, 1, 'Calibration Charts & Grey Cards'),
(249, 249, 1, 'Extended Warranty'),
(250, 250, 1, 'Instant Camera Cartridges'),
(251, 251, 1, 'Carmera pouches'),
(252, 252, 1, 'Camera Pouches');

-- --------------------------------------------------------

--
-- Table structure for table `category_footers`
--

CREATE TABLE `category_footers` (
  `category_footer_id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_footers`
--

INSERT INTO `category_footers` (`category_footer_id`, `categories_id`, `sort`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-10-22 10:35:15', '2018-10-22 10:35:15'),
(2, 2, 2, '2018-10-22 10:35:15', '2018-10-22 10:35:15');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL,
  `countries_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_2` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_3` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `address_format_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countries_id`, `countries_name`, `countries_iso_code_2`, `countries_iso_code_3`, `address_format_id`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1),
(2, 'Albania', 'AL', 'ALB', 1),
(3, 'Algeria', 'DZ', 'DZA', 1),
(4, 'American Samoa', 'AS', 'ASM', 1),
(5, 'Andorra', 'AD', 'AND', 1),
(6, 'Angola', 'AO', 'AGO', 1),
(7, 'Anguilla', 'AI', 'AIA', 1),
(8, 'Antarctica', 'AQ', 'ATA', 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1),
(10, 'Argentina', 'AR', 'ARG', 1),
(11, 'Armenia', 'AM', 'ARM', 1),
(12, 'Aruba', 'AW', 'ABW', 1),
(13, 'Australia', 'AU', 'AUS', 1),
(14, 'Austria', 'AT', 'AUT', 5),
(15, 'Azerbaijan', 'AZ', 'AZE', 1),
(16, 'Bahamas', 'BS', 'BHS', 1),
(17, 'Bahrain', 'BH', 'BHR', 1),
(18, 'Bangladesh', 'BD', 'BGD', 1),
(19, 'Barbados', 'BB', 'BRB', 1),
(20, 'Belarus', 'BY', 'BLR', 1),
(21, 'Belgium', 'BE', 'BEL', 1),
(22, 'Belize', 'BZ', 'BLZ', 1),
(23, 'Benin', 'BJ', 'BEN', 1),
(24, 'Bermuda', 'BM', 'BMU', 1),
(25, 'Bhutan', 'BT', 'BTN', 1),
(26, 'Bolivia', 'BO', 'BOL', 1),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1),
(28, 'Botswana', 'BW', 'BWA', 1),
(29, 'Bouvet Island', 'BV', 'BVT', 1),
(30, 'Brazil', 'BR', 'BRA', 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1),
(33, 'Bulgaria', 'BG', 'BGR', 1),
(34, 'Burkina Faso', 'BF', 'BFA', 1),
(35, 'Burundi', 'BI', 'BDI', 1),
(36, 'Cambodia', 'KH', 'KHM', 1),
(37, 'Cameroon', 'CM', 'CMR', 1),
(38, 'Canada', 'CA', 'CAN', 1),
(39, 'Cape Verde', 'CV', 'CPV', 1),
(40, 'Cayman Islands', 'KY', 'CYM', 1),
(41, 'Central African Republic', 'CF', 'CAF', 1),
(42, 'Chad', 'TD', 'TCD', 1),
(43, 'Chile', 'CL', 'CHL', 1),
(44, 'China', 'CN', 'CHN', 1),
(45, 'Christmas Island', 'CX', 'CXR', 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1),
(47, 'Colombia', 'CO', 'COL', 1),
(48, 'Comoros', 'KM', 'COM', 1),
(49, 'Congo', 'CG', 'COG', 1),
(50, 'Cook Islands', 'CK', 'COK', 1),
(51, 'Costa Rica', 'CR', 'CRI', 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', 1),
(53, 'Croatia', 'HR', 'HRV', 1),
(54, 'Cuba', 'CU', 'CUB', 1),
(55, 'Cyprus', 'CY', 'CYP', 1),
(56, 'Czech Republic', 'CZ', 'CZE', 1),
(57, 'Denmark', 'DK', 'DNK', 1),
(58, 'Djibouti', 'DJ', 'DJI', 1),
(59, 'Dominica', 'DM', 'DMA', 1),
(60, 'Dominican Republic', 'DO', 'DOM', 1),
(61, 'East Timor', 'TP', 'TMP', 1),
(62, 'Ecuador', 'EC', 'ECU', 1),
(63, 'Egypt', 'EG', 'EGY', 1),
(64, 'El Salvador', 'SV', 'SLV', 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1),
(66, 'Eritrea', 'ER', 'ERI', 1),
(67, 'Estonia', 'EE', 'EST', 1),
(68, 'Ethiopia', 'ET', 'ETH', 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1),
(70, 'Faroe Islands', 'FO', 'FRO', 1),
(71, 'Fiji', 'FJ', 'FJI', 1),
(72, 'Finland', 'FI', 'FIN', 1),
(73, 'France', 'FR', 'FRA', 1),
(74, 'France, Metropolitan', 'FX', 'FXX', 1),
(75, 'French Guiana', 'GF', 'GUF', 1),
(76, 'French Polynesia', 'PF', 'PYF', 1),
(77, 'French Southern Territories', 'TF', 'ATF', 1),
(78, 'Gabon', 'GA', 'GAB', 1),
(79, 'Gambia', 'GM', 'GMB', 1),
(80, 'Georgia', 'GE', 'GEO', 1),
(81, 'Germany', 'DE', 'DEU', 5),
(82, 'Ghana', 'GH', 'GHA', 1),
(83, 'Gibraltar', 'GI', 'GIB', 1),
(84, 'Greece', 'GR', 'GRC', 1),
(85, 'Greenland', 'GL', 'GRL', 1),
(86, 'Grenada', 'GD', 'GRD', 1),
(87, 'Guadeloupe', 'GP', 'GLP', 1),
(88, 'Guam', 'GU', 'GUM', 1),
(89, 'Guatemala', 'GT', 'GTM', 1),
(90, 'Guinea', 'GN', 'GIN', 1),
(91, 'Guinea-bissau', 'GW', 'GNB', 1),
(92, 'Guyana', 'GY', 'GUY', 1),
(93, 'Haiti', 'HT', 'HTI', 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1),
(95, 'Honduras', 'HN', 'HND', 1),
(96, 'Hong Kong', 'HK', 'HKG', 1),
(97, 'Hungary', 'HU', 'HUN', 1),
(98, 'Iceland', 'IS', 'ISL', 1),
(99, 'India', 'IN', 'IND', 1),
(100, 'Indonesia', 'ID', 'IDN', 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1),
(102, 'Iraq', 'IQ', 'IRQ', 1),
(103, 'Ireland', 'IE', 'IRL', 1),
(104, 'Israel', 'IL', 'ISR', 1),
(105, 'Italy', 'IT', 'ITA', 1),
(106, 'Jamaica', 'JM', 'JAM', 1),
(107, 'Japan', 'JP', 'JPN', 1),
(108, 'Jordan', 'JO', 'JOR', 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1),
(110, 'Kenya', 'KE', 'KEN', 1),
(111, 'Kiribati', 'KI', 'KIR', 1),
(112, 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', 1),
(113, 'Korea, Republic of', 'KR', 'KOR', 1),
(114, 'Kuwait', 'KW', 'KWT', 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 1),
(117, 'Latvia', 'LV', 'LVA', 1),
(118, 'Lebanon', 'LB', 'LBN', 1),
(119, 'Lesotho', 'LS', 'LSO', 1),
(120, 'Liberia', 'LR', 'LBR', 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1),
(122, 'Liechtenstein', 'LI', 'LIE', 1),
(123, 'Lithuania', 'LT', 'LTU', 1),
(124, 'Luxembourg', 'LU', 'LUX', 1),
(125, 'Macau', 'MO', 'MAC', 1),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 1),
(127, 'Madagascar', 'MG', 'MDG', 1),
(128, 'Malawi', 'MW', 'MWI', 1),
(129, 'Malaysia', 'MY', 'MYS', 1),
(130, 'Maldives', 'MV', 'MDV', 1),
(131, 'Mali', 'ML', 'MLI', 1),
(132, 'Malta', 'MT', 'MLT', 1),
(133, 'Marshall Islands', 'MH', 'MHL', 1),
(134, 'Martinique', 'MQ', 'MTQ', 1),
(135, 'Mauritania', 'MR', 'MRT', 1),
(136, 'Mauritius', 'MU', 'MUS', 1),
(137, 'Mayotte', 'YT', 'MYT', 1),
(138, 'Mexico', 'MX', 'MEX', 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1),
(141, 'Monaco', 'MC', 'MCO', 1),
(142, 'Mongolia', 'MN', 'MNG', 1),
(143, 'Montserrat', 'MS', 'MSR', 1),
(144, 'Morocco', 'MA', 'MAR', 1),
(145, 'Mozambique', 'MZ', 'MOZ', 1),
(146, 'Myanmar', 'MM', 'MMR', 1),
(147, 'Namibia', 'NA', 'NAM', 1),
(148, 'Nauru', 'NR', 'NRU', 1),
(149, 'Nepal', 'NP', 'NPL', 1),
(150, 'Netherlands', 'NL', 'NLD', 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1),
(152, 'New Caledonia', 'NC', 'NCL', 1),
(153, 'New Zealand', 'NZ', 'NZL', 1),
(154, 'Nicaragua', 'NI', 'NIC', 1),
(155, 'Niger', 'NE', 'NER', 1),
(156, 'Nigeria', 'NG', 'NGA', 1),
(157, 'Niue', 'NU', 'NIU', 1),
(158, 'Norfolk Island', 'NF', 'NFK', 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1),
(160, 'Norway', 'NO', 'NOR', 1),
(161, 'Oman', 'OM', 'OMN', 1),
(162, 'Pakistan', 'PK', 'PAK', 1),
(163, 'Palau', 'PW', 'PLW', 1),
(164, 'Panama', 'PA', 'PAN', 1),
(165, 'Papua New Guinea', 'PG', 'PNG', 1),
(166, 'Paraguay', 'PY', 'PRY', 1),
(167, 'Peru', 'PE', 'PER', 1),
(168, 'Philippines', 'PH', 'PHL', 1),
(169, 'Pitcairn', 'PN', 'PCN', 1),
(170, 'Poland', 'PL', 'POL', 1),
(171, 'Portugal', 'PT', 'PRT', 1),
(172, 'Puerto Rico', 'PR', 'PRI', 1),
(173, 'Qatar', 'QA', 'QAT', 1),
(174, 'Reunion', 'RE', 'REU', 1),
(175, 'Romania', 'RO', 'ROM', 1),
(176, 'Russian Federation', 'RU', 'RUS', 1),
(177, 'Rwanda', 'RW', 'RWA', 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1),
(179, 'Saint Lucia', 'LC', 'LCA', 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1),
(181, 'Samoa', 'WS', 'WSM', 1),
(182, 'San Marino', 'SM', 'SMR', 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1),
(184, 'Saudi Arabia', 'SA', 'SAU', 1),
(185, 'Senegal', 'SN', 'SEN', 1),
(186, 'Seychelles', 'SC', 'SYC', 1),
(187, 'Sierra Leone', 'SL', 'SLE', 1),
(188, 'Singapore', 'SG', 'SGP', 4),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1),
(190, 'Slovenia', 'SI', 'SVN', 1),
(191, 'Solomon Islands', 'SB', 'SLB', 1),
(192, 'Somalia', 'SO', 'SOM', 1),
(193, 'South Africa', 'ZA', 'ZAF', 1),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 1),
(195, 'Spain', 'ES', 'ESP', 3),
(196, 'Sri Lanka', 'LK', 'LKA', 1),
(197, 'St. Helena', 'SH', 'SHN', 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1),
(199, 'Sudan', 'SD', 'SDN', 1),
(200, 'Suriname', 'SR', 'SUR', 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1),
(202, 'Swaziland', 'SZ', 'SWZ', 1),
(203, 'Sweden', 'SE', 'SWE', 1),
(204, 'Switzerland', 'CH', 'CHE', 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1),
(206, 'Taiwan', 'TW', 'TWN', 1),
(207, 'Tajikistan', 'TJ', 'TJK', 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1),
(209, 'Thailand', 'TH', 'THA', 1),
(210, 'Togo', 'TG', 'TGO', 1),
(211, 'Tokelau', 'TK', 'TKL', 1),
(212, 'Tonga', 'TO', 'TON', 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1),
(214, 'Tunisia', 'TN', 'TUN', 1),
(215, 'Turkey', 'TR', 'TUR', 1),
(216, 'Turkmenistan', 'TM', 'TKM', 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1),
(218, 'Tuvalu', 'TV', 'TUV', 1),
(219, 'Uganda', 'UG', 'UGA', 1),
(220, 'Ukraine', 'UA', 'UKR', 1),
(221, 'United Arab Emirates', 'AE', 'ARE', 1),
(222, 'United Kingdom', 'GB', 'GBR', 1),
(223, 'United States', 'US', 'USA', 2),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1),
(225, 'Uruguay', 'UY', 'URY', 1),
(226, 'Uzbekistan', 'UZ', 'UZB', 1),
(227, 'Vanuatu', 'VU', 'VUT', 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1),
(229, 'Venezuela', 'VE', 'VEN', 1),
(230, 'Viet Nam', 'VN', 'VNM', 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1),
(234, 'Western Sahara', 'EH', 'ESH', 1),
(235, 'Yemen', 'YE', 'YEM', 1),
(236, 'Yugoslavia', 'YU', 'YUG', 1),
(237, 'Zaire', 'ZR', 'ZAR', 1),
(238, 'Zambia', 'ZM', 'ZMB', 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupans_id` int(100) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `discount_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Options: fixed_cart, percent, fixed_product and percent_product. Default: fixed_cart.',
  `amount` int(11) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `usage_count` int(100) NOT NULL,
  `individual_use` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exclude_product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(100) NOT NULL,
  `usage_limit_per_user` int(100) NOT NULL,
  `limit_usage_to_x_items` int(100) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exclude_sale_items` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_amount` decimal(10,2) NOT NULL,
  `maximum_amount` decimal(10,2) NOT NULL,
  `email_restrictions` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `used_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupans_id`, `code`, `date_created`, `date_modified`, `description`, `discount_type`, `amount`, `expiry_date`, `usage_count`, `individual_use`, `product_ids`, `exclude_product_ids`, `usage_limit`, `usage_limit_per_user`, `limit_usage_to_x_items`, `free_shipping`, `product_categories`, `excluded_product_categories`, `exclude_sale_items`, `minimum_amount`, `maximum_amount`, `email_restrictions`, `used_by`) VALUES
(1, 'cart_discount_fixed', '2018-02-14 11:49:30', '2018-02-19 11:06:04', '', 'fixed_cart', 10, '2018-06-07 00:00:00', 9, 0, '', '', 10, 3, 0, 0, '', '', 0, '5.00', '1000.00', '', ',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1'),
(2, 'cart_discount_percentage', '2018-02-14 11:50:20', '2018-02-16 14:57:19', '', 'percent', 10, '2018-04-04 00:00:00', 0, 0, '', '', 0, 0, 0, 0, '', '', 0, '5.00', '0.00', 'test@gmail.com', ',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1'),
(3, 'product_discount_fixed', '2018-02-16 14:52:33', '2018-07-13 15:21:00', '', 'fixed_product', 5, '2021-03-03 00:00:00', 0, 0, '', '', 0, 0, 0, 0, '', '', 0, '0.00', '0.00', 'balawalali3387@gmail.com', ',1,41,42,46,46'),
(4, 'product_discount_percentage', '2018-02-16 14:53:08', '2018-02-19 06:42:56', '', 'percent_product', 5, '1970-01-01 00:00:00', 0, 0, '', '', 0, 0, 0, 0, '', '', 0, '0.00', '0.00', '', ',1,1,1,1,1,7,7,7,7,7,7,1,20,30,30,32,32');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `currencies_id` int(11) NOT NULL,
  `title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_left` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thousands_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_places` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` float(13,8) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`currencies_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_point`, `thousands_point`, `decimal_places`, `value`, `last_updated`) VALUES
(1, 'U.S. Dollar', 'USD', '$', NULL, '.', '.', '2', NULL, '2017-02-09 00:00:00'),
(2, 'Euro', 'EUR', NULL, '€', '.', '.', '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL,
  `customers_gender` char(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `customers_firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customers_lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_default_address_id` int(11) DEFAULT NULL,
  `customers_telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `customers_newsletter` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `fb_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_picture` mediumtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customers_id`, `customers_gender`, `customers_firstname`, `customers_lastname`, `customers_dob`, `email`, `user_name`, `customers_default_address_id`, `customers_telephone`, `customers_fax`, `password`, `customers_newsletter`, `isActive`, `fb_id`, `google_id`, `customers_picture`, `created_at`, `updated_at`, `is_seen`, `remember_token`, `mobile`) VALUES
(8, '0', '', NULL, '', '', NULL, NULL, NULL, NULL, '$2y$10$6nx5WZq9jUAKJBqPyRG/xOdNIiNDliMxwBsufVUa/elKhxgWMOWPS', NULL, 0, NULL, NULL, NULL, '2019-05-17 09:58:43', '2019-05-17 14:10:18', 0, '', '9546042788'),
(9, '0', '', NULL, '', '', NULL, NULL, NULL, NULL, '$2y$10$L3Um.IMGDyAb9criGtNiNudkwZpz1cH23XZ/JlzX7A8Y6xeT7lXcC', NULL, 0, NULL, NULL, NULL, '2019-05-17 10:05:50', '2019-05-17 10:05:50', 0, '', '441843285'),
(10, '0', '', NULL, '', '', NULL, NULL, NULL, NULL, '$2y$10$GvtJnwtmcvuVm0KxcYGi/elHxgU2ouB9MF1uqLtaADg/tYTATbD5m', NULL, 0, NULL, NULL, NULL, '2019-05-17 10:14:09', '2019-05-17 10:14:09', 0, '', '7301908025'),
(11, '0', '', NULL, '', '', NULL, 32, NULL, NULL, '$2y$10$yuEBjchAvYn4zj1kihKdUOnYtO0FQ8DkzwNS0XVHkfkmke4DyH7GK', NULL, 0, NULL, NULL, NULL, '2019-05-17 10:17:08', '2019-05-18 05:44:28', 0, '', '9877805339'),
(12, '0', '', NULL, '', '', NULL, NULL, NULL, NULL, '$2y$10$45Wi3k7zhAKxuw8K4F66BO5pMdIPxmVBWS5JcBlBICx5/gPAVboKe', NULL, 0, NULL, NULL, NULL, '2019-05-17 14:15:14', '2019-05-17 14:15:14', 0, '', '9234386188'),
(13, '0', '', NULL, '', '', NULL, NULL, NULL, NULL, '$2y$10$BXgXI7AxGHqk2VDrGurnAOFkgd.HKrJ3eykZ1jaVNFFzzzJcMjqdu', NULL, 0, NULL, NULL, NULL, '2019-05-19 10:18:59', '2019-05-19 10:18:59', 0, '', '7717752021'),
(14, '0', '', NULL, '', '', NULL, NULL, NULL, NULL, '$2y$10$5.B3Xih1NpaoTAVrPdXI5uK.5Vfdjc.ZM8.FMSAEKsRCIVaI8zg2.', NULL, 0, NULL, NULL, NULL, '2019-05-20 00:46:26', '2019-05-20 00:46:26', 0, '', '8600025782'),
(15, '0', '', NULL, '', '', NULL, NULL, NULL, NULL, '$2y$10$F08SSTxdJBjNM2qo2LmrV.J71.yJrg4UdYaYGRY4HM8yKLGcq2Xmq', NULL, 0, NULL, NULL, NULL, '2019-05-20 16:02:26', '2019-05-20 16:02:26', 0, '', '7972809816'),
(16, '0', '', NULL, '', '', NULL, NULL, NULL, NULL, '$2a$10$g.8vkwS861loXn/kPob4Rub/fbK0fYbp9v5hnxQ6eA4O6k/Nh0ZEK', NULL, 0, NULL, NULL, NULL, '2019-05-22 07:47:39', '2019-05-22 07:47:39', 0, '', '9823352748'),
(17, '0', '', NULL, '', '', NULL, NULL, NULL, NULL, '$2a$10$JkUp1uERK7yT2qxY0T3wF.tXcqzEEXkN5CesI4VIww7uO1CzkiP6S', NULL, 0, NULL, NULL, NULL, '2019-05-22 08:42:08', '2019-05-22 08:42:08', 0, '', '7979083703'),
(18, '0', '', NULL, '', '', NULL, NULL, NULL, NULL, '$2a$10$mMfgW5Se5HAy8i1m8dRM8.zpRA9ZmCxig5MxocN/PJWo86K1X637u', NULL, 0, NULL, NULL, NULL, '2019-05-22 11:09:44', '2019-05-22 11:09:44', 0, '', '9031777877'),
(19, '0', '', NULL, '', '', NULL, NULL, NULL, NULL, '$2a$10$uKu8Qdl9W.wFshqhlMjh3O0Vxsg5ziEB7QTammyFWbZWSCMMj9Uv.', NULL, 0, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-05-24 13:07:57', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket`
--

CREATE TABLE `customers_basket` (
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8_unicode_ci NOT NULL,
  `customers_basket_quantity` int(2) NOT NULL,
  `final_price` decimal(15,2) DEFAULT NULL,
  `customers_basket_date_added` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_order` tinyint(1) NOT NULL DEFAULT '0',
  `session_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers_basket`
--

INSERT INTO `customers_basket` (`customers_basket_id`, `customers_id`, `products_id`, `customers_basket_quantity`, `final_price`, `customers_basket_date_added`, `is_order`, `session_id`) VALUES
(1, 0, '80', 2, '99.99', '2018-09-06', 0, 'vmBsNZ9fftLRwzFWFiByPL94fBtAUEQJtUmdV9sj'),
(2, 0, '13', 1, '125.00', '2018-09-13', 0, '81CZiEX7aitDD7VXiBpPQq49m33xinImhXLcif31'),
(3, 0, '4', 1, '85.00', '2018-09-13', 0, '81CZiEX7aitDD7VXiBpPQq49m33xinImhXLcif31'),
(4, 0, '68', 1, '49.50', '2018-09-13', 0, '81CZiEX7aitDD7VXiBpPQq49m33xinImhXLcif31');

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket_attributes`
--

CREATE TABLE `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL,
  `customers_basket_id` int(100) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8_unicode_ci NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers_basket_attributes`
--

INSERT INTO `customers_basket_attributes` (`customers_basket_attributes_id`, `customers_basket_id`, `customers_id`, `products_id`, `products_options_id`, `products_options_values_id`, `session_id`) VALUES
(1, 2, 0, '13', 7, 41, '81CZiEX7aitDD7VXiBpPQq49m33xinImhXLcif31'),
(2, 2, 0, '13', 10, 65, '81CZiEX7aitDD7VXiBpPQq49m33xinImhXLcif31'),
(3, 3, 0, '4', 4, 29, '81CZiEX7aitDD7VXiBpPQq49m33xinImhXLcif31'),
(4, 4, 0, '68', 7, 42, '81CZiEX7aitDD7VXiBpPQq49m33xinImhXLcif31'),
(5, 4, 0, '68', 10, 65, '81CZiEX7aitDD7VXiBpPQq49m33xinImhXLcif31');

-- --------------------------------------------------------

--
-- Table structure for table `customers_info`
--

CREATE TABLE `customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(5) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `delivery_id` int(10) UNSIGNED NOT NULL,
  `delivery_in` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`delivery_id`, `delivery_in`, `created_at`, `updated_at`) VALUES
(1, '2 days', '2019-05-12 16:42:19', '2019-05-12 16:42:19'),
(2, '1 days', '2019-05-12 16:42:19', '2019-05-12 16:42:19');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(10) UNSIGNED NOT NULL,
  `delivery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(100) NOT NULL,
  `device_id` text COLLATE utf8_unicode_ci NOT NULL,
  `customers_id` int(100) NOT NULL DEFAULT '0',
  `device_type` text COLLATE utf8_unicode_ci NOT NULL,
  `register_date` int(100) NOT NULL DEFAULT '0',
  `update_date` int(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `isDesktop` tinyint(1) NOT NULL DEFAULT '0',
  `onesignal` tinyint(1) NOT NULL DEFAULT '0',
  `isEnableMobile` tinyint(1) NOT NULL DEFAULT '1',
  `isEnableDesktop` tinyint(1) NOT NULL DEFAULT '1',
  `ram` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processor` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_os` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_notify` tinyint(1) NOT NULL DEFAULT '1',
  `fcm` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fedex_shipping`
--

CREATE TABLE `fedex_shipping` (
  `fedex_id` int(100) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_height` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_width` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `person_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `post_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_package` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fedex_shipping`
--

INSERT INTO `fedex_shipping` (`fedex_id`, `title`, `user_name`, `password`, `parcel_height`, `parcel_width`, `person_name`, `company_name`, `phone_number`, `address_line_1`, `address_line_2`, `country`, `state`, `post_code`, `city`, `no_of_package`) VALUES
(1, 'FedEx', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `filters`
--

CREATE TABLE `filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `filter_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filter_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `display` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filters`
--

INSERT INTO `filters` (`filter_id`, `filter_name`, `filter_code`, `sort`, `display`, `created_at`, `updated_at`) VALUES
(2, 'testingddf', 'sfs', 5, 1, '2018-10-09 06:08:13', '2018-10-23 00:25:15'),
(3, 'sdfsf', 'sfds', 2, 1, '2018-10-11 02:53:55', '2018-10-23 00:25:15'),
(4, 'sdfsd', 'd', 1, 1, '2018-10-11 02:54:05', '2018-10-23 00:28:30'),
(5, 'first Test', 'dd', 3, 1, '2018-10-23 00:20:04', '2018-10-23 00:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `filter_groups`
--

CREATE TABLE `filter_groups` (
  `group_id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filter_groups`
--

INSERT INTO `filter_groups` (`group_id`, `group_name`, `group_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'group1', 'fgd', 1, '2018-10-16 01:07:38', '2018-10-16 01:07:38'),
(2, 'gr3', 'sdfs', 1, '2018-10-16 01:07:47', '2018-10-16 01:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `filter_options`
--

CREATE TABLE `filter_options` (
  `filter_option_id` int(10) UNSIGNED NOT NULL,
  `option_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `filter_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filter_options`
--

INSERT INTO `filter_options` (`filter_option_id`, `option_name`, `created_at`, `updated_at`, `filter_id`, `slug`, `sort`) VALUES
(1, 'firstfil', '2018-10-16 04:42:34', '2018-10-23 00:26:38', 2, 'firstfil', 4),
(2, 'filter2', '2018-10-16 04:42:54', '2018-10-23 00:26:38', 2, 'filter2', 1),
(3, 'fil3', '2018-10-16 04:43:07', '2018-10-23 00:26:38', 2, 'fil3', 2),
(4, 'Adnss', '2018-10-16 08:22:27', '2018-10-16 08:22:27', 3, 'adnss', 1),
(5, 'dsfs', '2018-10-16 08:22:39', '2018-10-16 08:22:39', 3, 'dsfs', 4),
(6, 'dgdgg', '2018-10-17 01:57:36', '2018-10-17 01:57:36', 4, 'dgdgg', 1),
(7, 'dfgdgdg', '2018-10-17 01:57:49', '2018-10-17 01:57:49', 4, 'dfgdgdg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `flate_rate`
--

CREATE TABLE `flate_rate` (
  `id` int(100) NOT NULL,
  `flate_rate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flate_rate`
--

INSERT INTO `flate_rate` (`id`, `flate_rate`, `currency`) VALUES
(1, '11', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `geo_zones`
--

CREATE TABLE `geo_zones` (
  `geo_zone_id` int(11) NOT NULL,
  `geo_zone_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `geo_zone_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `geo_zones`
--

INSERT INTO `geo_zones` (`geo_zone_id`, `geo_zone_name`, `geo_zone_description`, `last_modified`, `date_added`) VALUES
(1, 'Florida', 'Florida local sales tax zone', '2017-01-10 00:00:00', '2017-01-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `group_filters`
--

CREATE TABLE `group_filters` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `filter_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_filters`
--

INSERT INTO `group_filters` (`id`, `group_id`, `filter_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2018-10-16 01:07:59', '2018-10-16 01:07:59'),
(2, 1, 3, '2018-10-16 01:07:59', '2018-10-16 01:07:59'),
(5, 2, 2, '2018-10-23 02:13:46', '2018-10-23 02:13:46');

-- --------------------------------------------------------

--
-- Table structure for table `home_products`
--

CREATE TABLE `home_products` (
  `section_id` int(10) UNSIGNED NOT NULL,
  `section_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_products`
--

INSERT INTO `home_products` (`section_id`, `section_name`, `sort`, `status`, `created_at`, `updated_at`) VALUES
(1, 'first', 1, 1, '2018-10-18 02:59:24', '2018-10-18 02:59:24'),
(2, 'second test', 2, 1, '2018-10-18 02:59:50', '2018-10-18 02:59:50');

-- --------------------------------------------------------

--
-- Table structure for table `hsn`
--

CREATE TABLE `hsn` (
  `id` int(10) UNSIGNED NOT NULL,
  `gst_hsn_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `tax_slab` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hsncodes`
--

CREATE TABLE `hsncodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `gst_hsn_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `tax_slab` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hsn_codes`
--

CREATE TABLE `hsn_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `gst_hsn_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `tax_slab` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hsn_codes`
--

INSERT INTO `hsn_codes` (`id`, `gst_hsn_code`, `status`, `tax_slab`, `created_at`, `updated_at`) VALUES
(3, '5121123132', 1, 'tax_slab', NULL, NULL),
(4, '465456456456', 0, 'tax_slab2', NULL, NULL),
(5, '21323212313223', 1, '5%', '2018-09-14 10:24:47', '2018-09-14 10:24:47'),
(6, '9685843388', 1, '9%', '2018-09-14 10:42:14', '2018-09-14 10:42:14'),
(7, '9685843388', 1, '12%', '2018-09-14 10:43:24', '2018-09-14 10:43:24'),
(8, '96858433881', 1, '12%', '2018-09-16 18:15:19', '2018-09-16 18:15:19');

-- --------------------------------------------------------

--
-- Table structure for table `hula_our_infos`
--

CREATE TABLE `hula_our_infos` (
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `label_id` int(100) NOT NULL,
  `label_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`label_id`, `label_name`) VALUES
(2, 'Creating an account means you’re okay with shopify\'s Terms of Service, Privacy Policy'),
(1031, 'Home'),
(1, 'I\'ve forgotten my password?'),
(1030, 'Menu'),
(1029, 'Clear'),
(1028, 'Apply'),
(1027, 'Close'),
(1026, 'Price Range'),
(1025, 'Filters'),
(1024, 'My Wish List'),
(1023, 'Log Out'),
(1022, 'Please login or create an account for free'),
(1021, 'Login & Register'),
(1020, 'Save Address'),
(1018, 'State'),
(1019, 'Update Address'),
(1017, 'Post code'),
(1016, 'City'),
(1015, 'Zone'),
(1014, 'other'),
(1013, 'Country'),
(1012, 'Shipping Address'),
(1011, 'Proceed'),
(1010, 'Remove'),
(1008, 'by'),
(1009, 'View'),
(1007, 'Quantity'),
(1006, 'Price'),
(1005, 'continue shopping'),
(1004, 'Your cart is empty'),
(1003, 'My Cart'),
(1002, 'Continue'),
(1001, 'Error: invalid cvc number!'),
(1000, 'Error: invalid expiry date!'),
(999, 'Error: invalid card number!'),
(998, 'Expiration'),
(997, 'Expiration Date'),
(996, 'Card Number'),
(995, 'Payment'),
(994, 'Order Notes'),
(993, 'Shipping Cost'),
(992, 'Tax'),
(991, 'Products Price'),
(990, 'SubTotal'),
(989, 'Products'),
(988, 'Shipping Method'),
(987, 'Billing Address'),
(986, 'Order'),
(985, 'Next'),
(984, 'Same as Shipping Address'),
(981, 'Billing Info'),
(982, 'Address'),
(983, 'Phone'),
(980, 'Already Memeber?'),
(979, 'Last Name'),
(978, 'First Name'),
(977, 'Create an Account'),
(976, 'Add new Address'),
(975, 'Please add your new shipping address for the futher processing of the your order'),
(969, 'Order Status'),
(970, 'Orders ID'),
(971, 'Product Price'),
(972, 'No. of Products'),
(973, 'Date'),
(974, 'Customer Address'),
(968, 'Customer Orders'),
(967, 'Change Password'),
(966, 'New Password'),
(965, 'Current Password'),
(964, 'Update'),
(963, 'Date of Birth'),
(962, 'Mobile'),
(961, 'My Account'),
(960, 'Likes'),
(959, 'newest'),
(958, 'top seller'),
(957, 'special'),
(956, 'most liked'),
(955, 'Cancel'),
(954, 'Sort Products'),
(953, 'Special Products'),
(952, 'Price : low - high'),
(951, 'Price : high - low'),
(950, 'Z - A'),
(949, 'A - Z'),
(948, 'All'),
(947, 'Explore More'),
(946, 'Note to the buyer'),
(945, 'Coupon'),
(944, 'coupon code'),
(943, 'Coupon Amount'),
(942, 'Coupon Code'),
(941, 'Food Categories'),
(940, 'Recipe of Day'),
(939, 'Top Dishes'),
(938, 'Skip'),
(937, 'Term and Services'),
(936, 'Privacy Policy'),
(935, 'Refund Policy'),
(934, 'Newest'),
(933, 'OUT OF STOCK'),
(932, 'Select Language'),
(931, 'Reset'),
(930, 'Shop'),
(929, 'Settings'),
(928, 'Enter keyword'),
(927, 'News'),
(926, 'Top Sellers'),
(925, 'Go Back'),
(924, 'Word Press Post Detail'),
(923, 'Explore'),
(922, 'Continue Adding'),
(921, 'Your wish List is empty'),
(920, 'Favourite'),
(919, 'Continue Shopping'),
(918, 'My Orders'),
(917, 'Thank you for shopping with us.'),
(916, 'Thank You'),
(915, 'Shipping method'),
(914, 'Sub Categories'),
(913, 'Main Categories'),
(912, 'Search'),
(911, 'Reset Filters'),
(910, 'No Products Found'),
(909, 'OFF'),
(908, 'Techincal details'),
(907, 'Product Description'),
(906, 'ADD TO CART'),
(905, 'Add to Cart'),
(904, 'In Stock'),
(903, 'Out of Stock'),
(902, 'New'),
(901, 'Product Details'),
(900, 'Shipping'),
(899, 'Sub Total'),
(898, 'Total'),
(897, 'Price Detail'),
(896, 'Order Detail'),
(895, 'Got It!'),
(894, 'Skip Intro'),
(893, 'Intro'),
(892, 'REMOVE'),
(891, 'Deals'),
(890, 'All Categories'),
(889, 'Most Liked'),
(888, 'Special Deals'),
(887, 'Top Seller'),
(886, 'Products are available.'),
(885, 'Recently Viewed'),
(884, 'Please connect to the internet'),
(881, 'Contact Us'),
(882, 'Name'),
(883, 'Your Messsage'),
(880, 'Categories'),
(879, 'About Us'),
(878, 'Send'),
(877, 'Forgot Password'),
(876, 'Register'),
(875, 'Password'),
(874, 'Email'),
(873, 'or'),
(872, 'Login with'),
(1033, 'Creating an account means you’re okay with our'),
(1034, 'Login'),
(1035, 'Turn on/off Local Notifications'),
(1036, 'Turn on/off Notifications'),
(1037, 'Change Language'),
(1038, 'Official Website'),
(1039, 'Rate Us'),
(1040, 'Share'),
(1041, 'Edit Profile'),
(1042, 'A percentage discount for the entire cart'),
(1043, 'A fixed total discount for the entire cart'),
(1044, 'A fixed total discount for selected products only'),
(1045, 'A percentage discount for selected products only');

-- --------------------------------------------------------

--
-- Table structure for table `label_value`
--

CREATE TABLE `label_value` (
  `label_value_id` int(100) NOT NULL,
  `label_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` int(100) DEFAULT NULL,
  `label_id` int(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `label_value`
--

INSERT INTO `label_value` (`label_value_id`, `label_value`, `language_id`, `label_id`) VALUES
(1372, 'Most Liked', 1, 956),
(1371, 'Special', 1, 957),
(1370, 'Top Seller', 1, 958),
(1369, 'Newest ', 1, 959),
(1368, 'Likes', 1, 960),
(1366, 'Mobile', 1, 962),
(1367, 'My Account', 1, 961),
(1365, 'Date of Birth', 1, 963),
(1364, 'Update', 1, 964),
(1355, 'Orders ID', 1, 970),
(1356, 'Product Price', 1, 971),
(1357, 'No. of Products', 1, 972),
(1358, 'Date', 1, 973),
(1359, 'Customer Address', 1, 974),
(1360, 'Customer Orders', 1, 968),
(1361, 'Change Password', 1, 967),
(1362, 'New Password', 1, 966),
(1363, 'Current Password', 1, 965),
(1354, 'Order Status', 1, 969),
(1353, 'Please add your new shipping address for the futher processing of the your order', 1, 975),
(1352, 'Add new Address', 1, 976),
(1351, 'Create an Account', 1, 977),
(1350, 'First Name', 1, 978),
(1349, 'Last Name', 1, 979),
(1348, 'Already Memeber?', 1, 980),
(1341, 'Billing Address', 1, 987),
(1342, 'Order', 1, 986),
(1343, 'Next', 1, 985),
(1344, 'Same as Shipping Address', 1, 984),
(1345, 'Billing Info', 1, 981),
(1346, 'Address', 1, 982),
(1347, 'Phone', 1, 983),
(1339, 'Products', 1, 989),
(1340, 'Shipping Method', 1, 988),
(1334, 'Order Notes', 1, 994),
(1335, 'Shipping Cost', 1, 993),
(1336, 'Tax', 1, 992),
(1337, 'Products Price', 1, 991),
(1338, 'SubTotal', 1, 990),
(1333, 'Payment', 1, 995),
(1332, 'Card Number', 1, 996),
(1331, 'Expiration Date', 1, 997),
(1330, 'Expiration', 1, 998),
(1329, 'Error: invalid card number!', 1, 999),
(1328, 'Error: invalid expiry date!', 1, 1000),
(1327, 'Error: invalid cvc number!', 1, 1001),
(1326, 'Continue', 1, 1002),
(1325, 'My Cart', 1, 1003),
(1324, 'Your cart is empty', 1, 1004),
(1323, 'continue shopping', 1, 1005),
(1322, 'Price', 1, 1006),
(1318, 'Remove', 1, 1010),
(1319, 'by', 1, 1008),
(1320, 'View', 1, 1009),
(1321, 'Quantity', 1, 1007),
(1317, 'Proceed', 1, 1011),
(1315, 'Country', 1, 1013),
(1316, 'Shipping Address', 1, 1012),
(1313, 'Zone', 1, 1015),
(1314, 'other', 1, 1014),
(1311, 'Post code', 1, 1017),
(1312, 'City', 1, 1016),
(1309, 'State', 1, 1018),
(1310, 'Update Address', 1, 1019),
(1307, 'login & Register', 1, 1021),
(1308, 'Save Address', 1, 1020),
(1306, 'Please login or create an account for free', 1, 1022),
(1305, 'Log Out', 1, 1023),
(1304, 'My Wish List', 1, 1024),
(1303, 'Filters', 1, 1025),
(1302, 'Price Range', 1, 1026),
(1301, 'Close', 1, 1027),
(1299, 'Clear', 1, 1029),
(1300, 'Apply', 1, 1028),
(1298, 'Menu', 1, 1030),
(1297, 'Home', 1, 1031),
(1373, 'Cancel', 1, 955),
(1374, 'Sort Products', 1, 954),
(1375, 'Special Products', 1, 953),
(1376, 'Price : low - high', 1, 952),
(1377, 'Price : high - low', 1, 951),
(1378, 'Z - A', 1, 950),
(1379, 'A - Z', 1, 949),
(1380, 'All', 1, 948),
(1381, 'Explore More', 1, 947),
(1382, 'Note to the buyer', 1, 946),
(1383, 'Coupon', 1, 945),
(1384, 'coupon code', 1, 944),
(1385, 'Coupon Amount', 1, 943),
(1386, 'Coupon Code', 1, 942),
(1387, 'Food Categories', 1, 941),
(1388, 'Recipe of Day', 1, 940),
(1389, 'Top Dishes', 1, 939),
(1390, 'Skip', 1, 938),
(1391, 'Term and Services', 1, 937),
(1392, 'Privacy Policy', 1, 936),
(1393, 'Refund Policy', 1, 935),
(1394, 'Newest', 1, 934),
(1395, 'OUT OF STOCK', 1, 933),
(1396, 'Select Language', 1, 932),
(1397, 'Reset', 1, 931),
(1398, 'Shop', 1, 930),
(1399, 'Settings', 1, 929),
(1400, 'Enter keyword', 1, 928),
(1401, 'News', 1, 927),
(1402, 'Top Sellers', 1, 926),
(1403, 'Go Back', 1, 925),
(1404, 'Word Press Post Detail', 1, 924),
(1405, 'Explore', 1, 923),
(1406, 'Continue Adding', 1, 922),
(1407, 'Your wish List is empty', 1, 921),
(1408, 'Favourite', 1, 920),
(1409, 'Continue Shopping', 1, 919),
(1410, 'My Orders', 1, 918),
(1411, 'Thank you for shopping with us.', 1, 917),
(1412, 'Thank You', 1, 916),
(1413, 'Shipping method', 1, 915),
(1414, 'Sub Categories', 1, 914),
(1415, 'Main Categories', 1, 913),
(1416, 'Search', 1, 912),
(1417, 'Reset Filters', 1, 911),
(1418, 'No Products Found', 1, 910),
(1419, 'OFF', 1, 909),
(1420, 'Techincal details', 1, 908),
(1421, 'Product Description', 1, 907),
(1422, 'ADD TO CART', 1, 906),
(1423, 'Add to Cart', 1, 905),
(1424, 'In Stock', 1, 904),
(1425, 'Out of Stock', 1, 903),
(1426, 'New', 1, 902),
(1427, 'Product Details', 1, 901),
(1428, 'Shipping', 1, 900),
(1429, 'Sub Total', 1, 899),
(1430, 'Total', 1, 898),
(1431, 'Price Detail', 1, 897),
(1432, 'Order Detail', 1, 896),
(1433, 'Got It!', 1, 895),
(1434, 'Skip Intro', 1, 894),
(1435, 'Intro', 1, 893),
(1436, 'REMOVE', 1, 892),
(1437, 'Deals', 1, 891),
(1438, 'All Categories', 1, 890),
(1439, 'Most Liked', 1, 889),
(1440, 'Special Deals', 1, 888),
(1441, 'Top Seller', 1, 887),
(1442, 'Products are available.', 1, 886),
(1443, 'Recently Viewed', 1, 885),
(1444, 'Please connect to the internet', 1, 884),
(1445, 'Contact Us', 1, 881),
(1446, 'Name', 1, 882),
(1447, 'Your Message', 1, 883),
(1448, 'Categories', 1, 880),
(1449, 'About Us', 1, 879),
(1450, 'Send', 1, 878),
(1451, 'Forgot Password', 1, 877),
(1452, 'Register', 1, 876),
(1453, 'Password', 1, 875),
(1454, 'Email', 1, 874),
(1455, 'or', 1, 873),
(1456, 'Login with', 1, 872),
(1457, 'Creating an account means you\'re okay with shopify\'s Terms of Service, Privacy Policy', 1, 2),
(1458, 'I\'ve forgotten my password?', 1, 1),
(1459, NULL, 1, NULL),
(1462, 'Creating an account means you’re okay with our', 1, 1033),
(1465, 'Login', 1, 1034),
(1468, 'Turn on/off Local Notifications', 1, 1035),
(1471, 'Turn on/off Notifications', 1, 1036),
(1474, 'Change Language', 1, 1037),
(1477, 'Official Website', 1, 1038),
(1480, 'Rate Us', 1, 1039),
(1483, 'Share', 1, 1040),
(1486, 'Edit Profile', 1, 1041),
(1489, 'A percentage discount for the entire cart', 1, 1042),
(1492, 'A fixed total discount for the entire cart', 1, 1043),
(1495, 'A fixed total discount for selected products only', 1, 1044),
(1498, 'A percentage discount for selected products only', 1, 1045);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8_unicode_ci,
  `directory` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(3) DEFAULT NULL,
  `direction` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `name`, `code`, `image`, `directory`, `sort_order`, `direction`, `is_default`) VALUES
(1, 'English', 'en', 'resources/assets/images/language_flags/1486556365.503984030_english.jpg', 'english', 1, 'ltr', 1);

-- --------------------------------------------------------

--
-- Table structure for table `liked_products`
--

CREATE TABLE `liked_products` (
  `like_id` int(11) NOT NULL,
  `liked_products_id` int(100) NOT NULL,
  `liked_customers_id` int(100) NOT NULL,
  `date_liked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `liked_products`
--

INSERT INTO `liked_products` (`like_id`, `liked_products_id`, `liked_customers_id`, `date_liked`) VALUES
(3, 10, 1, '2018-01-23 06:44:30'),
(5, 8, 1, '2018-01-23 07:02:38'),
(32, 78, 1, '2018-01-24 10:48:06'),
(41, 76, 1, '2018-03-21 14:24:21'),
(42, 75, 1, '2018-03-21 14:24:22'),
(43, 77, 1, '2018-03-21 14:24:23'),
(44, 74, 1, '2018-03-21 14:24:25'),
(45, 73, 1, '2018-03-21 14:24:26'),
(46, 72, 1, '2018-03-21 14:24:28'),
(48, 70, 1, '2018-03-21 14:24:30'),
(49, 71, 1, '2018-03-21 14:24:31'),
(50, 64, 1, '2018-03-21 14:24:39'),
(51, 65, 1, '2018-03-21 14:24:40'),
(52, 63, 1, '2018-03-21 14:24:41'),
(53, 60, 1, '2018-03-21 14:24:42'),
(54, 61, 1, '2018-03-21 14:24:43'),
(55, 62, 1, '2018-03-21 14:24:44'),
(56, 67, 1, '2018-03-21 14:25:19'),
(57, 68, 1, '2018-03-21 14:25:20'),
(58, 66, 1, '2018-03-21 14:25:21'),
(59, 57, 1, '2018-03-21 14:25:24'),
(60, 58, 1, '2018-03-21 14:25:25'),
(61, 59, 1, '2018-03-21 14:25:26'),
(62, 56, 1, '2018-03-21 14:25:27'),
(63, 55, 1, '2018-03-21 14:25:28'),
(64, 54, 1, '2018-03-21 14:25:29'),
(65, 53, 1, '2018-03-21 14:25:35'),
(66, 52, 1, '2018-03-21 14:25:36'),
(67, 51, 1, '2018-03-21 14:25:37'),
(68, 48, 1, '2018-03-21 14:25:39'),
(69, 49, 1, '2018-03-21 14:25:40'),
(70, 50, 1, '2018-03-21 14:25:40'),
(81, 13, 1, '2018-03-26 12:58:22'),
(82, 82, 1, '2018-03-26 13:05:27'),
(86, 1, 1, '2018-05-09 15:37:00'),
(87, 4, 1, '2018-05-21 10:22:50'),
(89, 17, 12, '2018-05-21 11:51:52'),
(90, 15, 1, '2018-05-21 12:37:29'),
(93, 43, 9, '2018-05-22 10:36:16'),
(94, 44, 9, '2018-05-22 10:36:17'),
(95, 48, 9, '2018-05-22 10:36:18'),
(96, 62, 9, '2018-05-22 10:36:20'),
(97, 39, 9, '2018-05-22 10:36:21'),
(101, 77, 9, '2018-05-22 10:36:29'),
(102, 72, 9, '2018-05-22 10:36:32'),
(103, 73, 9, '2018-05-22 10:36:33'),
(104, 76, 9, '2018-05-22 10:36:57'),
(105, 75, 9, '2018-05-22 10:36:58'),
(106, 74, 9, '2018-05-22 10:37:00'),
(107, 65, 9, '2018-05-22 10:37:44'),
(108, 67, 9, '2018-05-22 10:37:46'),
(109, 70, 9, '2018-05-22 10:37:47'),
(111, 8, 9, '2018-05-22 10:37:59'),
(112, 1, 9, '2018-05-22 10:38:00'),
(113, 13, 9, '2018-05-22 11:00:27'),
(114, 2, 9, '2018-05-24 09:50:25'),
(115, 17, 9, '2018-05-25 10:39:18'),
(118, 17, 20, '2018-06-13 11:45:31'),
(119, 70, 20, '2018-06-13 11:45:42'),
(120, 62, 20, '2018-06-13 11:45:45'),
(121, 81, 20, '2018-06-13 11:45:46'),
(122, 6, 26, '2018-06-13 13:07:31'),
(123, 5, 26, '2018-06-13 13:07:34'),
(125, 4, 29, '2018-06-21 12:52:24'),
(126, 8, 32, '2018-06-26 13:58:50'),
(128, 4, 32, '2018-06-26 13:58:55'),
(129, 77, 32, '2018-06-26 13:59:00'),
(138, 83, 32, '2018-06-26 15:19:24'),
(140, 48, 32, '2018-06-27 13:08:29'),
(143, 73, 32, '2018-06-28 15:10:49'),
(145, 70, 32, '2018-06-28 15:10:52'),
(146, 67, 32, '2018-06-28 15:10:54'),
(147, 65, 32, '2018-06-28 15:10:55'),
(148, 62, 32, '2018-06-28 15:10:57'),
(149, 44, 32, '2018-06-28 15:11:00'),
(150, 43, 32, '2018-06-28 15:11:01'),
(152, 82, 32, '2018-06-28 15:11:08'),
(153, 81, 32, '2018-06-28 15:11:10'),
(154, 79, 32, '2018-06-28 15:11:13'),
(155, 78, 32, '2018-06-28 15:11:16'),
(157, 74, 32, '2018-06-28 15:11:49'),
(158, 75, 32, '2018-06-28 15:11:50'),
(159, 76, 32, '2018-06-28 15:11:52'),
(160, 2, 32, '2018-06-28 15:12:54'),
(161, 5, 32, '2018-06-28 15:12:55'),
(162, 6, 32, '2018-06-28 15:12:58'),
(163, 7, 32, '2018-06-28 15:13:01'),
(164, 9, 32, '2018-06-28 15:13:03'),
(165, 1, 32, '2018-07-03 11:38:19'),
(166, 17, 41, '2018-07-16 14:53:24'),
(168, 8, 47, '2018-07-17 15:40:11'),
(169, 73, 47, '2018-07-17 15:53:44'),
(170, 13, 32, '2018-07-17 16:07:55'),
(174, 80, 32, '2018-07-18 13:42:03'),
(175, 17, 32, '2018-07-18 13:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturers_id` int(11) NOT NULL,
  `manufacturers_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturers_image` mediumtext COLLATE utf8_unicode_ci,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `manufacturers_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturers_id`, `manufacturers_name`, `manufacturers_image`, `date_added`, `last_modified`, `manufacturers_slug`) VALUES
(1, 'Samsung', 'resources/assets/images/manufacturers_images/1536254259.logo_edhik.png', '2018-09-06 05:17:39', NULL, 'samsung');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers_info`
--

CREATE TABLE `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_clicked` int(5) NOT NULL DEFAULT '0',
  `date_last_click` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufacturers_info`
--

INSERT INTO `manufacturers_info` (`manufacturers_id`, `languages_id`, `manufacturers_url`, `url_clicked`, `date_last_click`) VALUES
(1, 1, 'www.rvweb.in', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `megamenu` int(11) DEFAULT NULL,
  `publish` int(11) DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `cat_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `url`, `type`, `megamenu`, `publish`, `position`, `cat_id`) VALUES
(58, NULL, NULL, NULL, 1, 1, 1, 0),
(59, NULL, NULL, NULL, 1, 1, 2, 1),
(63, NULL, NULL, NULL, 1, 1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `menu_megamenu`
--

CREATE TABLE `menu_megamenu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_megamenu`
--

INSERT INTO `menu_megamenu` (`id`, `name`) VALUES
(1, 'Default Megamenu');

-- --------------------------------------------------------

--
-- Table structure for table `menu_subnav`
--

CREATE TABLE `menu_subnav` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `publish` int(11) DEFAULT '1',
  `cat_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_subnav`
--

INSERT INTO `menu_subnav` (`id`, `menu_id`, `name`, `url`, `parent`, `position`, `publish`, `cat_id`) VALUES
(47, 58, NULL, NULL, NULL, 1, 1, 10),
(48, 58, NULL, NULL, NULL, 2, 1, 9),
(52, 59, NULL, NULL, NULL, 3, 1, 0),
(53, 59, NULL, NULL, NULL, 4, 1, 9),
(55, NULL, NULL, NULL, 53, 5, 1, 1),
(61, NULL, NULL, NULL, 53, 6, 1, 3),
(63, 59, NULL, NULL, NULL, 7, 1, 1),
(64, 59, NULL, NULL, NULL, 8, 1, 3),
(65, 59, NULL, NULL, NULL, 9, 1, 9),
(66, NULL, NULL, NULL, 63, 10, 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2018_09_14_061737_create_vendor_table', 1),
('2018_09_14_140925_create_hsn_codes_table', 2),
('2018_09_14_141247_create_WarrantiesTable_table', 3),
('2018_09_14_141458_create_return_policies_table', 3),
('2018_09_14_145342_create_hsn_table', 4),
('2018_09_14_145605_create_hsn_new_table', 5),
('2018_09_15_141530_create_delivery_table', 6),
('2018_09_30_074311_create_category_table', 7),
('2018_10_08_051713_create_filters_table', 7),
('2018_10_08_063647_create_filter_options_table', 7),
('2018_10_09_120724_create_filter_groups_table', 8),
('2018_10_10_122959_create_group_filters_table', 9),
('2018_10_12_074901_create_otps_table', 10),
('2018_10_15_051149_create_home_products_table', 11),
('2018_10_15_052802_create_selected_products_table', 11),
('2018_10_16_102919_create_product_with_filters_table', 12),
('2018_10_19_042346_create_product_highlights_table', 13),
('2018_10_22_102153_create_category_footers_table', 14),
('2018_10_27_042841_create_deliveries_table', 15),
('2019_01_03_071100_assemble_products', 15),
('2019_01_03_102617_create_supported_products_table', 15),
('2019_01_05_053734_create_otp_verifieds_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_image` mediumtext COLLATE utf8_unicode_ci,
  `news_date_added` datetime NOT NULL,
  `news_last_modified` datetime DEFAULT NULL,
  `news_status` tinyint(1) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT '0',
  `news_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_image`, `news_date_added`, `news_last_modified`, `news_status`, `is_feature`, `news_slug`) VALUES
(6, 'resources/assets/images/news_images/1531930680.blog-img-1.jpg', '2017-08-22 06:36:32', '2018-07-18 04:18:00', 1, 1, 'tools-and-technology'),
(7, 'resources/assets/images/news_images/1531930697.blog-img-3.jpg', '2017-08-22 07:00:29', '2018-07-18 04:18:17', 1, 1, 'why-to-choose-this-app-for-your-project'),
(8, 'resources/assets/images/news_images/1504092360.about.svg', '2017-08-22 07:03:16', '2018-07-10 01:51:31', 1, 0, 'about-us'),
(9, 'resources/assets/images/news_images/1531932512.1504092640.laravel2.svg', '2017-08-22 07:57:33', '2018-07-18 04:48:32', 1, 0, 'laravel'),
(11, 'resources/assets/images/news_images/1504091780.restaurant.svg', '2017-08-22 08:04:29', '2018-07-10 01:52:00', 1, 0, 'resturant'),
(12, 'resources/assets/images/news_images/1504091963.fashion.svg', '2017-08-22 08:06:23', '2018-07-10 01:52:07', 1, 0, 'fashion'),
(13, 'resources/assets/images/news_images/1504092054.electronics.svg', '2017-08-22 08:07:23', '2018-07-10 01:52:17', 1, 0, 'electronics'),
(14, 'resources/assets/images/news_images/1504091642.language.svg', '2017-08-22 08:10:39', '2018-07-10 01:52:25', 1, 0, 'multi-language'),
(15, 'resources/assets/images/news_images/1504091465.payment.svg', '2017-08-22 08:15:16', '2018-07-10 01:52:32', 1, 0, 'multiple-payment-gateways'),
(16, 'resources/assets/images/news_images/1504091072.push_notifications.svg', '2017-08-22 08:17:28', '2018-07-10 01:53:47', 1, 0, 'push-notifications'),
(17, 'resources/assets/images/news_images/1504091049.local_notifications.svg', '2017-08-22 08:18:08', '2018-07-10 01:54:16', 1, 0, 'local-notifications'),
(18, 'resources/assets/images/news_images/1504091024.products.svg', '2017-08-22 08:18:51', '2018-07-10 01:54:23', 1, 0, 'all-types-of-products-friendly'),
(19, 'resources/assets/images/news_images/1504091001.social.svg', '2017-08-22 08:19:35', '2018-07-10 01:54:31', 1, 0, 'log-in-via-social-accounts'),
(20, 'resources/assets/images/news_images/1504090986.shipping_method.svg', '2017-08-22 08:22:33', '2018-07-10 01:54:38', 1, 0, 'multiple-shipping-methods'),
(21, 'resources/assets/images/news_images/1504090941.theme.svg', '2017-08-22 08:23:22', '2018-07-10 01:54:54', 1, 0, 'interactive-theme-easy-customization-with-sass'),
(22, 'resources/assets/images/news_images/1504090926.coupon_support.svg', '2017-08-22 10:52:53', '2018-07-10 01:55:02', 1, 0, 'coupon-support'),
(23, 'resources/assets/images/news_images/1504090906.profile_pic.svg', '2017-08-22 10:53:45', '2018-07-10 01:55:07', 1, 0, 'profile-picture'),
(25, 'resources/assets/images/news_images/1504090868.wishlist.svg', '2017-08-22 10:55:13', '2018-07-10 01:55:16', 1, 0, 'wish-list'),
(28, 'resources/assets/images/news_images/1504088865.price_filter.svg', '2017-08-22 10:59:38', '2018-07-10 01:56:43', 1, 0, 'price-keyword-filters'),
(29, 'resources/assets/images/news_images/1504088836.sorting.svg', '2017-08-22 11:03:06', '2018-07-10 01:56:47', 1, 0, 'product-sorting'),
(30, 'resources/assets/images/news_images/1504088735.product_searching.svg', '2017-08-22 11:03:53', '2018-07-10 01:56:55', 1, 0, 'product-searching'),
(31, 'resources/assets/images/news_images/1504088705.fully_customizable.svg', '2017-08-22 11:04:34', '2018-07-10 01:57:00', 1, 0, 'fully-customizable'),
(32, 'resources/assets/images/news_images/1504087261.horizontal_Slider.svg', '2017-08-22 11:09:25', '2018-07-10 01:57:05', 1, 0, 'horizontal-product-slider'),
(33, 'resources/assets/images/news_images/1504087219.customization.svg', '2017-08-22 11:13:38', '2018-07-10 01:57:09', 1, 0, 'customizable-features-functionalities'),
(34, 'resources/assets/images/news_images/1504087179.grid_list.svg', '2017-08-22 11:14:16', '2018-07-10 01:57:15', 1, 0, 'product-grid-list-view'),
(36, 'resources/assets/images/news_images/1504015398.shop_page.svg', '2017-08-22 11:16:24', '2018-07-10 01:57:24', 1, 0, 'beautiful-single-shop-page-for-complete-catalog'),
(37, 'resources/assets/images/news_images/1504015381.my_orders.svg', '2017-08-22 11:17:04', '2018-07-10 01:57:28', 1, 0, 'my-orders'),
(38, 'resources/assets/images/news_images/1504015363.about_contact_pages.svg', '2017-08-22 11:17:49', '2018-07-10 01:57:33', 1, 0, 'about-contact-pages'),
(39, 'resources/assets/images/news_images/1504083589.Asset 2.svg', '2017-08-22 11:18:14', '2018-07-10 01:57:43', 1, 0, 'laravel-blog-pages'),
(40, 'resources/assets/images/news_images/1504015347.info_pages.svg', '2017-08-22 11:18:53', '2018-07-10 01:57:48', 1, 0, 'info-pages'),
(42, 'resources/assets/images/news_images/1504015307.recently_item.svg', '2017-08-22 11:24:05', '2018-07-10 01:57:57', 1, 0, 'recently-item-viewed-block-on-home-page'),
(43, 'resources/assets/images/news_images/1504015288.move_to_top.svg', '2017-08-22 11:24:47', '2018-07-10 01:58:03', 1, 0, 'move-to-top-slider-button'),
(44, 'resources/assets/images/news_images/1504015272.product_price_discount.svg', '2017-08-22 11:25:49', '2018-07-10 01:58:08', 1, 0, 'product-price-discount'),
(45, 'resources/assets/images/news_images/1504015246.inventory_management.svg', '2017-08-22 11:26:24', '2018-07-10 01:58:13', 1, 0, 'inventory-management'),
(46, 'resources/assets/images/news_images/1504013177.horizontal_Slider.svg', '2017-08-22 11:26:59', '2018-07-18 04:41:59', 1, 0, 'horizontal-slider-on-home-page'),
(48, 'resources/assets/images/news_images/1504013140.product_additional_attributes.svg', '2017-08-22 11:36:02', '2018-07-18 04:42:17', 1, 0, 'product-additional-attributes-commerce-pricing-attributes'),
(49, 'resources/assets/images/news_images/1504012761.multi_product_images.svg', '2017-08-22 11:36:36', '2018-07-18 04:42:35', 1, 0, 'multiple-product-images'),
(50, 'resources/assets/images/news_images/1503928378.cart_page.svg', '2017-08-22 11:37:11', '2018-07-18 04:43:02', 1, 0, 'beautiful-cart-page'),
(51, 'resources/assets/images/news_images/1503928065.shipping_managment.svg', '2017-08-22 11:37:48', '2018-07-18 04:43:17', 1, 0, 'shipping-address-management'),
(53, 'resources/assets/images/news_images/1503927733.animtions.svg', '2017-08-22 11:38:58', '2018-07-18 04:37:38', 1, 0, 'animations'),
(54, 'resources/assets/images/news_images/1531930664.blog-img-2.jpg', '2018-03-30 11:39:20', '2018-07-18 04:17:44', 1, 1, 'fashion-1');

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `newsletters_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_sent` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `locked` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` mediumtext COLLATE utf8_unicode_ci,
  `categories_icon` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `news_categories_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `news_categories_slug`) VALUES
(6, 'resources/assets/images/news_categories_images/1504092793.app_features.svg', '', 0, NULL, '2017-08-22 06:20:50', '2018-07-10 01:14:35', 'app-features'),
(7, 'resources/assets/images/news_categories_images/1504092906.introduction.svg', '', 0, NULL, '2017-08-22 06:22:50', '2018-07-10 01:14:48', 'introduction'),
(8, 'resources/assets/images/news_categories_images/1504092995.platform.svg', '', 0, NULL, '2017-08-22 06:30:31', '2018-07-10 01:14:59', 'platforms'),
(9, 'resources/assets/images/news_categories_images/1504093080.screenshots.svg', '', 0, NULL, '2017-08-22 06:31:50', '2018-07-10 01:15:03', 'screen-shots');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories_description`
--

CREATE TABLE `news_categories_description` (
  `categories_description_id` int(100) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_categories_description`
--

INSERT INTO `news_categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(16, 6, 1, 'App Features'),
(17, 6, 2, 'App Functies'),
(18, 6, 4, 'ميزات التطبيق'),
(19, 7, 1, 'Introduction'),
(20, 7, 2, 'Invoering'),
(21, 7, 4, 'المقدمة'),
(22, 8, 1, 'Platforms'),
(23, 8, 2, 'Platforms'),
(24, 8, 4, 'منصات'),
(25, 9, 1, 'Screen Shots'),
(26, 9, 2, 'Schermafbeeldingen'),
(27, 9, 4, 'لقطات الشاشة');

-- --------------------------------------------------------

--
-- Table structure for table `news_description`
--

CREATE TABLE `news_description` (
  `news_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `news_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_description` text COLLATE utf8_unicode_ci,
  `news_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_viewed` int(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_description`
--

INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(6, 1, 'Tools and Technology', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(6, 2, 'Gereedschap en technologie', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(6, 4, 'الأدوات والتكنولوجيا', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(7, 1, 'Why To choose this App for your Project?', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(7, 2, 'Waarom deze applicatie?', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(7, 4, 'لماذا هذا التطبيق؟', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(8, 1, 'About Us', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(8, 2, 'Over ons', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(8, 4, 'معلومات عنا', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(9, 1, 'Laravel', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(9, 2, 'Laravel', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(9, 4, 'Laravel', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(11, 1, 'Resturant', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(11, 2, 'Resturant', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(11, 4, 'المطعم', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(12, 1, 'Fashion', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(12, 2, 'Mode', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(12, 4, 'موضه', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(13, 1, 'Electronics', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(13, 2, 'Elektronica', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(13, 4, 'إلكترونيات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(14, 1, 'Multi Language', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(14, 2, 'Multi Language', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(14, 4, 'متعدد اللغات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(15, 1, 'Multiple Payment Gateways', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(15, 2, 'Meerdere betalingsgateways', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(15, 4, 'بوابات الدفع المتعددة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(16, 1, 'Push Notifications', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(16, 2, 'Push Notifications', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(16, 4, 'دفع الإخطارات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \\"ليتراسيت\\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \\"ألدوس بايج مايكر\\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \\"ليتراسيت\\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \\"ألدوس بايج مايكر\\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \\"ليتراسيت\\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \\"ألدوس بايج مايكر\\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(17, 1, 'Local Notifications', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(17, 2, 'Lokale meldingen', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(17, 4, 'الإشعارات المحلية', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(18, 1, 'All Types of Products Friendly', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(18, 2, 'Alle soorten producten vriendelijk', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(18, 4, 'جميع أنواع المنتجات ودية', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(19, 1, 'Log-in via Social Accounts', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(19, 2, 'Inloggen via sociale accounts', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(19, 4, 'تسجيل الدخول عبر الحسابات الاجتماعية', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(20, 1, 'Multiple Shipping Methods', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(20, 2, 'Meerdere verzendmethoden', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(20, 4, 'طرق الشحن متعددة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(21, 1, 'Interactive Theme & Easy Customization with SaSS', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(21, 2, 'Interactief thema en gemakkelijke aanpassing met SaSS', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(21, 4, 'موضوع التفاعلية وسهولة التخصيص مع ساس', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(22, 1, 'Coupon Support', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(22, 2, 'Coupon Ondersteuning', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(22, 4, 'دعم القسيمة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(23, 1, 'Profile Picture', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(23, 2, 'Profielfoto', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(23, 4, 'الصوره الشخصيه', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(25, 1, 'Wish List', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(25, 2, 'Wenslijst', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(25, 4, 'الأماني', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(28, 1, 'Price & Keyword Filters', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(28, 2, 'Prijs- en sleutelwoordfilters', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(28, 4, 'السعر والكلمات الرئيسية الفلاتر', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(29, 1, 'Product Sorting', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(29, 2, 'Product sorteren', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(29, 4, 'فرز المنتجات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(30, 1, 'Product Searching', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(30, 2, 'Product zoeken', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(30, 4, 'البحث عن المنتج', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(31, 1, 'Fully Customizable', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(31, 2, 'Volledig klantgericht', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(31, 4, 'تماما للتخصيص', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(32, 1, 'Horizontal Product Slider', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(32, 2, 'Horizontale Product Slider', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(32, 4, 'أفقي المنتج المنزلق', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(33, 1, 'Customizable Features & Functionalities', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(33, 2, 'Aanpasbare eigenschappen en functionaliteit', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(33, 4, 'الميزات والتخصيص وظائف', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(34, 1, 'Product Grid & List View', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(34, 2, 'Product Grid & Lijstweergave', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(34, 4, 'شبكة المنتج وعرض القائمة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(36, 1, 'Beautiful Single Shop Page For Complete Catalog', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(36, 2, 'Mooie single shop pagina voor complete catalogus', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(36, 4, 'جميلة صفحة واحدة متجر للكتالوج الكامل', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(37, 1, 'My Orders', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(37, 2, 'mijn bestellingen', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(37, 4, 'طلباتي', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(38, 1, 'About & Contact Pages', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(38, 2, 'Over & Contactpagina\'s', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(38, 4, 'حول الصفحات والاتصال', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(39, 1, 'Laravel Blog Pages', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(39, 2, 'Laravel blog pagina\'s', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(39, 4, 'صفحات لارافيل المدونة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(40, 1, 'Info Pages', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(40, 2, 'Info pagina\'s', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(40, 4, 'صفحات المعلومات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(42, 1, 'Recently Item Viewed Block on Home Page', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(42, 2, 'Onlangs Item bekeken Blok op Startpagina', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(42, 4, 'تم مؤخرا عرض العنصر بلوك أون هوم بادج', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(43, 1, 'Move to Top Slider Button', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(43, 2, 'Ga naar de bovenste schuifknop', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(43, 4, 'الانتقال إلى أعلى زر المنزلق', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(44, 1, 'Product Price Discount', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(44, 2, 'Productprijs korting', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(44, 4, 'خصم سعر المنتج', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(45, 1, 'Inventory Management', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(45, 2, 'ادارة المخزون', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(45, 4, 'Voorraadbeheer', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(46, 1, 'Horizontal Slider on Home Page', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(46, 2, 'Horizontale schuifregelaar op de startpagina', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(46, 4, 'أفقي المنزلق على الصفحة الرئيسية', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(48, 1, 'Product Additional Attributes / Commerce Pricing Attributes', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(48, 2, 'Product Aanvullende Attributen / Handelsprijzen Attributen', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(48, 4, 'سمات المنتج الإضافية / سمات التسعير التجاري', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(49, 1, 'Multiple Product Images', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(49, 2, 'Meerdere productafbeeldingen', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(49, 4, 'صور المنتج متعددة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(50, 1, 'Beautiful Cart Page', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(50, 2, 'Mooie winkelwagen pagina', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(50, 4, 'صفحة العربة الجميلة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(51, 1, 'Shipping Address Management', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(51, 2, 'Verzendadresbeheer', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(51, 4, 'إدارة عنوان الشحن', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(53, 1, 'Animations', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(53, 2, 'animaties', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(53, 4, 'الرسوم المتحركة', '<p>لها أن جنوب أجزاء. ثم وفي اعتداء الجنوبي. تم الشرقي بمعارضة عدم, فقد أن حاول الآلاف إستعمل. مكن لعدم فهرست الخاطفة و, من تعديل لفرنسا الشهير عرض, أم مدينة السيطرة وصل. كان وقبل لعدم لم, جعل معزّزة والمانيا استطاعوا هو, مع بعض ألمانيا الأراضي. تحت وأزيز وفنلندا بـ, دأبوا أعلنت الإنذار، نفس تم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لها أن جنوب أجزاء. ثم وفي اعتداء الجنوبي. تم الشرقي بمعارضة عدم, فقد أن حاول الآلاف إستعمل. مكن لعدم فهرست الخاطفة و, من تعديل لفرنسا الشهير عرض, أم مدينة السيطرة وصل. كان وقبل لعدم لم, جعل معزّزة والمانيا استطاعوا هو, مع بعض ألمانيا الأراضي. تحت وأزيز وفنلندا بـ, دأبوا أعلنت الإنذار، نفس تم.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لها أن جنوب أجزاء. ثم وفي اعتداء الجنوبي. تم الشرقي بمعارضة عدم, فقد أن حاول الآلاف إستعمل. مكن لعدم فهرست الخاطفة و, من تعديل لفرنسا الشهير عرض, أم مدينة السيطرة وصل. كان وقبل لعدم لم, جعل معزّزة والمانيا استطاعوا هو, مع بعض ألمانيا الأراضي. تحت وأزيز وفنلندا بـ, دأبوا أعلنت الإنذار، نفس تم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(54, 1, 'Fashion', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n\r\n<p>&nbsp;</p>', NULL, 0),
(54, 2, 'Mode', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(54, 4, 'موضه', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_to_news_categories`
--

CREATE TABLE `news_to_news_categories` (
  `news_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_to_news_categories`
--

INSERT INTO `news_to_news_categories` (`news_id`, `categories_id`) VALUES
(6, 7),
(7, 7),
(8, 7),
(9, 8),
(11, 9),
(12, 9),
(13, 9),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 6),
(25, 6),
(28, 6),
(29, 6),
(30, 6),
(31, 6),
(32, 6),
(33, 6),
(34, 6),
(36, 6),
(37, 6),
(38, 6),
(39, 6),
(40, 6),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(48, 6),
(49, 6),
(50, 6),
(51, 6),
(53, 6),
(54, 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `total_tax` decimal(7,2) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_address_format_id` int(5) DEFAULT NULL,
  `delivery_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address_format_id` int(5) DEFAULT NULL,
  `billing_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_address_format_id` int(5) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_expires` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `order_price` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `shipping_method` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_duration` int(100) DEFAULT NULL,
  `order_information` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `coupon_code` text COLLATE utf8_unicode_ci NOT NULL,
  `coupon_amount` int(100) NOT NULL,
  `exclude_product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ordered_source` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Website, 2: App'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `orders_products_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `products_price` decimal(15,2) NOT NULL,
  `final_price` decimal(15,2) NOT NULL,
  `products_tax` decimal(7,0) NOT NULL,
  `products_quantity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_attributes`
--

CREATE TABLE `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_options` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `products_options_values` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_download`
--

CREATE TABLE `orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_maxdays` int(2) NOT NULL DEFAULT '0',
  `download_count` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `orders_status_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `orders_status_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `public_flag` int(11) DEFAULT '0',
  `downloads_flag` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`orders_status_id`, `language_id`, `orders_status_name`, `public_flag`, `downloads_flag`) VALUES
(1, 1, 'Pending', 1, 0),
(2, 1, 'Completed', 0, 0),
(3, 1, 'Cancel', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_description`
--

CREATE TABLE `orders_status_description` (
  `orders_status_description_id` int(100) NOT NULL,
  `orders_status_id` int(100) NOT NULL,
  `orders_status_name` varchar(255) NOT NULL,
  `language_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_history`
--

CREATE TABLE `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(1) DEFAULT '0',
  `comments` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_total`
--

CREATE TABLE `orders_total` (
  `orders_total_id` int(10) UNSIGNED NOT NULL,
  `orders_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `otp_id` int(10) UNSIGNED NOT NULL,
  `otp_code` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`otp_id`, `otp_code`, `customers_id`, `created_at`, `updated_at`) VALUES
(1, 6108, 36, '2018-10-12 06:22:02', '2018-10-12 06:22:02'),
(2, 3010, 85, '2019-05-22 07:09:21', '2019-05-22 07:09:21'),
(3, 3090, 15, '2019-05-22 07:46:10', '2019-05-22 07:46:10'),
(4, 2135, 17, '2019-05-22 07:54:22', '2019-05-22 07:54:22'),
(5, 2364, 94, '2019-05-22 07:54:22', '2019-05-22 07:54:22'),
(6, 9153, 46, '2019-05-22 07:56:39', '2019-05-22 07:56:39'),
(7, 8210, 37, '2019-05-22 08:09:21', '2019-05-22 08:09:21'),
(8, 9840, 54, '2019-05-22 08:16:50', '2019-05-22 08:16:50'),
(9, 7611, 40, '2019-05-22 08:21:31', '2019-05-22 08:21:31'),
(10, 2199, 43, '2019-05-22 08:29:33', '2019-05-22 08:29:33'),
(11, 8619, 49, '2019-05-22 08:30:37', '2019-05-22 08:30:37'),
(12, 4483, 60, '2019-05-22 08:35:46', '2019-05-22 08:35:46'),
(13, 5450, 19, '2019-05-22 08:37:00', '2019-05-22 08:37:00'),
(14, 7947, 71, '2019-05-22 08:41:53', '2019-05-22 08:41:53'),
(15, 4809, 60, '2019-05-22 11:08:37', '2019-05-22 11:08:37'),
(16, 2858, 28, '2019-05-24 13:01:57', '2019-05-24 13:01:57'),
(17, 4904, 90, '2019-05-24 23:25:35', '2019-05-24 23:25:35'),
(18, 8147, 12, '2019-05-24 18:01:42', '2019-05-24 18:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `otp_verifieds`
--

CREATE TABLE `otp_verifieds` (
  `id` int(10) UNSIGNED NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` int(11) NOT NULL,
  `status` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otp_verifieds`
--

INSERT INTO `otp_verifieds` (`id`, `mobile`, `otp`, `status`, `created_at`, `updated_at`) VALUES
(1, '9417988563', 1935, '0', '2019-05-04 03:08:22', '2019-05-04 03:08:22'),
(2, '456562344', 6410, '0', '2019-05-04 03:20:58', '2019-05-04 03:20:58'),
(3, '2778454', 3132, '0', '2019-05-04 03:21:17', '2019-05-04 03:21:17'),
(4, '2778454', 6849, '0', '2019-05-04 03:21:40', '2019-05-04 03:21:40'),
(5, '9417988563', 1447, '1', '2019-05-04 03:33:19', '2019-05-04 03:34:03'),
(6, '9417988563', 4917, '1', '2019-05-04 06:09:41', '2019-05-04 06:11:29'),
(7, '9417988563', 8139, '1', '2019-05-04 06:20:44', '2019-05-04 06:23:47'),
(8, '9877805339', 1645, '1', '2019-05-07 00:52:05', '2019-05-07 00:52:23'),
(9, '9417988563', 6255, '1', '2019-05-09 07:09:16', '2019-05-09 07:09:43'),
(10, '9877805339', 7650, '0', '2019-05-09 07:22:43', '2019-05-09 07:22:43'),
(11, '9877805339', 7389, '1', '2019-05-09 07:23:08', '2019-05-09 07:23:23'),
(12, '828053971', 1795, '1', '2019-05-17 06:06:15', '2019-05-17 06:07:05'),
(13, '9417988563', 5311, '1', '2019-05-17 06:21:17', '2019-05-17 06:21:59'),
(14, '9877805339', 1885, '1', '2019-05-17 06:27:00', '2019-05-17 06:27:39'),
(15, '7979083703', 9710, '1', '2019-05-17 06:35:17', '2019-05-17 06:35:30'),
(16, '9546042788', 8760, '1', '2019-05-17 09:58:12', '2019-05-17 09:58:33'),
(17, '9031777877', 5713, '1', '2019-05-17 10:00:11', '2019-05-17 10:01:10'),
(18, '441843285', 5131, '1', '2019-05-17 10:04:44', '2019-05-17 10:05:22'),
(19, '7301908025', 4715, '1', '2019-05-17 10:13:37', '2019-05-17 10:14:00'),
(20, '9031777877', 6219, '1', '2019-05-17 13:58:54', '2019-05-17 13:59:25'),
(21, '9031777877', 6338, '1', '2019-05-17 13:59:44', '2019-05-17 14:00:16'),
(22, '9546042788', 3728, '1', '2019-05-17 14:09:53', '2019-05-17 14:10:08'),
(23, '9234386188', 1339, '1', '2019-05-17 14:13:22', '2019-05-17 14:13:49'),
(24, '9234386188', 3712, '1', '2019-05-17 14:14:46', '2019-05-17 14:15:01'),
(25, '9031777877', 3489, '1', '2019-05-17 14:32:21', '2019-05-17 14:32:39'),
(26, '-610850889', 2229, '0', '2019-05-18 04:58:36', '2019-05-18 04:58:36'),
(27, '-610850889', 5518, '1', '2019-05-18 04:59:28', '2019-05-18 05:00:20'),
(28, '-610850889', 7045, '0', '2019-05-18 05:14:49', '2019-05-18 05:14:49'),
(29, '-610850889', 1739, '0', '2019-05-18 05:22:36', '2019-05-18 05:22:36'),
(30, '-610850889', 2518, '0', '2019-05-18 05:24:12', '2019-05-18 05:24:12'),
(31, '-610850889', 2877, '0', '2019-05-18 05:25:34', '2019-05-18 05:25:34'),
(32, '-610850889', 6621, '0', '2019-05-18 05:27:18', '2019-05-18 05:27:18'),
(33, '9031777877', 7844, '1', '2019-05-18 06:02:29', '2019-05-18 06:02:49'),
(34, '9031777877', 9310, '1', '2019-05-19 08:19:37', '2019-05-19 08:19:59'),
(35, '9031777877', 9956, '1', '2019-05-19 10:14:14', '2019-05-19 10:14:30'),
(36, '7717752021', 9215, '1', '2019-05-19 10:18:33', '2019-05-19 10:18:50'),
(37, '8092559712', 3838, '1', '2019-05-19 10:30:13', '2019-05-19 10:30:34'),
(38, '8092559712', 9341, '0', '2019-05-19 10:31:55', '2019-05-19 10:31:55'),
(39, '8092559712', 9952, '0', '2019-05-19 10:32:44', '2019-05-19 10:32:44'),
(40, '8092559712', 7801, '1', '2019-05-19 10:34:15', '2019-05-19 10:36:48'),
(41, '8092559712', 1402, '0', '2019-05-19 10:35:21', '2019-05-19 10:35:21'),
(42, '8092559712', 4766, '0', '2019-05-19 10:36:32', '2019-05-19 10:36:32'),
(43, '8092559712', 9915, '1', '2019-05-19 10:40:11', '2019-05-19 10:42:52'),
(44, '9031777877', 3781, '0', '2019-05-19 10:59:31', '2019-05-19 10:59:31'),
(45, '9031777877', 5216, '1', '2019-05-19 10:59:51', '2019-05-19 11:00:05'),
(46, '9031777877', 2877, '1', '2019-05-19 12:06:48', '2019-05-19 12:06:59'),
(47, '8600025782', 9996, '1', '2019-05-19 23:01:52', '2019-05-19 23:12:59'),
(48, '8600025782', 5698, '0', '2019-05-20 00:05:20', '2019-05-20 00:05:20'),
(49, '8600025782', 6219, '1', '2019-05-20 00:06:18', '2019-05-20 00:07:06'),
(50, '9031777877', 1943, '1', '2019-05-20 03:38:35', '2019-05-20 03:38:58'),
(51, '9031777877', 4094, '1', '2019-05-20 03:39:35', '2019-05-20 03:39:51'),
(52, '7972809816', 5504, '1', '2019-05-20 03:42:05', '2019-05-20 03:42:38'),
(53, '9031777877', 5737, '1', '2019-05-20 08:15:46', '2019-05-20 08:16:07'),
(54, '8600025782', 6804, '1', '2019-05-20 11:32:38', '2019-05-20 11:33:19'),
(55, '9031777877', 5644, '1', '2019-05-20 11:34:05', '2019-05-20 11:34:46'),
(56, '8600025782', 6455, '0', '2019-05-20 11:35:49', '2019-05-20 11:35:49'),
(57, '7972809816', 5159, '0', '2019-05-20 13:55:24', '2019-05-20 13:55:24'),
(58, '7972809816', 6626, '0', '2019-05-20 13:59:30', '2019-05-20 13:59:30'),
(59, '7972809816', 4659, '0', '2019-05-20 14:02:46', '2019-05-20 14:02:46'),
(60, '7972809816', 3811, '1', '2019-05-20 14:12:43', '2019-05-20 14:12:55'),
(61, '7972809816', 9238, '1', '2019-05-20 14:14:32', '2019-05-20 14:14:45'),
(62, '9031777877', 1010, '1', '2019-05-20 14:29:13', '2019-05-20 14:29:30'),
(63, '8605782507', 2155, '0', '2019-05-20 15:52:25', '2019-05-20 15:52:25'),
(64, '8605782507', 3245, '0', '2019-05-20 15:53:10', '2019-05-20 15:53:10'),
(65, '7972809816', 1005, '0', '2019-05-20 15:53:29', '2019-05-20 15:53:29'),
(66, '7972809816', 6364, '1', '2019-05-20 15:57:25', '2019-05-20 15:57:38'),
(67, '7972809816', 9203, '0', '2019-05-20 15:58:03', '2019-05-20 15:58:03'),
(68, '7972809816', 9125, '1', '2019-05-20 15:59:39', '2019-05-20 16:00:11'),
(69, '7972809816', 1074, '1', '2019-05-20 16:01:53', '2019-05-20 16:02:15'),
(70, '9031777877', 9426, '1', '2019-05-20 17:32:15', '2019-05-20 17:32:29'),
(71, '9823352748', 9382, '0', '2019-05-20 17:41:59', '2019-05-20 17:41:59'),
(72, '9823352748', 8022, '1', '2019-05-20 17:42:37', '2019-05-20 17:42:47'),
(73, '9823352748', 1737, '1', '2019-05-20 17:44:30', '2019-05-20 17:45:26'),
(74, '9031777877', 8905, '0', '2019-05-21 01:32:14', '2019-05-21 01:32:14'),
(75, '9823352748', 1353, '0', '2019-05-21 04:47:22', '2019-05-21 04:47:22'),
(76, '9031777877', 8926, '0', '2019-05-21 05:14:19', '2019-05-21 05:14:19'),
(77, '9871006582', 5137, '0', '2019-05-22 02:55:07', '2019-05-22 02:55:07'),
(78, '9823352748', 3090, '1', '2019-05-22 07:47:04', '2019-05-22 07:47:04'),
(79, '7979083703', 8210, '1', '2019-05-22 08:11:36', '2019-05-22 08:11:36'),
(80, '7038856661', 7611, '1', '2019-05-22 08:22:04', '2019-05-22 08:22:04'),
(81, '7979083703', 9840, '1', '2019-05-22 08:26:48', '2019-05-22 08:26:48'),
(82, '7979083703', 8619, '1', '2019-05-22 08:31:10', '2019-05-22 08:31:10'),
(83, '7979083703', 5450, '1', '2019-05-22 08:37:17', '2019-05-22 08:37:17'),
(84, '7979083703', 7947, '1', '2019-05-22 08:42:02', '2019-05-22 08:42:02'),
(85, '9031777877', 2054, '0', '2019-05-22 09:39:12', '2019-05-22 09:39:12'),
(86, '9031777877', 8645, '1', '2019-05-22 09:49:13', '2019-05-22 09:49:30'),
(87, '9031777877', 7575, '1', '2019-05-22 09:51:22', '2019-05-22 09:51:56'),
(88, '9031777877', 4809, '1', '2019-05-22 11:09:34', '2019-05-22 11:09:34'),
(89, '8600025782', 2858, '1', '2019-05-24 13:05:50', '2019-05-24 13:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(100) NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `slug`, `status`, `type`) VALUES
(1, 'privacy-policy', 1, 1),
(2, 'term-services', 1, 1),
(3, 'refund-policy', 1, 1),
(4, 'about-us', 1, 1),
(5, 'privacy-policy', 1, 2),
(6, 'term-services', 1, 2),
(7, 'refund-policy', 1, 2),
(8, 'about-us', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages_description`
--

CREATE TABLE `pages_description` (
  `page_description_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(100) NOT NULL,
  `page_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages_description`
--

INSERT INTO `pages_description` (`page_description_id`, `name`, `description`, `language_id`, `page_id`) VALUES
(1, 'Privacy Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>\r\n', 1, 1),
(4, 'Term & Services', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>\r\n', 1, 2),
(7, 'Refund Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>\r\n', 1, 3),
(10, 'About Us', '<h2><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></h2>\r\n\r\n<p>Cras non justo sed nulla finibus pulvinar sit amet et neque. Duis et odio vitae orci mattis gravida. Nullam vel tincidunt ex. Praesent vel neque egestas arcu feugiat venenatis. Donec eget dolor quis justo tempus mattis. Phasellus dictum nunc ut dapibus dictum. Etiam vel leo nulla. Ut eu mi hendrerit, eleifend lacus sed, dictum neque.</p>\r\n\r\n<p>Aliquam non convallis nibh. Donec luctus purus magna, et commodo urna fermentum sed. Cras vel ex blandit, pretium nulla id, efficitur massa. Suspendisse potenti. Maecenas vel vehicula velit. Etiam quis orci molestie, elementum nisl eget, ultricies felis. Ut condimentum quam ut mi scelerisque accumsan. Suspendisse potenti. Etiam orci purus, iaculis sit amet ornare sit amet, finibus sed ligula. Quisque et mollis libero, sit amet consectetur augue. Vestibulum posuere pellentesque enim, in facilisis diam dictum eget. Phasellus sed vestibulum urna, in aliquet felis. Vivamus quis lacus id est ornare faucibus at id nulla.</p>\r\n\r\n<h2>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</h2>\r\n\r\n<p>Nulla justo lectus, sollicitudin at lorem eu, sollicitudin molestie augue. Maecenas egestas facilisis dolor mattis feugiat. Donec sed orci tellus. Maecenas tortor ipsum, varius vel dolor nec, bibendum porttitor felis. Mauris rutrum tristique vehicula. Sed ullamcorper nisl non erat pharetra, sit amet mattis enim posuere. Nulla convallis fringilla tortor, at vestibulum mauris cursus eget. Ut semper sollicitudin odio, sed molestie libero luctus quis. Integer viverra rutrum diam non maximus. Maecenas pellentesque tortor et sapien fermentum laoreet non et est. Phasellus felis quam, laoreet rhoncus erat eget, tempor condimentum massa. Integer gravida turpis id suscipit bibendum. Phasellus pellentesque venenatis erat, ut maximus justo vulputate sed. Vestibulum maximus enim ligula, non suscipit lectus dignissim vel. Suspendisse eleifend lorem egestas, tristique ligula id, condimentum est.</p>\r\n\r\n<p>Mauris nulla nulla, laoreet at auctor quis, bibendum rutrum neque. Donec eu ligula mi. Nam cursus vulputate semper. Phasellus facilisis mollis tellus, interdum laoreet justo rutrum pulvinar. Praesent molestie, nibh sed ultrices porttitor, nulla tortor volutpat enim, quis auctor est sem et orci. Proin lacinia vestibulum ex ut convallis. Phasellus tempus odio purus.</p>\r\n\r\n<ul>\r\n	<li>Nam lacinia urna eu arcu auctor, eget euismod metus sagittis.</li>\r\n	<li>Etiam eleifend ex eu interdum varius.</li>\r\n	<li>Nunc dapibus purus eu felis tincidunt, vel rhoncus erat tristique.</li>\r\n	<li>Aenean nec augue sit amet lorem blandit ultrices.</li>\r\n	<li>Nullam at lacus eleifend, pulvinar velit tempor, auctor nisi.</li>\r\n</ul>\r\n\r\n<p>Nunc accumsan tincidunt augue sed blandit. Duis et dignissim nisi. Phasellus sed ligula velit. Etiam rhoncus aliquet magna, nec volutpat nulla imperdiet et. Nunc vel tincidunt magna. Vestibulum lacinia odio a metus placerat maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et faucibus neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean et metus malesuada, ullamcorper dui vel, convallis est. Donec congue libero sed turpis porta consequat. Suspendisse potenti. Aliquam pharetra nibh in magna iaculis, non elementum ipsum luctus.</p>\r\n\r\n<p>&nbsp;</p>', 1, 4),
(13, 'Privacy Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 5),
(16, 'Term & Services', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 6),
(19, 'Refund Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 7),
(22, 'About Us', '<h2><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></h2>\r\n\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></p>\r\n\r\n<p>Cras non justo sed nulla finibus pulvinar sit amet et neque. Duis et odio vitae orci mattis gravida. Nullam vel tincidunt ex. Praesent vel neque egestas arcu feugiat venenatis. Donec eget dolor quis justo tempus mattis. Phasellus dictum nunc ut dapibus dictum. Etiam vel leo nulla. Ut eu mi hendrerit, eleifend lacus sed, dictum neque.</p>\r\n\r\n<p>Aliquam non convallis nibh. Donec luctus purus magna, et commodo urna fermentum sed. Cras vel ex blandit, pretium nulla id, efficitur massa. Suspendisse potenti. Maecenas vel vehicula velit. Etiam quis orci molestie, elementum nisl eget, ultricies felis. Ut condimentum quam ut mi scelerisque accumsan. Suspendisse potenti. Etiam orci purus, iaculis sit amet ornare sit amet, finibus sed ligula. Quisque et mollis libero, sit amet consectetur augue. Vestibulum posuere pellentesque enim, in facilisis diam dictum eget. Phasellus sed vestibulum urna, in aliquet felis. Vivamus quis lacus id est ornare faucibus at id nulla.</p>\r\n\r\n<h2>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</h2>\r\n\r\n<p>Nulla justo lectus, sollicitudin at lorem eu, sollicitudin molestie augue. Maecenas egestas facilisis dolor mattis feugiat. Donec sed orci tellus. Maecenas tortor ipsum, varius vel dolor nec, bibendum porttitor felis. Mauris rutrum tristique vehicula. Sed ullamcorper nisl non erat pharetra, sit amet mattis enim posuere. Nulla convallis fringilla tortor, at vestibulum mauris cursus eget. Ut semper sollicitudin odio, sed molestie libero luctus quis. Integer viverra rutrum diam non maximus. Maecenas pellentesque tortor et sapien fermentum laoreet non et est. Phasellus felis quam, laoreet rhoncus erat eget, tempor condimentum massa. Integer gravida turpis id suscipit bibendum. Phasellus pellentesque venenatis erat, ut maximus justo vulputate sed. Vestibulum maximus enim ligula, non suscipit lectus dignissim vel. Suspendisse eleifend lorem egestas, tristique ligula id, condimentum est.</p>\r\n\r\n<p>Mauris nulla nulla, laoreet at auctor quis, bibendum rutrum neque. Donec eu ligula mi. Nam cursus vulputate semper. Phasellus facilisis mollis tellus, interdum laoreet justo rutrum pulvinar. Praesent molestie, nibh sed ultrices porttitor, nulla tortor volutpat enim, quis auctor est sem et orci. Proin lacinia vestibulum ex ut convallis. Phasellus tempus odio purus.</p>\r\n\r\n<ul>\r\n	<li>Nam lacinia urna eu arcu auctor, eget euismod metus sagittis.</li>\r\n	<li>Etiam eleifend ex eu interdum varius.</li>\r\n	<li>Nunc dapibus purus eu felis tincidunt, vel rhoncus erat tristique.</li>\r\n	<li>Aenean nec augue sit amet lorem blandit ultrices.</li>\r\n	<li>Nullam at lacus eleifend, pulvinar velit tempor, auctor nisi.</li>\r\n</ul>\r\n\r\n<p>Nunc accumsan tincidunt augue sed blandit. Duis et dignissim nisi. Phasellus sed ligula velit. Etiam rhoncus aliquet magna, nec volutpat nulla imperdiet et. Nunc vel tincidunt magna. Vestibulum lacinia odio a metus placerat maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et faucibus neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean et metus malesuada, ullamcorper dui vel, convallis est. Donec congue libero sed turpis porta consequat. Suspendisse potenti. Aliquam pharetra nibh in magna iaculis, non elementum ipsum luctus.</p>', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `payments_setting`
--

CREATE TABLE `payments_setting` (
  `payments_id` int(100) NOT NULL,
  `braintree_enviroment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_merchant_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_public_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_private_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brantree_active` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_enviroment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `secret_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publishable_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_active` tinyint(1) NOT NULL DEFAULT '0',
  `cash_on_delivery` tinyint(1) NOT NULL DEFAULT '0',
  `cod_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `paypal_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `paypal_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paypal_status` tinyint(1) NOT NULL DEFAULT '0',
  `paypal_enviroment` tinyint(1) DEFAULT '0',
  `payment_currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `instamojo_enviroment` tinyint(1) NOT NULL,
  `instamojo_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instamojo_api_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instamojo_auth_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instamojo_client_id` text COLLATE utf8_unicode_ci NOT NULL,
  `instamojo_client_secret` text COLLATE utf8_unicode_ci NOT NULL,
  `instamojo_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments_setting`
--

INSERT INTO `payments_setting` (`payments_id`, `braintree_enviroment`, `braintree_name`, `braintree_merchant_id`, `braintree_public_key`, `braintree_private_key`, `brantree_active`, `stripe_enviroment`, `stripe_name`, `secret_key`, `publishable_key`, `stripe_active`, `cash_on_delivery`, `cod_name`, `paypal_name`, `paypal_id`, `paypal_status`, `paypal_enviroment`, `payment_currency`, `instamojo_enviroment`, `instamojo_name`, `instamojo_api_key`, `instamojo_auth_token`, `instamojo_client_id`, `instamojo_client_secret`, `instamojo_active`) VALUES
(1, '0', 'Braintree', 'wrv3cwbft6n3bg5g', '2bz5kxcj2gs3hdbx', '55ae08cb061e36dca59aaf2a883190bf', 1, '0', 'Stripe', 'sk_test_Gsz7jL4wRikI8YFaNzbwxKOF', 'pk_test_cCAEC6EejawuAvsvR9bhKrGR', 1, 1, 'Cash On Delivery', 'Paypal', 'AULJ0Q_kdXwEbi7PCBunUBJc4Kkg2vvdazF8kJoywAV9_i7iJMQphB9NLwdR0v2BAUlLF974iTrynbys', 1, 0, 'USD', 0, 'Instamojo', 'c5a348bd5fcb4c866074c48e9c77c6c4', '99448897defb4423b921fe47e0851b86', 'test_9l7MW8I7c2bwIw7q0koc6B1j5NrvzyhasQh', 'test_m9Ey3Jqp9AfmyWKmUMktt4K3g1uMIdapledVRRYJha7WinxOsBVV5900QMlwvv3l2zRmzcYDEOKPh1cvnVedkAKtHOFFpJbqcoNCNrjx1FtZhtDMkEJFv9MJuXD', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_description`
--

CREATE TABLE `payment_description` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `payment_name` varchar(32) NOT NULL,
  `sub_name_1` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_name_2` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_description`
--

INSERT INTO `payment_description` (`id`, `name`, `language_id`, `payment_name`, `sub_name_1`, `sub_name_2`) VALUES
(1, 'Braintree', 1, 'Braintree', 'Credit Card', 'Paypal'),
(2, 'Braintree', 2, 'Braintree', 'Kreditkarte', 'Paypal'),
(4, 'Stripe', 1, 'Stripe', '', ''),
(5, 'Paypal', 1, 'Paypal', '', ''),
(6, 'Cash on Delivery', 1, 'Cash On Delivery', '', ''),
(7, 'Stripe', 2, 'Stripe', '', ''),
(8, 'Paypal', 2, 'Paypal', '', ''),
(9, 'Nachnahme', 2, 'Cash On Delivery', '', ''),
(20, 'Instamojo', 2, 'Instamojo', '', ''),
(19, 'Instamojo', 1, 'Instamojo', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `products_quantity` int(4) NOT NULL,
  `products_model` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_image` mediumtext COLLATE utf8_unicode_ci,
  `products_price` decimal(15,2) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_weight_unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_status` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT '0',
  `products_liked` int(100) NOT NULL,
  `low_limit` int(4) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT '0',
  `products_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hsntaxSlab` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VendorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warranties` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `return_policies` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_price` decimal(15,2) NOT NULL,
  `video_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cod` tinyint(4) NOT NULL,
  `hot` tinyint(4) NOT NULL,
  `sale` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `verified` tinyint(4) NOT NULL,
  `cancellation` tinyint(4) NOT NULL,
  `delivery` int(11) NOT NULL,
  `products_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_description` text COLLATE utf8_unicode_ci NOT NULL,
  `products_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_viewed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_quantity`, `products_model`, `products_image`, `products_price`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_weight_unit`, `products_status`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `products_liked`, `low_limit`, `is_feature`, `products_slug`, `hsntaxSlab`, `VendorName`, `warranties`, `return_policies`, `shipping_price`, `video_id`, `cod`, `hot`, `sale`, `trending`, `verified`, `cancellation`, `delivery`, `products_name`, `products_description`, `products_url`, `products_viewed`) VALUES
(1, 9997, '12', 'resources/assets/images/product_images/1502174889.pPOLO2-26314766_standard_v400.jpg', '85.00', '2017-08-07 11:44:10', '2019-05-18 13:34:53', NULL, 'dk', '', 1, 1, 1, 12, 1, 10, 0, 'randeep-testing1234', '3', '6', '3', '1', '0.00', '121', 0, 0, 1, 0, 1, 0, 1, 'Randeep Testing1234', '<p>sdfsffsd</p>', '', 0),
(129, 3, 'ABK', NULL, '12.00', '2019-05-13 17:09:26', '2019-05-13 17:09:26', NULL, 'dk', '', 1, 1, 1, 0, 1, 10, 0, 'first', '4', '6', '4', '2', '2.00', '56465', 1, 0, 1, 0, 1, 1, 2, 'first', '<p>dsfsfsdfsf sdfdsf</p>', '', 0),
(131, 3, 'ABK', NULL, '12.00', '2019-05-13 17:11:08', '2019-05-13 17:16:45', NULL, 'dk', '', 1, 1, 1, 0, 1, 10, 0, 'first-ddfdf-dfdf', '4', '6', '4', '2', '2.00', '56465', 1, 1, 1, 0, 1, 1, 2, 'first ddfdf dfdf', '<p>vcbcvbc cvbvcvb</p>', '', 0),
(132, 3, 'ABK', NULL, '12.00', '2019-05-13 17:27:49', '2019-05-13 17:27:49', NULL, 'dk', '', 1, 1, 1, 0, 1, 10, 0, 'randeep-testing', '3', '6', '4', '1', '2.00', '58', 0, 0, 1, 0, 1, 0, 2, 'Randeep Testing', '<p>dfdf</p>', '', 0),
(133, 3, 'ABK', NULL, '12.00', '2019-05-13 17:29:23', '2019-05-13 17:29:57', NULL, 'dk', '', 1, 1, 1, 0, 1, 10, 0, 'randeep-testings', '3', '6', '4', '1', '2.00', '58', 0, 0, 1, 0, 1, 0, 2, 'Randeep Testings', '<p>sddsd sdsds</p>', '', 0),
(134, 3, 'ABK', NULL, '12.00', '2019-05-18 06:32:18', '2019-05-18 06:38:14', NULL, 'dk', '', 1, 1, 1, 0, 1, 10, 0, 'randeep-testing-ss', '3', '6', '4', '2', '2.00', 'dsfddsf', 1, 0, 0, 0, 0, 1, 2, 'Randeep Testing ss', '<p>dfdfdf</p>', '', 0),
(135, 12, '97889', NULL, '12000.00', '2019-05-23 07:16:14', '2019-05-23 07:22:59', NULL, 'dk', '', 1, 1, 1, 0, 1, 10, 0, 'samsung-pen-drive', '6', '6', '4', '1', '20.00', 'videoid', 1, 1, 1, 1, 0, 0, 1, 'Samsung pen drive', '<h2>From the manufacturer</h2>\r\n\r\n<p><img alt="" src="https://m.media-amazon.com/images/S/aplus-media/sota/d14ee896-a41f-436c-bd3e-288fdab02fb9.__CR1,0,970,300_PT0_SX970_V1___.jpg" /></p>\r\n\r\n<h1>About the Brand</h1>\r\n\r\n<p>If the name, Milton, brings on nostalgia about school-day tiffin meals, reminds you of daily office-squabbles for hot food from your colleagues lunch boxes, or invokes memories of so many houseware products that brought convenience to life, then you already know who we are and what we do. To introduce ourselves formally, Milton is one of the leading manufacturers and marketers of houseware products in the country. We are the authors of Change, Innovation and Evolution in all we do.</p>\r\n\r\n<p>Since our inception in 1972 we have established a network of over 55,000 + retailers, and a host of strategically-placed manufacturing units across India; this has allowed us to constantly move forward in our endeavour to innovate better and more efficient products for our customers. Our unwavering commitment to this goal, has won us loyalty in India, and across more than 60 countries worldwide.</p>\r\n\r\n<p>Our &lsquo;Kuch Naya Sochte Hain&rsquo; mantra resonates in everything we do for you - insulated-steel and plastic products (Thermosteel and Thermoware), non-insulated products (Household), Melamine and HORECA.</p>\r\n\r\n<p>Milton, along with Claro, Spotzero, and Treo, is a part of the Hamilton Group of companies.</p>', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `products_attributes_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL,
  `view` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`products_attributes_id`, `products_id`, `options_id`, `options_values_id`, `options_values_price`, `price_prefix`, `is_default`, `sort`, `view`) VALUES
(2, 1, 1, 2, '0.00', '+', 0, 0, ''),
(3, 1, 1, 3, '0.00', '+', 0, 0, ''),
(4, 1, 1, 4, '0.00', '+', 0, 0, ''),
(5, 1, 1, 5, '0.00', '+', 0, 0, ''),
(6, 1, 1, 6, '0.00', '+', 0, 0, ''),
(7, 1, 1, 7, '0.00', '+', 0, 0, ''),
(8, 1, 1, 8, '0.00', '+', 0, 0, ''),
(9, 1, 1, 9, '0.00', '+', 0, 0, ''),
(10, 1, 4, 29, '0.00', '+', 0, 0, ''),
(11, 1, 4, 32, '0.00', '+', 0, 0, ''),
(12, 1, 4, 35, '0.00', '+', 0, 0, ''),
(13, 1, 4, 38, '0.00', '+', 0, 0, ''),
(14, 1, 2, 20, '0.00', '+', 0, 0, ''),
(15, 1, 2, 21, '0.00', '+', 0, 0, ''),
(16, 1, 2, 22, '0.00', '+', 0, 0, ''),
(17, 1, 2, 23, '0.00', '+', 0, 0, ''),
(18, 1, 2, 24, '0.00', '+', 0, 0, ''),
(19, 1, 2, 25, '0.00', '+', 0, 0, ''),
(20, 1, 2, 26, '0.00', '+', 0, 0, ''),
(21, 1, 2, 27, '0.00', '+', 0, 0, ''),
(22, 1, 2, 28, '0.00', '+', 0, 0, ''),
(23, 1, 5, 30, '0.00', '+', 0, 0, ''),
(24, 1, 5, 34, '0.00', '+', 0, 0, ''),
(25, 1, 5, 36, '0.00', '+', 0, 0, ''),
(26, 1, 5, 40, '0.00', '+', 0, 0, ''),
(27, 1, 3, 10, '0.00', '+', 0, 0, ''),
(28, 1, 3, 11, '0.00', '+', 0, 0, ''),
(29, 1, 3, 12, '0.00', '+', 0, 0, ''),
(30, 1, 3, 13, '0.00', '+', 0, 0, ''),
(31, 1, 3, 14, '0.00', '+', 0, 0, ''),
(32, 1, 3, 15, '0.00', '+', 0, 0, ''),
(33, 1, 3, 16, '0.00', '+', 0, 0, ''),
(34, 1, 3, 17, '0.00', '+', 0, 0, ''),
(35, 1, 3, 18, '0.00', '+', 0, 0, ''),
(36, 1, 6, 31, '0.00', '+', 0, 0, ''),
(37, 1, 6, 33, '0.00', '+', 0, 0, ''),
(38, 1, 6, 37, '0.00', '+', 0, 0, ''),
(39, 1, 6, 39, '0.00', '+', 0, 0, ''),
(40, 4, 4, 29, '0.00', '+', 0, 0, ''),
(41, 4, 4, 32, '0.00', '+', 0, 0, ''),
(42, 4, 4, 35, '0.00', '+', 0, 0, ''),
(43, 4, 4, 38, '0.00', '+', 0, 0, ''),
(44, 4, 5, 30, '0.00', '+', 0, 0, ''),
(45, 4, 5, 34, '0.00', '+', 0, 0, ''),
(46, 4, 5, 36, '0.00', '+', 0, 0, ''),
(47, 4, 5, 40, '0.00', '+', 0, 0, ''),
(48, 4, 6, 31, '0.00', '+', 0, 0, ''),
(49, 4, 6, 33, '0.00', '+', 0, 0, ''),
(50, 4, 6, 37, '0.00', '+', 0, 0, ''),
(51, 4, 6, 39, '0.00', '+', 0, 0, ''),
(52, 5, 4, 29, '0.00', '+', 0, 0, ''),
(53, 5, 4, 32, '0.00', '+', 0, 0, ''),
(54, 5, 4, 35, '0.00', '+', 0, 0, ''),
(55, 5, 5, 30, '0.00', '+', 0, 0, ''),
(56, 5, 5, 34, '0.00', '+', 0, 0, ''),
(57, 5, 5, 36, '0.00', '+', 0, 0, ''),
(58, 5, 6, 31, '0.00', '+', 0, 0, ''),
(59, 5, 6, 33, '0.00', '+', 0, 0, ''),
(60, 5, 6, 37, '0.00', '+', 0, 0, ''),
(61, 6, 4, 29, '0.00', '+', 0, 0, ''),
(62, 6, 4, 32, '0.00', '+', 0, 0, ''),
(63, 6, 4, 35, '0.00', '+', 0, 0, ''),
(64, 6, 4, 38, '0.00', '+', 0, 0, ''),
(65, 6, 5, 30, '0.00', '+', 0, 0, ''),
(66, 6, 5, 34, '0.00', '+', 0, 0, ''),
(67, 6, 5, 36, '0.00', '+', 0, 0, ''),
(68, 6, 5, 40, '0.00', '+', 0, 0, ''),
(69, 6, 6, 31, '0.00', '+', 0, 0, ''),
(70, 6, 6, 33, '0.00', '+', 0, 0, ''),
(71, 6, 6, 37, '0.00', '+', 0, 0, ''),
(72, 6, 6, 39, '0.00', '+', 0, 0, ''),
(73, 7, 4, 32, '0.00', '+', 0, 0, ''),
(74, 7, 4, 35, '0.00', '+', 0, 0, ''),
(75, 7, 5, 34, '0.00', '+', 0, 0, ''),
(76, 7, 5, 36, '0.00', '+', 0, 0, ''),
(77, 7, 6, 33, '0.00', '+', 0, 0, ''),
(78, 7, 6, 37, '0.00', '+', 0, 0, ''),
(79, 8, 4, 29, '0.00', '+', 0, 0, ''),
(80, 8, 4, 32, '0.00', '+', 0, 0, ''),
(81, 8, 5, 30, '0.00', '+', 0, 0, ''),
(82, 8, 5, 34, '0.00', '+', 0, 0, ''),
(83, 8, 6, 31, '0.00', '+', 0, 0, ''),
(84, 8, 6, 33, '0.00', '+', 0, 0, ''),
(85, 9, 4, 32, '0.00', '+', 0, 0, ''),
(86, 9, 4, 35, '0.00', '+', 0, 0, ''),
(87, 9, 4, 38, '0.00', '+', 0, 0, ''),
(88, 9, 5, 34, '0.00', '+', 0, 0, ''),
(89, 9, 5, 36, '0.00', '+', 0, 0, ''),
(90, 9, 5, 40, '0.00', '+', 0, 0, ''),
(91, 9, 6, 33, '0.00', '+', 0, 0, ''),
(92, 9, 6, 37, '0.00', '+', 0, 0, ''),
(93, 9, 6, 39, '0.00', '+', 0, 0, ''),
(94, 10, 4, 35, '0.00', '+', 0, 0, ''),
(95, 10, 4, 38, '0.00', '+', 0, 0, ''),
(96, 10, 5, 36, '0.00', '+', 0, 0, ''),
(97, 10, 5, 40, '0.00', '+', 0, 0, ''),
(98, 10, 6, 37, '0.00', '+', 0, 0, ''),
(99, 10, 6, 39, '0.00', '+', 0, 0, ''),
(100, 11, 7, 41, '0.00', '+', 0, 0, ''),
(101, 11, 7, 42, '0.00', '+', 0, 0, ''),
(102, 11, 7, 43, '0.00', '+', 0, 0, ''),
(103, 11, 8, 49, '0.00', '+', 0, 0, ''),
(104, 11, 8, 50, '0.00', '+', 0, 0, ''),
(105, 11, 8, 51, '0.00', '+', 0, 0, ''),
(106, 11, 9, 57, '0.00', '+', 0, 0, ''),
(107, 11, 9, 58, '0.00', '+', 0, 0, ''),
(108, 11, 9, 59, '0.00', '+', 0, 0, ''),
(109, 11, 10, 65, '0.00', '+', 0, 0, ''),
(110, 11, 10, 66, '0.00', '+', 0, 0, ''),
(111, 11, 11, 68, '0.00', '+', 0, 0, ''),
(112, 11, 11, 69, '0.00', '+', 0, 0, ''),
(113, 11, 12, 71, '0.00', '+', 0, 0, ''),
(114, 11, 12, 72, '0.00', '+', 0, 0, ''),
(115, 12, 1, 1, '0.00', '+', 0, 0, ''),
(116, 12, 1, 3, '0.00', '+', 0, 0, ''),
(117, 12, 2, 20, '0.00', '+', 0, 0, ''),
(118, 12, 2, 22, '0.00', '+', 0, 0, ''),
(119, 12, 3, 10, '0.00', '+', 0, 0, ''),
(120, 12, 3, 12, '0.00', '+', 0, 0, ''),
(121, 12, 7, 44, '0.00', '+', 0, 0, ''),
(122, 12, 7, 45, '0.00', '+', 0, 0, ''),
(123, 12, 7, 46, '0.00', '+', 0, 0, ''),
(124, 12, 7, 47, '0.00', '+', 0, 0, ''),
(125, 12, 8, 52, '0.00', '+', 0, 0, ''),
(126, 12, 8, 53, '0.00', '+', 0, 0, ''),
(127, 12, 8, 54, '0.00', '+', 0, 0, ''),
(128, 12, 8, 55, '0.00', '+', 0, 0, ''),
(129, 12, 9, 60, '0.00', '+', 0, 0, ''),
(130, 12, 9, 61, '0.00', '+', 0, 0, ''),
(131, 12, 9, 62, '0.00', '+', 0, 0, ''),
(132, 12, 9, 63, '0.00', '+', 0, 0, ''),
(133, 12, 10, 65, '0.00', '+', 0, 0, ''),
(134, 12, 10, 66, '0.00', '+', 0, 0, ''),
(135, 12, 10, 67, '0.00', '+', 0, 0, ''),
(136, 12, 11, 68, '0.00', '+', 0, 0, ''),
(137, 12, 11, 69, '0.00', '+', 0, 0, ''),
(138, 12, 11, 70, '0.00', '+', 0, 0, ''),
(139, 12, 12, 71, '0.00', '+', 0, 0, ''),
(140, 12, 12, 72, '0.00', '+', 0, 0, ''),
(141, 12, 12, 73, '0.00', '+', 0, 0, ''),
(142, 13, 7, 41, '0.00', '+', 0, 0, ''),
(143, 13, 7, 42, '0.00', '+', 0, 0, ''),
(144, 13, 8, 49, '0.00', '+', 0, 0, ''),
(145, 13, 8, 50, '0.00', '+', 0, 0, ''),
(146, 13, 9, 57, '0.00', '+', 0, 0, ''),
(147, 13, 9, 58, '0.00', '+', 0, 0, ''),
(148, 13, 10, 65, '0.00', '+', 0, 0, ''),
(149, 13, 10, 67, '0.00', '+', 0, 0, ''),
(150, 13, 11, 68, '0.00', '+', 0, 0, ''),
(151, 13, 11, 70, '0.00', '+', 0, 0, ''),
(152, 13, 12, 71, '0.00', '+', 0, 0, ''),
(153, 13, 12, 73, '0.00', '+', 0, 0, ''),
(154, 14, 4, 74, '0.00', '+', 0, 0, ''),
(155, 14, 4, 75, '0.00', '+', 0, 0, ''),
(156, 14, 4, 76, '0.00', '+', 0, 0, ''),
(157, 14, 4, 77, '0.00', '+', 0, 0, ''),
(158, 14, 5, 78, '0.00', '+', 0, 0, ''),
(159, 14, 5, 79, '0.00', '+', 0, 0, ''),
(160, 14, 5, 80, '0.00', '+', 0, 0, ''),
(161, 14, 5, 81, '0.00', '+', 0, 0, ''),
(162, 14, 6, 82, '0.00', '+', 0, 0, ''),
(163, 14, 6, 83, '0.00', '+', 0, 0, ''),
(164, 14, 6, 84, '0.00', '+', 0, 0, ''),
(165, 14, 6, 85, '0.00', '+', 0, 0, ''),
(166, 15, 4, 76, '0.00', '+', 0, 0, ''),
(167, 15, 5, 80, '0.00', '+', 0, 0, ''),
(168, 15, 6, 85, '0.00', '+', 0, 0, ''),
(169, 16, 4, 75, '0.00', '+', 0, 0, ''),
(170, 16, 4, 76, '0.00', '+', 0, 0, ''),
(171, 16, 4, 77, '0.00', '+', 0, 0, ''),
(172, 16, 5, 79, '0.00', '+', 0, 0, ''),
(173, 16, 5, 80, '0.00', '+', 0, 0, ''),
(174, 16, 5, 81, '0.00', '+', 0, 0, ''),
(175, 16, 6, 83, '0.00', '+', 0, 0, ''),
(176, 16, 6, 84, '0.00', '+', 0, 0, ''),
(177, 16, 6, 85, '0.00', '+', 0, 0, ''),
(178, 17, 1, 5, '0.00', '+', 0, 0, ''),
(179, 17, 2, 24, '0.00', '+', 0, 0, ''),
(180, 17, 3, 14, '0.00', '+', 0, 0, ''),
(181, 17, 4, 74, '0.00', '+', 0, 0, ''),
(182, 17, 4, 75, '100.00', '+', 0, 0, ''),
(183, 17, 5, 78, '0.00', '+', 0, 0, ''),
(184, 17, 5, 79, '0.00', '+', 0, 0, ''),
(185, 17, 6, 82, '0.00', '+', 0, 0, ''),
(186, 17, 6, 83, '0.00', '+', 0, 0, ''),
(187, 19, 4, 76, '0.00', '+', 0, 0, ''),
(188, 19, 4, 77, '0.00', '+', 0, 0, ''),
(189, 19, 5, 80, '0.00', '+', 0, 0, ''),
(190, 19, 5, 81, '0.00', '+', 0, 0, ''),
(191, 19, 6, 84, '0.00', '+', 0, 0, ''),
(192, 19, 6, 85, '0.00', '+', 0, 0, ''),
(193, 24, 4, 29, '0.00', '+', 0, 0, ''),
(194, 24, 4, 32, '0.00', '+', 0, 0, ''),
(195, 24, 4, 35, '0.00', '+', 0, 0, ''),
(196, 24, 5, 30, '0.00', '+', 0, 0, ''),
(197, 24, 5, 34, '0.00', '+', 0, 0, ''),
(198, 24, 5, 36, '0.00', '+', 0, 0, ''),
(199, 24, 6, 31, '0.00', '+', 0, 0, ''),
(200, 24, 6, 33, '0.00', '+', 0, 0, ''),
(201, 24, 6, 37, '0.00', '+', 0, 0, ''),
(202, 25, 4, 29, '0.00', '+', 0, 0, ''),
(203, 25, 5, 30, '0.00', '+', 0, 0, ''),
(204, 25, 6, 31, '0.00', '+', 0, 0, ''),
(205, 26, 4, 32, '0.00', '+', 0, 0, ''),
(206, 26, 5, 34, '0.00', '+', 0, 0, ''),
(207, 26, 6, 33, '0.00', '+', 0, 0, ''),
(208, 27, 4, 32, '0.00', '+', 0, 0, ''),
(209, 27, 4, 35, '0.00', '+', 0, 0, ''),
(210, 27, 5, 34, '0.00', '+', 0, 0, ''),
(211, 27, 5, 36, '0.00', '+', 0, 0, ''),
(212, 27, 6, 33, '0.00', '+', 0, 0, ''),
(213, 27, 6, 37, '0.00', '+', 0, 0, ''),
(214, 28, 4, 29, '0.00', '+', 0, 0, ''),
(215, 28, 4, 32, '0.00', '+', 0, 0, ''),
(216, 28, 5, 30, '0.00', '+', 0, 0, ''),
(217, 28, 5, 34, '0.00', '+', 0, 0, ''),
(218, 28, 6, 31, '0.00', '+', 0, 0, ''),
(219, 28, 6, 33, '0.00', '+', 0, 0, ''),
(220, 29, 4, 29, '0.00', '+', 0, 0, ''),
(221, 29, 4, 32, '0.00', '+', 0, 0, ''),
(222, 29, 4, 35, '0.00', '+', 0, 0, ''),
(223, 29, 4, 38, '0.00', '+', 0, 0, ''),
(224, 29, 5, 30, '0.00', '+', 0, 0, ''),
(225, 29, 5, 34, '0.00', '+', 0, 0, ''),
(226, 29, 5, 36, '0.00', '+', 0, 0, ''),
(227, 29, 5, 40, '0.00', '+', 0, 0, ''),
(228, 29, 6, 31, '0.00', '+', 0, 0, ''),
(229, 29, 6, 33, '0.00', '+', 0, 0, ''),
(230, 29, 6, 37, '0.00', '+', 0, 0, ''),
(231, 29, 6, 39, '0.00', '+', 0, 0, ''),
(232, 30, 4, 29, '0.00', '+', 0, 0, ''),
(233, 30, 5, 30, '0.00', '+', 0, 0, ''),
(234, 30, 6, 31, '0.00', '+', 0, 0, ''),
(235, 31, 4, 87, '0.00', '+', 0, 0, ''),
(236, 31, 4, 88, '0.00', '+', 0, 0, ''),
(237, 31, 4, 89, '0.00', '+', 0, 0, ''),
(238, 31, 4, 90, '0.00', '+', 0, 0, ''),
(239, 31, 5, 86, '0.00', '+', 0, 0, ''),
(240, 31, 5, 94, '0.00', '+', 0, 0, ''),
(241, 31, 5, 95, '0.00', '+', 0, 0, ''),
(242, 31, 5, 96, '0.00', '+', 0, 0, ''),
(243, 31, 6, 100, '0.00', '+', 0, 0, ''),
(244, 31, 6, 101, '0.00', '+', 0, 0, ''),
(245, 31, 6, 102, '0.00', '+', 0, 0, ''),
(246, 31, 6, 103, '0.00', '+', 0, 0, ''),
(247, 32, 4, 87, '0.00', '+', 0, 0, ''),
(248, 32, 4, 88, '0.00', '+', 0, 0, ''),
(249, 32, 4, 89, '0.00', '+', 0, 0, ''),
(250, 32, 4, 90, '0.00', '+', 0, 0, ''),
(251, 32, 5, 86, '0.00', '+', 0, 0, ''),
(252, 32, 5, 94, '0.00', '+', 0, 0, ''),
(253, 32, 5, 95, '0.00', '+', 0, 0, ''),
(254, 32, 5, 96, '0.00', '+', 0, 0, ''),
(255, 32, 6, 100, '0.00', '+', 0, 0, ''),
(256, 32, 6, 101, '0.00', '+', 0, 0, ''),
(257, 32, 6, 102, '0.00', '+', 0, 0, ''),
(258, 32, 6, 103, '0.00', '+', 0, 0, ''),
(259, 33, 4, 91, '0.00', '+', 0, 0, ''),
(260, 33, 4, 92, '0.00', '+', 0, 0, ''),
(261, 33, 4, 93, '0.00', '+', 0, 0, ''),
(262, 33, 5, 97, '0.00', '+', 0, 0, ''),
(263, 33, 5, 98, '0.00', '+', 0, 0, ''),
(264, 33, 5, 99, '0.00', '+', 0, 0, ''),
(265, 33, 6, 104, '0.00', '+', 0, 0, ''),
(266, 33, 6, 105, '0.00', '+', 0, 0, ''),
(267, 33, 6, 106, '0.00', '+', 0, 0, ''),
(268, 38, 4, 107, '0.00', '+', 0, 0, ''),
(269, 38, 4, 110, '0.00', '+', 0, 0, ''),
(270, 38, 4, 111, '0.00', '+', 0, 0, ''),
(271, 38, 5, 109, '0.00', '+', 0, 0, ''),
(272, 38, 5, 113, '0.00', '+', 0, 0, ''),
(273, 38, 5, 114, '0.00', '+', 0, 0, ''),
(274, 38, 6, 108, '0.00', '+', 0, 0, ''),
(275, 38, 6, 116, '0.00', '+', 0, 0, ''),
(276, 38, 6, 117, '0.00', '+', 0, 0, ''),
(277, 39, 4, 111, '0.00', '+', 0, 0, ''),
(278, 39, 5, 114, '0.00', '+', 0, 0, ''),
(279, 39, 6, 117, '0.00', '+', 0, 0, ''),
(280, 40, 4, 107, '0.00', '+', 0, 0, ''),
(281, 40, 4, 110, '0.00', '+', 0, 0, ''),
(282, 40, 5, 109, '0.00', '+', 0, 0, ''),
(283, 40, 5, 113, '0.00', '+', 0, 0, ''),
(284, 40, 6, 108, '0.00', '+', 0, 0, ''),
(285, 40, 6, 116, '0.00', '+', 0, 0, ''),
(286, 42, 4, 111, '0.00', '+', 0, 0, ''),
(287, 42, 4, 112, '0.00', '+', 0, 0, ''),
(288, 42, 5, 114, '0.00', '+', 0, 0, ''),
(289, 42, 5, 115, '0.00', '+', 0, 0, ''),
(290, 42, 6, 117, '0.00', '+', 0, 0, ''),
(291, 42, 6, 118, '0.00', '+', 0, 0, ''),
(292, 43, 4, 112, '0.00', '+', 0, 0, ''),
(293, 43, 5, 115, '0.00', '+', 0, 0, ''),
(294, 43, 6, 118, '0.00', '+', 0, 0, ''),
(295, 44, 4, 111, '0.00', '+', 0, 0, ''),
(296, 44, 4, 112, '0.00', '+', 0, 0, ''),
(297, 44, 5, 114, '0.00', '+', 0, 0, ''),
(298, 44, 5, 115, '0.00', '+', 0, 0, ''),
(299, 44, 6, 117, '0.00', '+', 0, 0, ''),
(300, 44, 6, 118, '0.00', '+', 0, 0, ''),
(301, 50, 4, 125, '0.00', '+', 0, 0, ''),
(302, 50, 5, 127, '0.00', '+', 0, 0, ''),
(303, 50, 6, 126, '0.00', '+', 0, 0, ''),
(304, 48, 1, 119, '0.00', '+', 0, 0, ''),
(305, 48, 1, 122, '0.00', '+', 0, 0, ''),
(306, 48, 2, 121, '0.00', '+', 0, 0, ''),
(307, 48, 2, 123, '0.00', '+', 0, 0, ''),
(308, 48, 3, 120, '0.00', '+', 0, 0, ''),
(309, 48, 3, 124, '0.00', '+', 0, 0, ''),
(310, 48, 4, 125, '0.00', '+', 0, 0, ''),
(311, 48, 4, 130, '0.00', '+', 0, 0, ''),
(312, 48, 5, 127, '0.00', '+', 0, 0, ''),
(313, 48, 5, 129, '0.00', '+', 0, 0, ''),
(314, 48, 6, 126, '0.00', '+', 0, 0, ''),
(315, 48, 6, 128, '0.00', '+', 0, 0, ''),
(316, 49, 4, 130, '0.00', '+', 0, 0, ''),
(317, 49, 5, 129, '0.00', '+', 0, 0, ''),
(318, 49, 6, 128, '0.00', '+', 0, 0, ''),
(319, 51, 4, 125, '0.00', '+', 0, 0, ''),
(320, 51, 5, 127, '0.00', '+', 0, 0, ''),
(321, 51, 6, 126, '0.00', '+', 0, 0, ''),
(322, 52, 1, 119, '0.00', '+', 0, 0, ''),
(323, 52, 2, 121, '0.00', '+', 0, 0, ''),
(324, 52, 3, 120, '0.00', '+', 0, 0, ''),
(325, 53, 4, 132, '0.00', '+', 0, 0, ''),
(326, 53, 5, 135, '0.00', '+', 0, 0, ''),
(327, 53, 6, 136, '0.00', '+', 0, 0, ''),
(328, 52, 4, 131, '0.00', '+', 0, 0, ''),
(329, 52, 5, 133, '0.00', '+', 0, 0, ''),
(330, 52, 6, 134, '0.00', '+', 0, 0, ''),
(331, 54, 1, 2, '0.00', '+', 0, 0, ''),
(332, 54, 1, 3, '0.00', '+', 0, 0, ''),
(333, 54, 2, 21, '0.00', '+', 0, 0, ''),
(334, 54, 2, 22, '0.00', '+', 0, 0, ''),
(335, 54, 3, 11, '0.00', '+', 0, 0, ''),
(336, 54, 3, 12, '0.00', '+', 0, 0, ''),
(337, 55, 4, 29, '0.00', '+', 0, 0, ''),
(338, 55, 4, 32, '0.00', '+', 0, 0, ''),
(339, 55, 4, 35, '0.00', '+', 0, 0, ''),
(341, 55, 5, 30, '0.00', '+', 0, 0, ''),
(342, 55, 5, 34, '0.00', '+', 0, 0, ''),
(343, 55, 5, 36, '0.00', '+', 0, 0, ''),
(345, 55, 6, 31, '0.00', '+', 0, 0, ''),
(346, 55, 6, 33, '0.00', '+', 0, 0, ''),
(347, 55, 6, 37, '0.00', '+', 0, 0, ''),
(351, 56, 4, 137, '0.00', '+', 0, 0, ''),
(352, 56, 5, 140, '0.00', '+', 0, 0, ''),
(353, 56, 6, 143, '0.00', '+', 0, 0, ''),
(354, 57, 1, 2, '0.00', '+', 0, 0, ''),
(355, 57, 1, 3, '0.00', '+', 0, 0, ''),
(356, 57, 2, 21, '0.00', '+', 0, 0, ''),
(357, 57, 2, 22, '0.00', '+', 0, 0, ''),
(358, 57, 3, 11, '0.00', '+', 0, 0, ''),
(359, 57, 3, 12, '0.00', '+', 0, 0, ''),
(360, 57, 4, 138, '0.00', '+', 0, 0, ''),
(361, 57, 5, 141, '0.00', '+', 0, 0, ''),
(362, 57, 6, 145, '0.00', '+', 0, 0, ''),
(363, 58, 4, 29, '0.00', '+', 0, 0, ''),
(364, 58, 4, 32, '0.00', '+', 0, 0, ''),
(365, 58, 4, 35, '0.00', '+', 0, 0, ''),
(366, 58, 5, 30, '0.00', '+', 0, 0, ''),
(367, 58, 5, 34, '0.00', '+', 0, 0, ''),
(368, 58, 5, 36, '0.00', '+', 0, 0, ''),
(369, 58, 6, 31, '0.00', '+', 0, 0, ''),
(370, 58, 6, 33, '0.00', '+', 0, 0, ''),
(371, 58, 6, 37, '0.00', '+', 0, 0, ''),
(372, 59, 4, 29, '0.00', '+', 0, 0, ''),
(373, 59, 5, 30, '0.00', '+', 0, 0, ''),
(374, 59, 6, 31, '0.00', '+', 0, 0, ''),
(375, 60, 4, 35, '0.00', '+', 0, 0, ''),
(376, 60, 5, 36, '0.00', '+', 0, 0, ''),
(377, 60, 6, 37, '0.00', '+', 0, 0, ''),
(378, 61, 4, 32, '0.00', '+', 0, 0, ''),
(379, 61, 4, 35, '0.00', '+', 0, 0, ''),
(380, 61, 5, 34, '0.00', '+', 0, 0, ''),
(381, 61, 5, 36, '0.00', '+', 0, 0, ''),
(382, 61, 6, 33, '0.00', '+', 0, 0, ''),
(383, 61, 6, 37, '0.00', '+', 0, 0, ''),
(384, 63, 4, 29, '0.00', '+', 0, 0, ''),
(385, 63, 4, 35, '0.00', '+', 0, 0, ''),
(386, 63, 5, 30, '0.00', '+', 0, 0, ''),
(387, 63, 5, 36, '0.00', '+', 0, 0, ''),
(388, 63, 6, 31, '0.00', '+', 0, 0, ''),
(389, 63, 6, 37, '0.00', '+', 0, 0, ''),
(390, 66, 7, 41, '0.00', '+', 0, 0, ''),
(391, 66, 8, 49, '0.00', '+', 0, 0, ''),
(392, 66, 9, 57, '0.00', '+', 0, 0, ''),
(393, 66, 10, 65, '0.00', '+', 0, 0, ''),
(394, 66, 11, 68, '0.00', '+', 0, 0, ''),
(395, 66, 12, 71, '0.00', '+', 0, 0, ''),
(396, 67, 4, 32, '0.00', '+', 0, 0, ''),
(397, 67, 4, 35, '0.00', '+', 0, 0, ''),
(398, 67, 5, 34, '0.00', '+', 0, 0, ''),
(399, 67, 5, 36, '0.00', '+', 0, 0, ''),
(400, 67, 6, 33, '0.00', '+', 0, 0, ''),
(401, 67, 6, 37, '0.00', '+', 0, 0, ''),
(402, 68, 7, 42, '0.00', '+', 0, 0, ''),
(403, 68, 8, 50, '0.00', '+', 0, 0, ''),
(404, 68, 9, 58, '0.00', '+', 0, 0, ''),
(405, 68, 10, 65, '0.00', '+', 0, 0, ''),
(406, 68, 11, 68, '0.00', '+', 0, 0, ''),
(407, 68, 12, 71, '0.00', '+', 0, 0, ''),
(408, 69, 4, 74, '0.00', '+', 0, 0, ''),
(409, 69, 4, 75, '0.00', '+', 0, 0, ''),
(410, 69, 4, 76, '0.00', '+', 0, 0, ''),
(411, 69, 5, 78, '0.00', '+', 0, 0, ''),
(412, 69, 5, 79, '0.00', '+', 0, 0, ''),
(413, 69, 5, 80, '0.00', '+', 0, 0, ''),
(414, 69, 6, 82, '0.00', '+', 0, 0, ''),
(415, 69, 6, 83, '0.00', '+', 0, 0, ''),
(416, 69, 6, 84, '0.00', '+', 0, 0, ''),
(417, 70, 4, 74, '0.00', '+', 0, 0, ''),
(418, 70, 4, 75, '0.00', '+', 0, 0, ''),
(419, 70, 5, 78, '0.00', '+', 0, 0, ''),
(420, 70, 5, 79, '0.00', '+', 0, 0, ''),
(421, 70, 6, 82, '0.00', '+', 0, 0, ''),
(422, 70, 6, 83, '0.00', '+', 0, 0, ''),
(426, 81, 1, 1, '0.00', '+', 1, 0, ''),
(427, 81, 17, 153, '0.00', '+', 1, 0, ''),
(429, 81, 10, 67, '0.00', '+', 1, 0, ''),
(431, 81, 17, 152, '0.00', '+', 1, 0, ''),
(432, 82, 4, 29, '0.00', '+', 1, 0, ''),
(433, 83, 13, 148, '0.00', '+', 1, 0, ''),
(437, 131, 4, 32, '100.00', '+', 0, 1, 'hutt'),
(438, 131, 4, 32, '0.00', '+', 1, 5, '5fff'),
(439, 131, 4, 35, '200.00', '-', 0, 4, 'dfdfdd'),
(440, 132, 1, 2, '0.00', '+', 1, 2, 'color'),
(441, 132, 4, 29, '100.00', '+', 0, 1, 'no'),
(442, 136, 1, 2, '0.00', '+', 1, 1, 'vcvc'),
(443, 137, 1, 2, '0.00', '+', 1, 1, 'dfd'),
(444, 150, 1, 2, '0.00', '+', 1, 1, 'fgf'),
(445, 150, 1, 1, '0.00', '+', 1, 2, 'fff'),
(446, 150, 4, 29, '200.00', '+', 0, 3, 'fgfg'),
(447, 120, 1, 1, '0.00', '+', 1, 1, 'dfgdg'),
(448, 120, 1, 2, '0.00', '+', 1, 2, 'dfgdg'),
(449, 120, 1, 3, '25.00', '+', 0, 3, 'gh'),
(450, 120, 1, 2, '0.00', '+', 1, 4, 'fdgd'),
(451, 120, 1, 2, '0.00', '+', 1, 1, 'fgf'),
(453, 120, 4, 35, '0.00', '+', 1, 1, 'gfgf'),
(454, 126, 1, 2, '0.00', '+', 1, 1, 'ghg'),
(455, 126, 1, 1, '0.00', '+', 1, 2, 'rtrtr'),
(456, 124, 1, 2, '0.00', '+', 1, 1, 'jj'),
(457, 124, 1, 1, '0.00', '+', 1, 2, 'hghh'),
(458, 124, 4, 29, '0.00', '+', 1, 1, 'kkk'),
(459, 124, 4, 32, '0.00', '+', 0, 8, 'erer'),
(460, 134, 1, 2, '0.00', '+', 1, 0, ''),
(461, 1, 17, 152, '0.00', '+', 1, 0, ''),
(462, 1, 17, 152, '0.00', '+', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes_download`
--

CREATE TABLE `products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL,
  `products_attributes_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `products_attributes_maxdays` int(2) DEFAULT '0',
  `products_attributes_maxcount` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_description`
--

CREATE TABLE `products_description` (
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `products_description` text COLLATE utf8_unicode_ci,
  `products_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_viewed` int(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_description`
--

INSERT INTO `products_description` (`products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`) VALUES
(1, 1, 'CLASSIC FIT SOFT-TOUCH POLO', '<p>- Classic Fit: our roomiest silhouette. Our Polo shirts also come in Slim Fit (our trimmest) and Custom Slim Fit (our second-slimmest). - Size medium has a 29&quot; body length, an 18&quot; shoulder, and a 22&quot; chest. - Ribbed Polo collar. Three-button placket. - Short sleeves with ribbed armbands. - Even vented hem. - Multicolored signature embroidered pony at the left chest. - 100% cotton. - Machine washable. Imported. - Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', NULL, 0),
(2, 1, 'HAMPTON CLASSIC FIT SHIRT', '<p>Classic Fit. Size medium has a 29&frac12;&quot; body length, an 18&frac12;&quot; shoulder, and a 22&frac12;&quot; chest. Medium-spread collar. Four-button extended placket. Genuine mother-of-pearl buttons. Short sleeves. Left chest patch pocket. Even vented hem. 100% cotton. Machine washable. Imported. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', NULL, 0),
(3, 1, 'CLASSIC FIT COTTON POLO SHIRT', 'Classic Fit: our roomiest silhouette. Cut for a lower armhole and a fuller sleeve that falls closer to the elbow.\r\nOur Polo shirts also come in Slim Fit (3" trimmer at the chest and 2" shorter at the body) and Custom Slim Fit (1½" trimmer at the chest and ½" shorter at the body).\r\nSize medium has a 29" body length, an 18" shoulder, and a 22" chest.\r\nRibbed Polo collar. Three-button placket.\r\nShort sleeves with ribbed armbands.\r\nEven vented hem.\r\nSignature embroidered pony at the left chest.\r\n100% cotton. Machine washable. Imported.\r\nModel is 6\'1"/185 cm and wears a size medium.', NULL, 0),
(4, 1, 'CLASSIC FIT COTTON POLO SHIRT', '<p>Classic Fit: our roomiest silhouette. Cut for a lower armhole and a fuller sleeve that falls closer to the elbow. Our Polo shirts also come in Slim Fit (3&quot; trimmer at the chest and 2&quot; shorter at the body) and Custom Slim Fit (1&frac12;&quot; trimmer at the chest and &frac12;&quot; shorter at the body). Size medium has a 29&quot; body length, an 18&quot; shoulder, and a 22&quot; chest. Ribbed Polo collar. Three-button placket. Short sleeves with ribbed armbands. Even vented hem. Signature embroidered pony at the left chest. 100% cotton. Machine washable. Imported. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', NULL, 0),
(5, 1, 'CUSTOM SLIM FIT COTTON SHIRT', '<p>Custom Slim Fit: our trimmest silhouette. Previously called Custom Fit. Our T-shirts also come in Classic Fit (our roomiest). Size medium has a 27&frac12;&quot; body length, an 18&frac12;&quot; shoulder, and a 21&quot; chest. Striped baseball collar. Two-button placket. Short sleeves with striped ribbed armbands. Striped ribbed piecing at the armholes. Felt &quot;Polo Ralph Lauren&quot; patch at the left chest. Even vented hem. Shell: 100% cotton. Collar: 99% cotton, 1% elastane. Machine washable. Imported. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', NULL, 0),
(6, 1, 'CUSTOM SLIM FIT WEATHERED POLO', '<p>Custom Slim Fit: a middle ground between our Classic Fit and Slim Fit. Sleeve hugs the bicep. Tailored through the waist. Previously called Custom Fit. Our Polo shirts also come in Slim Fit (1&frac12;&quot; trimmer at the chest and &frac12;&quot; shorter at the body) and Classic Fit (1&frac12;&quot; wider at the chest and 1&frac12;&quot; longer at the body). Size medium has a 27&frac12;&quot; front body length, a 28&frac12;&quot; back body length, a 17&frac34;&quot; shoulder, a 20&frac34;&quot; chest, and a 34&frac12;&quot; sleeve length. Sleeve length is taken from the center back of the neck and changes 1&quot; betwe Ribbed Polo collar. Two-button placket. Long sleeves with ribbed cuffs. Tennis tail. Signature embroidered pony at the left chest. 100% cotton. Machine washable. Imported. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', NULL, 0),
(7, 1, 'STANDARD FIT COTTON SHIRT', '<p>Standard Fit: a comfortable, relaxed silhouette. If you favored our Classic Fit or Custom Fit, you will like this updated version. Size medium has a 30&quot; body length. Button-down point collar. Buttoned placket. Short sleeves. Left chest buttoned pocket. 100% cotton. Machine washable. Imported. Coloring may rub off onto fabrics and upholstery. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', NULL, 0),
(8, 1, 'STANDARD FIT COTTON POPOVER', '<p>Standard Fit: a comfortable, relaxed silhouette. If you favored our Classic Fit or Custom Fit, you will like this updated version. Size medium has a 30&quot; back body length. Button-down point collar. Buttoned half-placket. Short sleeves. Left chest buttoned pocket. Box-pleated back yoke ensures a comfortable fit and a greater range of motion. 100% cotton. Machine washable. Imported. Japanese fabric. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', NULL, 0),
(9, 1, 'STANDARD FIT MADRAS POPOVER', '<p>Standard Fit: a comfortable, relaxed silhouette. If you favored our Classic Fit or Custom Fit, you will like this updated version. Size medium has a 30&quot; body length. Button-down point collar. Three-button placket. Genuine mother-of-pearl buttons. Short sleeves. Left chest patch pocket. Split back yoke with a box pleat ensures a comfortable fit and a greater range of motion. Signature embroidered pony at the left chest pocket. 100% cotton. Machine washable. Imported. Due to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', NULL, 0),
(10, 1, 'STANDARD FIT COTTON WORKSHIRT', '<p>Standard Fit: a comfortable, relaxed silhouette. If you favored our Classic Fit or Custom Fit, you will like this updated version. Size medium has a 32&quot; body length, an 18&frac12;&quot; shoulder, a 46&frac12;&quot; chest, and a 35&quot; sleeve length. Sleeve length is taken from the center back of the neck and changes 1&quot; between sizes. Point collar. Buttoned placket. Genuine mother-of-pearl buttons. Long sleeves with buttoned barrel cuffs. Two chest buttoned pockets. Split back yoke with a box pleat ensures a comfortable fit and a greater range of motion. 100% cotton. Machine washable. Imported. Italian fabric. Dyed with true indigo, which may rub off onto fabrics, leather, and upholstery. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', NULL, 0),
(11, 1, 'ELDRIDGE SUPER SLIM JEAN', '<p>Eldridge Super Slim: Polo&#39;s skinniest fit. Sits low at the waist. Trim through the thigh and the leg. Tapered leg opening. Size 32W has an 8&frac34;&quot; rise and a 12&frac12;&quot; leg opening. Belt loops. Zip fly with our signature shank closure. Five-pocket styling with signature metal rivets. &quot;Polo&quot; label at the coin pocket. &quot;Polo Ralph Lauren&quot; leather patch at the back right waist. 94% cotton, 4% polyester, 2% elastane. Machine washable. Imported. Due to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery. Model is 6&#39;1&quot;/185 cm and wears a size 32W x 32L.</p>', NULL, 0),
(12, 1, 'SULLIVAN SLIM FIT JEAN', '<p>Sullivan Slim: sits slightly below the waist. Slim, tapered leg. Size 32W has a 9&quot; rise and a 14&quot; leg opening. Belt loops. Zip fly with our signature shank closure. Five-pocket styling with signature metal rivets. &quot;Polo&quot; label at the coin pocket. &quot;Polo Ralph Lauren&quot;&ndash;debossed leather patch at the back right waist. 97% cotton, 3% elastane. Machine washable. Imported. Due to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery. Model is 6&#39;1&quot;/185 cm and wears a size 32W x 32L.</p>', NULL, 0),
(13, 1, 'HAMPTON STRAIGHT FIT JEAN', '<p>Hampton Straight: Polo&#39;s most relaxed fit. Sits slightly below the waist. Easy fit through the thigh and slightly tapered at the ankle. Size 32W has a 9&quot; rise and a 16&quot; leg opening. Belt loops. Button fly with our signature shank closure. Five-pocket styling with signature metal rivets. &quot;Polo&quot; label at the coin pocket. &quot;Polo Ralph Lauren&quot;&ndash;debossed leather patch at the back right waist. 100% cotton. Machine washable. Imported. Due to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery. Model is 6&#39;1&quot;/185 cm and wears a size 32W x 32L.</p>', NULL, 0),
(14, 1, 'LAXMAN TECH SUEDE SNEAKER', '<p>Rounded toe. Lace-up front. Woven tag with our signature pony at the tongue. Padded velvet insole. Treaded rubber outsole. &quot;Polo&quot; printed at the outer side. Upper: man-made materials. Mesh panels: 100% nylon. Imported.</p>', NULL, 0),
(15, 1, 'VAUGHN SUEDE SLIP-ON SNEAKER', '<p>Fits true to size. Rounded toe. Slip-on styling. Elasticized side gores. &quot;Polo&quot; tag at the outer side. Padded collar. Signature pony&ndash;debossed suede heel. Padded canvas insole. Treaded rubber outsole. Leather. Imported.</p>', NULL, 0),
(16, 1, 'WORKINGTON LEATHER DRIVER', '<p>Penny tab at the vamp. Single-needle stitching at the toe. Padded leather insole. Leather outsole with rubber-nub detailing. Debossed &quot;Polo&quot; tag at the outer side. Leather. Imported.</p>', NULL, 0),
(17, 1, 'DILLIAN II SUEDE CHELSEA BOOT', '<p>Fits true to size. &frac12;&quot;/15 mm heel height. Rounded toe. Elasticized gores at the sides. Pull tab at the heel. Leather insole. Leather outsole with rubber treads. Leather. Imported.</p>', NULL, 0),
(18, 1, 'BRUNEL LEATHER WORK BOOT', '<p>1&quot;/25 mm heel height. 6&quot;/152 mm shaft height. Lace-up front with speed hooks. Sewn-in tongue guard. Pull tab at the heel. Hand-cut leather insole. Vibram rubber outsole. Goodyear welt construction. Leather. Made in the USA.</p>', NULL, 0),
(19, 1, 'LAXMAN TECH SUEDE SNEAKER', '<p>Rounded toe. Lace-up front. Woven tag with our signature pony at the tongue. Padded insole. Treaded rubber outsole. &quot;Polo&quot; printed at the outer sides. Includes our &quot;Polo Ralph Lauren&quot;&ndash;embossed box. Man-made materials. Imported.</p>', NULL, 0),
(20, 1, 'ROUND SUNGLASSES', '<p>Lightweight lenses with 100% UV protection. Molded nose bridge. Curved arms. Our logo is discreetly etched at the left lens and interior right arm. Made in Italy.</p>', NULL, 0),
(21, 1, 'NAUTICAL-STRIPED SUNGLASSES', '<p>Acetate frame. Metal bars accent the hinges of the arms. Striped pattern accents the interior of each arm. Tinted and polarized lenses offer 100% UV protection and have a scratch-resistant coating. Subtle &quot;Ralph Lauren&quot; text is etched at the left lens. Our metal &quot;RL&quot; monogram accents each temple. Presented in our signature soft leather case with a snapped closure. Our signature-stamped cleaning wipe is included. 55 mm eye size. 20 mm bridge size. 145 mm temple size. Imported.</p>', NULL, 0),
(22, 1, 'POLO SQUARE SUNGLASSES', '<p>Metal frame with a double bridge. Metal signature pony at the temples. Lenses offer 100% UV protection. &quot;Polo&quot; etched at the left lens. Presented in our leather &quot;Polo Ralph Lauren&quot;&ndash;debossed case. 60 mm eye size. 17 mm bridge size. 140 mm temple size. Metal. Imported.</p>', NULL, 0),
(23, 1, 'POLO AVIATOR SUNGLASSES', '<p>Metal frame with a double bridge. Metal signature pony at the nylon-fiber temples. Lenses offer 100% UV protection. &quot;Polo&quot; etched at the left lens. Presented in our leather &quot;Polo Ralph Lauren&quot;&ndash;debossed case. 61 mm eye size. 15 mm bridge size. 145 mm temple size. Metal, nylon. Imported.</p>', NULL, 0),
(24, 1, 'STRAPLESS JERSEY MAXIDRESS', '<p>Strapless maxidress silhouette. Size medium has a 48&frac12;&quot; front body length and a 47&frac14;&quot; back body length. Pull-on styling. Lined at the bodice. Shell and Lining: 95% polyester, 5% elastane. Machine washable. Imported. Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust, a 24&quot; waist, and 34&quot; hips. She wears a size small.</p>', NULL, 0),
(25, 1, 'MADRAS FIT-AND-FLARE DRESS', '<p>Sleeveless fit-and-flare silhouette. US size 8 has a 40&frac12;&quot; back body length and a 37&frac14;&quot; bust. Rounded neckline. Concealed center back zipper with a hook-and-eye closure. Side on-seam pockets. Lined at the bodice. Shell and Lining: 100% cotton. Dry clean. Imported. Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust, a 24&quot; waist, and 34&quot; hips. She wears a US size 2.</p>', NULL, 0),
(26, 1, 'SILK CREPE SHIRTDRESS', '<p>Straight fit. Size 8 has a 51&frac12;&quot; back length, a 40&frac14;&quot; bust, and a 32&frac12;&quot; sleeve length. Point collar. Buttoned placket. Long sleeves with buttoned barrel cuffs. Two chest patch pockets. Comes with a self-belt with a rectangular buckle. 100% silk. Dry clean. Imported. Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust, a 24&quot; waist, and 34&quot; hips. She wears a size 2.</p>', NULL, 0),
(27, 1, 'BEADED JERSEY GOWN', '<p>Slim fit. US size 8 has a 58&quot; back length and a 35&quot; bust. Square neckline. Center back zipper with a hook-and-eye closure. Embellished shoulder straps. Sleeveless silhouette. Ruching gathers at the front left waist. Ruffle at the front left skirt. Fully lined. Shell and lining: 95% polyester, 5% elastane. Dry clean. Imported. Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust, a 24&quot; waist, and 34&quot; hips. She wears a US size 2.</p>', NULL, 0),
(28, 1, 'STRIPED COTTON CREWNECK TEE', '<p>Relaxed fit. Size medium has a 24&frac12;&quot; body length and a 38&quot; bust. Crewneck. Short sleeves. &quot;RL&quot; embroidery at the front right hem. 100% cotton. Machine washable. Imported. Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust. She wears a size small.</p>', NULL, 0),
(29, 1, 'COTTON-BLEND CREWNECK PULLOVER', '<p>Boxy fit. Intended to hit at the hip. Size medium has a 25&frac12;&quot; front body length, a 27&frac12;&quot; back body length, a 45&frac12;&quot; bust, a 49&quot; shoulder (taken from the dropped shoulder), and a 32&quot; sleeve length. Sleeve length changes &frac34;&quot; between sizes. Crewneck. Long balloon sleeves with ribbed cuffs. Dropped shoulders. Ribbed hem. &quot;Polo&quot; metal plaque at the front right hem. Hem falls longer at the back. Shell: 56% polyester, 44% cotton. Collar and cuffs: 58% cotton, 40% polyester, 2% elastane. Machine washable. Imported. Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust. She wears a size small.</p>', NULL, 0),
(30, 1, 'CREWNECK LONG-SLEEVE TOP', '<ul>\r\n	<li>Slim fit. Intended to hit at the hip.</li>\r\n	<li>Size medium has a 26&quot; body length, a 32&quot; bust, a 28&quot; shoulder, a 29&frac12;&quot; waist, and a 24&quot; sleeve length. Sleeve length changes &frac12;&quot; between sizes.</li>\r\n	<li>Crewneck.</li>\r\n	<li>Long sleeves.</li>\r\n	<li>&quot;Polo&quot;-engraved metal plaque at the front right hem.</li>\r\n	<li>Front and back panels.</li>\r\n	<li>96% modal, 4% elastane.</li>\r\n	<li>Machine washable. Imported.</li>\r\n	<li>Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust. She wears a size small.</li>\r\n</ul>', NULL, 0),
(31, 1, 'TOMPKINS SKINNY CROP JEAN', '<ul>\r\n	<li>Tompkins Skinny Crop: mid-rise. Polo&#39;s signature skinny fit cropped to hit right above the ankle.</li>\r\n	<li>Size 28 has approx. a 7&frac14;&quot; rise, a 30&frac12;&quot; waist, a 36&quot; hip, and an 11&quot; leg opening. All sizes have a 26&quot; inseam.</li>\r\n	<li>Belt loops. Zip fly with a signature shank closure.</li>\r\n	<li>Five-pocket styling with signature &quot;P.R.L. 67&quot;&ndash;engraved metal rivets. &quot;Polo&quot; patch at the coin pocket.</li>\r\n	<li>Signature leather &quot;Polo Ralph Lauren&quot; patch at the back. Distressing throughout. Rip at the left knee.</li>\r\n	<li>93% cotton, 5% polyester, 2% elastane.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n	<li>Model is 5&#39;10&quot;/178 cm and has a 24&quot; waist and 34&quot; hips. She wears a US size 26.</li>\r\n</ul>', NULL, 0),
(32, 1, 'TOMPKINS SKINNY CROP JEANS', '<ul>\r\n	<li>Tompkins Skinny Crop: mid-rise. Polo&#39;s signature Skinny Fit cropped to hit right above the ankle.</li>\r\n	<li>Size 28 has an approx. 7&frac14;&quot; rise, 30&frac12;&quot; waist, 36&quot; hip, and 11&quot; leg opening. All sizes have a 26&quot; inseam.</li>\r\n	<li>Belt loops. Zip fly with a signature shank closure.</li>\r\n	<li>Five-pocket styling with signature &quot;P.R.L. 67&quot;&ndash;engraved metal rivets. &quot;Polo&quot; patch at the coin pocket.</li>\r\n	<li>Signature leather &quot;Polo Ralph Lauren&quot; patch at the back.</li>\r\n	<li>92% cotton, 6% polyester, 2% elastane.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n	<li>Model is 5&#39;10&quot;/178 cm and has a 24&quot; waist and 34&quot; hips. She wears a US size 26.</li>\r\n</ul>', NULL, 0),
(33, 1, 'TOMPKINS SKINNY JEAN', '<ul>\r\n	<li>Tompkins Skinny: mid-rise. Polo&#39;s signature skinny fit with a narrow leg and plenty of stretch for comfort.</li>\r\n	<li>Size 28 has approx. a 7&frac14;&quot; rise, a 30&quot; waist, a 35&frac12;&quot; hip, and an 11&quot; leg opening. All sizes have a 30&quot; inseam.</li>\r\n	<li>Belt loops. Zip fly with a signature shank closure.</li>\r\n	<li>Five-pocket styling with signature &quot;P.R.L. 67&quot;&ndash;engraved metal rivets. &quot;Polo&quot; patch at the coin pocket.</li>\r\n	<li>Signature leather &quot;Polo Ralph Lauren&quot; patch at the back.</li>\r\n	<li>92% cotton, 6% polyester, 2% elastane.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n	<li>Model is 5&#39;10&quot;/178 cm and has a 24&quot; waist and 34&quot; hips. She wears a size 26.</li>\r\n</ul>', NULL, 0),
(34, 1, 'SMALL SULLIVAN SADDLE BAG', '<ul>\r\n	<li>Single top handle with a 4&quot; drop. Removable woven crossbody strap with a 23&quot; drop.</li>\r\n	<li>&quot;Polo Ralph Lauren&quot;&ndash;debossed fold-over flap. Concealed magnetic closure.</li>\r\n	<li>Leather strap with a stud closure at each side.</li>\r\n	<li>Lined with twill.</li>\r\n	<li>Exterior slip pocket at the back. Interior slip pocket.</li>\r\n	<li>8&quot; L x 9&quot; W x 4&quot; D.</li>\r\n	<li>Leather, cotton.</li>\r\n	<li>Italian leather. Imported.</li>\r\n	<li>Comes with a dust bag.</li>\r\n</ul>', NULL, 0),
(35, 1, 'PATCHWORK CANVAS BIG PONY TOTE', '<ul>\r\n	<li>Two webbed cotton top handles. each with a 9&frac12;&quot; maximum drop.</li>\r\n	<li>Antiqued metal rivets at the front and the back.</li>\r\n	<li>Top zip closure with a leather pull tab.</li>\r\n	<li>Signature embroidered Big Pony at the front patch pocket.</li>\r\n	<li>Reinforced base.</li>\r\n	<li>Interior slip pocket.</li>\r\n	<li>11&frac14;&quot; H x 19&quot; L x 7&quot; D.</li>\r\n	<li>Shell and lining: cotton. Trim: leather.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(36, 1, 'COLOR-BLOCKED BIG PONY TOTE', '<ul>\r\n	<li>Two webbed top handles, each with a 9&frac12;&quot; drop.</li>\r\n	<li>Top zip closure with a leather pull tab.</li>\r\n	<li>Patch pocket with our signature embroidered Big Pony at the front.</li>\r\n	<li>Interior slip pocket. Interior leather logo patch.</li>\r\n	<li>Gusseted sides. Reinforced bottom.</li>\r\n	<li>Antiqued rivets at the handles.</li>\r\n	<li>12&frac34;&quot; H x 16&frac12;&quot; L x 1&frac34;&quot; D.</li>\r\n	<li>Cotton, leather.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(37, 1, 'LASER-CUT FLORAL LEATHER TOTE', '<ul>\r\n	<li>Two leather top handles, each with an 8&quot; drop.</li>\r\n	<li>Lobster-clasp closure at the opening.</li>\r\n	<li>&quot;Polo Ralph Lauren&quot;&ndash;embossed removable leather luggage tag and two ties at the top handles.</li>\r\n	<li>Bonded interior.</li>\r\n	<li>Includes a removable zip pouch.</li>\r\n	<li>Bag: 12&frac14;&quot; H x 17&quot; L x 6&quot; D. Pouch: 3&frac14;&quot; H x 6&frac14;&quot; L.</li>\r\n	<li>Leather.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(38, 1, 'BEAR-PRINT COTTON COVERALL', '', NULL, 0),
(39, 1, 'STRIPED COTTON HENLEY COVERALL', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Henley neckline.</li>\r\n	<li>Three-button placket.</li>\r\n	<li>Long sleeves.</li>\r\n	<li>Ring snaps at the hem ensure easy on and off.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(40, 1, 'STRIPED COTTON HENLEY BODYSUIT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Henley neckline.</li>\r\n	<li>Three-button placket.</li>\r\n	<li>Short sleeves.</li>\r\n	<li>Ring snaps at the hem.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(41, 1, 'ABC BLOCK 4-PIECE GIFT BASKET', '<ul>\r\n	<li>Kimono top, pant, coverall, and printed side of blankie: 100% cotton.</li>\r\n	<li>Blankie&#39;s bear, bear fill, plush side, and plush trim: 100% polyester.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Kimono top: wrap silhouette secures with snaps and a tie; long sleeves.</li>\r\n	<li>Pant: elasticized waist; footed silhouette.</li>\r\n	<li>Coverall: crew neckline; snapped front; long sleeves; signature embroidered pony at the left chest; ring snaps at the hem; footed silhouette.</li>\r\n	<li>Blankie: plush bear head and arms at the center; 11&quot; W x 11&quot; L. Imported.</li>\r\n	<li>Elegantly presented in a cotton-lined wicker basket. 10&quot; H x 10&quot; L x 8&quot; D.</li>\r\n	<li>Comes with pre-cut cellophane and a matching ribbon for gift-giving.</li>\r\n</ul>', NULL, 0),
(42, 1, 'COTTON POLO DRESS & BLOOMER', '<ul>\r\n	<li>Dress and bloomer: 100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Drop-waist silhouette.</li>\r\n	<li>Size 9 months has a 16&quot; body length.</li>\r\n	<li>Ribbed Polo collar. Three-button placket.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Short sleeves with ribbed armbands.</li>\r\n	<li>Ruffled hem. Comes with a matching bloomer.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(43, 1, 'STRIPED POLO DRESS & BLOOMER', '<ul>\r\n	<li>Dress and bloomer: 100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Sleeveless drop-waist silhouette.</li>\r\n	<li>Size 9 months has a 16&frac12;&quot; front body length.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Ribbed Polo collar. Three-button placket.</li>\r\n	<li>Shirred flounce with lace trim.</li>\r\n	<li>Comes with a matching bloomer.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(44, 1, 'RUFFLED FLORAL DRESS & BLOOMER', '<ul>\r\n	<li>Dress&#39; shell and bloomer: 100% viscose. Dress&#39;s lining: 100% polyester.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Sleeveless A-line silhouette.</li>\r\n	<li>Size 9 months has a 16&frac12;&quot; front body length.</li>\r\n	<li>Elasticized ruffled neckline.</li>\r\n	<li>Fully lined.</li>\r\n	<li>Comes with a matching bloomer.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(45, 1, 'STRIPED COTTON BLANKET', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Striped side reverses to a solid-hued side.</li>\r\n	<li>Signature embroidered pony at the lower right corner of the striped side.</li>\r\n	<li>Ribbed binding.</li>\r\n	<li>28&quot; L x 32&quot; W.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(46, 1, 'CREPE SWADDLING BLANKET SET', '<ul>\r\n	<li>Set of three blankets.</li>\r\n	<li>All items: 100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Signature embroidered pony at the bottom right corner.</li>\r\n	<li>47&quot; L x 47&quot; W.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(47, 1, 'PLUSH BLANKET', '<ul>\r\n	<li>100% polyester.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Tonal signature embroidered pony at one corner.</li>\r\n	<li>Grosgrain border.</li>\r\n	<li>28&quot; L x 28&quot; W.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(48, 1, 'RL Bowery Sateen Duvet Cover', '<p>A contrasting border and frame give this 624-thread-count sateen duvet cover a crisp tailored look.</p>\r\n\r\n<ul>\r\n	<li>624-thread-count cotton sateen.</li>\r\n	<li>3&quot; contrasting flange. &frac12;&quot; contrasting frame.</li>\r\n	<li>Concealed buttoned closures.</li>\r\n	<li>Full/queen: 96&quot; L x 92&quot; W.</li>\r\n	<li>King: 96&quot; L x 108&quot; W.</li>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(49, 1, 'Bedford Jacquard Duvet Cover', '<p>With an allover jacquard-woven pattern, this 400-thread-count duvet cover will add subtle texture to your bed and is perfect for mixing and matching.</p>\r\n\r\n<ul>\r\n	<li>400-thread-count cotton jacquard.</li>\r\n	<li>2&quot; flange.</li>\r\n	<li>Concealed buttoned closure.</li>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(50, 1, 'MONACO SATEEN DUVET COVER', '<ul>\r\n	<li>286-thread-count cotton sateen.</li>\r\n	<li>Concealed buttoned closures at the bottom.</li>\r\n	<li>Full/queen: 96&quot; L x 92&quot; W; 2&quot; flange.</li>\r\n	<li>King: 96&quot; L x 108&quot; W; 2&quot; flange.</li>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(51, 1, 'Pink Palmer Sham', '<p>Crafted from luxurious 464-thread-count cotton percale, our menswear-inspired Palmer sham is designed with pink contrast taping.</p>\r\n\r\n<ul>\r\n	<li>2&frac12;&quot; flange with &frac14;&quot; of contrast taping.</li>\r\n	<li>Back envelope closure.</li>\r\n	<li>100% cotton. Machine washable. Imported.</li>\r\n</ul>', NULL, 0),
(52, 1, 'RL BEADED DYLAN PILLOW', '<ul>\r\n	<li>Vertical rib-knit design with beading at the front. Solid-colored back.</li>\r\n	<li>Concealed zipper at the bottom.</li>\r\n	<li>Comes with a pillow insert.</li>\r\n	<li>15&quot; L x 20&quot; W. Shell: 70% wool; 30% cashmere. Insert: 95% feathers; 5% down blend. Dry clean. Imported.</li>\r\n</ul>', NULL, 0),
(53, 1, 'GREAT BASIN THROW PILLOW', '<ul>\r\n	<li>Allover embroidery at the face. Solid silk twill back.</li>\r\n	<li>Concealed zip closure at one side.</li>\r\n	<li>Comes with a pillow insert.</li>\r\n	<li>22&quot; L x 22&quot; W. Shell: 100% silk. Insert: 95% feathers; 5% down blend. Dry clean. Made in India.</li>\r\n</ul>', NULL, 0),
(54, 1, 'CABLED CASHMERE TRAVEL SET', '<ul>\r\n	<li>Eye mask is lined with contrasting woven cotton and has two elastic straps for a secure fit.</li>\r\n	<li>Rectangular cable-knit throw blanket has ribbed edges.</li>\r\n	<li>Zippered cable-knit bag is lined with coordinating cotton fleece.</li>\r\n	<li>Bag: 15&quot; L x 12&quot; W. Blanket: 32&quot; L x 55&quot; W.</li>\r\n	<li>Cashmere and cotton. Imported.</li>\r\n</ul>', NULL, 0),
(55, 1, 'Langdon Embroidered Bathrobe', '<p>This relaxed-fitting unisex bathrobe is tailored from plush Turkish cotton, a durable fiber that becomes softer and more absorbent after each washing. The spa-inspired style is embellished with contrasting embroidery along the shawl collar, placket and cuffs for a classic look. Add a monogram at the left chest for a personal touch.</p>\r\n\r\n<ul>\r\n	<li>Relaxed fit. Shawl collar.</li>\r\n	<li>Long sleeves with turn-back cuffs. Pocket at each hip.</li>\r\n	<li>Self-tie belt at the waist.</li>\r\n	<li>100% Turkish cotton. Machine washable. Imported.</li>\r\n	<li>Small: 47&quot; back body length; 44&quot; chest; 24&quot; sleeve length.</li>\r\n	<li>Medium: 48&quot; back body length; 46&quot; chest; 24&frac12;&quot; sleeve length.</li>\r\n	<li>Large: 49&quot; back body length; 49&quot; chest; 25&frac12;&quot; sleeve length.</li>\r\n	<li>Please note, personalized items are non-returnable. A $5 monogramming charge will be added to the retail price.</li>\r\n</ul>', NULL, 0),
(56, 1, 'COTTON MESH POLO SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size 4/4T has a 17&frac34;&quot; front body length and a 19&quot; back body length.</li>\r\n	<li>Striped ribbed Polo collar. Two-button placket.</li>\r\n	<li>Short sleeves with striped ribbed armbands.</li>\r\n	<li>Chenille-and-felt &quot;Polo RL Athl.&quot; patch at the left chest. Chain-stitched &quot;RL Athl. Division #5 New York&quot; embroidery at the right chest.</li>\r\n	<li>Chain-stitched &quot;New York 1967 Athletics&quot; embroidery at the center back.</li>\r\n	<li>Tennis tail. &quot;Polo Ralph Lauren MCMLXVII&quot; patch at the front right hem.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(57, 1, 'COTTON MESH POLO SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size 4/4T has a 17&frac34;&quot; front body length and an 18&frac12;&quot; back body length.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Ribbed Polo collar.</li>\r\n	<li>Two-button placket.</li>\r\n	<li>Short sleeves with ribbed armbands.</li>\r\n	<li>Tennis tail.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(58, 1, 'BANNER COTTON MESH POLO', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 23&frac34;&quot; body length.</li>\r\n	<li>Signature embroidered Big Pony at the left chest.</li>\r\n	<li>Striped ribbed Polo collar. Two-button placket.</li>\r\n	<li>Short sleeves with striped ribbed armbands. Chenille &quot;67&quot; patch at the right sleeve.</li>\r\n	<li>&quot;Academy PRL Athl.&quot; crackle-print and a &quot;67&quot; shield patch at the center back.</li>\r\n	<li>Even vented hem.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(59, 1, 'COTTON MESH LONG-SLEEVE POLO', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 23&frac34;&quot; front body length, a 25&frac14;&quot; back body length, and a 28&frac12;&quot; sleeve length. Sleeve length is taken from the center back of the neck.</li>\r\n	<li>Signature embroidered Big Pony at the left chest.</li>\r\n	<li>Ribbed Polo collar. Two-button placket.</li>\r\n	<li>Long sleeves with ribbed cuffs. Twill &quot;3&quot; patch at the right sleeve.</li>\r\n	<li>Tennis tail.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(60, 1, 'PLAID COTTON TWILL WORKSHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 24&frac12;&quot; front body length, a 24&frac34;&quot; back body length, and a 28&frac12;&quot; sleeve length. Sleeve length is taken from the center back of the neck.</li>\r\n	<li>&quot;Polo&quot; label at the left pocket.</li>\r\n	<li>Point collar.</li>\r\n	<li>Buttoned placket.</li>\r\n	<li>Long sleeves with buttoned barrel cuffs.</li>\r\n	<li>Two chest buttoned pockets.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(61, 1, 'COTTON OXFORD SPORT SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 24&frac12;&quot; front body length, a 24&frac34;&quot; back body length, and a 28&frac12;&quot; sleeve length. Back body length and sleeve length are taken from the center back of the neck.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Button-down point collar.</li>\r\n	<li>Buttoned placket.</li>\r\n	<li>Long sleeves with buttoned barrel cuffs.</li>\r\n	<li>Box-pleated back yoke.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(62, 1, 'COTTON MESH WORKSHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 23&frac12;&quot; front body length, a 25&quot; back body length, and a 28&frac12;&quot; sleeve length. Sleeve length is taken from the center back of the neck.</li>\r\n	<li>Point collar. Buttoned placket.</li>\r\n	<li>Long sleeves with buttoned barrel cuffs.</li>\r\n	<li>Two chest buttoned pockets.</li>\r\n	<li>Stenciled &quot;PRL67&quot; printed at the left chest.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(63, 1, 'STRIPED COTTON SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 24&frac12;&quot; front body length and a 24&frac34;&quot; back body length.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Button-down point collar. Buttoned placket.</li>\r\n	<li>Short sleeves.</li>\r\n	<li>Box-pleated back yoke.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(64, 1, 'STRIPED COTTON SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 24&frac12;&quot; front body length and a 24&frac34;&quot; back body length.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Button-down point collar. Buttoned placket.</li>\r\n	<li>Short sleeves.</li>\r\n	<li>Box-pleated back yoke.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(65, 1, 'SLIM MOTT-WASH JEAN', '<ul>\r\n	<li>Belted waistband. Zip fly with our signature shank closure.</li>\r\n	<li>Five-pocket styling.</li>\r\n	<li>Fading down the leg with creased markings at the thigh and the knee.</li>\r\n	<li>100% cotton. Machine washable. Imported.</li>\r\n	<li>Belt is not included.</li>\r\n	<li>Size 12 has an average inseam of 27&frac12;&quot;.</li>\r\n</ul>', NULL, 0),
(66, 1, 'ELDRIDGE STRETCH SKINNY JEAN', '<ul>\r\n	<li>99% cotton, 1% elastane.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Skinny Fit.</li>\r\n	<li>Size 12 has a 7&frac14;&quot; rise, a 26&frac12;&quot; inseam, and a 12&frac14;&quot; leg opening.</li>\r\n	<li>Belt loops. Zip fly with our signature shank closure.</li>\r\n	<li>Five-pocket styling with signature metal rivets.</li>\r\n	<li>&quot;Polo&quot; label at the right coin pocket.</li>\r\n	<li>&quot;Polo Ralph Lauren&quot; faux-suede patch at the back right waist.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(67, 1, 'POLO I WOOL TWILL SUIT', '<ul>\r\n	<li>Jacket features notched lapels, a two-button silhouette and long sleeves with a four-button detail at each cuff.</li>\r\n	<li>Jacket also features an angled welt pocket at the left chest, interior besom pockets at the left and right chest, flapped besom pockets at the waist and a vented back hem. Jacket is fully lined.</li>\r\n	<li>Trouser features belt loops, a zip fly with a hook-and-bar closure, a finished waistband with interior suspender buttons and a flat front.</li>\r\n	<li>Trouser also features side on-seam pockets, a button-and-loop besom pocket at the back left and a buttoned besom pocket at the back right. Unfinished hems ready for custom-tailoring.</li>\r\n	<li>Jacket and trouser: 100% wool. Jacket lining: 100% viscose. Dry clean. Made in Italy.</li>\r\n	<li>Update this classic style with a bold bow tie and cool sneakers.</li>\r\n</ul>', NULL, 0),
(68, 1, 'BELTED STRETCH COTTON CHINO', '<ul>\r\n	<li>Pant: 98% cotton, 2% elastane. Belt: 100% viscose.</li>\r\n	<li>Pant: machine washable.</li>\r\n	<li>Pant: Size 12 has a 7&frac14;&quot; rise, a 27&frac12;&quot; inseam, and a 12&frac34;&quot; leg-opening circumference.</li>\r\n	<li>Belt: 1&frac14;&quot; wide.</li>\r\n	<li>Pant: belt loops; zip fly with a buttoned closure; side on-seam pockets; coin pocket; two back buttoned pockets; &quot;Polo&quot; label at the back right pocket.</li>\r\n	<li>Belt: silver-tone double-D-ring closure.</li>\r\n	<li>Imported.</li>\r\n	<li>Due to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery.</li>\r\n</ul>', NULL, 0),
(69, 1, 'BATTEN CANVAS EZ BOAT SHOE', '<ul>\r\n	<li>Rounded toe.</li>\r\n	<li>Slip-on styling with a hook-and-loop strap closure.</li>\r\n	<li>Deck-shoe laces thread through metal grommets at the sides.</li>\r\n	<li>Rubber &quot;Polo&quot; tag at the outer side and the heel.</li>\r\n	<li>Padded insole.</li>\r\n	<li>Treaded rubber outsole.</li>\r\n	<li>Signature embroidered pony at the strap.</li>\r\n	<li>Cotton.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(70, 1, 'PROPELL II SNEAKER', '<ul>\r\n	<li>Rounded toe.</li>\r\n	<li>Hook-and-loop strap closure at the vamp.</li>\r\n	<li>&quot;Polo&quot; printed at the heel.</li>\r\n	<li>Padded insole.</li>\r\n	<li>Treaded rubber outsole.</li>\r\n	<li>Printed signature pony at the strap.</li>\r\n	<li>Man-made materials.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(71, 1, 'BANKS SANDAL', '<ul>\r\n	<li>Open toe. Hook-and-loop closure at the vamp.</li>\r\n	<li>Hook-and-loop strap closure at the heel.</li>\r\n	<li>Padded insole.</li>\r\n	<li>Treaded rubber outsole.</li>\r\n	<li>Screen-printed signature pony at the vamp.</li>\r\n	<li>Man-made materials.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(72, 1, 'MADRAS COTTON SHIRTDRESS', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Fit-and-flare silhouette.</li>\r\n	<li>Size 10 has a 30&quot; front body length and a 27&quot; sleeve length. Sleeve length is taken from the center back of the neck.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Point collar. Buttoned placket.</li>\r\n	<li>Long sleeves with buttoned barrel cuffs.</li>\r\n	<li>Comes with a self-belt with a double-D-ring closure. Shirred waist.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(73, 1, 'COTTON CHINO BELTED SHIRTDRESS', '<ul>\r\n	<li>Dress: 100% cotton. Belt: 100% polyester.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Fit-and-flare silhouette.</li>\r\n	<li>Size 10 has a 30&quot; front body length.</li>\r\n	<li>Point collar. Buttoned placket.</li>\r\n	<li>Short sleeves with buttoned cuffs.</li>\r\n	<li>Two chest buttoned pockets.</li>\r\n	<li>Shirred waist with a removable striped belt.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(74, 1, 'STRIPED OFF-THE-SHOULDER DRESS', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Off-the-shoulder silhouette.</li>\r\n	<li>Size 10 has a 26&frac14;&quot; front body length.</li>\r\n	<li>Smocked off-the-shoulder neckline with adjustable shoulder straps.</li>\r\n	<li>Short raglan sleeves.</li>\r\n	<li>Two side on-seam pockets at the hips.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(75, 1, 'BUTTON-FRONT DENIM SKIRT', '<ul>\r\n	<li>96% cotton, 3% polyester, 1% elastane.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Slight A-line silhouette.</li>\r\n	<li>Size 10 has an 11&quot; front body length and a 12&quot; back body length.</li>\r\n	<li>Belt loops. Buttoned front. Signature shank closures</li>\r\n	<li>Five-pocket styling.</li>\r\n	<li>Faux-suede &quot;Polo&quot; patch at the back right waist.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(76, 1, 'FLORAL SKIRT', '<ul>\r\n	<li>Shell: 100% viscose. Lining: 100% polyester.</li>\r\n	<li>Machine washable.</li>\r\n	<li>A-line silhouette.</li>\r\n	<li>Size medium has a 13&frac12;&quot; front body length and a 14&quot; back body length.</li>\r\n	<li>Concealed left-side-seam zipper.</li>\r\n	<li>Fully lined.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(77, 1, 'PLEATED MADRAS SKIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>A-line silhouette.</li>\r\n	<li>Size 10 has a 12&frac34;&quot; length.</li>\r\n	<li>Two buckled self-straps at the left side. Buttoned and hook-and-bar closures at the interior waist.</li>\r\n	<li>Pleated sides and back.</li>\r\n	<li>Due to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(78, 1, 'CABLE-KNIT CASHMERE SWEATER', '<ul>\r\n	<li>100% cashmere.</li>\r\n	<li>Hand wash.</li>\r\n	<li>Size medium has an 18&frac12;&quot; body length and a 20&quot; sleeve length.</li>\r\n	<li>Rib-knit crewneck.</li>\r\n	<li>Long sleeves with rib-knit cuffs.</li>\r\n	<li>Rib-knit hem.</li>\r\n	<li>Imported. Italian cashmere.</li>\r\n</ul>', NULL, 0),
(79, 1, 'FAIR ISLE HOODED SWEATER', '<ul>\r\n	<li>Shell: 27% wool, 26% cotton, 23% viscose, 22% nylon, 2% cashmere. Lining: 100% cotton.</li>\r\n	<li>Hand wash.</li>\r\n	<li>Straight fit.</li>\r\n	<li>Size medium has a 19&frac14;&quot; body length and an 18&frac12;&quot; sleeve length. Sleeve length changes 2&quot; between sizes.</li>\r\n	<li>Hood. Three toggle-and-loop closures at the center front.</li>\r\n	<li>Long sleeves with ribbed cuffs.</li>\r\n	<li>Two front waist patch pockets.</li>\r\n	<li>Fully lined. Ribbed hem.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(80, 1, 'FLAG COMBED COTTON SWEATER', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Hand wash.</li>\r\n	<li>Size medium has an 18&quot; body length and a 19&frac12;&quot; sleeve length.</li>\r\n	<li>Rib-knit crewneck. Buttoned closure at the left shoulder.</li>\r\n	<li>Long sleeves with rib-knit cuffs.</li>\r\n	<li>Intarsia-knit American flag with hand-embroidered stars and &quot;RL&quot; embroidery at the center front.</li>\r\n	<li>Rib-knit hem.</li>\r\n	<li>Dyed with indigo, which may rub off onto fabrics, leather, and upholstery.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(81, 1, 'RUFFLED COTTON CARDIGAN', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 17&frac34;&quot; body length.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Rib-knit crewneck. Buttoned placket.</li>\r\n	<li>Puffed long sleeves with rib-knit cuffs.</li>\r\n	<li>Ruffled hem.</li>\r\n	<li>Imported.</li>\r\n</ul>', NULL, 0),
(82, 1, 'adarsh', '<p>fuguy&nbsp; yug yg yguy guy ug uy uyg uyg yuguy guy</p>', NULL, 0),
(83, 1, 'adarsh test product', '<p>Description (English)&nbsp; Description (English)&nbsp; Description (English)&nbsp; Description (English)&nbsp; Description (English)&nbsp; Description (English)&nbsp; Description (English)&nbsp; Description (English)&nbsp; Description (English)&nbsp; Description (English)&nbsp; Description (English)&nbsp; Description (English)&nbsp; Description (English)&nbsp; Description (English)&nbsp; Description (English)&nbsp;</p>', NULL, 0),
(84, 1, 'testing', '<p>good&nbsp;</p>', NULL, 0),
(117, 1, 'randeep Tests dkdkk', NULL, NULL, 0),
(118, 1, 'r test 2', NULL, NULL, 0),
(119, 1, 'cvxcv', NULL, NULL, 0),
(120, 1, 'cvxcv ccfdf', '<p>dfgdfg fgd</p>', NULL, 0),
(121, 1, 'fsdsfdf fgdg', NULL, NULL, 0),
(122, 1, 'dggd gdfg', NULL, NULL, 0),
(124, 1, 'search alogolia dd fgfg', '<p>sfsfsf</p>', NULL, 0),
(126, 1, 'fggdgdg', '<p>gdggdgdg</p>', NULL, 0),
(128, 1, 'sdfsdfsf singh', '<p>dfsf sdfsf sfd sfdsf ss</p>', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` mediumtext COLLATE utf8_unicode_ci,
  `htmlcontent` mediumtext COLLATE utf8_unicode_ci,
  `sort_order` int(11) DEFAULT '0',
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `image`, `htmlcontent`, `sort_order`, `is_default`) VALUES
(1, 1, '1557830913__0dd9065765a1358fd011fc0c305cbfb4 - Copy.jpg', NULL, 0, 0),
(2, 1, '1557830917__0dd9065765a1358fd011fc0c305cbfb4.jpg', NULL, 0, 0),
(3, 134, '1558161415__0dd9065765a1358fd011fc0c305cbfb4 - Copy.jpg', NULL, 0, NULL),
(4, 134, '1558161418__0dd9065765a1358fd011fc0c305cbfb4.jpg', NULL, 0, NULL),
(5, 135, '1558596148__Samsung-16GB-MicroSDHC-EVO-Class-SDL465901616-1-204d3.jpg', NULL, 0, NULL),
(6, 135, '1558596152__Samsung-16GB-MicroSDHC-EVO-Class-SDL465901616-2-d26ef.jpg', NULL, 0, NULL),
(7, 135, '1558596153__Samsung-16GB-MicroSDHC-EVO-Class-SDL465901616-3-784ee.jpg', NULL, 0, NULL),
(8, 135, '1558596155__Samsung-16GB-MicroSDHC-EVO-Class-SDL465901616-4-edce7.jpg', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_notifications`
--

CREATE TABLE `products_notifications` (
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_options`
--

CREATE TABLE `products_options` (
  `products_options_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_options_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `categories_id` int(100) NOT NULL,
  `session_regenerate_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_options`
--

INSERT INTO `products_options` (`products_options_id`, `language_id`, `products_options_name`, `categories_id`, `session_regenerate_id`) VALUES
(1, 1, 'Colors', 0, '1502106343'),
(4, 1, 'Size', 0, '1502106711'),
(7, 1, 'Waist', 0, '1502187895'),
(10, 1, 'Length', 0, '1502187939'),
(13, 1, 'Option 1', 0, '1531844564'),
(14, 1, 'Option 2', 0, '1531844574'),
(15, 1, 'Option 3', 0, '1531844582'),
(16, 1, 'Option 4', 0, '1531844588'),
(17, 1, 'Memory', 0, '1536373241');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values`
--

CREATE TABLE `products_options_values` (
  `products_options_values_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_options_values_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_options_values`
--

INSERT INTO `products_options_values` (`products_options_values_id`, `language_id`, `products_options_values_name`) VALUES
(1, 1, 'Brown'),
(2, 1, 'Cream'),
(3, 1, 'Blue'),
(4, 1, 'Multi'),
(5, 1, 'Black'),
(6, 1, 'Grey'),
(7, 1, 'White'),
(8, 1, 'Purple'),
(9, 1, 'Navy'),
(29, 1, 'Small'),
(32, 1, 'Medium'),
(35, 1, 'Large'),
(38, 1, 'Extra Large'),
(41, 1, '28W'),
(42, 1, '30W'),
(43, 1, '32W'),
(44, 1, '34W'),
(45, 1, '36W'),
(46, 1, '38W'),
(47, 1, '40W'),
(48, 1, '42W'),
(65, 1, '30L'),
(66, 1, '32L'),
(67, 1, '34L'),
(74, 1, '7D'),
(75, 1, '8D'),
(76, 1, '8.5D'),
(77, 1, '9D'),
(87, 1, '24'),
(88, 1, '25'),
(89, 1, '26'),
(90, 1, '27'),
(91, 1, '28'),
(92, 1, '29'),
(93, 1, '30'),
(107, 1, 'New Born'),
(110, 1, '3 Mos'),
(111, 1, '6 Mos'),
(112, 1, '9 Mos'),
(119, 1, 'Hollywood Cream'),
(122, 1, 'Vintage Silver'),
(125, 1, 'King'),
(130, 1, 'Full'),
(131, 1, '15"x20"'),
(132, 1, '22"x22"'),
(137, 1, '3T'),
(138, 1, '4T'),
(139, 1, '5T'),
(146, 1, ''),
(147, 1, '1'),
(148, 1, '1'),
(149, 1, '2'),
(152, 1, '8 Gb'),
(153, 1, '16 Gb'),
(154, 1, '32 GB');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values_to_products_options`
--

CREATE TABLE `products_options_values_to_products_options` (
  `products_options_values_to_products_options_id` int(11) NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_options_values_to_products_options`
--

INSERT INTO `products_options_values_to_products_options` (`products_options_values_to_products_options_id`, `products_options_id`, `products_options_values_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 3, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 3, 16),
(17, 3, 17),
(18, 3, 18),
(20, 2, 20),
(21, 2, 21),
(22, 2, 22),
(23, 2, 23),
(24, 2, 24),
(25, 2, 25),
(26, 2, 26),
(27, 2, 27),
(28, 2, 28),
(29, 4, 29),
(30, 5, 30),
(31, 6, 31),
(32, 4, 32),
(33, 6, 33),
(34, 5, 34),
(35, 4, 35),
(36, 5, 36),
(37, 6, 37),
(38, 4, 38),
(39, 6, 39),
(40, 5, 40),
(41, 7, 41),
(42, 7, 42),
(43, 7, 43),
(44, 7, 44),
(45, 7, 45),
(46, 7, 46),
(47, 7, 47),
(48, 7, 48),
(49, 8, 49),
(50, 8, 50),
(51, 8, 51),
(52, 8, 52),
(53, 8, 53),
(54, 8, 54),
(55, 8, 55),
(56, 8, 56),
(57, 9, 57),
(58, 9, 58),
(59, 9, 59),
(60, 9, 60),
(61, 9, 61),
(62, 9, 62),
(63, 9, 63),
(64, 9, 64),
(65, 10, 65),
(66, 10, 66),
(67, 10, 67),
(68, 11, 68),
(69, 11, 69),
(70, 11, 70),
(71, 12, 71),
(72, 12, 72),
(73, 12, 73),
(74, 4, 74),
(75, 4, 75),
(76, 4, 76),
(77, 4, 77),
(78, 5, 78),
(79, 5, 79),
(80, 5, 80),
(81, 5, 81),
(82, 6, 82),
(83, 6, 83),
(84, 6, 84),
(85, 6, 85),
(86, 5, 86),
(87, 4, 87),
(88, 4, 88),
(89, 4, 89),
(90, 4, 90),
(91, 4, 91),
(92, 4, 92),
(93, 4, 93),
(94, 5, 94),
(95, 5, 95),
(96, 5, 96),
(97, 5, 97),
(98, 5, 98),
(99, 5, 99),
(100, 6, 100),
(101, 6, 101),
(102, 6, 102),
(103, 6, 103),
(104, 6, 104),
(105, 6, 105),
(106, 6, 106),
(107, 4, 107),
(108, 6, 108),
(109, 5, 109),
(110, 4, 110),
(111, 4, 111),
(112, 4, 112),
(113, 5, 113),
(114, 5, 114),
(115, 5, 115),
(116, 6, 116),
(117, 6, 117),
(118, 6, 118),
(119, 1, 119),
(120, 3, 120),
(121, 2, 121),
(122, 1, 122),
(123, 2, 123),
(124, 3, 124),
(125, 4, 125),
(126, 6, 126),
(127, 5, 127),
(128, 6, 128),
(129, 5, 129),
(130, 4, 130),
(131, 4, 131),
(132, 4, 132),
(133, 5, 133),
(134, 6, 134),
(135, 5, 135),
(136, 6, 136),
(137, 4, 137),
(138, 4, 138),
(139, 4, 139),
(140, 5, 140),
(141, 5, 141),
(142, 5, 142),
(143, 6, 143),
(144, 6, 144),
(145, 6, 145),
(146, 13, 146),
(147, 13, 147),
(148, 13, 148),
(149, 13, 149),
(152, 17, 152),
(153, 17, 153),
(154, 17, 154);

-- --------------------------------------------------------

--
-- Table structure for table `products_to_categories`
--

CREATE TABLE `products_to_categories` (
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_to_categories`
--

INSERT INTO `products_to_categories` (`products_id`, `categories_id`) VALUES
(1, 1),
(133, 2),
(134, 1),
(135, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_highlights`
--

CREATE TABLE `product_highlights` (
  `highlight_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `highlight_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_highlights`
--

INSERT INTO `product_highlights` (`highlight_id`, `products_id`, `highlight_text`, `created_at`, `updated_at`) VALUES
(57, 131, 'sdfsdf', '2019-05-13 11:46:44', '2019-05-13 11:46:44'),
(58, 131, 'dfdfdfdf', '2019-05-13 11:46:45', '2019-05-13 11:46:45'),
(60, 133, 'dfd', '2019-05-13 11:59:57', '2019-05-13 11:59:57'),
(61, 133, 'dssd', '2019-05-13 11:59:57', '2019-05-13 11:59:57'),
(63, 1, 'dasdad', '2019-05-14 10:45:16', '2019-05-14 10:45:16'),
(64, 134, 'dfdfd', '2019-05-18 06:32:27', '2019-05-18 06:32:27'),
(65, 134, 'dfdf', '2019-05-18 06:32:34', '2019-05-18 06:32:34'),
(66, 134, 'dfd', '2019-05-18 06:32:41', '2019-05-18 06:32:41'),
(67, 134, 'df', '2019-05-18 06:32:48', '2019-05-18 06:32:48'),
(68, 134, 'df', '2019-05-18 06:32:54', '2019-05-18 06:32:54'),
(69, 134, 'df', '2019-05-18 06:33:01', '2019-05-18 06:33:01'),
(70, 135, 'highlight1', '2019-05-23 07:16:24', '2019-05-23 07:16:24'),
(71, 135, 'highlight2', '2019-05-23 07:16:31', '2019-05-23 07:16:31'),
(72, 135, 'highlight 3', '2019-05-23 07:16:38', '2019-05-23 07:16:38'),
(73, 135, 'highlight 4', '2019-05-23 07:16:45', '2019-05-23 07:16:45'),
(74, 135, 'highlight 5', '2019-05-23 07:16:52', '2019-05-23 07:16:52'),
(75, 135, 'highlight 6', '2019-05-23 07:16:59', '2019-05-23 07:16:59');

-- --------------------------------------------------------

--
-- Table structure for table `product_with_filters`
--

CREATE TABLE `product_with_filters` (
  `product_filter_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `filter_option_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_with_filters`
--

INSERT INTO `product_with_filters` (`product_filter_id`, `products_id`, `filter_option_id`, `created_at`, `updated_at`) VALUES
(2, 1, 2, NULL, NULL),
(5, 1, 6, NULL, NULL),
(16, 1, 4, '2018-10-17 03:59:32', '2018-10-17 03:59:32'),
(18, 1, 3, '2018-10-17 04:02:13', '2018-10-17 04:02:13'),
(23, 1, 7, '2018-10-17 04:05:07', '2018-10-17 04:05:07'),
(24, 1, 1, '2018-10-17 04:07:32', '2018-10-17 04:07:32'),
(25, 1, 5, '2018-10-17 04:07:44', '2018-10-17 04:07:44'),
(26, 84, 1, '2018-11-02 01:15:30', '2018-11-02 01:15:30'),
(27, 84, 4, '2018-11-02 01:15:50', '2018-11-02 01:15:50'),
(33, 84, 3, '2018-11-02 07:32:57', '2018-11-02 07:32:57'),
(34, 84, 2, '2018-11-02 07:33:09', '2018-11-02 07:33:09'),
(35, 132, 1, '2018-11-02 07:56:04', '2018-11-02 07:56:04'),
(36, 132, 2, '2018-11-02 07:56:38', '2018-11-02 07:56:38'),
(38, 132, 5, '2018-11-02 07:56:51', '2018-11-02 07:56:51'),
(39, 133, 1, '2018-11-02 10:11:18', '2018-11-02 10:11:18'),
(40, 137, 2, '2018-11-04 07:26:25', '2018-11-04 07:26:25');

-- --------------------------------------------------------

--
-- Table structure for table `return_policies`
--

CREATE TABLE `return_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_policy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `return_policies`
--

INSERT INTO `return_policies` (`id`, `return_policy`, `description`, `created_at`, `updated_at`) VALUES
(1, 'return_policy 1', 'description 1 descriptyion', NULL, '2018-09-14 20:49:01'),
(2, 'return_policy 2', 'description 2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reviews_rating` int(1) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `reviews_status` tinyint(1) NOT NULL DEFAULT '0',
  `reviews_read` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews_description`
--

CREATE TABLE `reviews_description` (
  `reviews_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `reviews_text` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sec_directory_whitelist`
--

CREATE TABLE `sec_directory_whitelist` (
  `id` int(11) NOT NULL,
  `directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `selected_products`
--

CREATE TABLE `selected_products` (
  `selected_product_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `selected_products`
--

INSERT INTO `selected_products` (`selected_product_id`, `section_id`, `products_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2018-10-18 02:59:24', '2018-10-18 02:59:24'),
(2, 1, 1, '2018-10-18 02:59:24', '2018-10-18 02:59:24'),
(3, 1, 30, '2018-10-18 02:59:24', '2018-10-18 02:59:24'),
(4, 1, 31, '2018-10-18 02:59:24', '2018-10-18 02:59:24'),
(5, 2, 6, '2018-10-18 02:59:50', '2018-10-18 02:59:50'),
(6, 2, 8, '2018-10-18 02:59:50', '2018-10-18 02:59:50'),
(7, 2, 9, '2018-10-18 02:59:50', '2018-10-18 02:59:50'),
(8, 2, 10, '2018-10-18 02:59:51', '2018-10-18 02:59:51');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sesskey` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` int(11) UNSIGNED NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'facebook_app_id', 'Facebook App ID', '2018-04-26 19:00:00', '2018-07-17 04:05:09'),
(2, 'facebook_secret_id', 'Facebook Secret ID', '2018-04-26 19:00:00', '2018-07-17 04:05:09'),
(3, 'facebook_login', '1', '2018-04-26 19:00:00', '2018-07-17 04:05:09'),
(4, 'contact_us_email', 'vectorcoder@gmail.com', '2018-04-26 19:00:00', '2018-09-06 11:02:31'),
(5, 'address', 'address', '2018-04-26 19:00:00', '2018-09-06 11:02:31'),
(6, 'city', 'City', '2018-04-26 19:00:00', '2018-09-06 11:02:31'),
(7, 'state', 'State', '2018-04-26 19:00:00', '2018-09-06 11:02:31'),
(8, 'zip', 'Zip', '2018-04-26 19:00:00', '2018-09-06 11:02:31'),
(9, 'country', 'Country', '2018-04-26 19:00:00', '2018-09-06 11:02:31'),
(10, 'latitude', 'Latitude', '2018-04-26 19:00:00', '2018-09-06 11:02:31'),
(11, 'longitude', 'Longitude', '2018-04-26 19:00:00', '2018-09-06 11:02:31'),
(12, 'phone_no', '+92 312 1234567', '2018-04-26 19:00:00', '2018-09-06 11:02:31'),
(13, 'fcm_android', '', '2018-04-26 19:00:00', '2018-07-17 04:07:25'),
(14, 'fcm_ios', NULL, '2018-04-26 19:00:00', NULL),
(15, 'fcm_desktop', NULL, '2018-04-26 19:00:00', NULL),
(16, 'website_logo', 'resources/assets/images/site_images/1536282428.logo_edhik.png', '2018-04-26 19:00:00', '2018-09-07 06:07:08'),
(17, 'fcm_android_sender_id', NULL, '2018-04-26 19:00:00', NULL),
(18, 'fcm_ios_sender_id', '', '2018-04-26 19:00:00', '2018-07-17 04:07:25'),
(19, 'app_name', 'Ecommerce', '2018-04-26 19:00:00', '2018-09-06 11:02:31'),
(20, 'currency_symbol', 'Rs', '2018-04-26 19:00:00', '2018-09-06 11:02:31'),
(21, 'new_product_duration', '20', '2018-04-26 19:00:00', '2018-09-06 11:02:31'),
(22, 'notification_title', 'Ionic Ecommerce', '2018-04-26 19:00:00', '2018-07-17 03:58:41'),
(23, 'notification_text', 'A bundle of products waiting for you!', '2018-04-26 19:00:00', NULL),
(24, 'lazzy_loading_effect', 'Detail', '2018-04-26 19:00:00', '2018-07-17 03:58:41'),
(25, 'footer_button', '0', '2018-04-26 19:00:00', '2018-07-17 03:58:41'),
(26, 'cart_button', '0', '2018-04-26 19:00:00', '2018-07-17 03:58:41'),
(27, 'featured_category', NULL, '2018-04-26 19:00:00', NULL),
(28, 'notification_duration', 'year', '2018-04-26 19:00:00', '2018-07-17 03:58:41'),
(29, 'home_style', '1', '2018-04-26 19:00:00', '2018-07-17 03:58:41'),
(30, 'wish_list_page', '1', '2018-04-26 19:00:00', '2018-07-17 03:58:41'),
(31, 'edit_profile_page', '1', '2018-04-26 19:00:00', '2018-07-17 03:58:41'),
(32, 'shipping_address_page', '1', '2018-04-26 19:00:00', '2018-07-17 03:58:41'),
(33, 'my_orders_page', '1', '2018-04-26 19:00:00', '2018-07-17 03:58:41'),
(34, 'contact_us_page', '1', '2018-04-26 19:00:00', '2018-07-17 03:58:41'),
(35, 'about_us_page', '1', '2018-04-26 19:00:00', '2018-07-17 03:58:41'),
(36, 'news_page', '1', '2018-04-26 19:00:00', '2018-07-17 03:58:41'),
(37, 'intro_page', '1', '2018-04-26 19:00:00', '2018-07-17 03:58:41'),
(38, 'setting_page', '1', '2018-04-26 19:00:00', NULL),
(39, 'share_app', '1', '2018-04-26 19:00:00', '2018-07-17 03:58:41'),
(40, 'rate_app', '1', '2018-04-26 19:00:00', '2018-07-17 03:58:41'),
(41, 'site_url', 'URL', '2018-04-26 19:00:00', '2018-09-06 11:02:31'),
(42, 'admob', '0', '2018-04-26 19:00:00', '2018-07-17 03:52:14'),
(43, 'admob_id', 'ID', '2018-04-26 19:00:00', '2018-07-17 03:52:14'),
(44, 'ad_unit_id_banner', 'Unit ID', '2018-04-26 19:00:00', '2018-07-17 03:52:14'),
(45, 'ad_unit_id_interstitial', 'Indestrial', '2018-04-26 19:00:00', '2018-07-17 03:52:14'),
(46, 'category_style', '4', '2018-04-26 19:00:00', '2018-07-17 03:58:41'),
(47, 'package_name', 'package name', '2018-04-26 19:00:00', '2018-07-17 03:58:41'),
(48, 'google_analytic_id', 'test', '2018-04-26 19:00:00', '2018-07-17 03:58:41'),
(49, 'themes', 'themeone', '2018-04-26 19:00:00', NULL),
(50, 'company_name', 'VC', '2018-04-26 19:00:00', NULL),
(51, 'facebook_url', '#', '2018-04-26 19:00:00', '2018-09-07 06:07:08'),
(52, 'google_url', '#', '2018-04-26 19:00:00', '2018-09-07 06:07:08'),
(53, 'twitter_url', '#', '2018-04-26 19:00:00', '2018-09-07 06:07:08'),
(54, 'linked_in', '#', '2018-04-26 19:00:00', '2018-09-07 06:07:08'),
(55, 'default_notification', 'onesignal', '2018-04-26 19:00:00', '2018-07-17 04:07:25'),
(56, 'onesignal_app_id', '6053d948-b8f6-472a-87e4-379fa89f78d8', '2018-04-26 19:00:00', '2018-07-17 04:07:25'),
(57, 'onesignal_sender_id', '50877237723', '2018-04-26 19:00:00', '2018-07-17 04:07:25'),
(58, 'ios_admob', '1', '2018-04-26 19:00:00', '2018-07-17 03:52:14'),
(59, 'ios_admob_id', 'AdMob ID', '2018-04-26 19:00:00', '2018-07-17 03:52:14'),
(60, 'ios_ad_unit_id_banner', 'Unit ID Banner', '2018-04-26 19:00:00', '2018-07-17 03:52:14'),
(61, 'ios_ad_unit_id_interstitial', 'ID Interstitial', '2018-04-26 19:00:00', '2018-07-17 03:52:14'),
(62, 'google_login', '1', NULL, '2018-07-17 04:06:16'),
(63, 'google_app_id', NULL, NULL, NULL),
(64, 'google_secret_id', NULL, NULL, NULL),
(65, 'google_callback_url', NULL, NULL, NULL),
(66, 'facebook_callback_url', NULL, NULL, NULL),
(67, 'is_app_purchased', '0', NULL, '2018-05-03 22:24:44'),
(68, 'is_desktop_purchased', '1', NULL, '2018-05-03 22:24:44'),
(69, 'consumer_key', '6df56cf915318431043dd7a75d', NULL, '2018-07-17 03:58:24'),
(70, 'consumer_secret', '95032b42153184310488f5fb8f', NULL, '2018-07-17 03:58:24'),
(71, 'order_email', 'orders@gmail.com', NULL, '2018-09-06 11:02:31'),
(72, 'website_themes', '1', NULL, NULL),
(73, 'seo_title', '', NULL, '2018-07-18 11:25:28'),
(74, 'seo_metatag', '', NULL, '2018-07-18 11:25:28'),
(75, 'seo_keyword', '', NULL, '2018-07-18 11:25:28'),
(76, 'seo_description', '', NULL, '2018-07-18 11:25:28'),
(77, 'before_head_tag', '', NULL, '2018-07-18 11:28:40'),
(78, 'end_body_tag', '', NULL, '2018-07-18 11:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_description`
--

CREATE TABLE `shipping_description` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `table_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_labels` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_description`
--

INSERT INTO `shipping_description` (`id`, `name`, `language_id`, `table_name`, `sub_labels`) VALUES
(1, 'Free Shipping', 1, 'free_shipping', ''),
(4, 'Local Pickup', 1, 'local_pickup', ''),
(7, 'Flat Rate', 1, 'flate_rate', ''),
(10, 'UPS Shipping', 1, 'ups_shipping', '{"nextDayAir":"Next Day Air","secondDayAir":"2nd Day Air","ground":"Ground","threeDaySelect":"3 Day Select","nextDayAirSaver":"Next Day AirSaver","nextDayAirEarlyAM":"Next Day Air Early A.M.","secondndDayAirAM":"2nd Day Air A.M."}');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `shipping_methods_id` int(100) NOT NULL,
  `methods_type_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`shipping_methods_id`, `methods_type_link`, `isDefault`, `status`, `table_name`) VALUES
(1, 'upsShipping', 0, 1, 'ups_shipping'),
(2, 'freeShipping', 0, 1, 'free_shipping'),
(3, 'localPickup', 0, 1, 'local_pickup'),
(4, 'flateRate', 1, 1, 'flate_rate');

-- --------------------------------------------------------

--
-- Table structure for table `sliders_images`
--

CREATE TABLE `sliders_images` (
  `sliders_id` int(11) NOT NULL,
  `sliders_title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders_url` varchar(255) NOT NULL,
  `sliders_image` varchar(255) NOT NULL,
  `sliders_group` varchar(64) NOT NULL,
  `sliders_html_text` mediumtext NOT NULL,
  `expires_date` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` varchar(64) NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `languages_id` int(100) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders_images`
--

INSERT INTO `sliders_images` (`sliders_id`, `sliders_title`, `sliders_url`, `sliders_image`, `sliders_group`, `sliders_html_text`, `expires_date`, `date_added`, `status`, `type`, `date_status_change`, `languages_id`, `sort`) VALUES
(1, 'Slider-1', '', 'resources/assets/images/banner_images/1531931372.banner-001.jpg', '', '', '2029-01-03 00:00:00', '2018-07-20 10:29:47', 1, 'special', '2018-07-20 10:29:47', 1, 0),
(2, 'Slider-2', 'ruffled-cotton-cardigan', 'resources/assets/images/banner_images/1531842089.SLID3-(1).jpg', '', '', '2019-01-31 00:00:00', '2018-07-20 10:29:55', 1, 'product', '2018-07-20 10:29:55', 1, 0),
(3, 'Slider-3', '', 'resources/assets/images/banner_images/1531842038.SLID5-3.jpg', '', '', '2029-01-01 00:00:00', '2018-07-20 10:30:12', 1, 'special', '2018-07-20 10:30:12', 1, 0),
(6, 'Slider-4', 'ruffled-cotton-cardigan', 'resources/assets/images/banner_images/1531842053.BANNAR_4_5.jpg', '', '', '2029-01-01 00:00:00', '2018-07-20 10:33:07', 1, 'product', '2018-07-20 10:33:07', 1, 0),
(13, 'المنزلق-4', 'men-polo-shirts', 'resources/assets/images/banner_images/1531931918.BANNAR_4_1.jpg', '', '', '1970-01-01 00:00:00', '2018-10-19 11:52:52', 0, 'Big Banner', '2018-10-19 11:52:52', 4, 1),
(15, 'dsfsfdfwww', 'sdfsdf', 'resources/assets/images/banner_images/1539260761.Capture1.PNG', '', '', '1970-01-01 00:00:00', '2018-10-11 12:26:08', 0, '', '2018-10-11 12:26:08', 0, 0),
(16, 'gfdg', 'dfgdfg', '', '', '', '1970-01-01 00:00:00', '2018-10-11 12:09:36', 1, 'category', NULL, 0, 0),
(17, 'dsfsf', 'fgdfg', 'resources/assets/images/slider_images/1539260922.Capture.PNG', '', '', '1970-01-01 00:00:00', '2018-10-11 12:28:42', 1, 'Small Banner', NULL, 0, 0),
(19, 'checksort', 'sdfsdf', 'resources/assets/images/slider_images/1539943843.Capture2.PNG', '', '', '1970-01-01 00:00:00', '2018-10-19 10:10:43', 1, 'Big Banner', NULL, 0, 4),
(20, 'fsf', 'sdfs', 'resources/assets/images/slider_images/1539943896.Capture2.PNG', '', '', '1970-01-01 00:00:00', '2018-10-19 10:11:36', 1, 'Big Banner', NULL, 0, 3),
(21, 'dsfsf', 'sdfsf', 'resources/assets/images/slider_images/1539943958.Capture1.PNG', '', '', '1970-01-01 00:00:00', '2018-10-19 10:12:38', 1, 'Big Banner', NULL, 0, 0),
(22, 'fsdf', 'sdfsdf', 'resources/assets/images/slider_images/1539944021.Capture2.PNG', '', '', '1970-01-01 00:00:00', '2018-10-19 10:40:32', 1, 'Big Banner', '2018-10-19 10:40:32', 0, 5),
(23, 'sdfsf', 'fsds', '', '', '', '1970-01-01 00:00:00', '2018-10-19 10:18:54', 1, 'category', NULL, 0, 6),
(24, 'sfs', 'dfs', 'resources/assets/images/slider_images/1540267226.Capture.PNG', '', '', '1970-01-01 00:00:00', '2018-10-23 04:00:26', 1, 'dealbanner', NULL, 0, 2),
(25, 'gdff', 'fdgdf', 'resources/assets/images/slider_images/1540267516.Capture2.PNG', '', '', '1970-01-01 00:00:00', '2018-10-23 04:05:16', 1, 'offerbanner', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

CREATE TABLE `specials` (
  `specials_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,2) NOT NULL,
  `specials_date_added` int(100) NOT NULL,
  `specials_last_modified` int(100) NOT NULL,
  `expires_date` int(100) NOT NULL,
  `date_status_change` int(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `specials`
--

INSERT INTO `specials` (`specials_id`, `products_id`, `specials_new_products_price`, `specials_date_added`, `specials_last_modified`, `expires_date`, `date_status_change`, `status`) VALUES
(1, 25, '150.00', 1502195102, 1530892400, 1667174400, 1530892400, 0),
(2, 39, '27.85', 1502264917, 1530892284, 1640995200, 1530892284, 0),
(3, 43, '21.99', 1502268005, 1530892260, 1640995200, 1530892260, 0),
(4, 44, '23.55', 1502268706, 1530892229, 1640995200, 1530892229, 0),
(5, 48, '450.00', 1502274870, 1530892200, 1640995200, 1530892200, 0),
(6, 62, '22.20', 1502351882, 1530892080, 1659398400, 1530892080, 0),
(7, 65, '23.50', 1502353123, 1530891995, 1646092800, 1530891995, 0),
(8, 67, '445.00', 1502362089, 1530891985, 1640995200, 1530891985, 0),
(9, 70, '23.99', 1502363119, 1530891969, 1640995200, 1530891969, 0),
(10, 73, '23.50', 1502364697, 1530892005, 1640995200, 1530892005, 0),
(11, 80, '99.99', 1502366586, 1530891416, 1640995200, 1530891416, 0),
(14, 80, '99.99', 1530891416, 0, 1640995200, 0, 1),
(15, 70, '23.99', 1530891969, 0, 1640995200, 0, 1),
(16, 67, '445.00', 1530891985, 0, 1640995200, 0, 1),
(17, 65, '23.50', 1530891995, 0, 1646092800, 0, 1),
(18, 73, '23.50', 1530892005, 0, 1640995200, 0, 1),
(19, 62, '22.20', 1530892080, 0, 1659398400, 0, 1),
(20, 48, '450.00', 1530892200, 0, 1640995200, 0, 1),
(21, 44, '23.55', 1530892229, 0, 1640995200, 0, 1),
(22, 43, '21.99', 1530892260, 0, 1640995200, 0, 1),
(23, 39, '27.85', 1530892284, 0, 1640995200, 0, 1),
(24, 25, '150.00', 1530892400, 0, 1667174400, 0, 1),
(25, 83, '256.00', 1536979165, 1537011972, 1536192000, 1537011972, 0),
(26, 83, '256.00', 1537011950, 1537011972, 1536192000, 1537011972, 0),
(27, 83, '256.00', 1537011972, 0, 1536192000, 0, 1),
(28, 149, '45.00', 1541392400, 1541392400, 0, 0, 1),
(29, 150, '45.00', 1541428685, 1541428685, 0, 0, 1),
(32, 151, '435.00', 1542352601, 1542352601, 0, 0, 1),
(38, 120, '52.00', 1544618086, 1544618086, 0, 0, 1),
(39, 121, '45.00', 1544854679, 1544854679, 0, 0, 1),
(40, 122, '45.00', 1544854742, 1544854742, 0, 0, 1),
(58, 124, '45.00', 1545118371, 1545118371, 0, 0, 1),
(61, 126, '45.00', 1545147677, 1545147677, 0, 0, 1),
(64, 128, '51.00', 1557684456, 1557684456, 0, 0, 1),
(67, 131, '13.00', 1557767804, 1557767804, 0, 0, 1),
(69, 133, '13.00', 1557768597, 1557768597, 0, 0, 1),
(71, 1, '20.00', 1557830715, 1557830715, 0, 0, 1),
(72, 134, '13.00', 1558161138, 1558161138, 0, 0, 1),
(73, 135, '4500.00', 1558595774, 1558595774, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `supported_products`
--

CREATE TABLE `supported_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `assemble_product_id` int(10) UNSIGNED NOT NULL,
  `supported_products_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `tax_class_title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `tax_class_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tax_class`
--

INSERT INTO `tax_class` (`tax_class_id`, `tax_class_title`, `tax_class_description`, `last_modified`, `date_added`) VALUES
(2, 'Base slab', 'Base slab', NULL, '2018-09-06 17:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `tax_rates_id` int(11) NOT NULL,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(5) DEFAULT '1',
  `tax_rate` decimal(7,2) NOT NULL,
  `tax_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`tax_rates_id`, `tax_zone_id`, `tax_class_id`, `tax_priority`, `tax_rate`, `tax_description`, `last_modified`, `date_added`) VALUES
(1, 43, 1, 1, '7.00', '', NULL, '2017-08-07 07:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `unit_id` int(100) NOT NULL,
  `unit_name` varchar(255) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `languages_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unit_id`, `unit_name`, `date_added`, `last_modified`, `is_active`, `languages_id`) VALUES
(1, 'Gram', NULL, NULL, 1, 0),
(2, 'Kilogram', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ups_shipping`
--

CREATE TABLE `ups_shipping` (
  `ups_id` int(100) NOT NULL,
  `pickup_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isDisplayCal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serviceType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shippingEnvironment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `person_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_package` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_height` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_width` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ups_shipping`
--

INSERT INTO `ups_shipping` (`ups_id`, `pickup_method`, `isDisplayCal`, `serviceType`, `shippingEnvironment`, `user_name`, `access_key`, `password`, `person_name`, `company_name`, `phone_number`, `address_line_1`, `address_line_2`, `country`, `state`, `post_code`, `city`, `no_of_package`, `parcel_height`, `parcel_width`, `title`) VALUES
(1, '07', '', 'US_01,US_02,US_03,US_12,US_13,US_14,US_59', '0', 'nyblueprint', 'FCD7C8F94CB5EF46', 'delfia11', '', '', '', 'D Ground', '', 'US', 'NY', '10312', 'New York City', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `rememberToken` int(100) NOT NULL,
  `timestamps` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_title` varchar(100) DEFAULT NULL,
  `ship_name` varchar(60) DEFAULT NULL,
  `ship_add1` varchar(100) DEFAULT NULL,
  `ship_add2` varchar(100) DEFAULT NULL,
  `ship_mobile` varchar(15) DEFAULT NULL,
  `ship_pin` varchar(10) DEFAULT NULL,
  `ship_landmark` varchar(100) DEFAULT NULL,
  `ship_state` varchar(40) DEFAULT NULL,
  `ship_city` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Save all address of users';

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`id`, `user_id`, `address_title`, `ship_name`, `ship_add1`, `ship_add2`, `ship_mobile`, `ship_pin`, `ship_landmark`, `ship_state`, `ship_city`) VALUES
(1, 42, NULL, 'ranjan', 'raa', NULL, '9031777877', '834001', 'argora', 'Jharkhand', 'Ranchi'),
(2, 43, NULL, 'raja Vidyarthi', 'mra 31 , argora housing colony', NULL, '+918877122443', '', 'Jharkhand', 'Jharkhand', 'Ranchi'),
(4, 40, NULL, 'Saket', 'nita infotech', NULL, '8507742774', '834001', 'ashok nagar', 'Jharkhand', 'Ranchi'),
(5, 37, NULL, 'raja Vidyarthi', 'mra 31 , argora housing colony', NULL, '+918877122443', '834001', 'Jharkhand', 'Jharkhand', 'Ranchi'),
(7, 39, NULL, 'Lav Kumar Singh', 'Opp. Igonu Office, Road No.5, Ashok Nagar', NULL, '9852789013', '834002', ' Near Argora Chowk', 'Jharkhand', 'Ranchi'),
(8, 47, NULL, 'e jharkhand', 'mra 31 , argora housing colony', NULL, '+918877122443', '834001', 'Jharkhand', 'Jharkhand', 'Ranchi'),
(9, 49, NULL, 'e jharkhand', 'mra 31 , argora housing colony', NULL, '9031777877', '834002', 'Jharkhand', 'Jharkhand', 'Ranchi'),
(10, 37, NULL, 'mini', 'sail city', NULL, '8271346716', '834002', 'johar nagar', 'Jharkhand', 'Ranchi'),
(11, 50, NULL, 'ABHISHEK', 'ratu road', NULL, '870922174', '834005', 'piska more', 'Jharkhand', 'Ranchi'),
(12, 52, NULL, 'test', 'test', NULL, '5245214524', '834002', 'test', 'Jharkhand', 'Ranchi'),
(13, 54, NULL, 'Sudhir', 'Anuchandra heights katraj', NULL, '7709083804', '834007', 'Katraj jain temple', 'Jharkhand', 'Ranchi'),
(14, 58, NULL, 'suharyani', '', NULL, '081272363644', '', '', 'Jharkhand', 'Ranchi'),
(15, 62, NULL, 'Roshan Jha', '102, H. P Chambers, Court Road, Ranchi, Jharkhand.\r\nBeside Shri Gopal Complex', NULL, '+917033626906', '834001', 'Jharkhand', 'Jharkhand', 'Ranchi'),
(16, 66, NULL, 'Swadesh Behera', 'G-140', NULL, '8895092508', '834001', 'Odisha', 'Jharkhand', 'Ranchi'),
(17, 36, NULL, 'randeepssiingh', 'noness', NULL, '9417988563', '1411155', 'ludhianass', 'punjab', 'ldhss'),
(18, 36, NULL, 'randeepssii', 'noness', NULL, '9417988564', '1411157', 'ludhianass', 'punjab', 'ldhss'),
(19, 36, NULL, 'randeep', 'none', NULL, '9417988563', '141115', 'ludhiana', 'punjab', 'ldh'),
(20, 36, NULL, 'randeep', 'none', NULL, '9417988563', '141115', 'ludhiana', 'punjab', 'ldh'),
(21, 36, NULL, 'randeep', 'none', NULL, '9417988563', '141115', 'ludhiana', 'punjab', 'ldh'),
(22, 36, NULL, 'randeep', 'none', NULL, '9417988563', '141115', 'ludhiana', 'punjab', 'ldh'),
(23, 36, NULL, 'randeep', 'none', NULL, '9417988563', '141115', 'ludhiana', 'punjab', 'ldh'),
(24, 36, NULL, 'randeep', 'none', NULL, '9417988563', '141115', 'ludhiana', 'punjab', 'ldh'),
(25, 11, NULL, 'Ghumana', '1885', NULL, '9877805339', NULL, 'machhiwara', NULL, NULL),
(26, 7, NULL, 'RvWeb', 'AskNgr', NULL, '7979083703', NULL, 'Mi', 'JHARKHAND', 'RANCHI'),
(27, 7, NULL, 'SSd', '124asas', NULL, '2323232323', NULL, 'dsds', 'JHARKHAND', 'RANCHI'),
(28, 7, NULL, 'Ads', 'asdsad', NULL, '2323235343', NULL, 'sd', 'JHARKHAND', 'RANCHI'),
(29, 7, NULL, 'sds', '2323232sdsd', NULL, '7879086823', NULL, 'dsds', 'JHARKHAND', 'RANCHI'),
(30, 7, NULL, '232', '2323232', NULL, '2323232323', NULL, '3232', 'JHARKHAND', 'RANCHI'),
(31, 7, NULL, 'Hr', '12121212', NULL, '8989889', NULL, 'Kio', 'JHARKHAND', 'RANCHI'),
(32, 11, NULL, 'My default', '1885', NULL, '9877805339', NULL, 'machhiwara', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `vendor_name`, `gst_no`, `pan_no`, `address_1`, `address_2`, `pincode`, `city`, `state`, `country`, `signature`, `created_at`, `updated_at`) VALUES
(6, 'vendor name2', '13121123', '132132123131', '88 a shyam', '88 a shyam', '458770', 'ijijiji', 'mp', 'india', NULL, '2018-09-15 20:23:18', '2018-09-15 20:23:18'),
(7, 'rabnja', 'kkk', 'kkkk', 'kkk', 'kkkk', 'kkk', 'kkk', 'kk', 'kkk', NULL, '2018-09-15 20:48:20', '2018-09-15 20:48:20');

-- --------------------------------------------------------

--
-- Table structure for table `warranties`
--

CREATE TABLE `warranties` (
  `id` int(10) UNSIGNED NOT NULL,
  `warranty_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warranties`
--

INSERT INTO `warranties` (`id`, `warranty_type`, `description`, `created_at`, `updated_at`) VALUES
(3, 'warrenty1', 'Description', NULL, NULL),
(4, 'warrenty2', 'Description 2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `whos_online`
--

CREATE TABLE `whos_online` (
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `time_entry` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `time_last_click` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `last_page_url` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `whos_online`
--

INSERT INTO `whos_online` (`customer_id`, `full_name`, `session_id`, `ip_address`, `time_entry`, `time_last_click`, `last_page_url`) VALUES
(1, 'Nasir Ali', '', '', '2018-07-10 16:', '', ''),
(2, 'Rabia Saqib', '', '', '2017-08-25 20:', '', ''),
(3, 'Rosemar Habitat', '', '', '2018-06-10 20:', '', ''),
(4, 'Hassan Mehboob', '', '', '2017-12-13 05:', '', ''),
(5, 'Heggd Hdggd', '', '', '2017-10-25 06:', '', ''),
(8, 'Rosemond Faustin', '', '', '2018-04-05 23:', '', ''),
(10, 'Test Test', '', '', '2017-10-12 10:', '', ''),
(11, 'Manohar Veera', '', '', '2017-10-14 05:', '', ''),
(13, 'Ali Hassan', '', '', '2018-07-13 14:', '', ''),
(14, 'Hafiz Muneeb', '', '', '2017-10-18 11:', '', ''),
(15, 'Saqib Ali', '', '', '2018-06-01 12:', '', ''),
(16, 'Muzammil Younas', '', '', '2018-06-01 12:', '', ''),
(17, 'Rosemond Faustin', '', '', '2018-06-02 18:', '', ''),
(18, 'Saqib Ali', '', '', '2018-06-04 10:', '', ''),
(21, 'Ruli Setiawan', '', '', '2017-11-01 16:', '', ''),
(22, 'android ecommerce', '', '', '2018-06-20 13:', '', ''),
(23, 'Yazeed Ayyash', '', '', '2017-11-02 19:', '', ''),
(24, 'Abood Ayyash', '', '', '2017-12-16 20:', '', ''),
(29, 'Standard Account', '', '', '2018-07-09 15:', '', ''),
(32, 'Luca Mellano', '', '', '2017-11-29 21:', '', ''),
(34, 'hassan mehboob', '', '', '2018-06-29 13:', '', ''),
(37, 'dfg dfg', '', '', '2017-11-20 14:', '', ''),
(38, 'KISHORE S', '', '', '2018-07-09 15:', '', ''),
(39, 'Amir Hassan', '', '', '2018-07-10 16:', '', ''),
(40, 'Amir Saleem', '', '', '2018-07-09 16:', '', ''),
(41, 'Aseem Kumar', '', '', '2017-11-24 13:', '', ''),
(44, 'Roadsel Roadsel', '', '', '2018-07-18 23:', '', ''),
(45, 'David Moder', '', '', '2018-07-17 13:', '', ''),
(47, 'Saqib Ali', '', '', '2018-07-18 16:', '', ''),
(48, 'hassan mehboob', '', '', '2017-12-11 09:', '', ''),
(49, 'hassan mehboob', '', '', '2017-12-11 10:', '', ''),
(50, 'hassan mehboob', '', '', '2017-12-11 10:', '', ''),
(51, 'H N', '', '', '2017-12-11 10:', '', ''),
(52, 'hassan mehboob', '', '', '2017-12-11 15:', '', ''),
(53, 'Muhammad Muzammel', '', '', '2017-12-12 08:', '', ''),
(55, 'معصوم محمود', '', '', '2017-12-18 07:', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zone_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `zone_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name`) VALUES
(1, 223, 'AL', 'Alabama'),
(2, 223, 'AK', 'Alaska'),
(3, 223, 'AS', 'American Samoa'),
(4, 223, 'AZ', 'Arizona'),
(5, 223, 'AR', 'Arkansas'),
(6, 223, 'AF', 'Armed Forces Africa'),
(7, 223, 'AA', 'Armed Forces Americas'),
(8, 223, 'AC', 'Armed Forces Canada'),
(9, 223, 'AE', 'Armed Forces Europe'),
(10, 223, 'AM', 'Armed Forces Middle East'),
(11, 223, 'AP', 'Armed Forces Pacific'),
(12, 223, 'CA', 'California'),
(13, 223, 'CO', 'Colorado'),
(14, 223, 'CT', 'Connecticut'),
(15, 223, 'DE', 'Delaware'),
(16, 223, 'DC', 'District of Columbia'),
(17, 223, 'FM', 'Federated States Of Micronesia'),
(18, 223, 'FL', 'Florida'),
(19, 223, 'GA', 'Georgia'),
(20, 223, 'GU', 'Guam'),
(21, 223, 'HI', 'Hawaii'),
(22, 223, 'ID', 'Idaho'),
(23, 223, 'IL', 'Illinois'),
(24, 223, 'IN', 'Indiana'),
(25, 223, 'IA', 'Iowa'),
(26, 223, 'KS', 'Kansas'),
(27, 223, 'KY', 'Kentucky'),
(28, 223, 'LA', 'Louisiana'),
(29, 223, 'ME', 'Maine'),
(30, 223, 'MH', 'Marshall Islands'),
(31, 223, 'MD', 'Maryland'),
(32, 223, 'MA', 'Massachusetts'),
(33, 223, 'MI', 'Michigan'),
(34, 223, 'MN', 'Minnesota'),
(35, 223, 'MS', 'Mississippi'),
(36, 223, 'MO', 'Missouri'),
(37, 223, 'MT', 'Montana'),
(38, 223, 'NE', 'Nebraska'),
(39, 223, 'NV', 'Nevada'),
(40, 223, 'NH', 'New Hampshire'),
(41, 223, 'NJ', 'New Jersey'),
(42, 223, 'NM', 'New Mexico'),
(43, 223, 'NY', 'New York'),
(44, 223, 'NC', 'North Carolina'),
(45, 223, 'ND', 'North Dakota'),
(46, 223, 'MP', 'Northern Mariana Islands'),
(47, 223, 'OH', 'Ohio'),
(48, 223, 'OK', 'Oklahoma'),
(49, 223, 'OR', 'Oregon'),
(50, 223, 'PW', 'Palau'),
(51, 223, 'PA', 'Pennsylvania'),
(52, 223, 'PR', 'Puerto Rico'),
(53, 223, 'RI', 'Rhode Island'),
(54, 223, 'SC', 'South Carolina'),
(55, 223, 'SD', 'South Dakota'),
(56, 223, 'TN', 'Tennessee'),
(57, 223, 'TX', 'Texas'),
(58, 223, 'UT', 'Utah'),
(59, 223, 'VT', 'Vermont'),
(60, 223, 'VI', 'Virgin Islands'),
(61, 223, 'VA', 'Virginia'),
(62, 223, 'WA', 'Washington'),
(63, 223, 'WV', 'West Virginia'),
(64, 223, 'WI', 'Wisconsin'),
(65, 223, 'WY', 'Wyoming'),
(66, 38, 'AB', 'Alberta'),
(67, 38, 'BC', 'British Columbia'),
(68, 38, 'MB', 'Manitoba'),
(69, 38, 'NF', 'Newfoundland'),
(70, 38, 'NB', 'New Brunswick'),
(71, 38, 'NS', 'Nova Scotia'),
(72, 38, 'NT', 'Northwest Territories'),
(73, 38, 'NU', 'Nunavut'),
(74, 38, 'ON', 'Ontario'),
(75, 38, 'PE', 'Prince Edward Island'),
(76, 38, 'QC', 'Quebec'),
(77, 38, 'SK', 'Saskatchewan'),
(78, 38, 'YT', 'Yukon Territory'),
(79, 81, 'NDS', 'Niedersachsen'),
(80, 81, 'BAW', 'Baden-Württemberg'),
(81, 81, 'BAY', 'Bayern'),
(82, 81, 'BER', 'Berlin'),
(83, 81, 'BRG', 'Brandenburg'),
(84, 81, 'BRE', 'Bremen'),
(85, 81, 'HAM', 'Hamburg'),
(86, 81, 'HES', 'Hessen'),
(87, 81, 'MEC', 'Mecklenburg-Vorpommern'),
(88, 81, 'NRW', 'Nordrhein-Westfalen'),
(89, 81, 'RHE', 'Rheinland-Pfalz'),
(90, 81, 'SAR', 'Saarland'),
(91, 81, 'SAS', 'Sachsen'),
(92, 81, 'SAC', 'Sachsen-Anhalt'),
(93, 81, 'SCN', 'Schleswig-Holstein'),
(94, 81, 'THE', 'Thüringen'),
(95, 14, 'WI', 'Wien'),
(96, 14, 'NO', 'Niederösterreich'),
(97, 14, 'OO', 'Oberösterreich'),
(98, 14, 'SB', 'Salzburg'),
(99, 14, 'KN', 'Kärnten'),
(100, 14, 'ST', 'Steiermark'),
(101, 14, 'TI', 'Tirol'),
(102, 14, 'BL', 'Burgenland'),
(103, 14, 'VB', 'Voralberg'),
(104, 204, 'AG', 'Aargau'),
(105, 204, 'AI', 'Appenzell Innerrhoden'),
(106, 204, 'AR', 'Appenzell Ausserrhoden'),
(107, 204, 'BE', 'Bern'),
(108, 204, 'BL', 'Basel-Landschaft'),
(109, 204, 'BS', 'Basel-Stadt'),
(110, 204, 'FR', 'Freiburg'),
(111, 204, 'GE', 'Genf'),
(112, 204, 'GL', 'Glarus'),
(113, 204, 'JU', 'Graubünden'),
(114, 204, 'JU', 'Jura'),
(115, 204, 'LU', 'Luzern'),
(116, 204, 'NE', 'Neuenburg'),
(117, 204, 'NW', 'Nidwalden'),
(118, 204, 'OW', 'Obwalden'),
(119, 204, 'SG', 'St. Gallen'),
(120, 204, 'SH', 'Schaffhausen'),
(121, 204, 'SO', 'Solothurn'),
(122, 204, 'SZ', 'Schwyz'),
(123, 204, 'TG', 'Thurgau'),
(124, 204, 'TI', 'Tessin'),
(125, 204, 'UR', 'Uri'),
(126, 204, 'VD', 'Waadt'),
(127, 204, 'VS', 'Wallis'),
(128, 204, 'ZG', 'Zug'),
(129, 204, 'ZH', 'Zürich'),
(130, 195, 'A Coruña', 'A Coruña'),
(131, 195, 'Alava', 'Alava'),
(132, 195, 'Albacete', 'Albacete'),
(133, 195, 'Alicante', 'Alicante'),
(134, 195, 'Almeria', 'Almeria'),
(135, 195, 'Asturias', 'Asturias'),
(136, 195, 'Avila', 'Avila'),
(137, 195, 'Badajoz', 'Badajoz'),
(138, 195, 'Baleares', 'Baleares'),
(139, 195, 'Barcelona', 'Barcelona'),
(140, 195, 'Burgos', 'Burgos'),
(141, 195, 'Caceres', 'Caceres'),
(142, 195, 'Cadiz', 'Cadiz'),
(143, 195, 'Cantabria', 'Cantabria'),
(144, 195, 'Castellon', 'Castellon'),
(145, 195, 'Ceuta', 'Ceuta'),
(146, 195, 'Ciudad Real', 'Ciudad Real'),
(147, 195, 'Cordoba', 'Cordoba'),
(148, 195, 'Cuenca', 'Cuenca'),
(149, 195, 'Girona', 'Girona'),
(150, 195, 'Granada', 'Granada'),
(151, 195, 'Guadalajara', 'Guadalajara'),
(152, 195, 'Guipuzcoa', 'Guipuzcoa'),
(153, 195, 'Huelva', 'Huelva'),
(154, 195, 'Huesca', 'Huesca'),
(155, 195, 'Jaen', 'Jaen'),
(156, 195, 'La Rioja', 'La Rioja'),
(157, 195, 'Las Palmas', 'Las Palmas'),
(158, 195, 'Leon', 'Leon'),
(159, 195, 'Lleida', 'Lleida'),
(160, 195, 'Lugo', 'Lugo'),
(161, 195, 'Madrid', 'Madrid'),
(162, 195, 'Malaga', 'Malaga'),
(163, 195, 'Melilla', 'Melilla'),
(164, 195, 'Murcia', 'Murcia'),
(165, 195, 'Navarra', 'Navarra'),
(166, 195, 'Ourense', 'Ourense'),
(167, 195, 'Palencia', 'Palencia'),
(168, 195, 'Pontevedra', 'Pontevedra'),
(169, 195, 'Salamanca', 'Salamanca'),
(170, 195, 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 195, 'Segovia', 'Segovia'),
(172, 195, 'Sevilla', 'Sevilla'),
(173, 195, 'Soria', 'Soria'),
(174, 195, 'Tarragona', 'Tarragona'),
(175, 195, 'Teruel', 'Teruel'),
(176, 195, 'Toledo', 'Toledo'),
(177, 195, 'Valencia', 'Valencia'),
(178, 195, 'Valladolid', 'Valladolid'),
(179, 195, 'Vizcaya', 'Vizcaya'),
(180, 195, 'Zamora', 'Zamora'),
(181, 195, 'Zaragoza', 'Zaragoza');

-- --------------------------------------------------------

--
-- Table structure for table `zones_to_geo_zones`
--

CREATE TABLE `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_recorder`
--
ALTER TABLE `action_recorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_action_recorder_module` (`module`),
  ADD KEY `idx_action_recorder_user_id` (`user_id`),
  ADD KEY `idx_action_recorder_identifier` (`identifier`),
  ADD KEY `idx_action_recorder_date_added` (`date_added`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD PRIMARY KEY (`address_book_id`),
  ADD KEY `idx_address_book_customers_id` (`customers_id`);

--
-- Indexes for table `address_format`
--
ALTER TABLE `address_format`
  ADD PRIMARY KEY (`address_format_id`);

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`myid`),
  ADD UNIQUE KEY `administrators_user_name_unique` (`user_name`),
  ADD UNIQUE KEY `administrators_email_unique` (`email`);

--
-- Indexes for table `admin_logins`
--
ALTER TABLE `admin_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alert_settings`
--
ALTER TABLE `alert_settings`
  ADD PRIMARY KEY (`alert_id`);

--
-- Indexes for table `api_calls_list`
--
ALTER TABLE `api_calls_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assemble_products`
--
ALTER TABLE `assemble_products`
  ADD PRIMARY KEY (`assemble_product_id`),
  ADD KEY `assemble_products_products_id_foreign` (`products_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banners_id`),
  ADD KEY `idx_banners_group` (`banners_group`);

--
-- Indexes for table `banners_history`
--
ALTER TABLE `banners_history`
  ADD PRIMARY KEY (`banners_history_id`),
  ADD KEY `idx_banners_history_banners_id` (`banners_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `categoriestree`
--
ALTER TABLE `categoriestree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoriestrees`
--
ALTER TABLE `categoriestrees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_description`
--
ALTER TABLE `categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `category_footers`
--
ALTER TABLE `category_footers`
  ADD PRIMARY KEY (`category_footer_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countries_id`),
  ADD KEY `IDX_COUNTRIES_NAME` (`countries_name`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupans_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`currencies_id`),
  ADD KEY `idx_currencies_code` (`code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customers_id`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `customers_basket`
--
ALTER TABLE `customers_basket`
  ADD PRIMARY KEY (`customers_basket_id`),
  ADD KEY `idx_customers_basket_customers_id` (`customers_id`);

--
-- Indexes for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  ADD PRIMARY KEY (`customers_basket_attributes_id`),
  ADD KEY `idx_customers_basket_att_customers_id` (`customers_id`);

--
-- Indexes for table `customers_info`
--
ALTER TABLE `customers_info`
  ADD PRIMARY KEY (`customers_info_id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `fedex_shipping`
--
ALTER TABLE `fedex_shipping`
  ADD PRIMARY KEY (`fedex_id`);

--
-- Indexes for table `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `filter_groups`
--
ALTER TABLE `filter_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `filter_groups_group_name_unique` (`group_name`),
  ADD UNIQUE KEY `filter_groups_group_code_unique` (`group_code`);

--
-- Indexes for table `filter_options`
--
ALTER TABLE `filter_options`
  ADD PRIMARY KEY (`filter_option_id`),
  ADD KEY `filter_id` (`filter_id`);

--
-- Indexes for table `flate_rate`
--
ALTER TABLE `flate_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geo_zones`
--
ALTER TABLE `geo_zones`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `group_filters`
--
ALTER TABLE `group_filters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `home_products`
--
ALTER TABLE `home_products`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `hsn`
--
ALTER TABLE `hsn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hsncodes`
--
ALTER TABLE `hsncodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hsn_codes`
--
ALTER TABLE `hsn_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`label_id`);

--
-- Indexes for table `label_value`
--
ALTER TABLE `label_value`
  ADD PRIMARY KEY (`label_value_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`),
  ADD KEY `IDX_LANGUAGES_NAME` (`name`);

--
-- Indexes for table `liked_products`
--
ALTER TABLE `liked_products`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturers_id`),
  ADD KEY `IDX_MANUFACTURERS_NAME` (`manufacturers_name`);

--
-- Indexes for table `manufacturers_info`
--
ALTER TABLE `manufacturers_info`
  ADD PRIMARY KEY (`manufacturers_id`,`languages_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_megamenu`
--
ALTER TABLE `menu_megamenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_subnav`
--
ALTER TABLE `menu_subnav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `idx_products_date_added` (`news_date_added`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`newsletters_id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `news_description`
--
ALTER TABLE `news_description`
  ADD PRIMARY KEY (`news_id`,`language_id`),
  ADD KEY `products_name` (`news_name`);

--
-- Indexes for table `news_to_news_categories`
--
ALTER TABLE `news_to_news_categories`
  ADD PRIMARY KEY (`news_id`,`categories_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `idx_orders_customers_id` (`customers_id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`orders_products_id`),
  ADD KEY `idx_orders_products_orders_id` (`orders_id`),
  ADD KEY `idx_orders_products_products_id` (`products_id`);

--
-- Indexes for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  ADD PRIMARY KEY (`orders_products_attributes_id`),
  ADD KEY `idx_orders_products_att_orders_id` (`orders_id`);

--
-- Indexes for table `orders_products_download`
--
ALTER TABLE `orders_products_download`
  ADD PRIMARY KEY (`orders_products_download_id`),
  ADD KEY `idx_orders_products_download_orders_id` (`orders_id`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`orders_status_id`,`language_id`),
  ADD KEY `idx_orders_status_name` (`orders_status_name`);

--
-- Indexes for table `orders_status_description`
--
ALTER TABLE `orders_status_description`
  ADD PRIMARY KEY (`orders_status_description_id`);

--
-- Indexes for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  ADD PRIMARY KEY (`orders_status_history_id`),
  ADD KEY `idx_orders_status_history_orders_id` (`orders_id`);

--
-- Indexes for table `orders_total`
--
ALTER TABLE `orders_total`
  ADD PRIMARY KEY (`orders_total_id`),
  ADD KEY `idx_orders_total_orders_id` (`orders_id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`otp_id`);

--
-- Indexes for table `otp_verifieds`
--
ALTER TABLE `otp_verifieds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pages_description`
--
ALTER TABLE `pages_description`
  ADD PRIMARY KEY (`page_description_id`);

--
-- Indexes for table `payments_setting`
--
ALTER TABLE `payments_setting`
  ADD PRIMARY KEY (`payments_id`);

--
-- Indexes for table `payment_description`
--
ALTER TABLE `payment_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`),
  ADD UNIQUE KEY `products_name` (`products_name`),
  ADD KEY `idx_products_model` (`products_model`),
  ADD KEY `idx_products_date_added` (`products_date_added`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`products_attributes_id`),
  ADD KEY `idx_products_attributes_products_id` (`products_id`);

--
-- Indexes for table `products_attributes_download`
--
ALTER TABLE `products_attributes_download`
  ADD PRIMARY KEY (`products_attributes_id`);

--
-- Indexes for table `products_description`
--
ALTER TABLE `products_description`
  ADD PRIMARY KEY (`products_id`,`language_id`),
  ADD KEY `products_name` (`products_name`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_images_prodid` (`products_id`);

--
-- Indexes for table `products_notifications`
--
ALTER TABLE `products_notifications`
  ADD PRIMARY KEY (`products_id`,`customers_id`);

--
-- Indexes for table `products_options`
--
ALTER TABLE `products_options`
  ADD PRIMARY KEY (`products_options_id`,`language_id`);

--
-- Indexes for table `products_options_values`
--
ALTER TABLE `products_options_values`
  ADD PRIMARY KEY (`products_options_values_id`,`language_id`);

--
-- Indexes for table `products_options_values_to_products_options`
--
ALTER TABLE `products_options_values_to_products_options`
  ADD PRIMARY KEY (`products_options_values_to_products_options_id`);

--
-- Indexes for table `products_to_categories`
--
ALTER TABLE `products_to_categories`
  ADD PRIMARY KEY (`products_id`,`categories_id`);

--
-- Indexes for table `product_highlights`
--
ALTER TABLE `product_highlights`
  ADD PRIMARY KEY (`highlight_id`),
  ADD KEY `dfd_pp` (`products_id`);

--
-- Indexes for table `product_with_filters`
--
ALTER TABLE `product_with_filters`
  ADD PRIMARY KEY (`product_filter_id`),
  ADD KEY `filter_option_id` (`filter_option_id`);

--
-- Indexes for table `return_policies`
--
ALTER TABLE `return_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviews_id`),
  ADD KEY `idx_reviews_products_id` (`products_id`),
  ADD KEY `idx_reviews_customers_id` (`customers_id`);

--
-- Indexes for table `reviews_description`
--
ALTER TABLE `reviews_description`
  ADD PRIMARY KEY (`reviews_id`,`languages_id`);

--
-- Indexes for table `sec_directory_whitelist`
--
ALTER TABLE `sec_directory_whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selected_products`
--
ALTER TABLE `selected_products`
  ADD PRIMARY KEY (`selected_product_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sesskey`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`);

--
-- Indexes for table `shipping_description`
--
ALTER TABLE `shipping_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`shipping_methods_id`);

--
-- Indexes for table `sliders_images`
--
ALTER TABLE `sliders_images`
  ADD PRIMARY KEY (`sliders_id`);

--
-- Indexes for table `specials`
--
ALTER TABLE `specials`
  ADD PRIMARY KEY (`specials_id`),
  ADD KEY `idx_specials_products_id` (`products_id`);

--
-- Indexes for table `supported_products`
--
ALTER TABLE `supported_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supported_products_supported_products_id_foreign` (`supported_products_id`),
  ADD KEY `assemble_product_id` (`assemble_product_id`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`tax_rates_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  ADD PRIMARY KEY (`ups_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warranties`
--
ALTER TABLE `warranties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whos_online`
--
ALTER TABLE `whos_online`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `idx_zones_country_id` (`zone_country_id`);

--
-- Indexes for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  ADD PRIMARY KEY (`association_id`),
  ADD KEY `idx_zones_to_geo_zones_country_id` (`zone_country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_recorder`
--
ALTER TABLE `action_recorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `address_book`
--
ALTER TABLE `address_book`
  MODIFY `address_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `address_format`
--
ALTER TABLE `address_format`
  MODIFY `address_format_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `administrators`
--
ALTER TABLE `administrators`
  MODIFY `myid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `admin_logins`
--
ALTER TABLE `admin_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `alert_settings`
--
ALTER TABLE `alert_settings`
  MODIFY `alert_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `api_calls_list`
--
ALTER TABLE `api_calls_list`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `assemble_products`
--
ALTER TABLE `assemble_products`
  MODIFY `assemble_product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `banners_history`
--
ALTER TABLE `banners_history`
  MODIFY `banners_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categoriestree`
--
ALTER TABLE `categoriestree`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categoriestrees`
--
ALTER TABLE `categoriestrees`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `categories_description`
--
ALTER TABLE `categories_description`
  MODIFY `categories_description_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;
--
-- AUTO_INCREMENT for table `category_footers`
--
ALTER TABLE `category_footers`
  MODIFY `category_footer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupans_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `currencies_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `customers_basket`
--
ALTER TABLE `customers_basket`
  MODIFY `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  MODIFY `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `delivery_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fedex_shipping`
--
ALTER TABLE `fedex_shipping`
  MODIFY `fedex_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `filters`
--
ALTER TABLE `filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `filter_groups`
--
ALTER TABLE `filter_groups`
  MODIFY `group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `filter_options`
--
ALTER TABLE `filter_options`
  MODIFY `filter_option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `flate_rate`
--
ALTER TABLE `flate_rate`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `geo_zones`
--
ALTER TABLE `geo_zones`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `group_filters`
--
ALTER TABLE `group_filters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `home_products`
--
ALTER TABLE `home_products`
  MODIFY `section_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hsn`
--
ALTER TABLE `hsn`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hsncodes`
--
ALTER TABLE `hsncodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hsn_codes`
--
ALTER TABLE `hsn_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `label_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1047;
--
-- AUTO_INCREMENT for table `label_value`
--
ALTER TABLE `label_value`
  MODIFY `label_value_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1501;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `liked_products`
--
ALTER TABLE `liked_products`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;
--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `menu_megamenu`
--
ALTER TABLE `menu_megamenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_subnav`
--
ALTER TABLE `menu_subnav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `newsletters_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  MODIFY `categories_description_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `news_description`
--
ALTER TABLE `news_description`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `orders_products_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  MODIFY `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_products_download`
--
ALTER TABLE `orders_products_download`
  MODIFY `orders_products_download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_status_description`
--
ALTER TABLE `orders_status_description`
  MODIFY `orders_status_description_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  MODIFY `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_total`
--
ALTER TABLE `orders_total`
  MODIFY `orders_total_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `otp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `otp_verifieds`
--
ALTER TABLE `otp_verifieds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pages_description`
--
ALTER TABLE `pages_description`
  MODIFY `page_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `payments_setting`
--
ALTER TABLE `payments_setting`
  MODIFY `payments_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `payment_description`
--
ALTER TABLE `payment_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;
--
-- AUTO_INCREMENT for table `products_description`
--
ALTER TABLE `products_description`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `products_options`
--
ALTER TABLE `products_options`
  MODIFY `products_options_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `products_options_values`
--
ALTER TABLE `products_options_values`
  MODIFY `products_options_values_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT for table `products_options_values_to_products_options`
--
ALTER TABLE `products_options_values_to_products_options`
  MODIFY `products_options_values_to_products_options_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT for table `product_highlights`
--
ALTER TABLE `product_highlights`
  MODIFY `highlight_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `product_with_filters`
--
ALTER TABLE `product_with_filters`
  MODIFY `product_filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `return_policies`
--
ALTER TABLE `return_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviews_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sec_directory_whitelist`
--
ALTER TABLE `sec_directory_whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `selected_products`
--
ALTER TABLE `selected_products`
  MODIFY `selected_product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `shipping_description`
--
ALTER TABLE `shipping_description`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `shipping_methods_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sliders_images`
--
ALTER TABLE `sliders_images`
  MODIFY `sliders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `specials`
--
ALTER TABLE `specials`
  MODIFY `specials_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `supported_products`
--
ALTER TABLE `supported_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `unit_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  MODIFY `ups_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assemble_products`
--
ALTER TABLE `assemble_products`
  ADD CONSTRAINT `assemble_products_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`products_id`) ON DELETE CASCADE;

--
-- Constraints for table `filter_options`
--
ALTER TABLE `filter_options`
  ADD CONSTRAINT `del_fil_opt` FOREIGN KEY (`filter_id`) REFERENCES `filters` (`filter_id`) ON DELETE CASCADE;

--
-- Constraints for table `group_filters`
--
ALTER TABLE `group_filters`
  ADD CONSTRAINT `on_del_group` FOREIGN KEY (`group_id`) REFERENCES `filter_groups` (`group_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_highlights`
--
ALTER TABLE `product_highlights`
  ADD CONSTRAINT `dfd_pp` FOREIGN KEY (`products_id`) REFERENCES `products` (`products_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_with_filters`
--
ALTER TABLE `product_with_filters`
  ADD CONSTRAINT `del_on_fil_opt` FOREIGN KEY (`filter_option_id`) REFERENCES `filter_options` (`filter_option_id`) ON DELETE CASCADE;

--
-- Constraints for table `selected_products`
--
ALTER TABLE `selected_products`
  ADD CONSTRAINT `del_on_section` FOREIGN KEY (`section_id`) REFERENCES `home_products` (`section_id`) ON DELETE CASCADE;

--
-- Constraints for table `supported_products`
--
ALTER TABLE `supported_products`
  ADD CONSTRAINT `delonassemble` FOREIGN KEY (`assemble_product_id`) REFERENCES `assemble_products` (`assemble_product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supported_products_supported_products_id_foreign` FOREIGN KEY (`supported_products_id`) REFERENCES `products` (`products_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
