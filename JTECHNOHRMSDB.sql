-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 24, 2025 at 04:13 PM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ospsgw8u_jtechnohrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_ao`
--

CREATE TABLE `add_ao` (
  `id` int(100) NOT NULL,
  `apdate` date NOT NULL,
  `name` varchar(500) NOT NULL,
  `address` text NOT NULL,
  `state` varchar(500) NOT NULL,
  `join_date` date NOT NULL,
  `location` varchar(500) NOT NULL,
  `sal_th` varchar(500) NOT NULL,
  `certi1` varchar(500) NOT NULL,
  `certi2` varchar(500) NOT NULL,
  `category` varchar(1000) NOT NULL,
  `desig` varchar(500) NOT NULL,
  `ses` varchar(500) NOT NULL,
  `statecode` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `add_noc`
--

CREATE TABLE `add_noc` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(200) NOT NULL,
  `emp_name` varchar(500) NOT NULL,
  `desig` varchar(500) NOT NULL,
  `doj` varchar(500) NOT NULL,
  `reason` text NOT NULL,
  `resign` varchar(150) NOT NULL,
  `np` varchar(150) NOT NULL,
  `uniform` varchar(150) NOT NULL,
  `uniform_rv` varchar(500) NOT NULL,
  `id_card` varchar(150) NOT NULL,
  `idcard_rv` varchar(500) NOT NULL,
  `shoes` varchar(150) NOT NULL,
  `shoes_rv` varchar(500) NOT NULL,
  `tools` varchar(150) NOT NULL,
  `tools_rv` varchar(500) NOT NULL,
  `sup_fb` text NOT NULL,
  `sal_adv` varchar(150) NOT NULL,
  `sal_rv` varchar(500) NOT NULL,
  `wire_certi` varchar(150) NOT NULL,
  `wire_rv` varchar(500) NOT NULL,
  `other` varchar(150) NOT NULL,
  `other_rv` varchar(500) NOT NULL,
  `state` varchar(100) NOT NULL,
  `tooldue` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `add_po`
--

CREATE TABLE `add_po` (
  `id` int(11) NOT NULL,
  `po_no` varchar(500) NOT NULL,
  `po_date` date NOT NULL,
  `s_date` date NOT NULL,
  `sqo_no` varchar(500) NOT NULL,
  `sqo_date` date NOT NULL,
  `to_add` text NOT NULL,
  `atten` varchar(500) NOT NULL,
  `cono` varchar(300) NOT NULL,
  `to_gst` varchar(500) NOT NULL,
  `del_add` text NOT NULL,
  `del_gst` varchar(500) NOT NULL,
  `conname` varchar(500) NOT NULL,
  `conno` varchar(500) NOT NULL,
  `st_date` date NOT NULL,
  `tot_amt` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `add_po1`
--

CREATE TABLE `add_po1` (
  `id` int(11) NOT NULL,
  `id1` varchar(500) NOT NULL,
  `desc1` text NOT NULL,
  `hsn` varchar(300) NOT NULL,
  `uom` varchar(300) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `rate` varchar(500) NOT NULL,
  `base_amt` varchar(500) NOT NULL,
  `gst` varchar(500) NOT NULL,
  `gst_amt` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `add_tool_phr`
--

CREATE TABLE `add_tool_phr` (
  `id` int(50) NOT NULL,
  `inv_date` date NOT NULL,
  `inv_no` varchar(500) NOT NULL,
  `netamount` varchar(500) NOT NULL,
  `ses` varchar(200) NOT NULL,
  `supname` text NOT NULL,
  `address` varchar(200) NOT NULL,
  `totalgst` varchar(500) NOT NULL,
  `totamount` varchar(500) NOT NULL,
  `state` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `empname` varchar(100) NOT NULL,
  `hint` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `user`, `pwd`, `empname`, `hint`) VALUES
(1, 'Admin', 'c8370ad37d0828c82a46f623b5ea225e', 'Admin', '3691215');

-- --------------------------------------------------------

--
-- Table structure for table `afm`
--

CREATE TABLE `afm` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `allocations`
--

CREATE TABLE `allocations` (
  `id` int(11) NOT NULL,
  `indusid` varchar(50) NOT NULL,
  `allocationdetails` varchar(255) NOT NULL,
  `prno` varchar(50) NOT NULL,
  `prvalue` float(10,2) NOT NULL,
  `postatus` varchar(20) NOT NULL,
  `received` varchar(20) NOT NULL,
  `pono` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'work in progress'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assignedtools`
--

CREATE TABLE `assignedtools` (
  `id` int(11) NOT NULL,
  `employeeid` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `state` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `shopid` int(11) DEFAULT NULL,
  `categoryid` int(11) NOT NULL,
  `categoryname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cattool`
--

CREATE TABLE `cattool` (
  `id` int(11) NOT NULL,
  `tcname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cattool`
--

INSERT INTO `cattool` (`id`, `tcname`) VALUES
(1, 'tool');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `cername` varchar(500) NOT NULL,
  `cerno` varchar(500) NOT NULL,
  `cerphoto` varchar(300) NOT NULL,
  `employeeid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `cername`, `cerno`, `cerphoto`, `employeeid`) VALUES
(1, 'S S L C', '20150283845', '', 'JTKarnataka22232726'),
(2, 'I T I electronic and Mechanical', '00170829024352', '', 'JTKarnataka22232726'),
(3, 'I T I electronic and Mechanical', '00170829024352', '', 'JTKarnataka22232726'),
(4, 'I T I electronic and Mechanical', '00170829024352', '', 'JTKarnataka22232726'),
(5, 'I T I electronic and Mechanical', '00170829024352', '', 'JTKarnataka22232726'),
(6, 'I T I CERTIFICATE', '00170829024352', '', 'JTKarnataka22232726'),
(7, 'test', 't', '', 'JTTS22232733'),
(8, 'test2', '2', '', 'JTTS22232733'),
(9, 'testcer', '45', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232734certifcate1', 'JTTS22232734'),
(10, 'testtt', 'testtt', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232734certifcate2', 'JTTS22232734'),
(11, 'test3', 'test4', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232734certifcate3', 'JTTS22232734'),
(12, 'test', '123', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232731certifcate1', 'JTKN22232731'),
(13, 'kalyan', '1234', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232729certifcate1', 'JTTS22232729'),
(14, 'Btech', '1', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232735certifcate1', 'JTKN22232735'),
(15, 'Inter', '2', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232735certifcate2', 'JTKN22232735'),
(16, 'prasen', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232736certifcate1', 'JTTS22232736'),
(17, 'Cpc polytechnic mysore', '108EC17062', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232739certifcate1', 'JTTS22232739'),
(18, 'Vijay Vikas Institute of engineering', '4VM22EC417', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232739certifcate2', 'JTTS22232739'),
(19, 'Sslc', '131167940', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232742certifcate1', 'JTTS22232742'),
(20, 'Iti', '1629411479', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232742certifcate2', 'JTTS22232742'),
(21, 'Iti', '1629411479', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232742certifcate3', 'JTTS22232742'),
(22, '10th marksheet', '171010179421', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232743certifcate1', 'JTTS22232743'),
(23, '12th marksheet', '0694925', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232743certifcate2', 'JTTS22232743'),
(24, 'ITI 1st year marksheet', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232743certifcate3', 'JTTS22232743'),
(25, 'ITI 2nd year marksheet', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232743certifcate4', 'JTTS22232743'),
(26, 'Puc', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232744certifcate1', 'JTTS22232744'),
(27, 'Bse', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232744certifcate2', 'JTTS22232744'),
(28, 'Basavaraja M', 'SSLC', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232747certifcate1', 'JTTS22232747'),
(29, 'Basavaraja M', 'Iti', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232747certifcate2', 'JTTS22232747'),
(30, 'Puc', '20877256715', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232749certifcate1', 'JTKN22232749'),
(31, 'Darshan', '1234', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232758certifcate1', 'JTKN22232758'),
(32, 'Darshan', '123', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232758certifcate2', 'JTKN22232758'),
(33, 'Darshan N', '52628', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232758certifcate3', 'JTKN22232758'),
(34, 'Darshan', '6815', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232758certifcate4', 'JTKN22232758'),
(35, 'Darshan', '5671', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232758certifcate5', 'JTKN22232758'),
(36, 'Darshan', '57#72', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232758certifcate6', 'JTKN22232758'),
(37, 'Rudresha Gv', 'BA', '', 'JTKN22232764'),
(38, 'Rudresha Gv', '', '', 'JTKN22232764'),
(39, 'Rudresha Gv', '', '', 'JTKN22232764'),
(40, 'Rudresha Gv', '', '', 'JTKN22232764'),
(41, 'Rudresha Gv', '', '', 'JTKN22232764'),
(42, 'Manju Ramappa Bovi', '', '', 'JTKN22232768'),
(43, 'Manju Ramappa bovi', '', '', 'JTKN22232768'),
(44, 'Harisha H', 'NA', '', 'JTKN22232771'),
(45, 'NA', 'NA', '', 'JTKN22232771'),
(46, 'NA', 'NA', '', 'JTKN22232771'),
(47, 'NA', 'NA', '', 'JTKN22232771'),
(48, 'NA', 'NA', '', 'JTKN22232771'),
(49, 'NA', 'NA', '', 'JTKN22232771'),
(50, 'Sharifsab', '', '', 'JTKN22232763'),
(51, 'Sharifsab', '', '', 'JTKN22232763'),
(52, 'Sharifsab', '', '', 'JTKN22232763'),
(53, 'Sharifsab', '', '', 'JTKN22232763'),
(54, 'Sharifsab', '', '', 'JTKN22232763'),
(55, 'Rahil nadaf DM', '224312', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232774certifcate1', 'JTKN22232774'),
(56, 'XYZ', 'XYZ', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232775certifcate1', 'JTKN22232775'),
(57, 'XYZ', '123', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232775certifcate2', 'JTKN22232775'),
(58, 'XYZ', '123', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232775certifcate3', 'JTKN22232775'),
(59, 'XYZ', '123', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232775certifcate4', 'JTKN22232775'),
(60, 'XYZ', '123', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232775certifcate5', 'JTKN22232775'),
(61, 'XYZ', '123', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232775certifcate6', 'JTKN22232775'),
(62, 'VINOD', 'SSLC', 'http://jtechnoassociates.in/hrms/empphotos/JTKarnataka22232711certifcate1', 'JTKarnataka22232711'),
(63, 'Vinod', 'ITI', 'http://jtechnoassociates.in/hrms/empphotos/JTKarnataka22232711certifcate2', 'JTKarnataka22232711'),
(64, 'Vinod', 'Diploma electrical', 'http://jtechnoassociates.in/hrms/empphotos/JTKarnataka22232711certifcate3', 'JTKarnataka22232711'),
(65, 'NA', 'NA', 'http://jtechnoassociates.in/hrms/empphotos/JTKarnataka22232711certifcate4', 'JTKarnataka22232711'),
(66, 'NA', 'NA', '', 'JTKarnataka22232711'),
(67, 'NA', 'NA', 'http://jtechnoassociates.in/hrms/empphotos/JTKarnataka22232711certifcate6', 'JTKarnataka22232711'),
(68, 'Arunkumar', 'XYZ', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232785certifcate1', 'JTKN22232785'),
(69, 'Arunkumar', '123', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232785certifcate2', 'JTKN22232785'),
(70, 'Arunkumar', '123', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232785certifcate3', 'JTKN22232785'),
(71, 'Arunkumar', '123', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232785certifcate4', 'JTKN22232785'),
(72, 'Arunkumar', '123', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232785certifcate5', 'JTKN22232785'),
(73, 'Arunkumar', '123', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232785certifcate6', 'JTKN22232785'),
(74, 'Iti electrical', 'R210829062809', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232787certifcate1', 'JTKN22232787'),
(75, 'Iti electrical', 'R210829062809', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232787certifcate2', 'JTKN22232787'),
(76, 'SSLC', '376439', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232787certifcate3', 'JTKN22232787'),
(77, 'SSLC', '068804190497', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232789certifcate1', 'JTKN22232789'),
(78, 'ITI', '004224', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232789certifcate2', 'JTKN22232789'),
(79, 'Arunkumar', 'XYZ', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232794certifcate1', 'JTKN22232794'),
(80, 'Arunkumar', '123', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232794certifcate2', 'JTKN22232794'),
(81, 'Arunkumar', '123', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232794certifcate3', 'JTKN22232794'),
(82, 'Arunkumar', '123', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232794certifcate4', 'JTKN22232794'),
(83, 'Arunkumar', '123', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232794certifcate5', 'JTKN22232794'),
(84, 'Arunkumar', '123', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232794certifcate6', 'JTKN22232794'),
(85, 'Dharani', '20877256715', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232786certifcate1', 'JTTS22232786'),
(86, 'B.Tech', 'C54', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232802certifcate1', 'JTTS22232802'),
(87, 'SSLC', '20030169350', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232815certifcate1', 'JTKN22232815'),
(88, 'PUC', '33334467899', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232815certifcate2', 'JTKN22232815'),
(89, 'B.com', '57888999', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232815certifcate3', 'JTKN22232815'),
(90, 'SSLC', '20030169350', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232818certifcate1', 'JTKN22232818'),
(91, 'PUC', '33334467899', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232818certifcate2', 'JTKN22232818'),
(92, 'B.com', '57888999', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232818certifcate3', 'JTKN22232818'),
(93, 'Btech', '1', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232837certifcate1', 'JTTS22232837'),
(94, 'Btech', '1', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232852certifcate1', 'JTTS22232852'),
(95, 'Diploma Electrical Engineering', '15/17774', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232857certifcate1', 'JTKN22232857'),
(96, '10th', 'N142903', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232857certifcate2', 'JTKN22232857'),
(97, 'PGDCA', '1234', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232857certifcate3', 'JTKN22232857'),
(98, '12th', '12345', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232857certifcate4', 'JTKN22232857'),
(99, 'B tech', '0987', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232857certifcate5', 'JTKN22232857'),
(100, 'ITI', '123456', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232857certifcate6', 'JTKN22232857'),
(101, 'Xxxx', 'Xxxxx', '', 'JTKN22232858'),
(102, 'Xxx', 'Xxx', '', 'JTKN22232858'),
(103, 'Xxxx', 'Xxxx', '', 'JTKN22232858'),
(104, 'Xyz', 'Xyz', '', 'JTKN22232858'),
(105, 'Xyz', 'Xyz', '', 'JTKN22232858'),
(106, 'Xyz', 'Xyz', '', 'JTKN22232858'),
(107, 'Sabareesh SK', '20160425622', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232859certifcate1', 'JTKN22232859'),
(108, 'Sabareesh SK', '18310347', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232859certifcate2', 'JTKN22232859'),
(109, 'asfsf', '', '', 'JTKN22232762'),
(110, 'Engineering', 'HJH959', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232861certifcate1', 'JTTS22232861'),
(111, 'Rakshith', '78898788', '', 'JTKN22232864'),
(112, 'Abvlc', '1', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232865certifcate1', 'JTKN22232865'),
(113, 'Bcd', '2', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232865certifcate2', 'JTKN22232865'),
(114, 'Vhff', '3', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232865certifcate3', 'JTKN22232865'),
(115, 'Hjjbgt', '4', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232865certifcate4', 'JTKN22232865'),
(116, 'Ghcd', '5', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232865certifcate5', 'JTKN22232865'),
(117, 'Fjb', '6', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232865certifcate6', 'JTKN22232865'),
(118, 'Rakshith', '564677990', '', 'JTKN22232864'),
(119, 'Rakshith', '63637889', '', 'JTKN22232864'),
(120, 'Rakshith', '6363782oo', '', 'JTKN22232864'),
(121, 'Rakshith', '6e6728899', '', 'JTKN22232864'),
(122, 'Rakshith', '56662778889', '', 'JTKN22232864');

-- --------------------------------------------------------

--
-- Table structure for table `deployment_records`
--

CREATE TABLE `deployment_records` (
  `id` varchar(50) NOT NULL,
  `date` date DEFAULT NULL,
  `to_company` varchar(255) DEFAULT NULL,
  `to_address` text,
  `location_company` varchar(255) DEFAULT NULL,
  `location_address` text,
  `person_name` varchar(100) DEFAULT NULL,
  `deployment_date` date DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `notes` text,
  `authorized_by` varchar(100) DEFAULT NULL,
  `position_of_authorizer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deployment_records`
--

INSERT INTO `deployment_records` (`id`, `date`, `to_company`, `to_address`, `location_company`, `location_address`, `person_name`, `deployment_date`, `position`, `notes`, `authorized_by`, `position_of_authorizer`) VALUES
('22232709', '2024-07-16', 'Software engineer', 'Software engineer', 'Jtechno', 'Basheerbagh', 'Shiva', '2024-07-16', 'Software engineer', 'Software Engineer', 'admin', 'NULL'),
('22232856', '1970-01-01', 'Software Engineer', 'hyd', 'accentel', 'hyd', 'Shiva Ganesh', '1970-01-01', 'Software Engineer', 'software', 'admin', 'NULL'),
('22232861', '2025-03-21', 'software', 'Hyderabad', 'Accentel Software', 'Karimnagar', 'Shiva Ganesh Dubba', '2025-03-21', 'software', 'Deployment Order', 'admin', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `empid` int(11) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `DOB` varchar(500) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `maritalstatus` varchar(20) NOT NULL,
  `contactno` bigint(20) NOT NULL,
  `alternateno` bigint(20) NOT NULL,
  `fname` varchar(500) NOT NULL,
  `mname` varchar(500) NOT NULL,
  `wname` varchar(500) NOT NULL,
  `relation` varchar(500) NOT NULL,
  `rno` bigint(20) NOT NULL,
  `nok` varchar(100) NOT NULL,
  `childname` varchar(500) NOT NULL,
  `adharcardno` varchar(500) NOT NULL,
  `adharphoto` varchar(300) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `experience` varchar(20) NOT NULL,
  `DOJ` varchar(500) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `uan` varchar(500) NOT NULL,
  `pan` varchar(500) NOT NULL,
  `panphoto` varchar(300) NOT NULL,
  `ESI_NO` varchar(20) NOT NULL,
  `PFNO` varchar(500) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `emp_email` varchar(60) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user` varchar(30) NOT NULL,
  `employeeid` varchar(30) NOT NULL,
  `bname` varchar(500) NOT NULL,
  `branch` varchar(500) NOT NULL,
  `ifsc` varchar(500) NOT NULL,
  `accno` varchar(500) NOT NULL,
  `bphoto` varchar(500) NOT NULL,
  `nname` varchar(100) NOT NULL,
  `naddress` varchar(300) NOT NULL,
  `nrelation` varchar(100) NOT NULL,
  `namount` varchar(100) NOT NULL,
  `ndob` varchar(100) NOT NULL,
  `esic_number` varchar(100) NOT NULL,
  `pensionscheme` varchar(100) NOT NULL,
  `pfscheme` varchar(100) NOT NULL,
  `loggedin` varchar(50) NOT NULL,
  `roles` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL DEFAULT 'Others',
  `DOR` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  `reason` text NOT NULL,
  `tshirt` varchar(20) NOT NULL,
  `tsize` varchar(100) NOT NULL,
  `tshtdt` varchar(500) NOT NULL,
  `phant` varchar(20) NOT NULL,
  `psize` varchar(100) NOT NULL,
  `phtdt` varchar(500) NOT NULL,
  `sshoes` varchar(20) NOT NULL,
  `ssize` varchar(100) NOT NULL,
  `shoesdt` varchar(500) NOT NULL,
  `idcard` varchar(20) NOT NULL,
  `idcarddt` varchar(500) NOT NULL,
  `appointmentcategory` varchar(100) NOT NULL,
  `sal_th` varchar(200) NOT NULL,
  `apt_date` date NOT NULL,
  `file` varchar(100) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `last_date` varchar(100) NOT NULL,
  `reason1` varchar(255) NOT NULL,
  `reason2` varchar(255) NOT NULL,
  `reason3` varchar(255) NOT NULL,
  `reason4` varchar(255) NOT NULL,
  `bg` varchar(200) NOT NULL,
  `stat` varchar(200) NOT NULL,
  `default` varchar(200) NOT NULL,
  `licensestatus` varchar(100) NOT NULL,
  `licimg` varchar(200) NOT NULL,
  `uniform` varchar(200) NOT NULL,
  `uniformisdate` varchar(200) NOT NULL,
  `sitename` varchar(200) NOT NULL,
  `empfingerprint` varchar(200) NOT NULL,
  `empsign` varchar(200) NOT NULL,
  `permaddress` varchar(400) NOT NULL,
  `localaddress` varchar(400) NOT NULL,
  `refeaddress` varchar(400) NOT NULL,
  `empidcardfront` varchar(200) NOT NULL,
  `empidcardback` varchar(200) NOT NULL,
  `adharphotoback` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`empid`, `emp_name`, `DOB`, `gender`, `maritalstatus`, `contactno`, `alternateno`, `fname`, `mname`, `wname`, `relation`, `rno`, `nok`, `childname`, `adharcardno`, `adharphoto`, `address`, `city`, `state`, `qualification`, `experience`, `DOJ`, `designation`, `uan`, `pan`, `panphoto`, `ESI_NO`, `PFNO`, `photo`, `emp_email`, `username`, `password`, `user`, `employeeid`, `bname`, `branch`, `ifsc`, `accno`, `bphoto`, `nname`, `naddress`, `nrelation`, `namount`, `ndob`, `esic_number`, `pensionscheme`, `pfscheme`, `loggedin`, `roles`, `category`, `DOR`, `status`, `reason`, `tshirt`, `tsize`, `tshtdt`, `phant`, `psize`, `phtdt`, `sshoes`, `ssize`, `shoesdt`, `idcard`, `idcarddt`, `appointmentcategory`, `sal_th`, `apt_date`, `file`, `start_date`, `last_date`, `reason1`, `reason2`, `reason3`, `reason4`, `bg`, `stat`, `default`, `licensestatus`, `licimg`, `uniform`, `uniformisdate`, `sitename`, `empfingerprint`, `empsign`, `permaddress`, `localaddress`, `refeaddress`, `empidcardfront`, `empidcardback`, `adharphotoback`) VALUES
(22232708, 'SYED OMER ALI', '2024-07-13', 'Male', 'unmarried', 9642617566, 8885396426, 'SYED TAHER ALI', '', '', '', 0, '', '', '8885213469', '', '', '', 'TS', '', '', '1970-01-01', '', '', 'EAMH56EFE', '', '', '', '', 'omer.accental@gmail.com', 'JTTS22232708', '', '', 'JTTS22232708', 'HDFC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+', 'BLOCKED', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232709, 'Shiva', '2024-07-10', 'Male', 'unmarried', 7207161882, 5569998998, 'Damodar', 'Bharathi', '', '', 0, '', '', '8965823698', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232709adharimg', 'Basheerbagh', 'Hyderabad', 'TS', 'B.Tech', '1', '2024-07-10', 'Software engineer', '', 'HUIOH2597K', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232709panimg', '', 'U89', '', 'ganesh12@gmail.com', 'JTTS22232709', 'Ganesh', '', 'JTTS22232709', 'Union Bank of India', 'Hyderabad', 'UBIN2596584', '596584128596385', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232709bankimg', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', 'Developer', '20000', '2024-07-16', 'daily works.txt', '', '', '', '', '', '', 'B+', 'BLOCKED', '', 'Need to Apply', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232709licimg', '', '', '', '', '', '', '', '', '', '', ''),
(22232710, 'Arun', '2024-07-19', 'Male', 'married', 9538793322, 9742616151, 'Ramamoorthy', 'Yashodhamma', 'Parimala', '', 0, '0', 'NA', '365560539829', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232710adharimg', '', '', 'TS', '', '', '1970-01-01', '', '', 'AJCPH7764B', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232710panimg', '', '', '', 'hindupuram.arun@gmail.com', 'JTTS22232710', '', '', 'JTTS22232710', 'HDFC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232711, 'Vinod Rathod', '2024-07-19', 'male', 'unmarried', 7760516051, 6361262704, 'Pomu', 'Sunita', '', '', 9902832164, '', '', '887318891312', 'http://jtechnoassociates.in/hrms/empphotos/JTKarnataka22232711adharimg', 'Surajpur raod carmel ram post moriget junnasandra', 'Bengaluru', 'KN', 'Electrical diploma', '8 years', '1996-06-20', 'Facilities engineer', '', 'AWKPV6719K', 'http://jtechnoassociates.in/hrms/empphotos/JTKarnataka22232711panimg', 'NA', 'NA', '', 'rvinod6051@gmail.com', 'JTKN22232711', '', '', 'JTKN22232711', 'Panjab national bank', 'Koramangala', 'PUNB0397100', '3971000400105473', 'http://jtechnoassociates.in/hrms/empphotos/JTKarnataka22232711bankimg', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'A+', 'BLOCKED', '', 'Available', 'http://jtechnoassociates.in/hrms/empphotos/JTKarnataka22232711licimg', 'T-Shirt', '1970-01-01', 'Vinod', '', 'Vinod R', 'Sarjapur Rod,Carmelram Post ,Junnasundra Benglor 560035', 'Junnasandra', 'Sarjapur road moriget Wipro', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKarnataka22232711adharphotoback'),
(22232713, 'Darshan C G', '2024-06-02', 'Male', 'unmarried', 8618032651, 0, 'late Gurumalle Gowda', 'C M Vishalakshi', '', '', 7899208003, '', '', '377006526212', '', '22 02nd floore,02nd cross,horamavu Banjara Layout', 'BANGALORE', 'KN', 'B.COM', '', '1970-01-01', 'Admin', '', 'BZTPD5485M', '', '5345667689', '', '', 'hindupuram.arun@gmail.com', 'JTKN22232713', '', '', 'JTKN22232713', 'HDFC', 'J  P nagar', 'HDFC0000456', '534234566788', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+', 'BLOCKED', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232714, 'Kalyan', '2024-07-26', 'Male', 'unmarried', 7569742529, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '1970-01-01', '', '', '', '', '', '', '', '', 'JTTS22232714', '', '', 'JTTS22232714', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+', 'BLOCKED', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232716, 'kalyan', '2024-07-31', '', '', 7569742529, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '1970-01-01', '', '', '', '', '', '', '', 'kalyan123@gmail.com', 'JTTS22232716', '', '', 'JTTS22232716', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232717, 'Raju', '2024-07-31', 'Male', 'unmarried', 8896584695, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '1970-01-01', '', '', '', '', '', '', '', 'raju12@gmail.com', 'JTKN22232717', '', '', 'JTKN22232717', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'BLOCKED', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232718, 'Kalyan', '2024-07-31', 'Male', 'unmarried', 7569742529, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '1970-01-01', '', '', '', '', '', '', '', '', 'JTTS22232718', '', '', 'JTTS22232718', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232719, 'Rakesh', '2024-07-31', '', '', 8886346631, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232719', '', '', 'JTTS22232719', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232720, 'Raju Kumar', '2024-08-01', 'Male', 'unmarried', 8965879658, 8956825462, '', '', '', '', 0, '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232720adharimg', '', '', 'TS', '', '', '1970-01-01', '', '', '', '', '', '', '', 'raju@gmail.com', 'JTTS22232720', '', '', 'JTTS22232720', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'BLOCKED', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232721, 'Kalyan', '2024-08-01', 'Male', 'unmarried', 7569742529, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '1970-01-01', '', '', '', '', '', '', '', '', 'JTTS22232721', '', '', 'JTTS22232721', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232722, 'kalyan', '2024-08-01', 'male', 'unmarried', 7569742529, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232722', '', '', 'JTKN22232722', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232723, 'Dharani', '2024-08-01', '', '', 9663696715, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '1970-01-01', '', '', '', '', '', '', '', '', 'JTTS22232723', '', '', 'JTTS22232723', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232724, 'Dharshan', '2024-08-01', '', '', 9591584991, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232724', '', '', 'JTTS22232724', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232725, 'Vinod', '2024-08-01', '', '', 7760516051, 0, '', '', '', '', 0, '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232725adharimg', '', '', 'TS', '', '', '1970-01-01', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232725panimg', '', '', '', '', 'JTTS22232725', '', '', 'JTTS22232725', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232726, 'Nandan', '2000-04-06', 'Male', 'unmarried', 7892018653, 9739606909, 'SHIVAKUMAR SWAMY B', 'VEENA KUMARI', '', '', 9019199809, '', '', '540672685134', '', 'Kollegal, Ambedkar street, chamarajnagar', 'Chamarajnagar', 'KN', 'ITI electronic and Mechanical', '2', '2024-08-02', 'Maintenance departments', '', 'CBZPN6780QC', '', '5043322078', 'PYKRP22577950000010443', '', 'nandanshivu8055@gmail.com', 'JTKN22232726', 'Nandan@8055', '', 'JTKN22232726', 'BANK OF INDIA', 'KOLLEGAL', 'BKID0008444', '844410110003219', '', 'Technician', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'O+', 'BLOCKED', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232727, 'tesr', '2024-08-02', 'Male', 'married', 7207787569, 7207787569, '', '', 'yuu', '', 0, '', '', '789', '', '', '', 'TS', '', '', '1970-01-01', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232727panimg', '', '', '', '', 'JTTS22232727', '789', '', 'JTTS22232727', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232728, 'Kalyan', '2024-01-03', '', '', 7569742529, 0, '', '', '', '', 0, '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232728adharimg', '', '', 'TS', '', '', '1970-01-01', '', '', '', '', '', '', '', '', 'JTTS22232728', '', '', 'JTTS22232728', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232729, 'Kalyan', '1999-01-03', 'Male', 'unmarried', 7569742529, 0, '', '', '', '', 0, '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232729adharimg', '', '', 'TS', '', '', '2024-07-08', '', '', '', '', '', '', '', 'prasen@gmail.com', 'JTTS22232729', '', '', 'JTTS22232729', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'BLOCKED', '', 'Available', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232730, 'Rakesh', '2024-08-02', 'Male', 'unmarried', 9642935530, 0, '', '', '', '', 0, '', '', '', '', '', 'Hyderabad', 'KN', '', '', '1970-01-01', '', '', '', '', '', '', '', '', 'JTKN22232730', '', '', 'JTKN22232730', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232731, 'Ramesh', '2024-08-03', 'Male', 'unmarried', 6309993672, 0, 'Raju', 'Rama', '', '', 0, '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232731adharimg', '', '', 'KN', '', '', '1970-01-01', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232731panimg', '', '', '', 'ramesh12@gmail.com', 'JTKN22232731', '', '', 'JTKN22232731', '', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232731bankimg', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+', 'BLOCKED', '', 'Available', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232731licimg', '', '', '', '', '', '', '', '', '', '', ''),
(22232732, 'Rajesh', '2024-08-03', '', 'unmarried', 8965897412, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232732', '', '', 'JTKN22232732', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232733, 'test', '2024-08-03', 'male', 'married', 7207787569, 0, '', '', 'test', '', 0, '', '', 'test', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232733', 'test', '', 'JTTS22232733', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232734, 'test', '2024-08-03', 'Male', 'married', 7207787569, 0, 'test', 'test', 't', '', 0, '', 'test', 'test', '', '', '', 'TS', '', '', '1970-01-01', '', '', '', '', '', '', '', '', 'JTTS22232734', 'test', '', 'JTTS22232734', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'BLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232735, 'Ramu', '2024-08-03', 'Male', 'unmarried', 7337434056, 0, 'Raju', 'Rani', '', '', 0, '', '', '259632589658', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232735adharimg', 'HYD', 'HYD', 'KN', 'B.Tech', '2', '1970-01-01', 'Software Engineer', '', 'HYUGY5896P', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232735panimg', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232735empimg', 'ramu1@gmail.com', 'JTKN22232735', 'Ramu@123', '', 'JTKN22232735', 'Union Bank of India', 'Hyderabad', 'UBIN2598784', '259658741158965', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232735bankimg', '1', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+', 'BLOCKED', '', 'Available', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232735licimg', '', '', '', '', '', '', '', '', '', '', ''),
(22232736, 'Prasen', '1999-04-03', 'Male', 'unmarried', 9703327405, 0, '', '', '', '', 9090867589, '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232736adharimg', '', '', 'TS', '', '', '2024-07-29', '', '', '', '', '', '', '', 'kalyan@gmail.com', 'JTTS22232736', '', '', 'JTTS22232736', '', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232736bankimg', 'good', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'BLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232737, 'ajay', '2024-08-03', '', '', 8965789654, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232737', '', '', 'JTTS22232737', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232738, 'rajiv', '2024-08-03', '', '', 7731880540, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232738', '', '', 'JTTS22232738', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232739, 'Teja', '2024-08-05', 'female', 'married', 9606705884, 9740664753, 'Kumar j', 'Jayamma', 'K S Manikanta ( Husband)', '', 9108579764, '0', 'No', '4319 5123 6761', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232739adharimg.mp4', 'Hongasandra, Bommanalli, banglore', 'Bangalore', 'TS', 'B.E', '1 yr', '2001-07-21', 'MIS', '', 'JDDPK4350Q', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232739panimg.mp4', '5043351437', 'KN/23605/26988', '', 'tejamani2805@gmail.com', 'JTTS22232739', '', '', 'JTTS22232739', 'Kotak Mahindra Bank', 'Bommanalli', 'KKBK0008057', '6948275692', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232739bankimg.mp4', 'MIS', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'A+', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232740, 'Kunja bihari das', '2024-08-05', 'Male', 'married', 7749940014, 0, 'Brundaban das', 'Manjulata das', 'Rajanidas', '', 8296658826, '1', 'Subhajit das', '994676806856', '', '', '', 'TS', '', '', '1970-01-01', '', '', 'Ghxpd812b', '', '', '', '', '', 'JTTS22232740', '', '', 'JTTS22232740', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'BLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232741, 'Kalyan', '1999-04-03', 'Male', 'unmarried', 7569742529, 0, 'Devid', 'Vani', '', '', 0, '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232741adharimg', '', '', 'TS', 'B.Tech', '', '2024-07-08', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232741panimg', '', '', '', 'prasen@gmail.com', 'JTTS22232741', '', '', 'JTTS22232741', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+', 'BLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232742, 'Santhosha M', '', 'male', 'married', 9663644010, 8088827303, 'Murugeshappa', 'Vishala', 'Vidya cn', '', 8088827303, '0', 'No', '219725509879', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232742adharimg', 'Kulambi 577219', 'Davangere', 'TS', 'Iti', '2', '', 'Multi skill technician', '', 'Esvpm2915m', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232742panimg', '', '', '', 'Santhosham292@gmail.com', 'JTTS22232742', '', '', 'JTTS22232742', 'Sbi', 'Kulambi', 'Sbin0040413', '64154751830', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232742bankimg', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+', 'BLOCKED', '', 'Available', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232742licimg', 'T-shirt', '1970-01-01', '', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232742empsign.png', '', '', '', '', '', ''),
(22232743, 'Manish Kumar', '2024-08-09', 'Male', 'unmarried', 6206080892, 6204896561, 'Balmiki yadav', 'Kranti devi', '', '', 6204985407, '', '', '605989428833', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232743adharimg', 'At-rajaura,pt-rajaura,ps-muffasil,dist-begusarai,state-bihar pin code-851131', 'Begusarai', 'TS', 'ITI', 'Fresher', '2024-08-09', 'Technician', '', 'LTUPK2194K', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232743panimg', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232743empimg', 'manishkumar620608@gmail.com', 'JTTS22232743', '', '', 'JTTS22232743', 'UCO Bank', 'Khamhar rajwada', 'UCBA0001380', '13800110065952', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232743bankimg', 'Technician', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'BLOCKED', '', 'Available', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232743licimg', '', '', '', '', '', '', '', '', '', '', ''),
(22232744, 'Pramod Kumar das', '1996-06-05', 'Male', 'unmarried', 9853790374, 0, 'Digambar das', 'Annapurna das', '', '', 7044193063, '', '', '640289568284', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232744adharimg', 'At- Chakroda (Antalo) po-jamadhar dis- kendrapara\r\nPin- 754250', 'Kendrapara', 'TS', 'Graduation', '', '1970-01-01', 'Handyman', '', 'HVUPD4312Q', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232744panimg', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232744empimg', 'kumarpramoddas103@gmail.com', 'JTTS22232744', '', '', 'JTTS22232744', 'Canara Bank', 'Kendrapara', 'CNRB0018028', '80212250027160', '', 'Handyman', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'O+', 'BLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232745, 'Johnson Pierera', '2001-06-12', 'Male', 'unmarried', 9591706833, 9019481602, 'Jerome', 'Benny', '', '', 9591706833, '', '', '814327658984', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232745adharimg', 'Chikkagrahara ,Aduvalli\r\nNarashimharajpura Taluk\r\nAduvalli village, Megaramakki post\r\nAduvalli\r\nMegaramakki\r\nChikkamagaluru Karataka - 577112', 'Chikkamagaluru', 'TS', 'ITI ELECIRICIAN', '', '1970-01-01', 'MST Technician', '', 'GFAPP5480N', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232745panimg', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232745empimg', 'johnsonpierera618@gmail.com', 'JTTS22232745', '', '', 'JTTS22232745', 'STATE BANK OF INDIA', 'Kalasa', 'SBIN0017851', '42060930817', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232745bankimg', 'Technician', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'O Positive', 'BLOCKED', '', 'Acknowledgement Available', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232745licimg', '', '', '', '', '', '', '', '', '', '', ''),
(22232746, 'Priyakanta panda', '2024-08-14', '', '', 8658411314, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232746', '', '', 'JTTS22232746', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232747, 'Basavaraja M', '2024-08-14', 'male', 'unmarried', 8722089184, 9901908089, 'Shivappa m', 'Bhagyamma', '', '', 9901908089, '', '', '881935700239', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232747adharimg', 'Ramadurga (v) kudligi (t) vijaynagar (dist) ramadurga post 583130', 'Bangalore', 'TS', 'Iti electrician', '4year', '2024-08-14', 'Electrical maintenance', '', 'Csnpb2644e', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232747panimg', '5040911390', '6032616692', '', 'basavaraj959094@gmail.com', 'JTTS22232747', '', '', 'JTTS22232747', 'Karnataka bank', 'Bommasandra', 'KARB0000906', '0902500102660401', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232747bankimg', '', '', '', '', '', '52530163390010607', 'Yes', 'Yes', '', '', 'Others', '', '', '', 'T-Shirt Block', '', '', 'Jeans', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+positive', 'UNBLOCKED', '', 'Available', '', '', '', '', '', '', 'Karnataka bank', 'Bommasandra', 'KARB0000906', '', '', ''),
(22232748, 'D Sri Teja', '2024-08-16', '', '', 9676753351, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232748', '', '', 'JTTS22232748', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232749, 'Dharani ds', '1990-06-10', 'Male', 'unmarried', 9663696715, 6363930066, 'Let swamy', 'Sarojamma', '', '', 0, '', '', '353580212737', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232749adharimg', '', '', 'KN', '', '', '2019-12-10', '', '', 'Dhqpd0703k', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232749panimg', '', '', '', 'dharanidsjeevan232@gmail.com', 'JTKN22232749', '', '', 'JTKN22232749', 'Canara bank', 'Doddabyagathavalli', 'Cnrb0587', '0588101029456', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232749bankimg', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'O+', 'BLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232750, 'Dharshan', '2024-08-22', '', '', 9591584991, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232750', '', '', 'JTKN22232750', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232751, 'Puneeth', '2024-08-22', '', '', 9740347600, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232751', '', '', 'JTKN22232751', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232752, 'Senthil', '2024-08-22', '', '', 9900816937, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232752', '', '', 'JTKN22232752', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232753, 'Sachin', '2024-08-22', '', '', 9916033349, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '1970-01-01', '', '', '', '', '', '', '', '', 'JTKN22232753', '', '', 'JTKN22232753', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'BLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232754, 'Ganesh', '2024-08-31', 'male', 'unmarried', 6589548745, 0, 'Damodar', 'Bharathi', '', '', 0, '', '', '659887542154', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232754adharimg', 'Hyderabad', 'Hyderabad', 'TS', 'B.Tech', '1', '2024-07-10', 'PHP Developer', '', 'GUDHJ4578U', '', '', '', '', 'shiva.accentel@gmail.com', 'JTTS22232754', '659887542154', '', 'JTTS22232754', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'Shirt', '2024-07-20', 'Hyderabad', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232754empsign.png', 'Karimnagar', 'Hyderabad', 'Hyderabad', '', '', ''),
(22232755, 'ram', '2024-08-31', '', '', 6598875421, 0, '', '', '', '', 0, '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232755adharimg', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232755', '', '', 'JTTS22232755', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'Tshirt', '', '', '', '', '', '', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232755adharphotoback'),
(22232756, 'Ajay', '2024-08-31', '', '', 7013217233, 0, '', '', '', '', 0, '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232756adharimg', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232756', '', '', 'JTTS22232756', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'Tshirt', '', '', '', '', '', '', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232756adharphotoback'),
(22232757, 'Rajar', '2024-08-31', 'male', 'unmarried', 6598653254, 0, 'Rajur', 'laxmir', '', '', 0, '', '', '659865985421', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232757adharimg', '', '', 'TS', 'B.Tech', '12', '2024-08-22', 'Software Engineers', '', 'TUUIH6598P', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232757panimg', '', '', '', '', 'JTTS22232757', '659865985421', '', 'JTTS22232757', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'Available', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232757licimg', 'T-shirt', '2024-07-31', 'Secundrabad', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232757empfingerprint', 'rajue', 'Secundrabad', 'Secundrabad', 'Secundrabad', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232757empidcardfront', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232757empidcardback', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232757adharphotoback'),
(22232758, 'Darshan', '2000-05-16', 'male', 'unmarried', 9148316350, 9148316350, 'Nagesh K', 'Mamatha', '', '', 6362260402, '', '', '932441668211', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232758adharimg', 'Darshan N S/O Nagesh K Sringeri Hanumanahalli Kadur (P) Holalkere (T) Chitradurga (D) 577523', 'Chitradurga', 'KN', 'MCOM', '1.5 YEARS', '2023-12-11', 'MIS Executive', '', 'CLQPN3876C', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232758panimg', '5349227327', 'KN/23605/26544', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232758empimg', 'darshann0414@gmail.com', '9148316350', 'Darshan@16', '', 'JTKN22232758', 'KARNATAKA BANK', 'CHIKJAJUR', 'KARB000219', '2192500100352501', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232758bankimg', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'A+', 'BLOCKED', '', 'NA', '', 'T-Shirt', '2023-12-11', 'WIPRO EC4', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232758empfingerprint', 'Darshan N', 'KARNATAKA BANK', 'CHIKJAJUR', 'KARB000219', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232758adharphotoback'),
(22232759, 'Nagaraja B', '2024-09-04', '', '', 8861959485, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232759', '', '', 'JTKN22232759', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'Tshirt', '', '', '', '', '', '', '', '', '', ''),
(22232760, 'Mahadev', '2024-09-04', '', '', 8970507533, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232760', '', '', 'JTKN22232760', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'Tshirt', '', '', '', '', '', '', '', '', '', ''),
(22232761, 'Ravi GB', '2024-09-04', '', '', 9591677110, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232761', '', '', 'JTKN22232761', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'Tshirt', '', '', '', '', '', '', '', '', '', ''),
(22232762, 'Kalyan Prasens', '2024-09-04', '', '', 8660351497, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232762', '', '', 'JTKN22232762', '', '', '', '', '', '', '', '', '', '', '53000163390000607', 'Yes', 'Yes', '', '', 'Others', '', '', '', 'T-Shirt Block', '', '', 'Jeans', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'BLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232763, 'Sharifsabpirasab', '1984-04-01', 'male', 'married', 8971757364, 9945939563, 'Feersab', 'Zulikabi', 'N00rjhn', '', 0, '', '', '623609514724', '', 'Hebbagodi Anekal taluk  Bangalore', 'Ksrnataka', 'KN', 'SSLC', '8', '1970-01-01', 'Carpenter', '', 'Cqdpg7369f', '', '', '', '', 'sharifsabpgspg@gmail.com', 'JTKN22232763', '', '', 'JTKN22232763', 'Panjab national bank', 'Koramangala', '', '3971000400106719', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'BLOCKED', '', 'NA', '', 'T-Shirt', '1970-01-01', '', '', 'Sharifsab', 'Billahlli', 'Hebbagodi', '', '', '', ''),
(22232764, 'Rudresha GV', '1973-04-08', 'male', 'married', 9632385676, 9686487937, 'Veerappa', 'Chandramma', 'SarithaN', '', 0, '2', 'Rakshitha GR', '758491127853', '', '', '', 'KN', '', '', '2023-01-01', 'Store keeper', '', '', '', '', '', '', 'rudresh@331gmail.com', 'JTKN22232764', '', '', 'JTKN22232764', 'Panjab national bank', 'Electronic city', '', '3971000400081667', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'O positive', 'BLOCKED', '', 'NA', '', 'T-Shirt', '1970-01-01', '', '', 'Gv Rudresha', 'Gv Rudresha  kadur village Holalker taluk chitradurga distic', 'Shiaripolya  electronic city bangalore', '', '', '', ''),
(22232765, 'Suresha K T', '1989-03-25', 'male', 'married', 9611923472, 8151883363, 'Thimmegowda', 'Hemmavathi', 'Sowmya S', '', 8151883363, '1', 'Tejan s gowda', '405951377143', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232765adharimg', '', '', 'KN', 'Sslc, puc, iti', '12 years', '2023-12-10', 'Technical supervisor', '', 'CZFPS1064Q', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232765panimg', 'Na', '', '', 'Ktsuresha2@gmail.com', 'JTKN22232765', '1989', '', 'JTKN22232765', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'O+', 'BLOCKED', '', 'Available', '', 'Shirt', '2023-12-10', 'Wipro EC-4 E-city', '', 'Suresha kt', '', '', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232765adharphotoback'),
(22232766, 'Binay Mohanty', '2024-09-04', '', '', 9901391455, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232766', '', '', 'JTKN22232766', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'Tshirt', '', '', '', '', '', '', '', '', '', ''),
(22232767, 'Vinayaka Koppal', '2024-09-04', '', '', 9880589302, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232767', '', '', 'JTKN22232767', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'Tshirt', '', '', '', '', '', '', '', '', '', ''),
(22232768, 'Manju Ramappa Bovi', '2024-09-04', 'male', 'unmarried', 7348848118, 9066850058, 'Father', 'Mother', '', '', 0, '', '', '869925262942', '', 'Gollahalli main road hebbagodi..', 'Electronic  city', 'KN', 'Sslc .ITI', '2 year', '2023-12-10', 'Ele technition', '', 'DCPPM7266A', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232768panimg', '5037899544', 'KN/24977/89387', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232768empimg', 'Prithususma@gmail.com', 'JTKN22232768', '73488 48118', '', 'JTKN22232768', 'State bank of india', 'Shiragambi', 'SBIN0015625', '40229127781', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232768bankimg', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+', 'BLOCKED', '', 'NA', '', 'Shirt', '2023-12-10', 'Electronic city  wipro', '', '', 'A/P Shiragambi  rattihalli T haveri D', 'Gollahalli main road  habbagodi', 'Gollahalli main road  habbagodi', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232768adharphotoback'),
(22232769, 'Brajesh Rout', '2024-09-04', '', '', 8984398903, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232769', '', '', 'JTKN22232769', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'Tshirt', '', '', '', '', '', '', '', '', '', ''),
(22232770, 'Vaijanath', '2024-09-04', '', '', 9740300304, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232770', '', '', 'JTKN22232770', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'Tshirt', '', '', '', '', '', '', '', '', '', ''),
(22232771, 'Harisha H', '1985-07-30', 'male', 'married', 9880618047, 7338317737, 'Hanumanthappa', 'Chandramma', 'Rashmi D C', '', 7338317737, '01', 'Lithiksha H', '760146670433', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232771adharimg', 'Harisha c/o Subramani K building 2nd floor Golahalli Electronic City post Bangalore 560100', 'Bangalore', 'KN', 'DEE', '20', '2017-10-01', 'Technical Supervisor', '', 'AFAPH5313L', '', 'NA', 'KN/23605/21822', '', 'rs.harisha1985@gmail.com', 'JTKN22232771', 'Rashmi@1234', '', 'JTKN22232771', 'Bank of Baroda', 'Chandapura', 'BARB0VJCHPU', '73840100001370', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232771bankimg', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'A+', 'BLOCKED', '', 'Available', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232771licimg', 'Shirt', '2023-03-07', 'Wipro EC 4', '', 'Harisha H', 'Harisha s/o Hanumanthappa Ramanagara Bhyrankoppa post shimoga taluk and DisticRamanagara', 'Golahalli Electronic City Bangalore', 'Wipro EC4', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232771adharphotoback'),
(22232772, 'Santhosh', '2024-09-04', '', '', 9480791747, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232772', '', '', 'JTKN22232772', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'Tshirt', '', '', '', '', '', '', '', '', '', ''),
(22232773, 'Raghavendra MG', '', '', '', 7625032900, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232773', '', '', 'JTKN22232773', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'T-shirt', '1970-01-01', '', '', 'http://jtechnoassociates.in/hrms//empphotos/JTKN22232773empsign.png', '', '', '', '', '', ''),
(22232774, 'Rahil', '1994-03-02', 'male', 'married', 9538105924, 8073953793, 'Rahil', 'Ruksana', 'Ruksana', '', 9538105924, '0', '', '870247706753', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232774adharimg', 'Hallanayakanahalli Sarjapur road vinayaka layout', 'Bangalore', 'KN', 'Diploma', '6 years', '2018-08-20', 'Facility engg', '', 'Na', '', 'Na', 'KN/23605/26432', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232774empimg', 'manurahil81@gmail.com', 'JTKN22232774', '', '', 'JTKN22232774', 'Punjab National Bank', 'Koramangala', 'Punb00004', '230345671234987', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+', 'BLOCKED', '', 'Available', '', 'T-Shirt', '1970-01-01', 'Wipro SjP1', '', 'Rahil N', 'Doddagatta davanagere chanagiri', 'Hallanayakanahalli Sarjapur road vinayaka', 'Vinayaka layout', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232774adharphotoback'),
(22232775, 'Arunkumar', '1986-05-04', 'male', 'married', 9538793322, 9742616151, 'H Ramamoorthy', 'H Yashodhamma', 'Parimala', '', 9740050590, '0', 'NA', '365560539829', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232775adharimg', 'Horamavu, Banjara Layout', 'Bangalore', 'KN', 'D EEE', '20', '2023-09-01', 'KAM', '', 'AJCPH7764B', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232775panimg', 'NA', 'XYZ', '', 'hindupuram.arun@gmail.com', 'JTKN22232775', '', '', 'JTKN22232775', 'Indusln bank', 'Jakkasandra', 'INDB0000229', '100054565659', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232775bankimg', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+', 'BLOCKED', '', 'Available', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232775licimg', 'T-shirt', '2024-01-01', '', '', 'ARUN Kumar H', '22 02nd floore,02nd cross,horamavu Banjara Layout', 'Same as above', 'Same as above', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232775adharphotoback'),
(22232776, 'test', '2024-09-06', 'male', '', 98888, 98888, '', '', '', 'Father', 0, '', '', 'test78', '', '', '', 'TS', '', '', '1970-01-01', '', '', '', '', '', '', '', 'testttt@de', 'JTTS22232776', 'test78', '', 'JTTS22232776', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'BLOCKED', '', 'NA', '', 'T-Shirt', '1970-01-01', '', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232776empsign.png', '', '', '', '', '', ''),
(22232777, 'sai', '2024-09-06', '', '', 6598542154, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232777', '', '', 'JTTS22232777', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'Tshirt', '', '', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232777empsign.png', '', '', '', '', '', ''),
(22232778, 'sai', '', '', '', 9865326598, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232778', '', '', 'JTTS22232778', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'T-shirt', '1970-01-01', '', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232778empsign.png', '', '', '', '', '', ''),
(22232779, 'Prasanth', '', '', '', 8179551882, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232779empimg', '', 'JTTS22232779', '', '', 'JTTS22232779', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'Tshirt', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232779empimg', '', '', '', '', '', ''),
(22232780, 'raju', '', '', '', 6598875421, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232780', '', '', 'JTTS22232780', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'T-shirt', '1970-01-01', '', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232780empsign.png', '', '', '', '', '', ''),
(22232781, 'Prasanth', '', '', '', 8179557882, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232781', '', '', 'JTTS22232781', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'Tshirt', '', '', '', '', '', '', '', '', '', ''),
(22232782, 'sanju', '', '', '', 9865988754, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232782empimg', '', 'JTTS22232782', '', '', 'JTTS22232782', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'Tshirt', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232782empimg', '', '', '', '', '', ''),
(22232783, 'ramana', '', '', '', 9865215421, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232783', '', '', 'JTTS22232783', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'T-shirt', '1970-01-01', '', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232783empsign.png', '', '', '', '', '', ''),
(22232784, 'Shiva Ganesh', '', '', '', 7895689556, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232784empimg', '', 'JTTS22232784', '', '', 'JTTS22232784', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'Tshirt', '', '', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232784empsign.png', '', '', '', '', '', ''),
(22232785, 'Arunkumar', '', 'male', 'married', 9538793322, 9742616151, 'H Ramamoorthy', 'Yashodhamma', 'Parimala', '', 9742616151, '0', 'NA', '365560539829', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232785adharimg', '22 02nd floore,02nd cross,horamavu Banjara Layout', 'BANGALORE', 'KN', 'D EEE', '20', '', 'KAM', '', 'AJCPH7764B', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232785panimg', 'NA', 'XYZ', '', 'hindupuram.arun@gmail.com', 'JTKN22232785', '123', '', 'JTKN22232785', 'Indusln bank', 'Jakkasandra', 'INDB0000229', 'XYZ', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232785bankimg', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+', 'UNBLOCKED', '', 'Available', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232785licimg', 'T-shirt', '2024-09-11', 'NA', '', 'http://jtechnoassociates.in/hrms//empphotos/JTKN22232785empsign.png', 'Indusln bank', 'Jakkasandra', 'INDB0000229', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232785adharphotoback');
INSERT INTO `emp` (`empid`, `emp_name`, `DOB`, `gender`, `maritalstatus`, `contactno`, `alternateno`, `fname`, `mname`, `wname`, `relation`, `rno`, `nok`, `childname`, `adharcardno`, `adharphoto`, `address`, `city`, `state`, `qualification`, `experience`, `DOJ`, `designation`, `uan`, `pan`, `panphoto`, `ESI_NO`, `PFNO`, `photo`, `emp_email`, `username`, `password`, `user`, `employeeid`, `bname`, `branch`, `ifsc`, `accno`, `bphoto`, `nname`, `naddress`, `nrelation`, `namount`, `ndob`, `esic_number`, `pensionscheme`, `pfscheme`, `loggedin`, `roles`, `category`, `DOR`, `status`, `reason`, `tshirt`, `tsize`, `tshtdt`, `phant`, `psize`, `phtdt`, `sshoes`, `ssize`, `shoesdt`, `idcard`, `idcarddt`, `appointmentcategory`, `sal_th`, `apt_date`, `file`, `start_date`, `last_date`, `reason1`, `reason2`, `reason3`, `reason4`, `bg`, `stat`, `default`, `licensestatus`, `licimg`, `uniform`, `uniformisdate`, `sitename`, `empfingerprint`, `empsign`, `permaddress`, `localaddress`, `refeaddress`, `empidcardfront`, `empidcardback`, `adharphotoback`) VALUES
(22232786, 'Dharani', '', 'male', 'unmarried', 9663696715, 6363930063, 'Let swamy', 'Sarojamma', '', '', 0, '', '', '353580212737', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232786adharimg', '', '', 'TS', 'Puc', '7 yers', '', 'Admin exicutive', '', 'Dhqpd0703k', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232786panimg', '', '', '', 'dharanidsjeevan232@gmail.com', 'JTTS22232786', '', '', 'JTTS22232786', 'Canara bank', 'Doddabyagathavalli', 'Cnrb0587', '0588101029456', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232786bankimg', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', 'UNBLOCKED', '', 'NA', '', 'Shirt', '2023-01-01', 'JTECHNO ASSOCIATES FMS pvt ltd', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232786empsign.png', '18 main road hosapalya bommanahalli', '18 main road hosapalya bommanahalli', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232786adharphotoback'),
(22232787, 'Mahantesh Basavaraj Mundashi', '', 'male', 'unmarried', 8971944626, 9845103410, 'Basavarja', 'Sakarava', '', '', 9980000940, '', '', '48819670', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232787adharimg', '24# Bacha Gowda layout Anjanapura Bangalore 560062', 'Bangalore', 'KN', 'ITI electrical', 'Shabari telecable ne', '', 'Mst', '', 'DWRPM0375L', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232787panimg', '5349448322', 'PYKRP00351230000032011', '', 'mahanteshmundashi@gmail.com', 'JTKN22232787', '', '', 'JTKN22232787', 'HDFC Bank Ltd', 'Domlur', 'HDFC0002929', '50100270627521', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232787bankimg', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'O+', 'BLOCKED', '', 'Available', '', 'T-Shirt', '1970-01-01', 'Optum', '', 'http://jtechnoassociates.in/hrms//empphotos/JTKN22232787empsign.png', 'S/o basavarja po: Avarage dist: belagvi tuk.hukkari', '24#Bachegowda loyat Anjanapura', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232787adharphotoback'),
(22232788, 'Shreyas JN', '2004-04-14', 'male', 'unmarried', 9611796672, 9686950976, 'Nagesh', 'Sunitha', '', '', 0, '', '', '595919169540', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232788adharimg', 'Jalamangala Ramanagara', 'Ramanagara', 'KN', 'PUC', '', '', 'Technician', '', 'QOHPS9016H', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232788panimg', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232788empimg', 'shreyasjn66@gmail.com', 'JTKN22232788', 'Shreyas@2004', '', 'JTKN22232788', 'HDFC', 'Nagarabhavi', 'HDFC0004178', '50100699444628', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232788bankimg', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'A positive', 'BLOCKED', '', 'NA', '', 'T-Shirt', '2024-09-11', '', '', '', 'Jalamangala', 'Macho Halli', 'Macho Halli', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232788adharphotoback'),
(22232789, 'Nandi Venkatesh', '1981-07-20', 'male', 'married', 8197491443, 8197491443, 'Chikkamariyappa', 'Prema', 'Sowmya VR', '', 8197491443, '1', 'N Parinitha', '698713581590', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232789adharimg', 'Yerehalli, Ramanagar \r\nKarnataka 562159', 'Ramanagar', 'KN', 'SSLC and ITI', '6 years', '2024-09-12', 'Electrical supervisor', '', 'AKOPN8256F', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232789panimg', '', 'BGBNG14805140000034253', '', 'venkateshnandi99999@gmail.com', 'JTKN22232789', '', '', 'JTKN22232789', 'Karnataka Bank Ltd', 'hsr layout', 'KARB0000128', '1282500100574301', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232789bankimg', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'O+', 'BLOCKED', '', 'NA', '', 'T-Shirt', '', 'Wipro', '', 'http://jtechnoassociates.in/hrms//empphotos/JTKN22232789empsign.png', 'Nandivenkatesh s/o Chikkamariyappa Yerehalli Ramanagar Karnataka 562159', '#174 Sarjapur road Bangalore 560035', '#174 Sarjapur road Bangalore 560035', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232789adharphotoback'),
(22232790, 'Shiva Ganesh', '', 'male', 'unmarried', 6598875487, 0, 'Damodar', 'Bharathi', '', '', 0, '', '', '659887542165', '', 'HYD', 'HYD', 'TS', 'B.Tech', '1', '', 'Software Engineer', '', 'GUIKO2321K', '', '254546', '45584', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232790empimg', 'shiva123@gmail.com', 'JTTS22232790', '', '', 'JTTS22232790', 'State Bank Of India', 'HYD', 'SBIN2559865', '659589645589652', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+', 'UNBLOCKED', '', 'Available', '', 'Shirt', '1970-01-22', 'HYD', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232790empsign.png', 'HYD', 'HYD', 'HYD', '', '', ''),
(22232791, 'kalyan', '1999-01-03', 'male', 'unmarried', 7569742529, 8179551882, 'Devid', 'Vani', '', '', 9492537281, '', '', '902741002536', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232791adharimg', 'Madhapur,Hyderabad', 'Hyderabad', 'TS', 'B.Tech', '1 Year', '2024-07-08', 'Trainee Engineer', '95874561', 'KOTPK1548O', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232791panimg', '125478', '12546', '', 'prasenkalyan007@gmail.com', 'JTTS22232791', '54879', '', 'JTTS22232791', '', '', '', '', '', 'Devid', 'Andhra', 'Father', '20000', '1970-01-01', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B +ve', 'BLOCKED', '', 'NA', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232791licimg', 'T-shirt', '2024-06-04', 'Accentel', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232791empsign.png', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232791empidcardfront', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232791adharphotoback'),
(22232792, 'raju', '', '', '', 7207161882, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232792', '', '', 'JTTS22232792', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'Tshirt', '', '', '', '', '', '', '', '', '', ''),
(22232793, 'dsr', '', '', '', 9854659887, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232793', '', '', 'JTTS22232793', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'T-shirt', '1970-01-01', '', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232793empsign.png', '', '', '', '', '', ''),
(22232794, 'Arunkumar', '', 'male', 'married', 9538793322, 9742616151, 'H Ramamoorthy', 'H Yashodhamma', 'Parimala', '', 9742616151, '0', 'NA', '365560539829', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232794adharimg', '22 02nd floore,02nd cross,horamavu Banjara Layout', 'BANGALORE', 'KN', 'D EEE', '20', '', 'KAM', '', 'AJCPH7764B', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232794panimg', 'NA', 'XYZ', '', 'hindupuram.arun@gmail.com', 'JTKN22232794', '', '', 'JTKN22232794', 'Indusln bank', 'Jakkasandra', 'INDB0000229', 'XYZ', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232794bankimg', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+', 'BLOCKED', '', 'Available', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232794licimg', 'T-shirt', '1970-01-01', 'NA', '', 'http://jtechnoassociates.in/hrms//empphotos/JTKN22232794empsign.png', 'Indusln bank', 'Jakkasandra', 'INDB0000229', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232794adharphotoback'),
(22232795, 'Sharana Basappa', '', '', '', 9060920708, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232795', '', '', 'JTKN22232795', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'Tshirt', '', '', '', '', '', '', '', '', '', ''),
(22232796, 'Shiva Ratna Kumar', '2003-01-30', 'male', 'unmarried', 9972239932, 8971941751, 'Amaresh', 'Ratnamma', '', '', 8971941751, '', '', '263144416211', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232796adharimg', 'Ankushadoddi house number 31 govment school opposite', 'Bengaluru', 'KN', 'ITI', '1 year', '', 'Electrician', '', 'LSLPK8463K', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232796panimg', '', '', '', 'kumargurikar1122@gmail.com', 'SHIVARATNAKUMAR', 'Kumar@1122', '', 'JTKN22232796', 'SBI', 'SBI bank branch maski', 'SBIN0011141', '35129554126', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232796bankimg', '', '', '', '', '', '', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'A positive', 'BLOCKED', '', 'Need to Apply', '', 'T-Shirt', '1970-01-01', 'WIPRO KODATI', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232796empfingerprint', 'http://jtechnoassociates.in/hrms//empphotos/JTKN22232796empsign.png', 'Ankushadoddi', 'R k Hegde nagar', 'Mulluru', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232796adharphotoback'),
(22232797, 'Ganesh', '2024-09-23', 'male', 'unmarried', 7207161882, 0, 'damodar', 'bharathi', '', '', 0, '', '', '558974851215', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232797adharimg', '', '', 'TS', 'B.Tech', '1', '2024-09-23', 'Software Engineer', 'test', 'YUHGU6598P', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232797panimg', '', '', '', 'shiva.accentel@gmail.com', 'JTTS22232797', '', '', 'JTTS22232797', '', '', '', '', '', 'test', 'test_adr', 'test_rel', '100', '2024-09-23', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'BLOCKED', '', 'NA', '', 'T-shirt', '1970-12-31', '', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232797empsign.png', '', '', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232797adharphotoback'),
(22232798, 'kjhg', '', '', '', 6598545454, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232798empimg', '', 'JTTS22232798', '', '', 'JTTS22232798', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'T-shirt', '1970-01-01', '', '', '', '', '', '', '', '', ''),
(22232799, 'Ram', '', '', '', 6598545454, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232799', '', '', 'JTTS22232799', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'Shirt', '1970-01-01', '', '', '', '', '', '', '', '', ''),
(22232800, 'Shiva', '', 'male', 'unmarried', 6598548754, 0, 'Ramesh', 'Rama', '', '', 0, '', '', '326598542154', '', '', '', 'TS', '', '', '', '', '', '', '', '78866', '8768', '', '', 'JTTS22232800', '326598542154', '', 'JTTS22232800', '', '', '', '', '', 'Ramesh', 'HYD', 'Father', '100000', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '2024-09-20', '', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232800empsign.png', '', '', '', '', '', ''),
(22232801, 'ganesh', '', '', '', 6598542154, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232801', '', '', 'JTKN22232801', '', '', '', '', '', '', '', '', '', '', '53000163390000607', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232802, 'Shiva Ganesh', '2024-09-20', 'male', 'unmarried', 720716182, 8886346631, 'Damodar', 'Bharathi', '', 'Father', 9865875421, '', '', '659878542154', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232802adharimg', 'Kukatpally', 'HYD', 'TS', 'B.Tech', '1', '2024-09-20', 'Software Engineer', '24547', 'PHUJI4578Y', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232802panimg', '3569', '56589', '', 'shiva.accentel@gmail.com', 'JTTS22232802', '659878542154', '', 'JTTS22232802', 'Union Bank of India', 'Karimnagar', 'UBIN5986548', '659848525589658', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232802bankimg', 'Damodar', 'HYD', 'Father', '10000', '2024-09-20', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'O+', 'UNBLOCKED', '', 'Available', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232802licimg', 'Shirt', '2024-09-20', 'HYD', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232802empfingerprint', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232802empsign.png', 'Union Bank of India', 'Karimnagar', 'UBIN5986548', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232802empidcardfront', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232802empidcardback', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232802adharphotoback'),
(22232803, 'Raju', '', '', '', 6598875421, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232803empimg', '', 'JTTS22232803', '', '', 'JTTS22232803', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232804, 'Rak', '', '', '', 8754985421, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232804empimg', '', 'JTTS22232804', '', '', 'JTTS22232804', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232805, 'ganesh', '2024-09-20', '', '', 9865542154, 0, '', '', '', '', 0, '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232805adharimg', '', '', 'TS', '', '', '', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232805panimg', '', '', '', '', 'JTTS22232805', '', '', 'JTTS22232805', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', 'T-Shirt', '2024-09-21', '', '', '', '', '', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232805adharphotoback'),
(22232806, 'Chinna', '', '', '', 7569742529, 0, '', '', '', '', 0, '', '', '90274120065', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232806', '90274120065', '', 'JTTS22232806', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232807, 'Bridju', '', 'male', '', 9035679498, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232807', '', '', 'JTKN22232807', '', '', '', '', '', '', '', '', '', '', '53000163390000607', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232808, 'Kishore', '', '', '', 7760676178, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232808', '', '', 'JTKN22232808', '', '', '', '', '', '', '', '', '', '', '53000163390000607', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232809, 'Nagaraj', '', '', '', 9902769912, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232809', '', '', 'JTKN22232809', '', '', '', '', '', '', '', '', '', '', '53000163390000607', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232810, 'Plasius', '', '', '', 9535344312, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232810', '', '', 'JTKN22232810', '', '', '', '', '', '', '', '', '', '', '53000163390000607', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232811, 'Raj Kumar', '', '', '', 9591259683, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232811', '', '', 'JTKN22232811', '', '', '', '', '', '', '', '', '', '', '53000163390000607', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232812, 'Siva Kumar', '', '', '', 9964140251, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232812', '', '', 'JTKN22232812', '', '', '', '', '', '', '', '', '', '', '53000163390000607', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232813, 'Parvathayya', '', '', '', 9972151522, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232813', '', '', 'JTKN22232813', '', '', '', '', '', '', '', '', '', '', '53000163390000607', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232814, 'Ganesh', '', '', '', 9494747462, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232814', '', '', 'JTKN22232814', '', '', '', '', '', '', '', '', '', '', '53000163390000607', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232815, 'Dharshan', '1994-06-02', 'male', 'unmarried', 8618032651, 0, 'Gurumalle Gowda', 'Vishalakshi', '', '', 0, '', '', '234154321673', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232815adharimg', '#68,Harsha layout yelachenhalli Bangalore - 560078', 'Bangalore', 'KN', 'B.Com', '', '2023-11-07', 'Admin', '101233750150', 'AUJPN5908P', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232815panimg', '5345463938', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232815empimg', 'darshancg199@gmail.com', 'JTKN22232815', '', '', 'JTKN22232815', 'Canara Bank', 'Yelachenhalli', 'CNRB0001371', '1371101084936', '', 'Vishalakshi C M', '#68, Harsha layout yelachenhalli Bangalore -560078', 'mother', '100 percentage', '1963-01-01', '53000163390000607', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+', 'BLOCKED', '', 'NA', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232815licimg', 'NA', '2024-10-09', 'JTechno', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232815empfingerprint', 'http://jtechnoassociates.in/hrms//empphotos/JTKN22232815empsign.png', 'Canara Bank', 'Yelachenhalli', 'CNRB0001371', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232815adharphotoback'),
(22232816, 'Dharani', '', '', '', 9663696715, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232816', '', '', 'JTTS22232816', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232817, 'gautam jena', '1999-09-23', 'male', 'unmarried', 6387326826, 6387326826, 'Mr.Goleak chandra Jeñ', 'Mss.Jayanti Jena', '', '', 0, '', '', '809510414706', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232817adharimg', '109/385 R.K Nagar,', 'Kanpur', 'KN', '12 pass', '6th year', '2024-10-10', 'Plumbing', '101688203316', 'CFTPJ2638M', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232817panimg', '348096148', 'KN/BN/2674845087', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232817empimg', 'Jenagautam08@gmail.com', 'JTKN22232817', '', '', 'JTKN22232817', '', '', '', '', '', 'Jayanti jena', 'Rajnagar , badapalli', 'Mother', '', '1974-01-01', '53000163390000607', '', '', '', '', 'Others', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+ positive', 'BLOCKED', '', 'NA', '', 'Shirt -40,Pant-38 Shoe -8', '2024-10-09', 'Wipro,', '', 'http://jtechnoassociates.in/hrms//empphotos/JTKN22232817empsign.png', '109/385 R.K Nager', 'No', 'Kurti Geat.', '', '', ''),
(22232818, 'Dharshan', '1996-06-02', 'male', 'unmarried', 8618032651, 9591584991, 'Gurumalle Gowda', 'Vishalakshi', '', '', 6345677789, '', '', '234154321673', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232818adharimg', '#68, Harsh layout yelachenhalli Bangalore -560078', 'Bangalore', 'KN', 'B.Com', '', '2024-10-01', 'Admin', '101233750150', 'AUJPN5908P', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232818panimg', '5345463938', '', '', 'darshancg199@gmail.com', 'JTKN22232818', '', '', 'JTKN22232818', 'Canara Bank', 'Yelachenhalli', 'CNRB0001371', '1371101084936', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232818bankimg', 'Vishalakshi C M', '#68, Harsha layout yelachenhalli Bangalore -560078', 'mother', '100 percentage', '1962-01-01', '53000163390000607', 'Yes', 'Yes', '', '', 'Others', '', '', '', 'T-Shirt Block', '', '', 'Jeans', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+', 'BLOCKED', '', 'NA', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232818licimg', '', '2024-10-09', 'JTechno', '', 'http://jtechnoassociates.in/hrms//empphotos/JTKN22232818empsign.png', 'Canara Bank', 'Yelachenhalli', 'CNRB0001371', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232818adharphotoback'),
(22232819, 'test', '2024-10-17', 'male', 'unmarried', 9000, 0, 'test', '', '', '', 0, '', '', 'test', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232819adharimg', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232819', 'test', '', 'JTTS22232819', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'T-Shirt Blue', 'xl', '', 'Block Pant', '44', '', 'Steel', '9', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'BLOCKED', '', 'NA', '', 'Full uniform', '2024-10-17', '', '', '', '', '', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232819adharphotoback'),
(22232820, 'Ganesh', '2024-10-15', 'male', 'unmarried', 8852587548, 0, 'laxman', 'laxmi', '', '', 0, '', '', '448857858787', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232820adharimg', 'HYD', 'HYD', 'TS', 'B.Tech', '1', '2024-10-19', 'Software Engineer', '3243454', 'IUEGH4589P', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232820panimg', '35435623', '3446345', '', 'ganesh234@gmail.com', 'JTTS22232820', '448857858787', '', 'JTTS22232820', 'Union Bank of India', 'Karimnagar', 'UBIN2596584', '596584128596385', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232820bankimg', 'laxman', 'HYD', 'father', '10000', '2024-10-24', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'White Shirt', '32', '', 'Jeans', '30', '', 'Fiber', '32', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'Available', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232820licimg', 'shirt', '2024-10-18', 'HYD', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232820empfingerprint', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232820empsign.png', 'HYD', 'HYD', 'HYD', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232820empidcardfront', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232820empidcardback', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232820adharphotoback'),
(22232821, 'dgeg', '', '', '', 6598875487, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232821', '', '', 'JTTS22232821', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'Jeans Pant', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232822, 'Testing', '2000-06-17', 'male', 'unmarried', 9658741236, 6598741236, 'bghdfghk', 'oiudxkn', '', 'Father', 0, '', '', '365560539828', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232822adharimg', 'Madhapur, Hyderabad', 'Hyderabad', 'TS', 'B.Tech', '1 Year', '2024-10-11', 'Junior Softwrae Developer', '698741253', 'jhf879569', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232822panimg', '569874', '236541', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232822empimg', 'testing@gmail.com', 'JTTS22232822', '365560539828', '', 'JTTS22232822', 'State Bank Of India', 'Chirala', 'sbin675432', '32769341978', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232822bankimg', 'Prasanth', 'Chirala,Andhra Pradesh', 'Father', '500000', '1975-07-08', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'T-Shirt Blue', 'S', '', 'Jeans', '32', '', 'Fiber', '9', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B +ve', 'UNBLOCKED', '', 'NA', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232822licimg', '', '', 'Accentel', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232822empfingerprint', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232822empsign.png', 'State Bank Of India', 'Chirala', 'sbin675432', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232822empidcardfront', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232822empidcardback', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232822adharphotoback'),
(22232823, 'Shiva Ganesh', '1999-07-06', 'male', 'unmarried', 7207161882, 0, 'Damodar', 'Bharathi', '', '', 0, '', '', '665478923455', '', 'Hyd', 'Hyd', 'TS', 'Btech', '1', '2024-07-10', 'Software engineer', '5567', 'YUGID2678H', '', '6554', '6788', '', 'shiva@gmail.com', 'JTTS22232823', 'shiva123', '', 'JTTS22232823', 'Union Bank of India', 'KARIMNAGAR', 'UBIN8765678', '768267367728926', '', 'Damodar', 'Hyd', 'Father', '1000', '1961-10-03', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'White Shirt', '30', '', 'Regular Pant', '30', '', 'Steel', '10', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'O+', 'BLOCKED', '', 'Acknowledgement Available', '', 'Yes', '2024-10-10', 'Hyd', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232823empsign.png', 'HYD', 'KARIMNAGAR', 'UBIN8765678', '', '', ''),
(22232824, 'Shiva Ganesh', '1999-07-06', 'male', 'unmarried', 7207161882, 0, 'Damodar', 'Bharathi', '', '', 0, '', '', '446781384742', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232824adharimg', 'Hyd', 'Hyd', 'TS', 'B Tech', '1', '2024-07-10', 'Software engineer', '7546', 'DGKPD4097K', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232824panimg', '467', '456899', '', 'shivaganesh72071@gmail.com', 'JTTS22232824', 'ganesh123', '', 'JTTS22232824', 'Union Bank of India', 'KARIMNAGAR', 'UBIN4563456', '654345687798076', '', 'Damodar', 'Hyd', 'Father', '1000', '1980-10-19', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'White Shirt', '32', '', 'Block Pant', '78', '', 'Fiber', '10', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'O+', 'BLOCKED', '', 'Need to Apply', '', 'Yes', '2024-10-10', 'Hyd', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232824empsign.png', 'Union Bank of India', 'KARIMNAGAR', 'UBIN4563456', '', '', ''),
(22232825, 'asd', '', '', '', 8754215487, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232825', '', '', 'JTTS22232825', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'Jeans Pant', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232826, 'Ganesh', '', '', '', 8754875454, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232826', '', '', 'JTTS22232826', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'T-Shirt Blue', '32', '', 'Jeans', '28', '', 'Metal', '8', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232827, 'sdf', '', 'male', 'unmarried', 9865548754, 0, 'Damodar', 'Bharathi', '', 'Father', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232827', '', '', 'JTTS22232827', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232828, 'Shiva', '', 'male', 'married', 6598875487, 0, '', '', 'Keerthi', 'Wife', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232828', '', '', 'JTTS22232828', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232829, 'Ganesh', '', 'male', 'unmarried', 9887548787, 0, 'Damodar', '', '', 'Father', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232829', '', '', 'JTTS22232829', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232830, 'Shiva', '', 'male', 'married', 6598875487, 0, '', '', 'Keerthi', 'Wife', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232830', '', '', 'JTTS22232830', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232831, 'Keerthi', '', 'female', 'married', 9865875487, 0, '', '', 'Ganesh', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232831', '', '', 'JTTS22232831', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232832, 'afewf', '', 'male', 'unmarried', 98875487545, 0, 'Damodar', 'Bharathi', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232832', '', '', 'JTTS22232832', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232833, 'dsgs', '', '', '', 6598875421, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232833', '', '', 'JTTS22232833', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'White Shirt', '32', '', 'Block-Pant', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232834, 'Shiva Ganesh', '', '', '', 98877548754, 0, '', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232834', '', '', 'JTTS22232834', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'White Shirt', 'XL', '', 'Jeans Pant', '', '', 'Metal', '10', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '2024-10-03', '', '', '', '', '', '', '', '', ''),
(22232835, 'Shiva Ganesh', '2000-02-01', 'male', 'unmarried', 7207161882, 0, 'Damodar', 'Bharathi', '', '', 0, '', '', '548787878787', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232835adharimg', 'HYD', 'HYD', 'TS', 'B.Tech', '1', '2024-07-10', 'Software Engineer', '55477587878', 'DGKPD4097K', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232835panimg', '789779779', '67869969', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232835empimg', 'shiva123@gmail.com', 'JTTS22232835', '548787878787', '', 'JTTS22232835', 'Union Bank of India', 'Karimnagar', 'UBIN0539872', '596584128596385', '', 'Damodar', 'HYD', 'Father', '1000', '1995-06-07', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '32', '', 'Jeans', '28', '', 'Metal', '32', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'Acknowledgement Available', '', '', '2024-10-11', 'Tata', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232835empsign.png', 'Karimnagar', 'HYD', 'Hyderabad', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232835adharphotoback'),
(22232836, 'TEST', '', 'male', 'married', 6598989898, 0, '', '', 'ABC', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232836', '', '', 'JTTS22232836', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232837, 'Ganesh', '1999-07-06', 'male', 'unmarried', 7207161882, 0, 'Damodar', 'Bharathi', '', '', 0, '', '', '446781384742', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232837adharimg', 'HYD', 'HYD', 'TS', 'B.Tech', '1', '2024-07-10', 'Software Engineer', 'UIH99', 'DGKPD4097K', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232837panimg', 'sdf', 'sdf', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232837empimg', 'shiva.accentel@gmail.com', 'JTTS22232837', '446781384742', '', 'JTTS22232837', 'Union Bank of India', 'Karimnagar', 'UBIN0539872', '596584128596385', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232837bankimg', 'Damodar', 'HYD', 'Father', '100000', '1975-06-10', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'Knight frank', 'XL', '', 'Regular Pant', '32', '', 'Fiber', '10', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'Need to Apply', '', '', '2024-10-01', 'Tata', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232837empsign.png', 'Karimnagar', 'Hyderabad', 'Hyderabad', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232837empidcardfront', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232837empidcardback', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232837adharphotoback'),
(22232838, 'Shiva Ganesh', '', 'male', 'married', 8754545454, 0, '', '', 'ABC', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232838', '', '', 'JTTS22232838', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232839, 'Ganesh', '1999-07-06', 'male', 'unmarried', 7207161882, 0, 'Damodar', 'Bharathi', '', '', 0, '', '', '446781384742', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232839', '446781384742', '', 'JTTS22232839', '', '', '', '', '', '', '', '', '', '', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232840, 'Shiva Ganesh', '', 'male', 'unmarried', 9554878787, 0, 'Damodar', 'Bharathi', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232840', '', '', 'JTTS22232840', '', '', '', '', '', 'Damodar', 'HYD', 'Father', '1000', '2024-10-10', '52530163390010607', '', '', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232841, 'ABC', '', 'male', 'married', 9325482100, 0, '', '', 'XYZ', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232841', '', '', 'JTTS22232841', '', '', '', '', '', 'XYZ', 'HYD', 'Spouse', '1000', '', '52530163390010607', 'No', '', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232842, 'Radha', '', 'female', 'married', 9887546554, 0, '', '', 'Krishna', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232842', '', '', 'JTTS22232842', '', '', '', '', '', '', '', '', '', '', '52530163390010607', 'No', 'No', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232843, 'Radha', '', 'female', 'unmarried', 9865326565, 0, 'Raju', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232843', '', '', 'JTTS22232843', '', '', '', '', '', '', '', '', '', '', '52530163390010607', 'Yes', 'Yes', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232844, 'krishna', '', 'male', 'married', 8787875454, 0, '', '', 'Radha', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232844', '', '', 'JTTS22232844', '', '', '', '', '', '', '', '', '', '', '52530163390010607', 'No', 'No', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232845, 'krishna', '', 'male', 'unmarried', 6565655454, 0, 'Raju', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232845', '', '', 'JTTS22232845', '', '', '', '', '', '', '', '', '', '', '52530163390010607', 'Yes', 'No', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232846, 'Radha', '', 'female', 'married', 6532545421, 0, '', '', 'Krishna', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232846', '', '', 'JTTS22232846', '', '', '', '', '', '', '', '', '', '', '52530163390010607', 'No', 'Yes', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232847, 'Radha', '', 'female', 'married', 8787875421, 0, 'Damodar', '', 'Krishna', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232847', '', '', 'JTTS22232847', '', '', '', '', '', 'Krishna', 'HYD', 'Spouse', '100000', '2024-09-30', '52530163390010607', 'No', 'No', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232848, 'Radha', '', 'female', 'unmarried', 8821000049, 0, 'Raju', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232848', '', '', 'JTTS22232848', '', '', '', '', '', 'Raju', 'HYD', 'Father', '100000', '', '52530163390010607', 'No', 'No', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232849, 'krishna', '', 'male', 'married', 8730303026, 0, '', '', 'Radha', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232849', '', '', 'JTTS22232849', '', '', '', '', '', 'Radha', 'HYD', 'Spouse', '1000', '', '52530163390010607', 'Yes', 'No', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232850, 'Krishna', '', 'male', 'unmarried', 6502021545, 0, 'Raju', '', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232850', '', '', 'JTTS22232850', '', '', '', '', '', 'Raju', 'HYD', 'Father', '1000', '', '52530163390010607', 'No', 'No', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232851, 'Husen Nadaf', '', '', '', 6362199118, 0, '', '', '', '', 0, '', '', '', '', '', '', 'KN', '', '', '', '', '', '', '', '', '', '', '', 'JTKN22232851', '', '', 'JTKN22232851', '', '', '', '', '', '', '', '', '', '', '53000163390000607', 'Yes', 'Yes', '', '', 'Others', '', '', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232852, 'Shiva Ganesh', '1999-07-06', 'male', 'unmarried', 7207161882, 0, 'Damodar', 'Bharathi', '', '', 0, '', '', '446781384742', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232852adharimg', 'Hyderabad', 'Hyderabad', 'TS', 'B.Tech', '1', '2024-07-10', 'Software Engineer', '1234 5678 9101', 'DGKPD4097K', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232852panimg', '1234-5678-900-1234', 'TS/HYD/12345/001', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232852empimg', 'shiva.accentel@gmail.com', 'JTTS22232852', '446781384742', '', 'JTTS22232852', 'Union Bank of India', 'Karimnagar', 'UBIN0539872', '659848525589658', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232852bankimg', 'Damodar', 'Hyderabad', 'Father', '100000', '1975-10-10', '52530163390010607', 'Yes', 'Yes', '', '', 'Others', '', 'resigned', '', 'Knight frank', 'XL', '', 'Regular Pant', '32', '', 'Steel', '10', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'Acknowledgement Available', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232852licimg', '', '2024-10-10', 'Tata', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232852empfingerprint', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232852empsign.png', 'Karimnagar', 'Hyderabad', 'Hyderabad', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232852adharphotoback'),
(22232853, 'Radha', '', 'female', 'married', 8754545400, 0, '', '', 'Krishna', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232853', '', '', 'JTTS22232853', '', '', '', '', '', 'Krishna', 'Hyderabad', 'spouse', '1000', '1977-10-06', '52530163390010607', 'No', 'No', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'Jeans', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'BLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', ''),
(22232854, 'Testing', '1999-01-01', 'male', 'unmarried', 6985698547, 0, 'Kalyan', 'Vani', '', 'Mother', 0, '', '', '365560539828', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232854adharimg', 'Madhapur, Hyderabad', 'Hyderabad', 'TS', 'B.Tech', '1 Year', '2024-10-11', 'Junior Softwrae Developer', '98569745', 'lohgv6985', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232854panimg', '2547896', '3695874', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232854empimg', 'testing@gmail.com', 'JTTS22232854', '365560539828', '', 'JTTS22232854', 'State Bank Of India', 'Chirala', 'sbin0015024', '32769341978', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232854bankimg', 'Prasanth', 'Nallagandla,Hyderabad', 'Brother', '500000', '1995-11-02', '52530163390010607', 'Yes', 'Yes', '', '', 'Others', '', 'resigned', '', 'T-Shirt Blue', 'S', '', 'Jeans Pant', '30', '', 'Metal', '9', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '2024-10-12', 'Accentel', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232854empsign.png', 'Chirala,AP', 'Madhapur, Hyderabad', 'Madhapur, Hyderabad', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232854empidcardfront', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232854empidcardback', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232854adharphotoback'),
(22232855, 'Radha', '', 'female', 'married', 8721013232, 0, '', '', 'Krishna', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', '', '', 'JTTS22232855', '', '', 'JTTS22232855', '', '', '', '', '', 'Krishna', 'Hyderabad', 'Spouse', '1000', '', '52530163390010607', 'No', 'No', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', '', '', 'NA', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `emp` (`empid`, `emp_name`, `DOB`, `gender`, `maritalstatus`, `contactno`, `alternateno`, `fname`, `mname`, `wname`, `relation`, `rno`, `nok`, `childname`, `adharcardno`, `adharphoto`, `address`, `city`, `state`, `qualification`, `experience`, `DOJ`, `designation`, `uan`, `pan`, `panphoto`, `ESI_NO`, `PFNO`, `photo`, `emp_email`, `username`, `password`, `user`, `employeeid`, `bname`, `branch`, `ifsc`, `accno`, `bphoto`, `nname`, `naddress`, `nrelation`, `namount`, `ndob`, `esic_number`, `pensionscheme`, `pfscheme`, `loggedin`, `roles`, `category`, `DOR`, `status`, `reason`, `tshirt`, `tsize`, `tshtdt`, `phant`, `psize`, `phtdt`, `sshoes`, `ssize`, `shoesdt`, `idcard`, `idcarddt`, `appointmentcategory`, `sal_th`, `apt_date`, `file`, `start_date`, `last_date`, `reason1`, `reason2`, `reason3`, `reason4`, `bg`, `stat`, `default`, `licensestatus`, `licimg`, `uniform`, `uniformisdate`, `sitename`, `empfingerprint`, `empsign`, `permaddress`, `localaddress`, `refeaddress`, `empidcardfront`, `empidcardback`, `adharphotoback`) VALUES
(22232856, 'Shiva Ganesh', '1999-07-06', 'male', 'unmarried', 7207161882, 0, 'Damodar', 'Bharathi', '', '', 0, '', '', '446781384742', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232856adharimg', 'HYD', 'HYD', 'TS', 'B.Tech', '1', '2024-12-10', 'Software Engineer', '1234567892', 'DGKPD4097K', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232856panimg', '46843687743', '43869547467', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232856empimg', 'shiva.accentel@gmail.com', 'JTTS22232856', '446781384742', '', 'JTTS22232856', 'Union Bank of India', 'Karimnagar', 'UBIN0539872', '398702010014065', '', 'Damodar', 'HYD', 'Father', '1000', '1975-10-10', '52530163390010607', 'No', 'No', '', '', 'Others', '', 'resigned', '', 'Knight frank', 'XL', '', 'Regular Pant', '28', '', 'Steel', '8', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'Acknowledgement Available', '', '', '2024-01-01', 'Tata', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232856empsign.png', 'Karimnagar', 'Hyderabad', 'Hyderabad', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232856adharphotoback'),
(22232857, 'Lipun kumar behera', '1995-01-04', 'male', 'unmarried', 8658646498, 9040661333, 'Bibhuti bhusana behera', 'Pinakshi behera', '', '', 7750864833, '', '', '9669 8682 8575', '', 'S/O Bibhuti bhusana behera ,Torasingh,Panchugaon,khordha,Odisha,Banpur,752035', 'Bhubaneswar', 'KN', 'Diploma Electrical Engineering', '7y', '2024-05-07', 'Technical supervisor', '101327300364', 'BQQPB7304B', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232857panimg', '', 'KN/23605/26424', '', 'lipunbehera646@gmail.com', 'JTKN22232857', 'L@123456', '', 'JTKN22232857', 'Punjab National Bank', 'Banpur', 'PUNB002255', '22550001000135022', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232857bankimg', 'Pinakshi behera', 'Torasingh, Panchugaon , khordha,odisha,Banpur,752035', 'Mother', '100%', '1976-01-01', '53000163390000607', 'Yes', 'Yes', '', '', 'Others', '', '', '', 'T-Shirt Block', '38', '', 'Block Pant', '34', '', 'Steel', '9', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+', 'BLOCKED', '', 'Available', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232857licimg', '', '2024-05-07', 'Kodathi,Wipro', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232857empfingerprint', 'http://jtechnoassociates.in/hrms//empphotos/JTKN22232857empsign.png', 'Torasingh, Panchugaon, khordha Odisha,Banpur,752035', 'Hadosidapura, carmelaram, Bangalore 560035', 'Hadosidapura, carmelaram, Bangalore,560035', '', '', ''),
(22232858, 'Athik rahiman', '2001-05-30', 'male', 'unmarried', 9742594491, 0, 'SHAHUL HAMEED', 'BEEBI', '', '', 9740107845, '', '', '325517623810', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232858adharimg', 'Koornadka house,darbe post , puttur taluq, Dakshina kannada', 'Puttur', 'KN', 'DIPLOMA', '3 years', '2024-08-01', 'Technical supervisor', '101862982719', 'GSIPR7102G', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232858panimg', '4941085418', 'KN/23605/26641', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232858empimg', 'atkrman02@gmail.com', 'JTKN22232858', 'Atkjtechno', '', 'JTKN22232858', 'Union Bank', 'Darbe, puttur', 'UBIN0920029', '520101024468688', '', 'SHAHUL HAMEED', 'Koornadka house, darbe post, puttur taluq, Dakshina kannada, Karnataka', 'Father', '', '1971-01-01', '53000163390000607', 'Yes', 'Yes', '', '', 'Others', '', '', '', 'White Shirt', '36', '', 'Block Pant', '30', '', 'metal', '6', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'A+', 'BLOCKED', '', 'Available', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232858licimg', '', '2024-08-01', 'Kodathi wipro', '', 'http://jtechnoassociates.in/hrms//empphotos/JTKN22232858empsign.png', 'Koornadka house, darbe post, puttur taluq, Dakshina kannada,', 'Kodathi gate, Sarjapur road', 'Kodathi gate, Sarjapur road', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232858adharphotoback'),
(22232859, 'Sabareesh S K', '2001-04-21', 'male', 'unmarried', 7411307728, 0, 'Subramaniyan M', 'Kannika S', '', '', 8217646006, '', '', '956749731965', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232859adharimg', 'Kenchikoppa, Halasur (PO),Tarikere(TK) Chickamagalur (Dist) Karnataka - 577144', 'Chikkamagalur', 'KN', 'Dilplamo', '1 year', '2024-11-15', 'BMS OPERATOR', '101659402064', 'NMQPS7143B', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232859panimg', '5135110623', '', '', 'sabareeshsk253@gmail.com', 'JTKN22232859', 'sabisowmi218', '', 'JTKN22232859', 'Kotak Mahindra Bank', 'Bommanahalli', 'KKBK0008057', '3547499368', '', 'Sabareesh SK', 'Kenchikoppa , Halasur (PO) Chikamagalur', 'Unmarried', 'Full', '2001-04-21', '53000163390000607', 'Yes', 'Yes', '', '', 'Others', '', '', '', 'White Shirt', 'XL', '', 'Block Pant', '32', '', 'Fiber', '9', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B+', 'BLOCKED', '', 'NA', '', '', '2024-11-16', 'Kodthi wipro', '', 'http://jtechnoassociates.in/hrms//empphotos/JTKN22232859empsign.png', 'Kenchikoppa Halasur (p)', 'Sarjapur', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232859adharphotoback'),
(22232860, 'Prasen', '1999-04-03', 'male', 'unmarried', 7569742529, 0, 'Devid', 'Vani Kumari', '', '', 9160608942, '', '', '632545987456', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232860adharimg', '', '', 'TS', 'B.Tech', '1 Year', '2025-02-25', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232860panimg', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232860empimg', 'gaddalakalyan007@gmail.com', 'JTTS22232860', '', '', 'JTTS22232860', '', '', '', '', '', '', '', '', '', '', '52530163390010607', 'Yes', 'Yes', '', '', 'Others', '', 'resigned', '', 'T-Shirt Blue', 'S', '', 'Jeans', '30', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'B +ve', 'BLOCKED', '', 'NA', '', '', '', '', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232860empsign.png', '', '', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232860adharphotoback'),
(22232861, 'Shiva Ganesh Dubba', '1999-07-06', 'male', 'unmarried', 7207161882, 0, 'Damodar', 'Bharathi', '', 'Father', 0, '', '', '446781384742', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232861adharimg', 'HYD', 'HYD', 'TS', 'Btech', '2', '2024-07-10', 'software', 'SDG3', 'DGKPD4097K', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232861panimg', 'DK4', 'SDK3', '', 'shiva13@gmail.com', 'JTTS22232861', '446781384742', '', 'JTTS22232861', 'Union Bank', 'HYDERABAD', 'UBIN8965412', '895412589965412', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232861bankimg', 'Damodar', 'HYD', 'Father', '100000', '1996-06-04', '52530163390010607', 'Yes', 'Yes', '', '', 'Others', '', 'resigned', '', 'T-Shirt Block', 'M', '', 'Jeans', '32', '', 'Fiber', '10', '', '', '', 'Meeting', '20000', '2025-03-21', 'AnnexureD.pdf', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'Available', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232861licimg', '', '2025-03-04', 'Accentel', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232861empfingerprint', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232861empsign.png', 'Union Bank', 'HYDERABAD', 'UBIN8965412', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232861empidcardfront', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232861empidcardback', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232861adharphotoback'),
(22232862, 'Testing', '2024-07-04', 'male', 'unmarried', 7569742529, 0, '', '', '', 'Father', 8956874569, '', '', '8974569745', '', 'cvhnbsfc,gtbvewdew', '', 'KN', '', '', '', 'Junior Developer', '', '', '', '', '', '', '', 'JTKN22232862', '8974569745', '', 'JTKN22232862', '', 'Basheerbagh', '', '', '', '', '', '', '', '', '53000163390000607', 'Yes', 'Yes', '', '', 'Others', '', '', '', 'T-Shirt Block', '', '', 'Jeans', '', '', 'Fiber', '', '', '', '', 'HR', '15000/-', '2025-03-22', 'Prasen Signature.jpeg', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', 'http://jtechnoassociates.in/hrms//empphotos/JTKN22232862empsign.png', '', '', '', '', '', ''),
(22232863, 'shiva', '', 'male', 'unmarried', 7207161882, 0, 'Damodar', 'Bharathi', '', '', 0, '', '', '', '', '', '', 'TS', '', '', '', '', '', '', '', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTTS22232863empimg', '', 'JTTS22232863', '', '', 'JTTS22232863', '', '', '', '', '', '', '', '', '', '', '52530163390010607', 'Yes', 'Yes', '', '', 'Others', '', '', '', 'T-Shirt Block', '', '', 'Jeans', '', '', 'Fiber', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 'UNBLOCKED', '', 'NA', '', '', '', '', '', 'http://jtechnoassociates.in/hrms//empphotos/JTTS22232863empsign.png', '', '', '', '', '', ''),
(22232864, 'Rakshith V', '2003-04-12', 'male', 'unmarried', 8095122964, 0, 'Venkatesh', 'Obalamma', '', '', 0, '', '', '369905758851', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232864adharimg', '#310, 7th Cross, KR NAGAR, Choodasandra Circle Road,Sarjapura Road, Bangalore, Karnataka-560099', 'Bangalore', 'KN', 'Bachelor of commerce', 'Fresher', '2025-02-21', 'Admin executive', '7001227890', 'Ewt4t8890jm', '', '4y36788nl', 'Hdhshjs88377', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232864empimg', 'Rakshithv450@gmail.com', 'JTKN22232864', '', '', 'JTKN22232864', 'Union bank', 'Kasavanahalli', 'Ydgh890pquu5', 'T5366667778', '', 'Venkatesh', '#310, 7th Cross, KR NAGAR, Choodasandra Circle Road,Sarjapura Road, Bangalore, Karnataka-560099', 'Father', '100%', '2003-04-12', '53000163390000607', 'Yes', 'Yes', '', '', 'Others', '', '', '', 'T-Shirt Block', 'M', '', 'Jeans', '32', '', 'Fiber', '7', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'A+', 'BLOCKED', '', 'NA', '', '', '2025-02-19', 'Jtechno', '', 'http://jtechnoassociates.in/hrms//empphotos/JTKN22232864empsign.png', 'Union bank', 'Kasavanahalli', 'Sarjapura', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232864adharphotoback'),
(22232865, 'Shwetha S', '1999-12-19', 'female', 'unmarried', 7829253025, 0, 'Shankarappa', 'Ratnamma', '', '', 8722285468, '', '', '308201178226', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232865adharimg', '#17 Suresh building BWSSB road challaghatta yamlur post Bangalore :-560037', 'Bangalore', 'KN', 'B. E', '1 year', '2025-03-17', 'Admin Executive', '102046775501', 'OTJPS5545G', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232865panimg', '5789', '123456', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232865empimg', 'shwethagowda0119@gmail.com', 'JTKN22232865', '', '', 'JTKN22232865', 'Canara bank', 'Koramangala', 'Cnrb0010546', '110109831686', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232865bankimg', 'Ratnamma', '#17 suresh building bwssb road challaghatta yamlur post Bangalore', 'Mother', '100', '2025-03-11', '53000163390000607', 'Yes', 'Yes', '', '', 'Others', '', '', '', 'T-Shirt Blue', '28', '', 'Regular Pant', '28', '', 'Fiber', '7', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'A+', 'BLOCKED', '', 'Need to Apply', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232865licimg', '', '2025-03-24', 'Jetchno', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232865empfingerprint', 'http://jtechnoassociates.in/hrms//empphotos/JTKN22232865empsign.png', 'Canara bank', 'Koramangala', 'Cnrb0010546', '', '', 'http://jtechnoassociates.in/hrms/empphotos/JTKN22232865adharphotoback');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empid` int(11) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `maritalstatus` varchar(20) NOT NULL,
  `contactno` varchar(20) NOT NULL,
  `alternateno` int(20) NOT NULL,
  `fname` varchar(500) NOT NULL,
  `mname` varchar(500) NOT NULL,
  `wname` varchar(500) NOT NULL,
  `relation` varchar(500) NOT NULL,
  `rno` bigint(20) NOT NULL,
  `nok` varchar(100) NOT NULL,
  `childname` varchar(500) NOT NULL,
  `adharcardno` int(20) NOT NULL,
  `adharphoto` varchar(300) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `experience` varchar(20) NOT NULL,
  `DOJ` int(20) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `uan` varchar(500) NOT NULL,
  `pan` varchar(500) NOT NULL,
  `panphoto` varchar(300) NOT NULL,
  `ESI_NO` varchar(20) NOT NULL,
  `PFNO` varchar(20) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `emp_email` varchar(60) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user` varchar(30) NOT NULL,
  `employeeid` varchar(30) NOT NULL,
  `bname` varchar(500) NOT NULL,
  `branch` varchar(500) NOT NULL,
  `ifsc` varchar(500) NOT NULL,
  `accno` varchar(500) NOT NULL,
  `bphoto` varchar(500) NOT NULL,
  `level1` varchar(100) NOT NULL,
  `level2` varchar(100) NOT NULL,
  `level3` varchar(100) NOT NULL,
  `level4` varchar(100) NOT NULL,
  `level5` varchar(100) NOT NULL,
  `level6` varchar(100) NOT NULL,
  `level7` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employeetoollist`
--

CREATE TABLE `employeetoollist` (
  `id` int(11) NOT NULL,
  `id1` int(11) NOT NULL,
  `employeeid` varchar(200) NOT NULL,
  `name` varchar(500) NOT NULL,
  `toolname` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `state` varchar(500) NOT NULL,
  `returned` varchar(100) NOT NULL DEFAULT 'No',
  `due` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_ids`
--

CREATE TABLE `emp_ids` (
  `id` int(100) NOT NULL,
  `new_empid` varchar(500) NOT NULL,
  `old_empid` varchar(500) NOT NULL,
  `state` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `edate` date NOT NULL,
  `state` varchar(20) NOT NULL,
  `expdesc` varchar(255) NOT NULL,
  `amount` float(10,2) NOT NULL,
  `file` varchar(255) NOT NULL,
  `user` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Pending',
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expensesmanager`
--

CREATE TABLE `expensesmanager` (
  `id` int(11) NOT NULL,
  `productname` varchar(500) NOT NULL,
  `quantity` varchar(500) NOT NULL,
  `price` int(11) NOT NULL,
  `supplier` varchar(1000) NOT NULL,
  `givento` varchar(1000) NOT NULL,
  `date` varchar(500) NOT NULL,
  `month` int(11) NOT NULL,
  `type` varchar(500) NOT NULL,
  `expensetype` varchar(1000) NOT NULL,
  `shopid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hrms_admin_login`
--

CREATE TABLE `hrms_admin_login` (
  `id` int(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `empname` varchar(100) NOT NULL,
  `hint` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hrms_login`
--

CREATE TABLE `hrms_login` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `empname` varchar(100) NOT NULL,
  `hint` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hrms_login`
--

INSERT INTO `hrms_login` (`id`, `user`, `pwd`, `empname`, `hint`) VALUES
(1, 'admin', 'c8370ad37d0828c82a46f623b5ea225e', 'admin', '3691215');

-- --------------------------------------------------------

--
-- Table structure for table `hr_user`
--

CREATE TABLE `hr_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `emp_id` varchar(100) NOT NULL,
  `menus` varchar(100) NOT NULL,
  `currentdate` datetime NOT NULL,
  `auth_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `user` varchar(30) NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `shippingto` text NOT NULL,
  `billingto` text NOT NULL,
  `e1` varchar(50) NOT NULL,
  `e2` varchar(50) NOT NULL,
  `e3` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location_districts`
--

CREATE TABLE `location_districts` (
  `id` int(11) NOT NULL,
  `state_id` varchar(100) NOT NULL,
  `districts` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location_states`
--

CREATE TABLE `location_states` (
  `id` int(11) NOT NULL,
  `state` varchar(100) NOT NULL,
  `cname` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menuid` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryid` int(11) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `shopid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notificationdetails`
--

CREATE TABLE `notificationdetails` (
  `id` int(11) NOT NULL,
  `ticker` varchar(100) NOT NULL,
  `message` varchar(5000) NOT NULL,
  `datetime` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `shopid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `menuname` varchar(100) DEFAULT NULL,
  `itemcount` int(11) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `price` float DEFAULT NULL,
  `timeoforder` date DEFAULT NULL,
  `authby` varchar(200) NOT NULL,
  `payment_mode` varchar(500) NOT NULL DEFAULT 'cash',
  `timestampserver` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `id` int(11) NOT NULL,
  `org_name` varchar(50) NOT NULL,
  `org_address` varchar(255) NOT NULL,
  `org_email` varchar(30) NOT NULL,
  `org_phone` bigint(12) NOT NULL,
  `org_mobile` bigint(12) NOT NULL,
  `org_url` varchar(150) NOT NULL,
  `org_code` varchar(15) NOT NULL,
  `vendor_name` text NOT NULL,
  `ap_address` text NOT NULL,
  `vendor_code` varchar(500) NOT NULL,
  `vendor_name1` text NOT NULL,
  `tg_address` text NOT NULL,
  `vendor_code1` varchar(500) NOT NULL,
  `vendor_name2` varchar(100) NOT NULL,
  `kl_address` varchar(255) NOT NULL,
  `vendor_code2` varchar(500) NOT NULL,
  `kl_gst` varchar(30) NOT NULL,
  `kl_pan` varchar(500) NOT NULL,
  `ap_gst` varchar(50) NOT NULL,
  `ap_pan` varchar(500) NOT NULL,
  `tg_gst` varchar(50) NOT NULL,
  `tg_pan` varchar(500) NOT NULL,
  `vendor_name3` varchar(500) NOT NULL,
  `tn_address` varchar(256) NOT NULL,
  `tn_gst` varchar(256) NOT NULL,
  `tn_pan` varchar(500) NOT NULL,
  `vendor_code3` varchar(500) NOT NULL,
  `vendor_name4` varchar(500) NOT NULL,
  `kn_address` varchar(255) NOT NULL,
  `kn_gst` varchar(50) NOT NULL,
  `kn_pan` varchar(500) NOT NULL,
  `vendor_code4` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qutcount`
--

CREATE TABLE `qutcount` (
  `id` int(11) NOT NULL,
  `state` varchar(10) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `phoneno` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `category` varchar(500) NOT NULL,
  `state` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `date` varchar(500) NOT NULL,
  `time` varchar(500) NOT NULL,
  `loggedin` varchar(500) NOT NULL DEFAULT 'nactive',
  `designation` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `pfnumber` varchar(30) NOT NULL,
  `pfuan` varchar(30) NOT NULL,
  `esinumber` varchar(30) NOT NULL,
  `acno` varchar(30) NOT NULL,
  `absents` varchar(10) NOT NULL,
  `basic` float(10,2) NOT NULL,
  `others` float(10,2) NOT NULL,
  `takehome` float(10,2) NOT NULL,
  `daf` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shopdetails`
--

CREATE TABLE `shopdetails` (
  `shopid` int(11) NOT NULL,
  `shopname` varchar(500) NOT NULL,
  `shopphone` bigint(20) NOT NULL,
  `shopaddress` varchar(1000) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ownername` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `salt` varchar(1000) NOT NULL,
  `firebasetoken` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stockentry`
--

CREATE TABLE `stockentry` (
  `orderid` int(11) NOT NULL,
  `shopid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `menuname` varchar(100) DEFAULT NULL,
  `itemcount` int(11) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `price` float DEFAULT NULL,
  `timeoforder` date DEFAULT NULL,
  `authby` varchar(200) NOT NULL,
  `payment_mode` varchar(500) NOT NULL DEFAULT 'cash',
  `timestampserver` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(100) NOT NULL DEFAULT 'stock'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subcategoryid` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `categoryname` varchar(100) DEFAULT NULL,
  `shopid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tool`
--

CREATE TABLE `tool` (
  `id` int(11) NOT NULL,
  `tcname` varchar(500) CHARACTER SET latin1 NOT NULL,
  `tname` varchar(200) CHARACTER SET latin1 NOT NULL,
  `tprice` varchar(500) CHARACTER SET latin1 NOT NULL,
  `total_qty` varchar(500) NOT NULL,
  `bal_qty` varchar(500) NOT NULL,
  `state` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tool_phr_master`
--

CREATE TABLE `tool_phr_master` (
  `id` int(50) NOT NULL,
  `id1` int(50) NOT NULL,
  `date` date NOT NULL,
  `toolname` text NOT NULL,
  `rate` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `baseamount` int(11) NOT NULL,
  `gstamnt` varchar(200) NOT NULL,
  `state` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `userid` int(11) NOT NULL,
  `shopid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `useremail` varchar(500) NOT NULL,
  `userphone` varchar(20) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `firebasetoken` varchar(1000) NOT NULL,
  `type` varchar(100) NOT NULL,
  `category_permission` varchar(1000) NOT NULL DEFAULT 'all',
  `passwordcheck` varchar(100) NOT NULL DEFAULT 'admin'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_ao`
--
ALTER TABLE `add_ao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_noc`
--
ALTER TABLE `add_noc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_po`
--
ALTER TABLE `add_po`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_po1`
--
ALTER TABLE `add_po1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_tool_phr`
--
ALTER TABLE `add_tool_phr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `afm`
--
ALTER TABLE `afm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allocations`
--
ALTER TABLE `allocations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignedtools`
--
ALTER TABLE `assignedtools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryid`),
  ADD KEY `shopid` (`shopid`);

--
-- Indexes for table `cattool`
--
ALTER TABLE `cattool`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deployment_records`
--
ALTER TABLE `deployment_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `employeetoollist`
--
ALTER TABLE `employeetoollist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_ids`
--
ALTER TABLE `emp_ids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expensesmanager`
--
ALTER TABLE `expensesmanager`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `shopid` (`shopid`);

--
-- Indexes for table `hrms_admin_login`
--
ALTER TABLE `hrms_admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hrms_login`
--
ALTER TABLE `hrms_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_user`
--
ALTER TABLE `hr_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_hr_user_1` (`emp_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_districts`
--
ALTER TABLE `location_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_states`
--
ALTER TABLE `location_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menuid`),
  ADD KEY `fkmencatid` (`categoryid`),
  ADD KEY `fkmensubcatid` (`subcategoryid`);

--
-- Indexes for table `notificationdetails`
--
ALTER TABLE `notificationdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`,`shopid`,`menuid`),
  ADD KEY `menuid` (`menuid`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qutcount`
--
ALTER TABLE `qutcount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopdetails`
--
ALTER TABLE `shopdetails`
  ADD PRIMARY KEY (`shopid`);

--
-- Indexes for table `stockentry`
--
ALTER TABLE `stockentry`
  ADD PRIMARY KEY (`orderid`,`shopid`,`menuid`),
  ADD KEY `menuid` (`menuid`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcategoryid`),
  ADD KEY `fksubcatid` (`categoryid`);

--
-- Indexes for table `tool`
--
ALTER TABLE `tool`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tool_phr_master`
--
ALTER TABLE `tool_phr_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `shopid` (`shopid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_ao`
--
ALTER TABLE `add_ao`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_noc`
--
ALTER TABLE `add_noc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_po`
--
ALTER TABLE `add_po`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_po1`
--
ALTER TABLE `add_po1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_tool_phr`
--
ALTER TABLE `add_tool_phr`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `afm`
--
ALTER TABLE `afm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `allocations`
--
ALTER TABLE `allocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignedtools`
--
ALTER TABLE `assignedtools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cattool`
--
ALTER TABLE `cattool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22232866;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeetoollist`
--
ALTER TABLE `employeetoollist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_ids`
--
ALTER TABLE `emp_ids`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expensesmanager`
--
ALTER TABLE `expensesmanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrms_admin_login`
--
ALTER TABLE `hrms_admin_login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrms_login`
--
ALTER TABLE `hrms_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hr_user`
--
ALTER TABLE `hr_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location_districts`
--
ALTER TABLE `location_districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location_states`
--
ALTER TABLE `location_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menuid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notificationdetails`
--
ALTER TABLE `notificationdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tool_phr_master`
--
ALTER TABLE `tool_phr_master`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
