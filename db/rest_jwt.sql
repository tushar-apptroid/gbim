-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2021 at 01:37 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rest_jwt`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_data`
--

CREATE TABLE `api_data` (
  `id` int(11) NOT NULL,
  `api_id` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `name` text NOT NULL,
  `group_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `exact_url` int(11) NOT NULL,
  `subdomain_match` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  `check_freq` text NOT NULL,
  `check_day` varchar(255) DEFAULT NULL,
  `guest_link` text NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_data`
--

INSERT INTO `api_data` (`id`, `api_id`, `title`, `name`, `group_id`, `is_active`, `exact_url`, `subdomain_match`, `depth`, `check_freq`, `check_day`, `guest_link`, `created_on`) VALUES
(1, '810461', 'D - Synergies-group.com', 'synergies-group.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=810461&hv=0&hash=466f0986&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-09 17:38:53'),
(2, '810542', 'D - Crewpetro.com', 'crewpetro.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=810542&hv=0&hash=83d820ad&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:53'),
(3, '810566', 'D - Skinandshape.com', 'skinandshape.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=810566&hv=0&hash=c16b6f31&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-13 17:38:54'),
(4, '810686', 'D - Finacus.co.in', 'finacus.co.in', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=810686&hv=0&hash=0a9667f7&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(5, '810716', 'D - Pelorus.in', 'pelorus.in', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=810716&hv=0&hash=9eafbaf2&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(6, '817583', 'D - Vemc.co.in', 'vemc.co.in', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=817583&hv=0&hash=03db6b33&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-16 17:38:54'),
(7, '831020', 'N - Tips2trade.co.in', 'https://www.tips2trade.co.in/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=831020&hv=0&hash=b4341d71&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(8, '847481', 'N - Cine-dreams.com', 'https://www.cine-dreams.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=847481&hv=0&hash=8bb979fc&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(9, '858662', 'Pmecheng', 'https://www.pmecheng.com/', 0, 0, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=858662&hv=0&hash=d26fe8b9&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(10, '889190', 'D - Get.tech', 'get.tech', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=889190&hv=0&hash=a13973b6&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(11, '1037429', 'D - ZINGHR.com', 'ZINGHR.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1037429&hv=0&hash=012679ec&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(12, '1054964', 'bumbleevents.co.uk', 'https://www.bumbleevents.co.uk/', 0, 0, 0, 0, 200, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1054964&hv=0&hash=6a33caa0&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(13, '1068734', 'N - 1lotusresearch.com', 'http://1lotusresearch.com/', 0, 1, 0, 1, 200, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1068734&hv=0&hash=5b50722b&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(14, '1069985', 'N - Aranca.com', 'https://www.aranca.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1069985&hv=0&hash=645b6ecb&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(15, '1074659', 'N - Anuntatech.com', 'https://www.anuntatech.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1074659&hv=0&hash=504ecfc9&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(16, '1112486', 'D - Collateral.co.in', 'collateral.co.in', 0, 1, 0, 0, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1112486&hv=0&hash=970c53a0&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(17, '1518790', 'N - In.hunterdouglas.asia', 'https://in.hunterdouglas.asia/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1518790&hv=0&hash=ff140f13&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(18, '1558399', 'N - Dellaadventure.com/', 'https://www.dellaadventure.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1558399&hv=0&hash=eca870ec&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(19, '1579540', 'D - Nbs.ntu.edu.sg (MBA)', 'nbs.ntu.edu.sg', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1579540&hv=0&hash=d7a226eb&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(20, '1628158', 'N - Sydneypaediatricgastro.com.au', 'https://www.sydneypaediatricgastro.com.au/', 0, 1, 0, 1, 200, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1628158&hv=0&hash=5c135293&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(21, '1686772', 'D - Riscity.com', 'riscity.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1686772&hv=0&hash=d793c761&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(22, '1734661', 'N - iaol.co.in', 'https://iaol.co.in/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1734661&hv=0&hash=c9bd54ef&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(23, '1745770', 'D - Aun-singapore.com.sg', 'https://aun-singapore.com.sg/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1745770&hv=0&hash=40d9ebfe&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(24, '1768738', 'D - Get.Store', 'https://get.store/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1768738&hv=0&hash=5ee0038e&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(25, '1806274', 'N - Cardsandbets.com/', 'http://www.cardsandbets.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1806274&hv=0&hash=245d7a2a&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(26, '1843042', 'N - Ydbvalves.com', 'https://www.ydbvalves.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1843042&hv=0&hash=10c482c5&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(27, '1891183', 'N - Nyucc.com', 'https://nyucc.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1891183&hv=0&hash=d5ef6eed&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:54'),
(28, '1903426', 'D - Copierchamp.com.sg', 'Copierchamp.com.sg', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1903426&hv=0&hash=77da54a7&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(29, '1917412', 'N - Lab Grown Solitaire', 'https://labgrownsolitaire.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1917412&hv=0&hash=a26a8b35&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(30, '1921846', 'N - ETP Group Philippines', 'https://www.etpgroup.com/', 23104, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1921846&hv=0&hash=0f57c2c2&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(31, '1921849', 'N - ETP Group India', 'https://www.etpgroup.com/', 23104, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1921849&hv=0&hash=6f0d39f0&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(32, '1921852', 'N - ETP Group Singapore', 'https://www.etpgroup.com/', 23104, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1921852&hv=0&hash=170a5ab8&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(33, '1921858', 'N - ETP Group Indonesia', 'https://www.etpgroup.com/', 23104, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1921858&hv=0&hash=bcde6434&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(34, '1921864', 'N - ETP Gruop Vietnam', 'https://www.etpgroup.com/', 23104, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1921864&hv=0&hash=0fdf9dab&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(35, '1921867', 'N - ETP Group Thailand', 'https://www.etpgroup.com/', 23104, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1921867&hv=0&hash=9fb5317a&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(36, '1921870', 'N - ETP Group Hongkong', 'https://www.etpgroup.com/', 23104, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1921870&hv=0&hash=e630e111&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(37, '1921879', 'N - ETP Group Malaysia', 'https://www.etpgroup.com/', 23104, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1921879&hv=0&hash=5b1e03b5&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(38, '1924252', 'D - Vmzinc.in', 'vmzinc.in', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1924252&hv=0&hash=8dbd96a0&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(39, '1944487', 'N - Techcareplus.co.nz', 'techcareplus.co.nz', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1944487&hv=0&hash=9142154c&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(40, '1945105', 'N - Bumble Events', 'https://www.bumbleevents.co.uk/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1945105&hv=0&hash=3909a2bf&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(41, '1945210', 'N-MeatyBuns', 'https://meatybuns.co.uk/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1945210&hv=0&hash=d7ce81b9&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(42, '1977100', 'D - Nbs.ntu.edu.sg (MSc)', 'https://nbs.ntu.edu.sg/Pages/default.aspx', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1977100&hv=0&hash=1ba0a643&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(43, '1979182', 'N - Kitaboo.com', 'https://kitaboo.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1979182&hv=0&hash=f2a626a6&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(44, '1990357', 'D - Shadenet.com', 'Shadenet.com', 0, 1, 0, 1, 200, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1990357&hv=0&hash=9d318c30&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(45, '1992127', 'N - Hurix', 'https://hurix.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=1992127&hv=0&hash=f76d0ef6&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(46, '2007466', 'D-N GBIM.com', 'gbim.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2007466&hv=0&hash=7e9d4417&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(47, '2008915', 'D - Ariiz.net', 'ariiz.net', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2008915&hv=0&hash=5b3a055c&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(48, '2010334', 'D - Watchvalley.in', 'watchvalley.in', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2010334&hv=0&hash=4eeed247&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(49, '2014048', 'N- Online RTI Application', 'https://www.onlinertiapplication.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2014048&hv=0&hash=86e3727a&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(50, '2014558', 'N - Jai Bhagwan Realties', 'https://www.jaibhagwanrealties.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2014558&hv=0&hash=e5d73646&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(51, '2014567', 'N - www.mdps.in/', 'https://www.mdps.in/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2014567&hv=0&hash=f71065c6&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(52, '2046052', 'N-Prompt personnel', 'https://www.promptpersonnel.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2046052&hv=0&hash=bd1d4981&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(53, '2068630', 'D - Inurskn', 'Inurskn.in', 0, 1, 0, 1, 200, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2068630&hv=0&hash=6a6edb33&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(54, '2074663', 'N - Dawsonstech.com', 'https://www.dawsonstech.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2074663&hv=0&hash=d67d4835&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(55, '2104090', 'D - Aiidevelop.com.sg', 'https://www.aiidevelop.com.sg/', 0, 1, 0, 1, 200, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2104090&hv=0&hash=f9fb9f10&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(56, '2130937', 'D - HireAnyBike.in', 'hireanybike.in', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2130937&hv=0&hash=6da47f65&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(57, '2131114', 'Mumbai and Delhi -Metamorphosis-clinic.com/', 'https://www.metamorphosis-clinic.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2131114&hv=0&hash=22ef4a29&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(58, '2131339', 'Mulund - Metamorphosis-clinic.com', 'https://www.metamorphosis-clinic.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2131339&hv=0&hash=73c71725&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(59, '2131444', 'Andheri - Metamorphosis-clinic.com', 'https://www.metamorphosis-clinic.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2131444&hv=0&hash=9ae2eac4&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(60, '2131471', 'Powai - metamorphosis-clinic.com/', 'https://www.metamorphosis-clinic.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2131471&hv=0&hash=921b1b9b&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(61, '2131567', 'Vashi - Metamorphosis-clinic.com', 'https://www.metamorphosis-clinic.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2131567&hv=0&hash=d19341f5&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(62, '2131663', 'Ghatkoper - Metamorphosis-clinic.com', 'https://www.metamorphosis-clinic.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2131663&hv=0&hash=d331b7d2&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(63, '2131681', 'Bandra - Metamorphosis-clinic.com/', 'https://www.metamorphosis-clinic.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2131681&hv=0&hash=fd457123&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:55'),
(64, '2131714', 'Tardeo - Metamorphosis-clinic.com', 'https://www.metamorphosis-clinic.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2131714&hv=0&hash=0b69365e&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(65, '2131720', 'Greater Kailash - Metamorphosis-clinic.com/', 'https://www.metamorphosis-clinic.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2131720&hv=0&hash=5037adcb&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(66, '2131738', 'Green Park - Metamorphosis-clinic.com/', 'https://www.metamorphosis-clinic.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2131738&hv=0&hash=36620129&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(67, '2140693', 'India - Blueberryagro.com/', 'https://www.blueberryagro.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2140693&hv=0&hash=4db4ecbf&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(68, '2141515', 'D - Inurskn(Online key)', 'inurskn.in', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2141515&hv=0&hash=87b10c61&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(69, '2158654', 'N- Gemsons.com', 'https://www.gemsons.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2158654&hv=0&hash=65988c49&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(70, '2168254', 'N- Theshouthouse.co.uk', 'https://theshouthouse.co.uk/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2168254&hv=0&hash=2973176f&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(71, '2168263', 'N -  Shouthair.co.uk', 'https://www.shouthair.co.uk/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2168263&hv=0&hash=d90c4c91&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(72, '2183134', 'D - Reyale.com', 'reyale.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2183134&hv=0&hash=750ec9a6&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(73, '2188282', 'D - illumania.com', 'www.illumania.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2188282&hv=0&hash=7e9e644f&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(74, '2204251', 'D - Consulti.sg', 'www.consulti.sg', 0, 1, 0, 1, 200, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2204251&hv=0&hash=ac72bb09&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(75, '2230276', 'D - Bayswaterpestcontrol.com.au', 'Bayswaterpestcontrol.com.au', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2230276&hv=0&hash=3ddece84&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(76, '2240482', 'N-lozenpharma', 'http://www.lozenpharma.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2240482&hv=0&hash=c83be398&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(77, '2242561', 'D - Overseasstudyprogram.com', 'overseasstudyprogram.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2242561&hv=0&hash=b583f445&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(78, '2242564', 'D - Rafflesmumbai.com', 'rafflesmumbai.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2242564&hv=0&hash=7017b442&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(79, '2244670', 'D - Thefuturetech.in', 'https://www.thefuturetech.in/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2244670&hv=0&hash=cd5b9f40&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(80, '2253082', 'Metropolis TruHealth Packages General Keywords', 'https://www.metropolisindia.com/', 26563, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2253082&hv=0&hash=910f637e&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(81, '2260441', 'D - 3equals.in', 'www.3equals.in', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2260441&hv=0&hash=bef3fa24&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(82, '2260795', 'N- Urbanblink', 'http://www.urbanblink.in/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2260795&hv=0&hash=eee02f89&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(83, '2268721', 'D - Workvisalawyers.com.au', 'workvisalawyers.com.au', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2268721&hv=0&hash=f6cfddb1&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(84, '2270443', 'D - Furny.in', 'Furny.in', 0, 1, 0, 1, 200, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2270443&hv=0&hash=c984da71&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(85, '2308843', 'D - CasaStyle.in', 'CasaStyle.in', 0, 1, 0, 1, 200, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2308843&hv=0&hash=d1403a0b&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(86, '2312119', 'N- nylawnet', 'https://www.nylawnet.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2312119&hv=0&hash=98a3d61b&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(87, '2315815', 'D - B&V MemBranes', 'www.bvmembranes.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2315815&hv=0&hash=3679b083&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(88, '2322244', 'N - Symecengineers.com', 'https://www.symecengineers.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2322244&hv=0&hash=301d60f8&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(89, '2324434', 'D - Revitaltrichology.com', 'revitaltrichology.com', 0, 1, 0, 1, 200, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2324434&hv=0&hash=00615d0a&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(90, '2324464', 'D - Aarushivf.com', 'aarushivf.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2324464&hv=0&hash=000fb0d1&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(91, '2325760', 'D - Medicarevacation.com', 'Medicarevacation.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2325760&hv=0&hash=f4864a12&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(92, '2332219', 'D - Podssolutions.com', 'www.podssolutions.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2332219&hv=0&hash=922741cd&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(93, '2333656', 'Dharmesh.tech', 'dharmesh.tech', 0, 1, 0, 0, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2333656&hv=0&hash=2cf15080&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(94, '2336968', 'D - Palicarters.com', 'Palicarters.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2336968&hv=0&hash=b37605e6&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(95, '2342911', 'D - Pciplindia.com(1)', 'Pciplindia.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2342911&hv=0&hash=9ca4f850&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(96, '2342956', 'D - Pciplindia.com(2)', 'Pciplindia.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2342956&hv=0&hash=9775736a&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(97, '2344855', 'N - Oncaarnival', 'https://www.oncaarnival.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2344855&hv=0&hash=568d68c2&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:56'),
(98, '2357737', 'D - Namify.tech', 'https://namify.tech/', 0, 1, 0, 1, 200, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2357737&hv=0&hash=66cd5243&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(99, '2368783', 'www.desisparkle.store', 'https://www.desisparkle.store/', 0, 1, 0, 0, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2368783&hv=0&hash=27094147&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(100, '2371888', 'D - Pciplindia.com', 'pciplindia.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2371888&hv=0&hash=2c140a72&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(101, '2376526', 'Everestgold.sg', 'everestgold.sg', 0, 1, 0, 0, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2376526&hv=0&hash=b7001cf5&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(102, '2380555', 'GBIM - Digital Marketing Project', 'https://www.gbim.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2380555&hv=0&hash=dfb80550&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(103, '2384071', 'N - destinyhairlondon.co.uk', 'https://www.destinyhairlondon.co.uk/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2384071&hv=0&hash=229a8fcf&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(104, '2387629', 'D - Business-takeover.com', 'www.business-takeover.com', 0, 1, 0, 0, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2387629&hv=0&hash=c7310441&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(105, '2390617', 'https://www.metasyssoftware.com/', 'https://www.metasyssoftware.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2390617&hv=0&hash=a25c34f4&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(106, '2392930', 'D - dxbtech2020.com', 'dxbtech2020.com', 0, 1, 0, 0, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2392930&hv=0&hash=beaf948b&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(107, '2403943', 'N- Rosarydental.com/', 'https://rosarydental.com/', 0, 1, 0, 0, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2403943&hv=0&hash=34bfe590&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(108, '2409892', 'D - Orientmetalindustriess.com', 'orientmetalindustriess.com', 0, 1, 0, 0, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2409892&hv=0&hash=fa3da2d0&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(109, '2413291', 'Connectwell.com', 'connectwell.com', 0, 1, 0, 0, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2413291&hv=0&hash=16e0b941&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(110, '2420071', 'https://www.cardsandbets.com/', 'https://www.cardsandbets.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2420071&hv=0&hash=18d28473&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(111, '2426935', 'N- curkey.com', 'https://www.curkey.com/', 0, 1, 0, 0, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2426935&hv=0&hash=65a6b307&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(112, '2429761', 'GBIM - Social Media - Payal Group', 'https://www.gbim.com/', 0, 1, 0, 0, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2429761&hv=0&hash=db84ba40&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(113, '2454751', 'Filmagic.in', 'filmagic.in', 0, 1, 0, 0, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2454751&hv=0&hash=45c3527f&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(114, '2458048', 'Udeyraj.com', 'udeyraj.com', 0, 1, 0, 0, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2458048&hv=0&hash=16ab742b&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(115, '2468731', 'Google Adwords - Team Laxmi', 'https://www.gbim.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2468731&hv=0&hash=aa7dfb8c&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(116, '2469124', 'SEO - Gbim.com - Vrushali', 'https://www.gbim.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2469124&hv=0&hash=3663f7f0&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(117, '2469289', 'N - Arrow Digital', 'https://arrow-digital.com/', 0, 1, 0, 0, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2469289&hv=0&hash=1dc05870&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(118, '2475967', 'nylawnet', 'https://www.nylawnet.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2475967&hv=0&hash=a7fa98bc&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(119, '2482417', 'https://realitytoursandtravel.com/', 'https://realitytoursandtravel.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2482417&hv=0&hash=3fe64731&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(120, '2483821', 'dcmarketing.in', 'dcmarketing.in', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2483821&hv=0&hash=a717b03f&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(121, '2507839', 'Urbanblink', 'https://www.urbanblink.in/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2507839&hv=0&hash=12c72d35&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(122, '2508478', 'Goelectrical.ie', 'https://goelectrical.ie/', 0, 1, 0, 0, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2508478&hv=0&hash=e3362cc2&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(123, '2512201', 'techcareplus', 'https://www.techcareplus.co.nz/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2512201&hv=0&hash=5db1c52e&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(124, '2513509', 'tips2trade', 'https://www.tips2trade.co.in/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2513509&hv=0&hash=08341f14&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(125, '2519890', 'https://www.sealexcel.com/', 'https://www.sealexcel.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2519890&hv=0&hash=6ca06f7e&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(126, '2531563', 'D- Ambikacity.com', 'https://ambikacity.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2531563&hv=0&hash=256e3ecf&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(127, '2540197', 'pilozoplumbingandgas.com', 'pilozoplumbingandgas.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2540197&hv=0&hash=722621cb&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(128, '2540311', 'https://palavacity.com/', 'https://palavacity.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2540311&hv=0&hash=509590c2&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(129, '2562112', 'metamorphosis-clinic Near Me', 'https://www.metamorphosis-clinic.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2562112&hv=0&hash=823ad2bf&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(130, '2562880', 'D- Zinghr(New Keywords)', 'Zinghr.com', 0, 1, 0, 1, 200, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2562880&hv=0&hash=988e990a&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:57'),
(131, '2562904', 'D-Zinghr(Dubai)', 'Zinghr.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2562904&hv=0&hash=282c353c&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:58'),
(132, '2562916', 'D- Zinghr(Singapore)', 'Zinghr.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2562916&hv=0&hash=56ff9688&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:58'),
(133, '2562934', 'D- Zinghr(Malaysia)', 'Zinghr.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2562934&hv=0&hash=042caa1f&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:58'),
(134, '2562943', 'D- Zinghr(Australia)', 'Zinghr.com', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2562943&hv=0&hash=3078a2fc&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:58'),
(135, '2564191', 'my new test project', 'https://example.com', 0, 1, 0, 0, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2564191&hv=0&hash=109c85fc&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:58'),
(136, '2566132', '1 Lotus', 'https://www.1lotusresearch.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2566132&hv=0&hash=f69fe07f&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:58'),
(137, '2566153', '1 lotus 2', 'https://www.1lotusresearch.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2566153&hv=0&hash=da6521bc&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:58'),
(138, '2566177', '1 lotus 3', 'https://www.1lotusresearch.com/', 0, 1, 0, 1, 100, 'check_weekly', NULL, 'http://online.seranking.com/guest.html?site_id=2566177&hv=0&hash=863a7f06&sections%5B0%5D=rankings&sections%5B1%5D=analytics&sections%5B2%5D=competitors', '2021-01-08 17:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `role_type` enum('admin','project_manager','task_manager','client') NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `phone_number`, `role_type`, `created_on`, `updated_on`) VALUES
(1, 'Aditya', 'Rane', 'aditya.rane@conv.in', '12345678', '9860229885', 'project_manager', '2020-12-25 11:07:50', '2020-12-25 11:09:00'),
(2, 'new', 'test', 'aditya.rane@conv.i', '12345678', '9862144550', 'admin', '2020-12-25 11:08:38', '2020-12-25 11:09:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_data`
--
ALTER TABLE `api_data`
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
-- AUTO_INCREMENT for table `api_data`
--
ALTER TABLE `api_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
