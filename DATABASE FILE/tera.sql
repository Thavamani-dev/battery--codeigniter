-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2024 at 06:13 AM
-- Server version: 10.6.9-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tera`
--

-- --------------------------------------------------------

--
-- Table structure for table `battery`
--

CREATE TABLE `battery` (
  `id` int(11) NOT NULL,
  `battery_Name` varchar(50) NOT NULL,
  `Ah` int(11) NOT NULL,
  `model` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `battery`
--

INSERT INTO `battery` (`id`, `battery_Name`, `Ah`, `model`) VALUES
(1, 'AUC-PZ-36PZTX25 ', 3, 'two'),
(2, 'AUC-PZ-48PZTX50', 5, 'two'),
(3, 'AUC-PZ-48PZTX90 ', 9, 'two'),
(4, 'AUC-PZ-48PZTZ4L ', 3, 'two'),
(5, 'AUC-PZ-48PZTZ5L', 4, 'two'),
(6, 'AUC-PZ-48PZTX7R', 7, 'two'),
(7, 'AUC-PZ-48PZTZ9R', 8, 'two'),
(8, 'AUC-PZ-000PZ3WMF ', 28, 'four'),
(9, 'AUC-PZ-0PZ300RMF ', 32, 'four'),
(10, 'AUC-PZ-00PZ600MF', 60, 'four'),
(11, 'AUC-PZ-0NT1200MF', 120, 'four'),
(12, 'AUC-PZ-0NT1500MF ', 150, 'four'),
(13, 'AUC-PZ-0NT1800MF ', 180, 'four'),
(14, 'AUC-PZ-00PZ3500R/L', 35, 'four'),
(15, 'AUC-PZ-00PZ6000R/L', 60, 'four'),
(16, 'AUC-PZ-00PZ7000R/L', 65, 'four'),
(17, 'AUC-PZ-00PZ8000R/L', 80, 'four'),
(18, 'AUC-PZ-00PZ9000R/L', 90, 'four'),
(19, 'AUC-PZ-0PZ10000R', 100, 'four'),
(20, 'AUC-PZ-NTPZ15000', 150, 'four'),
(21, 'AUC-PZ-00NT9000R/L (BIG) ', 90, 'four'),
(22, 'AUC-PZ-00NT10000R/L (BIG) ', 100, 'four'),
(23, 'AUC-PZ-00NT13000R (JCB) ', 130, 'four'),
(24, 'APZ-42-0PZ38B20R/L ', 35, 'four'),
(25, 'APZ-40-0PZ95D26R/L ', 65, 'four'),
(26, 'APZ-40-PZ46B24LS ', 45, 'four'),
(27, 'APZ-40-PZ90D23LB ', 68, 'four'),
(28, 'APZ-50-00PZDIN45', 45, 'four'),
(29, 'APZ-50-00PZDIN50 ', 50, 'four'),
(30, 'APZ-50-00PZDIN55 ', 55, 'four'),
(31, 'APZ-50-0PZDIN55R ', 55, 'four'),
(32, 'APZ-50-00PZDIN65', 65, 'four'),
(33, 'APZ-50-00PZDIN66 ', 66, 'four'),
(34, 'APZ-50-PZ45D20LB (I 20)', 45, 'four'),
(35, 'APZ-54-0PZ40B20R/L', 35, 'four'),
(36, 'APZ-54-PZ40B20LB (I 10)', 35, 'four'),
(37, 'PZA-IN-TT150-42', 0, 'tub'),
(38, 'PZA-IN-TN150-54', 0, 'tub'),
(39, 'PZA-IN-TT150-54', 0, 'tub'),
(40, 'PZA-IN-TT165-54 ', 0, 'tub'),
(41, 'PZA-IN-TT200-42 ', 0, 'tub'),
(42, 'PZA-IN-TT200-54 ', 0, 'tub'),
(43, 'PZA-IN-TT230-54 ', 0, 'tub'),
(44, 'PZA-IN-TT230-66', 0, 'tub'),
(45, 'PZA-IN-ST125-36', 0, 'tub'),
(46, 'PZA-IN-ST135-36', 0, 'tub'),
(47, 'PZA-IN-ST145-36', 0, 'tub'),
(48, 'PZA-IN-ST165-36 ', 0, 'tub'),
(49, 'PZA-HU-HB0000750', 0, 'tub'),
(50, 'PZA-HU-HB0000950', 0, 'tub'),
(51, 'PZA-HU-HB0001550', 0, 'tub');

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE `dealer` (
  `Did` int(11) NOT NULL,
  `Pid` varchar(50) NOT NULL,
  `shopName` varchar(50) NOT NULL,
  `number` varchar(13) NOT NULL,
  `area` varchar(100) NOT NULL,
  `common` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`Did`, `Pid`, `shopName`, `number`, `area`, `common`) VALUES
(1, '1', 'Mahalakshmi Automobiles', '9940539986', 'Manimagalam', 1),
(2, '1', 'Suseela batteries & Invertors', '7845807371', 'Mannivakkam', 1),
(3, '1', 'Viinayaka Battery Service', '8098862120', 'Mannivakkam', 1),
(4, '1', 'JS Motors', '9941365617', 'Mudichur', 1),
(5, '1', 'Sri Ambaal Automobiles', '9840433393', 'Mudichur', 1),
(6, '1', 'Skyla Electronics Service', '8608852325', 'Mudichur', 1),
(7, '1', 'S.V Electronics', '9677177882', 'Mudichur', 1),
(8, '1', 'Sam Battery ', '9840172234', 'Mudichur', 1),
(9, '1', 'H P Power system', '9940501975', 'Mudichur', 1),
(10, '1', 'Shree power tools & service', '9962458382', 'Mudichur', 1),
(11, '1', 'Klot Automobiles', '9962763767', 'Padapai', 1),
(12, '1', 'Om Auto Mobiles', '9840390926', 'Padapai', 1),
(13, '1', 'Sri Ganapathy Battery Service', '9444382462', 'Padapai', 1),
(14, '1', 'Bhawani Auto mobiles', '9789838049', 'Padapai', 1),
(15, '1', 'Sri Sai Auto Mobile', '9710574388', 'Padapai', 1),
(16, '1', 'Lakshmi Automobiles', '9841838617', 'Padapai', 1),
(17, '1', 'S K P Automobiles & oil store', '9710493355', 'Padapai', 1),
(18, '1', 'Sri Cbml Motors', '8825799136', 'Padapai', 1),
(19, '1', 'Sri Ganesh Battery', '7708121302', 'Padapai', 1),
(20, '1', 'Sri Velmurugan Battery ', '8248070750', 'Sarpancheri', 1),
(21, '1', 'Moto Pulse', '', 'Padapai', 1),
(22, '1', 'S R Batteries', '', 'Oragadam', 1),
(23, '1', 'Sivani Motors', '', 'Mannivakkam', 1),
(24, '1', 'Krishna automobiles', '7358329844', 'New Perungalathur', 1),
(25, '1', 'Sri Lakshmi Battery Service', '', 'Old Perungalathur', 1),
(26, '1', 'Sai Senthil Auto Works', '9941583696', 'Old Perungalathur', 1),
(27, '1', 'Great Battery House', '9790842192', 'Perungalathur', 1),
(28, '1', 'Success Enterprises', '9994486113', 'Perungalathur', 1),
(29, '1', 'Gayathri Power System', '8778993420', 'Perungalathur', 1),
(30, '1', 'Madha Automobiles', '9941167745', 'Perungalathur', 1),
(31, '1', 'Abirami & Co', '9444492709', 'Perungalathur', 1),
(32, '1', 'Vijaya batteries & inverters', '9500935021', 'Perungalathur', 1),
(33, '1', 'GS Motors', '9600113588', 'Perungalathur', 1),
(34, '1', 'Gokul Car Accessories', '9884592025', 'Perungalathur', 1),
(35, '1', 'Sri Sai Battery', '7708655919', 'Perungalathur', 1),
(36, '1', 'Irumbuliyur Batteries & Accessories', '7356636757', 'Irumbuliyur', 1),
(37, '1', 'Sakthi Batteries', '9884785704', 'Irumbuliyur', 1),
(38, '1', 'Sri Jayam Batteries', '8939686569', 'Irumbuliyur', 1),
(39, '1', 'King Motors', '9500081064', 'Irumbuliyur', 1),
(40, '1', 'Kishore Auto Spare', '9092314020', 'Irumbuliyur', 1),
(41, '1', 'S R Power Sytems Service', ' 9884303603', 'Irumbuliyur', 1),
(42, '1', 'Jai auto mobiles', '9444583584', 'Peerkankarani', 1),
(43, '1', 'SS batteries', '', 'Peerkankarani', 1),
(44, '1', 'Jayam Battery', '9841095915', 'Perungalathur', 1),
(45, '1', 'Sai Batteries', '9382784845', 'Perungalathur ', 1),
(46, '1', 'HR Batteries Sales & sercice', '9382784845', 'Alapakkam', 1),
(47, '1', 'SM Home care', '9841270475', 'Nedungundram', 1),
(48, '1', 'M.S Automobiles', '8428010647', 'Kolapakkam', 1),
(49, '1', 'Lavanya Enterprises', '8667517758', 'Kolapakkam', 1),
(50, '1', 'Shesha Batteries', '9884783689', 'Kandigai', 1),
(51, '1', 'Sri ambika Auto parts', 'Shesha Batter', 'Kandigai', 1),
(52, '1', 'Jenisha Batteries Service', '9940263676', 'Kandigai', 1),
(53, '1', 'Jai Hanuman Batteries', '9176241124', 'Mambakkam', 1),
(54, '1', 'Logeshwari Battery Service', '9444162299', 'Vandalur', 1),
(55, '1', 'Sakthi battery', '9444185301', 'Vandalur', 1),
(56, '1', 'R.R. Batteries', '9176146766', 'Urapakkam', 1),
(57, '1', 'Maruthi Battery & computers', '7845299766', 'Urapakkam', 1),
(58, '1', 'Mahalaxmi Auto Parts', '6381123427', 'Urapakkam', 1),
(59, '1', 'Sai Battery and Inverter', '8122883941', 'Urapakkam', 1),
(60, '1', 'Naga Automobiles', '9789527883', 'Urapakkam', 1),
(61, '1', 'Raj Auto', '9677152326', 'Urapakkam', 1),
(62, '1', 'Sri Murugan Battery Service', '9840819596', 'Urapakkam', 1),
(63, '1', 'LKK Battery', '', 'Urapakkam', 1),
(64, '1', 'Sivakumaraguru Batteries', '', 'Urapakkam', 1),
(65, '1', 'Shanthi motors ', '', 'Urapakkam', 1),
(66, '1', 'Sri Krishna Auto Parts', '', 'Urapakkam', 1),
(67, '1', 'Sri Rajeshwary Auto Spars', '', 'Urapakkam', 1),
(68, '1', 'Annamalai Motors', '', 'Vandalur', 1),
(69, '1', 'Tamizh motor cycle spare parts', '', 'Vandalur', 1),
(70, '1', 'Kosh Marketing & Services', '8122031350', 'Guduvancherry', 1),
(71, '1', 'J.K.Automobiles', '', 'Guduvancherry', 1),
(72, '1', 'Jagadamba Auto Mobiles', '9600103173', 'Guduvancherry', 1),
(73, '1', 'Ok Electronics', '9443208990', 'Guduvancherry', 1),
(74, '1', 'AR Automobiles', '9952044275', 'Guduvancherry', 1),
(75, '1', 'G.D Automobiles & Cycles', '9962358573', 'Guduvancherry', 1),
(76, '1', 'Sri Vinayaga Battery Service', '9962843134', 'Kayarambedu', 1),
(77, '1', 'Jai Shree Auto Mobiles', '9360691208', 'Guduvancherry', 1),
(78, '1', 'Rolex Automobiles & Auto spares', '9677252542', 'Guduvancherry', 1),
(79, '1', 'RRC Battery', '8608561719', 'Guduvancherry', 1),
(80, '1', 'Guduvancherry Batteries', '7299790416', 'Guduvancherry', 1),
(81, '1', 'Y NOT Motors Auto Spa', '9840640746', 'Guduvancherry', 1),
(82, '1', 'Jagadhamba Automobiles', '', 'Guduvancherry', 1),
(83, '1', 'Sri Vinayaga Batteries', '', 'Guduvancherry', 1),
(84, '1', 'sri Krishna Enterprises', '', 'Guduvancherry', 1),
(85, '1', 'Jasin Power system ', '', 'Guduvancherry', 1),
(86, '1', 'K P Electronic Power system', '', 'Guduvancherry', 1),
(87, '1', 'Saravana Auto Electrical & Battery', '', 'Guduvancherry', 1),
(88, '1', 'U M Auto Conselting ', '', 'Guduvancherry', 1),
(89, '1', 'Megha Aqua & Power sytem', '7373276097', 'Kattankulathur', 1),
(90, '1', 'Bhairava Batteries', '8838637249', 'Kayarambedu', 1),
(91, '1', 'Ganesh Auto Mobiles', '8681894057', 'Kayarambedu', 1),
(92, '1', 'Sai Service Point', '9159993309', 'Kayarambedu', 1),
(93, '1', 'Hi Tech Solution', '7397468494', 'Kayarambedu', 1),
(94, '1', 'Madha battery', '9043444698', 'Nellikuppam', 1),
(95, '1', 'Sai Vinayaga Battery', '9940258518', 'Maraimalai nagar', 1),
(96, '1', 'Ramdev Auto Mobiles', '8190053196', 'Maraimalai nagar', 1),
(97, '1', 'New Rakesh Automobiles', '9790450707', 'Maraimalai nagar', 1),
(98, '1', 'Bhawani Auto mobiles', '8754518512', 'Maraimalai nagar', 1),
(99, '1', 'Sri Srinivasa Auto Garage', '9600116009', 'Maraimalai nagar', 1),
(100, '1', 'Arunachala Enterprises', '9941488378', 'Maraimalai nagar', 1),
(110, '1', 'Sri Kavitha Battery', '', 'Maraimalai nagar', 1),
(111, '1', 'Mahadev Batteries', '', 'Maraimalai nagar', 1),
(112, '1', 'Sree Swarnam Enterprises', '', 'Maraimalai nagar', 1),
(113, '1', 'Thirumalai Batteries', '9626475007', 'Mahindra world city', 1),
(114, '1', 'Ajith Battery', '9677070017', 'Mahindra world city', 1),
(115, '1', 'S K Batteries', '9840865061', 'Mahindra world city', 1),
(116, '1', 'Ignite Batteries', '9444387757', 'Mahindra world city', 1),
(117, '1', 'SM Battery', '9790890475', 'Tirukachur', 1),
(118, '1', 'G T Automobiles', '9787218662', 'SP kovil', 1),
(119, '1', 'Saravana Battery Works', '9080877173', 'SP kovil', 1),
(120, '1', 'Hari Batteries', '9171737680', 'SP kovil', 1),
(121, '1', 'Amul Battery', '7867086860', 'SP kovil', 1),
(122, '1', 'Mubaarak Automobiles', '9884927557', 'SP kovil', 1),
(123, '1', 'Shree Rana Auto mobiles', '', 'SP kovil', 1),
(124, '1', 'High Power System', '9790725497', 'Guduvancherry', 1),
(125, '1', 'Anand Automobiles', '9952037306', 'Guduvancherry', 1),
(126, '1', 'Sai batteries (Bright)', '9840512117', 'Guduvancherry', 1),
(127, '1', 'L.K.K Battery', '9789849116', 'Guduvancherry', 1),
(128, '1', 'Aqua Hi-Tech', '9840415498', 'Madambakkam', 1),
(129, '1', 'Krishna Auto Parts', '7358251370', 'Madambakkam', 1),
(130, '1', 'Friends Auto Service Center', '9382165076', 'Urapakkam', 1),
(131, '1', 'Jeni Battery & Jeni Ro', '9841999567', 'Urapakkam', 1),
(132, '1', 'Sri Krishna Automobiles', '9840539081', 'Urapakkam', 1),
(133, '1', 'Modern Motors', '9444016374', 'Urapakkam', 1),
(135, '2', 'K S Automobiles', '9884043287', 'Sanitorium', 1),
(136, '2', 'Seva Cars', '9444732293', 'Sanitorium', 1),
(137, '2', 'KK Auto Parts', '9344202236', 'Tambaram', 1),
(138, '2', 'TBM Enterprises', '8667734964', 'Tambaram', 1),
(139, '2', 'S S Auto Works', '9841028750', 'Tambaram', 1),
(140, '2', 'Balamurugan Battery', '9884675171', 'Tambaram', 1),
(141, '2', 'Royal batteries', '9884675171', 'Tambaram', 1),
(142, '2', 'Ravi battery Sales Service', '9750566681', 'Tambaram', 1),
(143, '2', 'Suresh Battery', '9080125637', 'Tambaram', 1),
(144, '2', 'Sree Manikandan Auto Electrical', '9444544881', 'Tambaram', 1),
(145, '2', 'Sri  Muthu Auto Electrical & battery works', '9444117963', 'Tambaram', 1),
(146, '2', 'G L Motors', '8015127555', 'Tambaram', 1),
(147, '2', 'R Battery plaza', '9380295834', 'Mahalakshmi nagar', 1),
(148, '2', 'Battery Mart', '9840535692', 'Selaiyur', 1),
(149, '2', 'Pankaj auto parts', '9444875611', 'Sembakkam', 1),
(150, '2', 'Matha Auto Electrical Works', '9444076952', 'Santhopuram', 1),
(151, '2', 'SVS Power Control', '8072631170', 'Kovilambakkam', 1),
(152, '2', 'Jai Enterprises', '9941999928', 'S.Kolathur', 1),
(153, '2', 'R K Battery', '9840674618', 'S.Kolathur', 1),
(154, '2', 'G N Tyres', '9003046545', 'Sanitorium', 1),
(155, '2', 'L J D Battery', '9380472771', 'West Tambaram', 1),
(156, '2', 'Rudra Automobiles', '9282235944', 'West Tambaram', 1),
(157, '2', 'Sudha Auto Centre', '044 22266025', 'West Tambaram', 1),
(158, '2', 'Elite Battery Service', '9841560230', 'West Tambaram', 1),
(159, '2', 'Super power batteries&invertors', '9962664443', 'medavakkam', 1),
(160, '2', 'Samron Electro Energy', '9790815704', 'Medavakkam', 1),
(161, '2', 'Sri Vijayalakshmi Battery', '9282214822', 'Medavakkam', 1),
(162, '2', 'Sri Krishna Automobiles', '9790841684', 'Medavakkam', 1),
(163, '2', 'Sakthi Battery service', '9840320197', 'Medavakkam', 1),
(164, '2', 'Sri Manikandan Battery&UPS', '9841552401', 'Medavakkam', 1),
(165, '2', 'S K Technology', '9884640150', 'Medavakkam', 1),
(166, '2', 'Surya Motors', '9444255007', 'Medavakkam', 1),
(167, '2', 'Mary battery', '8939365009', 'Medavakkam', 1),
(168, '2', 'Anandh battery', '9789338735', 'Medavakkam', 1),
(169, '2', 'K S Batteries', '9884621486', 'Medavakkam', 1),
(170, '2', 'Lucky Automobiles', '9600148791', 'Medavakkam', 1),
(171, '2', 'SRR Technology', '9962997667', 'Medavakkam', 1),
(172, '2', 'N V Power Technololgy', '9962990367', 'Medavakkam', 1),
(173, '2', 'SK Power Solution', '8825913134', 'Medavakkam', 1),
(174, '2', 'Sugan Battery', '9841633716', 'Medavakkam', 1),
(175, '2', 'Sri Sudarsanam Power Solution', '9500038003', 'Medavakkam', 1),
(176, '2', 'M G Enterprises', '', 'Medavakkam', 1),
(177, '2', 'SRV Technology', '', 'Medavakkam', 1),
(178, '2', 'Expert power system', '', 'Medavakkam', 1),
(179, '2', 'Aikon Power Technology', '7010070701', 'Santhopuram', 1),
(180, '2', 'R J S Traders', '9840120397', 'Santhopuram', 1),
(181, '2', 'Sri Bhavani Battereis', '9444431200', 'Rajakilpakkam', 1),
(182, '2', 'JVR Batteryzone', '9940358537', 'Rajakilpakkam', 1),
(183, '2', 'Madampakkam battery', '9444531414', 'Madambakkam', 1),
(184, '2', 'Sujith Battery House', '9940256844', 'Madambakkam', 1),
(185, '2', 'S.S.Battery service', '9677005203', 'Madambakkam', 1),
(186, '2', 'GP Auto Spare', '8939555613', 'Madambakkam', 1),
(187, '2', 'Vel Distributors & Marketing', '9884107355', 'Madambakkam', 1),
(188, '2', 'Crown Solar Power Systems', '8668184210', 'Selaiyur', 1),
(189, '2', 'Sree Saai Batteries', '9884410020', 'Selaiyur', 1),
(190, '2', 'Vinayaga Agency', '9884558211', 'Selaiyur', 1),
(191, '2', 'Euro Auto Electrical', '9445167456', 'Selaiyur', 1),
(192, '2', 'Gladwin battery & Oils', '8072762838', 'Selaiyur', 1),
(193, '2', 'Sri Balaji Auto Center', '9789432321', 'Thiruvacherry', 1),
(194, '2', 'Vinayaga Auto Works', '9380001361', 'Thiruvacherry', 1),
(195, '2', 'Sathya Batteries', '9042150801', 'Thiruvacherry', 1),
(196, '2', 'Sivagokul Agencies', '', 'Madambakkam', 1),
(197, '2', 'Saravana Auto Mobiles', '', 'Madambakkam', 1),
(198, '2', 'Nekks Battery', '9940555070', 'Nooththananchery', 1),
(199, '2', 'Sudharshan battery', '9884819311', 'Padhuvanchery', 1),
(200, '2', ' R.J Battery service', '9840770906 ', 'Chrompet ', 1),
(201, '2', ' Ramani Auto Works ', '  9941579090 ', '   	Chrompet ', 1),
(202, '2', ' Mahalakshmi Auto Parts ', '	9952534236  ', '     	Chrompet ', 1),
(203, '2', ' Balaji Auto Spares  ', '	9840866467  ', '     	Chrompet ', 1),
(204, '2', ' MLA Battery & Lubricants  ', ' 9884016618  ', '    Chrompet ', 1),
(205, '2', ' Venus Inverter & Battery ', ' 9840417948  ', '    Chrompet ', 1),
(206, '2', ' J K Auto Agencies ', ' 8610842455  ', '  	Chrompet ', 1),
(207, '2', ' Sri Vari batteries  ', '	9884479555  ', '     	Chrompet ', 1),
(208, '2', ' SK Power Battery', ' 9790910898  ', '    Chrompet ', 1),
(209, '2', ' Om Sakthi Traders', '  9380761006 ', '   	Chrompet ', 1),
(210, '2', ' HP Batteries', ' 9840092729  ', '    Chrompet ', 1),
(211, '2', ' P M L Enterprises', '  9080565950 ', '   	Chrompet ', 1),
(212, '2', ' CM classic motors', '9840520180   ', ' 	Chrompet ', 1),
(213, '2', ' J D King Battery', '  9789909784 ', '     Chrompet ', 1),
(214, '2', ' Sri vari Power system', '      \' ', ' Chrompet ', 1),
(215, '2', ' Rishi Electricals', '9962835474   ', ' 	Chrompet ', 1),
(216, '2', ' Sugan Battery', '  9444325003 ', '   	Chrompet ', 1),
(217, '2', ' Logu Auto mobiles', '     \'       ', '   	Chrompet ', 1),
(218, '2', ' Sri Ranga Automobiles	', '     \' 	     ', '   Thiruneermalai ', 1),
(219, '2', ' Iswarya two wheeler shop', '  9840658816 ', '   	Thiruneermalai ', 1),
(220, '2', ' Sri Velavan Auto Mobiles ', '  9025708708 ', '    Thirumudivakkam ', 1),
(221, '2', ' Sri Santhi Auto Electrical works ', '	9283465515  ', ' Thirumudivakkam ', 1),
(222, '2', ' SM Electricals ', '     \' ', '     Thirumudivakkam ', 1),
(223, '2', ' PJR power system ', '     \' ', '    sembakkam ', 1),
(224, '2', ' Mathaji Automobiles ', '	9080008756  ', '     	Anakaputhur ', 1),
(225, '2', ' Sri Ram Auto Parts ', '  9840148258 ', '   	Anakaputhur ', 1),
(226, '2', ' Sangeetha Battery ', '  9841822284 ', '   	Anakaputhur ', 1),
(227, '2', ' Mangai Electrical & Auto mobiles ', '  9363114612 ', '    Pallavaram ', 1),
(228, '2', ' Kalaimagal Infotech ', '	9566042613  ', '     	Pammal ', 1),
(229, '2', ' Xellent Batteries ', '  9884048203 ', '   	Pammal ', 1),
(230, '2', ' Acp Power Tech ', '  9381828586 ', '   	Pammal ', 1),
(231, '2', ' Sairam Power Tech ', '  7010161797 ', '   	Pammal ', 1),
(232, '2', ' Adys Battery Centre ', ' 7305508077  ', '  	Pammal ', 1),
(233, '2', ' Revathy Batteries ', '  7401259105 ', '   	Pammal ', 1),
(234, '2', ' Winner Spares ', '  9042000162 ', '   	Pammal ', 1),
(235, '2', ' Sri Bhavani Auto Parts ', '	9840491355  ', '     	Pammal ', 1),
(236, '2', ' Surya automobiles ', '8667678177   ', '  	Pozhichalur ', 1),
(237, '2', ' Natarajan auto electricals ', '	8508046663  ', '     	Anakaputhur ', 1),
(238, '2', ' Sarabesh Electricals ', ' 7010161797  ', '  	Polichalur ', 1),
(239, '2', ' Sri Arunachala Auto Spares ', '  7401496913 ', '   	Pallavaram ', 1),
(240, '2', ' Fathima Battery ', '    \' ', '    	Pammal ', 1),
(241, '2', ' TK Batteries ', '   \' ', '    Anakaputhur ', 1),
(242, '2', ' Sam power solution ', '     \' ', ' Pammal ', 1),
(243, '2', ' Union Battery Service ', ' 7299621090  ', '  	Pallavaram ', 1),
(244, '2', ' DLS Battery Centre ', '  9789898541 ', '   	Pallavaram ', 1),
(245, '2', ' M S electricals ', '9841185101   ', ' 	Old Pallavaram ', 1),
(246, '2', ' New Chennai Auto Supplies ', '	9380563861  ', '     	Pallavaram ', 1),
(247, '2', ' B S Tyres ', ' \' ', '     Old Pallavaram ', 1),
(248, '2', ' Sun Bike Service Centre ', '       \'     ', '     Old Pallavaram ', 1),
(249, '2', ' Sri ram Auto Parts ', '  9840426976 ', '   	Old Pallavaram ', 1),
(250, '2', ' Garage 91 ', '  9150875439 ', '   	Old Pallavaram ', 1),
(251, '2', ' Sun Bike Service Centre ', '  7871703037 ', ' Zamin Pallavaram ', 1),
(252, '2', ' SS Battery sales & service ', '	9840324365  ', ' Chitlapakkam ', 1),
(253, '2', ' Power Tech Electronics ', '  9840227808 ', ' Chitlapakkam ', 1),
(254, '2', ' Sivvas Auto Sapres ', '	9941309660  ', ' Hasthinapuram ', 1),
(255, '2', ' Om Sakthi battery service ', '	7401398967  ', ' Hasthinapuram ', 1),
(256, '2', ' Jeni Electronics ', '  9092813420 ', '        Hasthinapuram ', 1),
(257, '2', ' New Saravana Auto spares ', '	9884142303  ', '     	Hasthinapuram ', 1),
(258, '2', ' Sri Malliga Battery sales & Serv ', ' \' ', ' Chitlapakkam ', 1),
(259, '2', ' Varsha sri power ', '', '  Old Pallavaram ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `passward` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fourwheeler`
--

CREATE TABLE `fourwheeler` (
  `Fid` int(11) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Ah` int(10) NOT NULL,
  `snumber` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fourwheeler`
--

INSERT INTO `fourwheeler` (`Fid`, `Fname`, `Ah`, `snumber`) VALUES
(1, 'AUC-PZ-000PZ3WMF ', 28, ''),
(2, 'AUC-PZ-0PZ300RMF ', 32, ''),
(3, 'AUC-PZ-00PZ600MF', 60, ''),
(4, 'AUC-PZ-0NT1200MF', 120, ''),
(5, 'AUC-PZ-0NT1500MF ', 150, ''),
(6, 'AUC-PZ-0NT1800MF ', 180, ''),
(7, 'AUC-PZ-00PZ3500R/L', 35, ''),
(8, 'AUC-PZ-00PZ6000R/L', 60, ''),
(9, 'AUC-PZ-00PZ7000R/L', 65, ''),
(10, 'AUC-PZ-00PZ8000R/L ', 80, ''),
(11, 'AUC-PZ-00PZ9000R/L', 90, ''),
(12, 'AUC-PZ-0PZ10000R ', 100, ''),
(13, 'AUC-PZ-NTPZ15000', 150, ''),
(14, 'AUC-PZ-00NT9000R/L (BIG) ', 90, ''),
(15, 'AUC-PZ-00NT10000R/L (BIG) ', 100, ''),
(16, 'AUC-PZ-00NT13000R (JCB) ', 130, ''),
(17, 'APZ-42-0PZ38B20R/L ', 35, ''),
(18, 'APZ-40-0PZ95D26R/L ', 65, ''),
(19, 'APZ-40-PZ46B24LS ', 45, ''),
(20, 'APZ-40-PZ90D23LB ', 68, ''),
(21, 'APZ-50-00PZDIN45', 45, ''),
(22, 'APZ-50-00PZDIN50 ', 50, ''),
(23, 'APZ-50-00PZDIN55 ', 55, ''),
(24, 'APZ-50-0PZDIN55R ', 55, ''),
(25, 'APZ-50-00PZDIN65', 65, ''),
(26, 'APZ-50-00PZDIN66 ', 66, ''),
(27, 'APZ-50-PZ45D20LB (I 20)', 45, ''),
(28, 'APZ-54-0PZ40B20R/L', 35, ''),
(29, 'APZ-54-PZ40B20LB (I 10)', 35, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Oid` int(11) NOT NULL,
  `salesper_id` int(11) DEFAULT NULL,
  `dealer_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `urgent` varchar(11) DEFAULT NULL,
  `status` enum('Pending','Approved Contract','Billing','Order Placed','Cancle') DEFAULT 'Pending' COMMENT 'P=Pendinng,AC=Approved Contract,B=Billing,OP=Order Placed'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Oid`, `salesper_id`, `dealer_id`, `date`, `comment`, `urgent`, `status`) VALUES
(2, 2, 138, '2023-10-18', 'murugan was waste guy', 'y', 'Pending'),
(4, 1, 1, '2023-10-18', 'cash', 'y', 'Approved Contract'),
(5, 2, 219, '2023-11-14', 'etgw', 'y', 'Pending'),
(6, 1, 2, '2023-11-16', 'mani', 'n', 'Pending'),
(7, 1, 1, '2023-10-18', 'cash', 'n', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `order_battery`
--

CREATE TABLE `order_battery` (
  `id` int(11) NOT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `battery_id` varchar(50) DEFAULT NULL,
  `battery_Qty` int(11) DEFAULT NULL,
  `f_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_battery`
--

INSERT INTO `order_battery` (`id`, `orders_id`, `battery_id`, `battery_Qty`, `f_id`) VALUES
(1, 1, 'AUC-PZ-00PZ600MF', 1, 0),
(2, 1, 'AUC-PZ-00PZ3500R/L', 5, 0),
(3, 2, 'APZ-50-00PZDIN66', 1, 0),
(4, 2, 'AUC-PZ-00PZ6000R/L', 2, 0),
(5, 2, 'AUC-PZ-00NT10000R/L (BIG)', 3, 0),
(6, 3, 'AUC-PZ-00NT13000R (JCB)', 1, 0),
(7, 3, 'AUC-PZ-00PZ600MF', 5, 0),
(8, 3, 'AUC-PZ-00PZ3500R/L', 1, 0),
(9, 4, 'AUC-PZ-00NT9000R/L (BIG)', 1, 0),
(10, 4, 'APZ-54-PZ40B20LB (I 10)', 6, 0),
(11, 4, 'AUC-PZ-000PZ3WMF', 9, 0),
(12, 4, 'AUC-PZ-00NT9000R/L (BIG)', 6, 0),
(13, 4, 'APZ-54-0PZ40B20R/L', 5, 0),
(14, 4, 'PZA-IN-TT230-66', 3, 0),
(15, 5, 'AUC-PZ-00PZ3500R/L', 1, 0),
(16, 5, 'AUC-PZ-00NT9000R/L (BIG)', 5, 0),
(17, 6, 'AUC-PZ-00PZ3500R/L', 1, 0),
(18, 0, 'AUC-PZ-00NT13000R (JCB)', 5, 0),
(19, 7, '', 1, 0),
(20, 7, '', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salesperson`
--

CREATE TABLE `salesperson` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `passward` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sperson`
--

CREATE TABLE `sperson` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `passward` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sperson`
--

INSERT INTO `sperson` (`id`, `name`, `email`, `username`, `passward`) VALUES
(1, 'Tamil', '', '', ''),
(2, 'vignesh', '', '', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `test`
-- (See below for the actual view)
--
CREATE TABLE `test` (
`id` int(11)
,`battery_Name` varchar(50)
,`Ah` int(11)
,`model` varchar(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `tubular`
--

CREATE TABLE `tubular` (
  `Tid` int(11) NOT NULL,
  `Tname` varchar(50) NOT NULL,
  `Ah` int(10) NOT NULL,
  `snumber` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tubular`
--

INSERT INTO `tubular` (`Tid`, `Tname`, `Ah`, `snumber`) VALUES
(1, 'PZA-IN-TT150-42', 0, 0),
(2, 'PZA-IN-TN150-54', 0, 0),
(3, 'PZA-IN-TT150-54', 0, 0),
(4, 'PZA-IN-TT165-54 ', 0, 0),
(5, 'PZA-IN-TT200-42 ', 0, 0),
(6, 'PZA-IN-TT200-54 ', 0, 0),
(7, 'PZA-IN-TT230-54 ', 0, 0),
(8, 'PZA-IN-TT230-66', 0, 0),
(9, 'PZA-IN-ST125-36', 0, 0),
(10, 'PZA-IN-ST135-36', 0, 0),
(11, 'PZA-IN-ST145-36', 0, 0),
(12, 'PZA-IN-ST165-36 ', 0, 0),
(13, 'PZA-HU-HB0000750', 0, 0),
(14, 'PZA-HU-HB0000950', 0, 0),
(15, 'PZA-HU-HB0001550', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `twowheeler`
--

CREATE TABLE `twowheeler` (
  `twoId` int(11) NOT NULL,
  `batteryname` varchar(50) NOT NULL,
  `Ah` int(10) NOT NULL,
  `snumber` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `twowheeler`
--

INSERT INTO `twowheeler` (`twoId`, `batteryname`, `Ah`, `snumber`) VALUES
(1, 'AUC-PZ-36PZTX25 ', 3, ''),
(2, 'AUC-PZ-48PZTX50', 5, ''),
(3, 'AUC-PZ-48PZTX90 ', 9, ''),
(4, 'AUC-PZ-48PZTZ4L ', 3, ''),
(5, 'AUC-PZ-48PZTZ5L', 4, ''),
(6, 'AUC-PZ-48PZTX7R', 7, ''),
(7, 'AUC-PZ-48PZTZ9R', 8, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `usertype`, `password`) VALUES
(1, 'Tamil', 'testtest', 'tamil@gmail.com', 'admin', 'Camping123$'),
(2, 'Vigensh', 'testtest1', 'Vigensh@gmail.com', 'sales', '51f9e2e36235647286cd5a356102610b'),
(3, 'mani', 'admin', 'thavamanimani0@gmail.com', '1', ' 9677123481q');

-- --------------------------------------------------------

--
-- Structure for view `test`
--
DROP TABLE IF EXISTS `test`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `test`  AS  select `battery`.`id` AS `id`,`battery`.`battery_Name` AS `battery_Name`,`battery`.`Ah` AS `Ah`,`battery`.`model` AS `model` from `battery` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `battery`
--
ALTER TABLE `battery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`Did`);

--
-- Indexes for table `fourwheeler`
--
ALTER TABLE `fourwheeler`
  ADD PRIMARY KEY (`Fid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Oid`);

--
-- Indexes for table `order_battery`
--
ALTER TABLE `order_battery`
  ADD PRIMARY KEY (`id`),
  ADD KEY ` FOREIGN` (`f_id`) USING BTREE;

--
-- Indexes for table `salesperson`
--
ALTER TABLE `salesperson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sperson`
--
ALTER TABLE `sperson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tubular`
--
ALTER TABLE `tubular`
  ADD PRIMARY KEY (`Tid`);

--
-- Indexes for table `twowheeler`
--
ALTER TABLE `twowheeler`
  ADD PRIMARY KEY (`twoId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_battery`
--
ALTER TABLE `order_battery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
