-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 04, 2018 at 04:58 AM
-- Server version: 5.5.38-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `grading`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `sem` varchar(50) NOT NULL,
  `teacher` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `SY` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `course`, `year`, `section`, `sem`, `teacher`, `subject`, `SY`) VALUES
(1, '', 'I', 'A', '', '1', 'Filipino', '2018-2019'),
(2, '', 'II', 'B', '', '8', 'English', '2018-2019');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(50) NOT NULL,
  `activity` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=281 ;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `date`, `activity`) VALUES
(24, '11-27-2014', 'update password of username admin'),
(25, '11-27-2014', 'update password of username 0001-2014'),
(26, '11-27-2014', 'add new teacher af df'),
(27, '11-27-2014', 'update teacher afsdfs dfsdf'),
(28, '11-27-2014', 'delete afsdfs from teacher'),
(29, '03-05-2018 01:20:57 AM', 'update password of username admin'),
(30, '03-05-2018 01:21:01 AM', 'admin logged out.'),
(31, '03-05-2018 01:22:03 AM', 'admin logged out.'),
(32, '03-05-2018 01:26:31 AM', 'add account with the username of 12345'),
(33, '03-05-2018 01:27:10 AM', 'add new teacher Johann Alpapara'),
(34, '03-05-2018 01:28:21 AM', 'add account with the username of 00001'),
(35, '03-05-2018 01:28:50 AM', 'add account with the username of 00001'),
(36, '03-05-2018 01:38:30 AM', 'update subject IT100 - IT Fundamentals'),
(37, '03-05-2018 01:49:09 AM', 'update class BSIT I - C with the subject of IT103'),
(38, '03-05-2018 01:50:07 AM', 'admin logged out.'),
(39, '03-05-2018 01:52:00 AM', '00001 logged out.'),
(40, '03-05-2018 02:02:05 AM', 'create new class BSIT I - A with the subject of IT113'),
(41, '03-05-2018 02:08:37 AM', 'admin logged out.'),
(42, '03-05-2018 02:09:13 AM', '0023-2008 logged out.'),
(43, '03-05-2018 02:10:20 AM', 'admin logged out.'),
(44, '03-05-2018 02:11:09 AM', '0823-0000 logged out.'),
(45, '03-05-2018 02:12:41 AM', 'admin logged out.'),
(46, '03-05-2018 02:15:20 AM', '12345 logged out.'),
(47, '03-05-2018 02:16:51 AM', 'admin logged out.'),
(48, '03-05-2018 02:17:49 AM', '12345 logged out.'),
(49, '03-05-2018 02:17:55 AM', 'admin logged out.'),
(50, '03-05-2018 02:19:20 AM', 'admin logged out.'),
(51, '03-05-2018 10:53:10 PM', 'admin logged out.'),
(52, '03-05-2018 10:54:07 PM', '12345 logged out.'),
(53, '03-08-2018 04:38:17 AM', 'admin logged out.'),
(54, '03-08-2018 04:39:42 AM', '12345 logged out.'),
(55, '03-08-2018 04:46:47 AM', 'add student Cherry Aguaviva to class BSIT I-A with the subject of IT113'),
(56, '03-08-2018 04:47:21 AM', 'assign teacher James Castillo to class BSIT I-A with the subject of IT113'),
(57, '03-08-2018 04:53:59 AM', 'add student Cherry Aguaviva to class BSIT I-A with the subject of IT113'),
(58, '03-08-2018 04:56:30 AM', 'update password of username admin'),
(59, '03-08-2018 04:56:37 AM', 'admin logged out.'),
(60, '03-08-2018 09:10:50 AM', 'assign teacher James Castillo to class BSIT I-A with the subject of IT113'),
(61, '03-08-2018 09:11:45 AM', 'admin logged out.'),
(62, '03-08-2018 09:12:53 AM', '12345 calculated the grades of Jimmy Lomocso in IT100 in prelim'),
(63, '03-08-2018 09:13:35 AM', '12345 logged out.'),
(64, '03-08-2018 11:04:22 PM', 'update password of username admin'),
(65, '03-08-2018 11:04:34 PM', 'admin logged out.'),
(66, '03-09-2018 09:01:14 AM', 'update password of username admin'),
(67, '03-09-2018 09:01:19 AM', 'admin logged out.'),
(68, '03-09-2018 09:10:48 AM', 'add new student John Doe'),
(69, '03-09-2018 09:11:53 AM', 'add account with the username of 2018-100001'),
(70, '03-09-2018 09:12:40 AM', 'admin logged out.'),
(71, '03-09-2018 09:14:02 AM', '2018-100001 logged out.'),
(72, '03-09-2018 09:18:35 AM', '2018-100001 changes his/her password.'),
(73, '03-09-2018 09:22:41 AM', '2018-100001 logged out.'),
(74, '03-09-2018 10:45:21 PM', '12345 logged out.'),
(75, '03-09-2018 10:47:43 PM', 'assign teacher James Castillo to class BSIT I-A with the subject of IT113'),
(76, '03-09-2018 10:47:55 PM', 'add student John Doe to class BSIT I-A with the subject of IT113'),
(77, '03-09-2018 10:48:07 PM', 'admin logged out.'),
(78, '03-15-2018 05:15:38 AM', '12345 calculated the grades of Rolan Algara in IT100 in third'),
(79, '03-15-2018 05:15:46 AM', '12345 calculated the grades of Rolan Algara in IT100 in third'),
(80, '03-20-2018 01:54:53 AM', 'add new subject Filipino - Filipino Subject'),
(81, '03-20-2018 01:56:31 AM', 'add new subject English - English Subject'),
(82, '03-20-2018 01:56:59 AM', 'add new subject Mathematics - Mathematics Subject'),
(83, '03-20-2018 01:57:13 AM', 'add new subject Science - Science Subject'),
(84, '03-20-2018 01:57:40 AM', 'add new subject Araling Panlipunan - Araling Panlipunan Subject'),
(85, '03-20-2018 01:58:13 AM', 'add new subject Edukasyon sa Pagpapakatao - Edukasyon sa Pagpapakatao (EsP) Subject'),
(86, '03-20-2018 01:58:24 AM', 'add new subject Music - Music Subject'),
(87, '03-20-2018 01:58:37 AM', 'add new subject Arts - Arts Subject'),
(88, '03-20-2018 01:59:03 AM', 'add new subject Physical Education - Physical Education (PE) Subject'),
(89, '03-20-2018 01:59:18 AM', 'add new subject Health - Health Subject'),
(90, '03-20-2018 01:59:36 AM', 'add new subject Edukasyong Pantahanan at Pangkabuhayan (EPP) - Edukasyong Pantahanan at Pangkabuhaya'),
(91, '03-20-2018 01:59:55 AM', 'add new subject Technology and Livelihood Education (TLE) - Technology and Livelihood Education (TLE'),
(92, '03-20-2018 02:00:00 AM', 'delete IT100 from subject'),
(93, '03-20-2018 02:00:05 AM', 'delete IT103 from subject'),
(94, '03-20-2018 02:00:09 AM', 'delete IT104 from subject'),
(95, '03-20-2018 02:00:14 AM', 'delete IT113 from subject'),
(96, '03-20-2018 02:01:07 AM', 'update subject Edukasyon sa Pagpapakatao (EsP) - Edukasyon sa Pagpapakatao (EsP) Subject'),
(97, '03-20-2018 02:01:37 AM', 'delete IT113 from class'),
(98, '03-20-2018 02:01:40 AM', 'delete IT103 from class'),
(99, '03-20-2018 02:01:42 AM', 'delete IT100 from class'),
(100, '03-20-2018 02:01:45 AM', 'delete IT100 from class'),
(101, '03-20-2018 02:01:47 AM', 'delete IT104 from class'),
(102, '03-20-2018 02:01:48 AM', 'delete IT103 from class'),
(103, '03-20-2018 02:01:50 AM', 'delete IT113 from class'),
(104, '03-20-2018 02:02:04 AM', 'delete Cherry from student'),
(105, '03-20-2018 02:02:07 AM', 'delete Rolan from student'),
(106, '03-20-2018 02:02:09 AM', 'delete John from student'),
(107, '03-20-2018 02:02:11 AM', 'delete Fernando from student'),
(108, '03-20-2018 02:02:12 AM', 'delete Jimmy from student'),
(109, '03-20-2018 02:02:14 AM', 'delete Mark from student'),
(110, '03-20-2018 02:02:18 AM', 'delete Johann from teacher'),
(111, '03-20-2018 02:02:21 AM', 'delete James from teacher'),
(112, '03-20-2018 02:02:23 AM', 'delete Jimmy from teacher'),
(113, '03-20-2018 02:02:26 AM', 'delete Robert from teacher'),
(114, '03-20-2018 02:02:43 AM', 'delete 0001-2014 from userdata'),
(115, '03-20-2018 02:02:46 AM', 'delete 00001 from userdata'),
(116, '03-20-2018 02:02:49 AM', 'delete 0023-2008 from userdata'),
(117, '03-20-2018 02:02:51 AM', 'delete 12345 from userdata'),
(118, '03-20-2018 02:02:54 AM', 'delete 2018-100001 from userdata'),
(119, '03-20-2018 02:02:56 AM', 'delete 0823-0000 from userdata'),
(120, '03-20-2018 02:02:58 AM', 'delete 0827-2007 from userdata'),
(121, '03-20-2018 02:03:00 AM', 'delete 0983-2007 from userdata'),
(122, '03-20-2018 02:03:02 AM', 'delete 9082-2006 from userdata'),
(123, '03-20-2018 09:57:55 AM', 'add new teacher Moises Panonce'),
(124, '03-20-2018 09:58:15 AM', 'add new teacher Maureo Ventura'),
(125, '03-20-2018 09:58:35 AM', 'add new teacher Dane Lingao'),
(126, '03-20-2018 09:58:53 AM', 'add new teacher Bailey Capistrano'),
(127, '03-20-2018 09:59:09 AM', 'add new teacher Nehemiah Rana'),
(128, '03-20-2018 09:59:31 AM', 'add new teacher Cayden Navarro'),
(129, '03-20-2018 10:00:01 AM', 'add new teacher Normando Generoso'),
(130, '03-20-2018 10:00:07 AM', 'add account with the username of 2018-0004'),
(131, '03-20-2018 10:00:12 AM', 'add account with the username of 2018-0007'),
(132, '03-20-2018 10:00:19 AM', 'add account with the username of 2018-0003'),
(133, '03-20-2018 10:00:23 AM', 'add account with the username of 2018-0006'),
(134, '03-20-2018 10:00:29 AM', 'add account with the username of 2018-0001'),
(135, '03-20-2018 10:00:33 AM', 'add account with the username of 2018-0005'),
(136, '03-20-2018 10:00:39 AM', 'add account with the username of 2018-0002'),
(137, '03-20-2018 10:02:22 AM', 'add new student Cedric Sandoval'),
(138, '03-20-2018 10:02:58 AM', 'add new student Gillermo De Pan'),
(139, '03-20-2018 10:03:15 AM', 'add new student Deon Macaraeg'),
(140, '03-20-2018 10:03:39 AM', 'add new student Grizelda Ruedas'),
(141, '03-20-2018 10:04:09 AM', 'add new student Irene Quetua'),
(142, '03-20-2018 10:05:22 AM', 'add new student Braiden Solas'),
(143, '03-20-2018 10:06:40 AM', 'add new student Jeanette Buenaflor'),
(144, '03-20-2018 10:07:12 AM', 'add new student Grayson Capulong'),
(145, '03-20-2018 10:08:16 AM', 'add new student Faith Caparas'),
(146, '03-20-2018 10:08:41 AM', 'add new student Zack Aguilar'),
(147, '03-20-2018 10:09:01 AM', 'add new student Kevin Torres'),
(148, '03-20-2018 10:09:28 AM', 'add new student Eve Vizcaya'),
(149, '03-20-2018 10:09:57 AM', 'add new student Kate Villegas'),
(150, '03-20-2018 10:10:22 AM', 'add new student Mike Fontanilla'),
(151, '03-20-2018 10:11:16 AM', 'add new student Jayce Fajardo'),
(152, '03-20-2018 10:11:55 AM', 'add new student Melody Quison'),
(153, '03-20-2018 10:12:25 AM', 'add new student Pia Manlangit'),
(154, '03-20-2018 10:12:34 AM', 'add account with the username of 2018-1010'),
(155, '03-20-2018 10:12:38 AM', 'add account with the username of 2018-1007'),
(156, '03-20-2018 10:12:42 AM', 'add account with the username of 2018-1009'),
(157, '03-20-2018 10:12:46 AM', 'add account with the username of 2018-1008'),
(158, '03-20-2018 10:12:50 AM', 'add account with the username of 2018-1002'),
(159, '03-20-2018 10:12:54 AM', 'add account with the username of 2018-1015'),
(160, '03-20-2018 10:12:59 AM', 'add account with the username of 2018-1014'),
(161, '03-20-2018 10:13:03 AM', 'add account with the username of 2018-1003'),
(162, '03-20-2018 10:13:08 AM', 'add account with the username of 2018-1017'),
(163, '03-20-2018 10:13:12 AM', 'add account with the username of 2018-1005'),
(164, '03-20-2018 10:13:17 AM', 'add account with the username of 2018-1016'),
(165, '03-20-2018 10:13:23 AM', 'add account with the username of 2018-1004'),
(166, '03-20-2018 10:13:29 AM', 'add account with the username of 2018-1001'),
(167, '03-20-2018 10:13:32 AM', 'add account with the username of 2018-1006'),
(168, '03-20-2018 10:13:38 AM', 'add account with the username of 2018-1011'),
(169, '03-20-2018 10:13:42 AM', 'add account with the username of 2018-1013'),
(170, '03-20-2018 10:13:46 AM', 'add account with the username of 2018-1012'),
(171, '03-20-2018 10:27:58 AM', 'create new class  I - A with the subject of Filipino'),
(172, '03-20-2018 10:45:02 AM', 'add student Cedric Sandoval to class  I-A with the subject of Filipino'),
(173, '03-20-2018 10:45:31 AM', 'add student Gillermo De Pan to class  I-A with the subject of Filipino'),
(174, '03-20-2018 10:45:47 AM', 'add student Deon Macaraeg to class  I-A with the subject of Filipino'),
(175, '03-20-2018 10:46:07 AM', 'add student Grizelda Ruedas to class  I-A with the subject of Filipino'),
(176, '03-20-2018 10:46:15 AM', 'add student Irene Quetua to class  I-A with the subject of Filipino'),
(177, '03-20-2018 10:47:29 AM', 'assign teacher Moises Panonce to class  I-A with the subject of Filipino'),
(178, '03-20-2018 10:47:38 AM', 'admin logged out.'),
(179, '03-21-2018 03:54:43 AM', '2018-0001 logged out.'),
(180, '03-21-2018 04:14:41 AM', 'admin logged out.'),
(181, '03-21-2018 04:15:39 AM', '2018-0001 logged out.'),
(182, '03-21-2018 04:16:16 AM', 'add student Cedric Sandoval to class  I-A with the subject of Filipino'),
(183, '03-21-2018 04:16:26 AM', 'add student Gillermo De Pan to class  I-A with the subject of Filipino'),
(184, '03-21-2018 04:16:36 AM', 'add student Deon Macaraeg to class  I-A with the subject of Filipino'),
(185, '03-21-2018 04:16:41 AM', 'admin logged out.'),
(186, '03-21-2018 04:31:47 AM', '2018-0001 calculated the grades of Cedric Sandoval in Filipino in first'),
(187, '03-21-2018 04:37:36 AM', '2018-0001 logged out.'),
(188, '03-21-2018 04:42:34 AM', '2018-1001 logged out.'),
(189, '03-21-2018 05:58:26 AM', '2018-0001 logged out.'),
(190, '03-21-2018 10:52:27 AM', '2018-0001 logged out.'),
(191, '03-21-2018 11:15:38 AM', 'admin logged out.'),
(192, '03-21-2018 11:16:31 AM', '2018-0001 logged out.'),
(193, '03-21-2018 11:16:43 AM', 'admin logged out.'),
(194, '03-21-2018 11:17:48 AM', '2018-0001 calculated the grades of Deon Macaraeg in Filipino in first'),
(195, '03-21-2018 11:17:54 AM', '2018-0001 calculated the grades of Deon Macaraeg in Filipino in second'),
(196, '03-21-2018 11:18:01 AM', '2018-0001 calculated the grades of Deon Macaraeg in Filipino in second'),
(197, '03-21-2018 11:18:06 AM', '2018-0001 calculated the grades of Deon Macaraeg in Filipino in second'),
(198, '03-21-2018 11:18:18 AM', '2018-0001 logged out.'),
(199, '03-21-2018 11:18:41 AM', '2018-1003 logged out.'),
(200, '03-21-2018 06:07:58 PM', '2018-0001 logged out.'),
(201, '03-21-2018 06:08:08 PM', '2018-0001 logged out.'),
(202, '03-22-2018 01:02:09 AM', 'admin logged out.'),
(203, '03-22-2018 01:07:41 AM', '2018-0001 calculated the grades of Deon Macaraeg in Filipino in third'),
(204, '03-22-2018 01:07:50 AM', '2018-0001 calculated the grades of Deon Macaraeg in Filipino in fourth'),
(205, '03-22-2018 01:43:50 AM', '2018-0001 logged out.'),
(206, '03-22-2018 01:51:32 AM', 'admin logged out.'),
(207, '03-22-2018 03:53:00 AM', '2018-0001 logged out.'),
(208, '03-22-2018 09:15:33 AM', 'add new subject MAPEH - Music Arts Physical Education Health'),
(209, '03-22-2018 09:19:35 AM', 'add new student Paul Romero'),
(210, '03-22-2018 09:21:17 AM', 'add new teacher Johann Alpapara'),
(211, '03-22-2018 09:21:43 AM', 'add account with the username of 2018-0008'),
(212, '03-22-2018 09:22:06 AM', 'add account with the username of 2018-1018'),
(213, '03-22-2018 09:23:32 AM', 'update password of username admin'),
(214, '03-22-2018 09:23:40 AM', 'admin logged out.'),
(215, '03-22-2018 09:24:34 AM', 'create new class  II - B with the subject of English'),
(216, '03-22-2018 09:24:59 AM', 'assign teacher Johann Alpapara to class  II-B with the subject of English'),
(217, '03-22-2018 09:25:19 AM', 'add student Paul Romero to class  II-B with the subject of English'),
(218, '03-22-2018 09:26:01 AM', 'admin logged out.'),
(219, '03-22-2018 09:26:51 AM', '2018-0008 calculated the grades of Paul Romero in English in first'),
(220, '03-22-2018 09:26:57 AM', '2018-0008 calculated the grades of Paul Romero in English in second'),
(221, '03-22-2018 09:27:04 AM', '2018-0008 calculated the grades of Paul Romero in English in third'),
(222, '03-22-2018 09:27:29 AM', '2018-0008 calculated the grades of Paul Romero in English in fourth'),
(223, '03-22-2018 09:28:20 AM', '2018-0008 logged out.'),
(224, '03-22-2018 09:30:30 AM', '2018-1018 logged out.'),
(225, '03-22-2018 12:46:39 PM', 'add new student Jeanette Buenaflor'),
(226, '03-22-2018 01:12:07 PM', 'add new student Faith Caparas'),
(227, '03-26-2018 11:45:19 PM', '2018-0004 logged out.'),
(228, '03-26-2018 11:52:33 PM', '2018-1010 logged out.'),
(229, '03-27-2018 12:01:26 AM', 'add student Cedric Sandoval to class  II-B with the subject of English'),
(230, '03-27-2018 12:02:19 AM', 'create new class  III - A with the subject of Filipino'),
(231, '03-27-2018 12:02:29 AM', 'add student Cedric Sandoval to class  III-A with the subject of Filipino'),
(232, '03-27-2018 12:02:41 AM', 'assign teacher Moises Panonce to class  III-A with the subject of Filipino'),
(233, '03-27-2018 12:05:12 AM', 'admin logged out.'),
(234, '03-27-2018 12:20:46 AM', '2018-0001 logged out.'),
(235, '03-27-2018 02:18:30 AM', 'admin logged out.'),
(236, '03-27-2018 02:21:24 AM', '2018-1010 logged out.'),
(237, '03-27-2018 02:23:05 AM', '2018-0002 logged out.'),
(238, '03-27-2018 02:23:22 AM', '2018-0003 logged out.'),
(239, '03-27-2018 02:24:20 AM', '2018-0001 logged out.'),
(240, '03-27-2018 02:25:32 AM', '2018-1003 logged out.'),
(241, '03-27-2018 02:26:35 AM', 'admin logged out.'),
(242, '03-27-2018 06:46:05 AM', '2018-1003 logged out.'),
(243, '03-27-2018 10:30:27 AM', 'add student Grizelda Ruedas to class  I-A with the subject of Filipino'),
(244, '03-27-2018 10:31:03 AM', 'admin logged out.'),
(245, '03-27-2018 10:32:22 AM', '2018-0001 calculated the grades of Gillermo De Pan in Filipino in first'),
(246, '03-27-2018 10:32:29 AM', '2018-0001 calculated the grades of Gillermo De Pan in Filipino in second'),
(247, '03-27-2018 10:32:35 AM', '2018-0001 logged out.'),
(248, '03-27-2018 10:33:06 AM', '2018-0001 logged out.'),
(249, '03-27-2018 10:33:46 AM', '2018-0002 logged out.'),
(250, '03-31-2018 12:17:38 AM', '2018-1001 logged out.'),
(251, '03-31-2018 09:59:34 PM', 'admin logged out.'),
(252, '03-31-2018 10:04:09 PM', '2018-1001 logged out.'),
(253, '03-31-2018 10:27:13 PM', 'admin logged out.'),
(254, '03-31-2018 11:08:10 PM', '2018-0001 logged out.'),
(255, '04-01-2018 01:15:02 AM', 'admin logged out.'),
(256, '04-01-2018 01:15:38 AM', '2018-0001 calculated the grades of Cedric Sandoval in Filipino in second'),
(257, '04-01-2018 01:15:44 AM', '2018-0001 calculated the grades of Cedric Sandoval in Filipino in third'),
(258, '04-01-2018 01:15:52 AM', '2018-0001 calculated the grades of Cedric Sandoval in Filipino in fourth'),
(259, '04-01-2018 01:16:17 AM', '2018-0001 logged out.'),
(260, '04-01-2018 01:18:11 AM', '2018-0001 logged out.'),
(261, '04-01-2018 01:18:35 AM', 'delete Filipino from class'),
(262, '04-01-2018 01:18:50 AM', 'admin logged out.'),
(263, '04-01-2018 01:19:27 AM', '2018-0008 calculated the grades of Cedric Sandoval in English in first'),
(264, '04-01-2018 01:19:27 AM', '2018-0008 calculated the grades of Cedric Sandoval in English in first'),
(265, '04-01-2018 01:19:34 AM', '2018-0008 calculated the grades of Cedric Sandoval in English in second'),
(266, '04-01-2018 01:19:39 AM', '2018-0008 calculated the grades of Cedric Sandoval in English in first'),
(267, '04-01-2018 01:19:45 AM', '2018-0008 calculated the grades of Cedric Sandoval in English in first'),
(268, '04-01-2018 01:19:52 AM', '2018-0008 calculated the grades of Cedric Sandoval in English in first'),
(269, '04-01-2018 01:20:00 AM', '2018-0008 calculated the grades of Cedric Sandoval in English in third'),
(270, '04-01-2018 01:20:13 AM', '2018-0008 calculated the grades of Cedric Sandoval in English in fourth'),
(271, '04-01-2018 01:20:19 AM', '2018-0008 calculated the grades of Cedric Sandoval in English in fourth'),
(272, '04-01-2018 01:20:29 AM', '2018-0008 logged out.'),
(273, '04-01-2018 05:27:39 AM', 'admin logged out.'),
(274, '04-01-2018 08:26:20 AM', 'admin logged out.'),
(275, '04-01-2018 11:16:48 AM', '2018-0001 calculated the grades of Grizelda Ruedas in Filipino in first'),
(276, '04-01-2018 11:23:35 AM', '2018-0001 calculated the grades of Grizelda Ruedas in Filipino in first'),
(277, '04-01-2018 11:25:00 AM', '2018-0001 calculated the grades of Grizelda Ruedas in Filipino in first'),
(278, '04-01-2018 11:35:38 AM', '2018-0001 calculated the grades of Grizelda Ruedas in Filipino in second'),
(279, '04-01-2018 11:35:57 AM', '2018-0001 calculated the grades of Gillermo De Pan in Filipino in third'),
(280, '04-01-2018 11:40:47 AM', '2018-0001 calculated the grades of Grizelda Ruedas in Filipino in third');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studid` varchar(50) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `studid`, `fname`, `lname`) VALUES
(1, '2018-1001', 'Cedric', 'Sandoval'),
(2, '2018-1002', 'Gillermo', 'De Pan'),
(3, '2018-1003', 'Deon', 'Macaraeg'),
(4, '2018-1004', 'Grizelda', 'Ruedas'),
(5, '2018-1005', 'Irene', 'Quetua'),
(6, '2018-1006', 'Braiden', 'Solas'),
(7, '2018-1007', 'Jeanette', 'Buenaflor'),
(8, '2018-1008', 'Grayson', 'Capulong'),
(9, '2018-1009', 'Faith', 'Caparas'),
(10, '2018-1010', 'Zack', 'Aguilar'),
(11, '2018-1011', 'Kevin', 'Torres'),
(12, '2018-1012', 'Eve', 'Vizcaya'),
(13, '2018-1013', 'Kate', 'Villegas'),
(14, '2018-1014', 'Mike', 'Fontanilla'),
(15, '2018-1015', 'Jayce', 'Fajardo'),
(16, '2018-1016', 'Melody', 'Quison'),
(17, '2018-1017', 'Pia', 'Manlangit'),
(18, '2018-1018', 'Paul', 'Romero'),
(19, '2018-1007', 'Jeanette', 'Buenaflor');

-- --------------------------------------------------------

--
-- Table structure for table `studentsubject`
--

CREATE TABLE IF NOT EXISTS `studentsubject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studid` varchar(50) NOT NULL,
  `classid` int(11) NOT NULL,
  `att1` float NOT NULL,
  `att2` float NOT NULL,
  `att3` float NOT NULL,
  `att4` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `studentsubject`
--

INSERT INTO `studentsubject` (`id`, `studid`, `classid`, `att1`, `att2`, `att3`, `att4`) VALUES
(1, '1', 1, 60, 70, 75, 74),
(2, '2', 1, 90, 90, 95, 0),
(3, '3', 1, 98, 70, 75, 80),
(4, '18', 2, 70, 85, 95, 90),
(5, '1', 2, 90, 80, 85, 95),
(7, '4', 1, 90, 90, 95, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `unit` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `code`, `title`, `unit`) VALUES
(6, 'Filipino', 'Filipino Subject', ''),
(7, 'English', 'English Subject', ''),
(8, 'Mathematics', 'Mathematics Subject', ''),
(9, 'Science', 'Science Subject', ''),
(10, 'Araling Panlipunan', 'Araling Panlipunan Subject', ''),
(11, 'Edukasyon sa Pagpapakatao', 'Edukasyon sa Pagpapakatao (EsP) Subject', ''),
(12, 'Music', 'Music Subject', ''),
(13, 'Arts', 'Arts Subject', ''),
(14, 'Physical Education', 'Physical Education (PE) Subject', ''),
(15, 'Health', 'Health Subject', ''),
(16, 'Edukasyong Pantahanan at Pangkabuhayan (EPP)', 'Edukasyong Pantahanan at Pangkabuhayan (EPP) Subject', ''),
(17, 'Technology and Livelihood Education (TLE)', 'Technology and Livelihood Education (TLE) Subject', ''),
(18, 'MAPEH', 'Music Arts Physical Education Health', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teachid` varchar(50) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `teachid`, `fname`, `lname`) VALUES
(1, '2018-0001', 'Moises', 'Panonce'),
(2, '2018-0002', 'Maureo', 'Ventura'),
(3, '2018-0003', 'Dane', 'Lingao'),
(4, '2018-0004', 'Bailey', 'Capistrano'),
(5, '2018-0005', 'Nehemiah', 'Rana'),
(6, '2018-0006', 'Cayden', 'Navarro'),
(7, '2018-0007', 'Normando', 'Generoso'),
(8, '2018-0008', 'Johann', 'Alpapara');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE IF NOT EXISTS `userdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `username`, `password`, `fname`, `lname`, `level`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 'admin'),
(2, '2018-0004', '2018-0004', 'Bailey', 'Capistrano', 'teacher'),
(3, '2018-0007', '2018-0007', 'Normando', 'Generoso', 'teacher'),
(4, '2018-0003', '2018-0003', 'Dane', 'Lingao', 'teacher'),
(5, '2018-0006', '2018-0006', 'Cayden', 'Navarro', 'teacher'),
(6, '2018-0001', '2018-0001', 'Moises', 'Panonce', 'teacher'),
(7, '2018-0005', '2018-0005', 'Nehemiah', 'Rana', 'teacher'),
(8, '2018-0002', '2018-0002', 'Maureo', 'Ventura', 'teacher'),
(9, '2018-1010', '2018-1010', 'Zack', 'Aguilar', 'student'),
(10, '2018-1007', '2018-1007', 'Jeanette', 'Buenaflor', 'student'),
(11, '2018-1009', '2018-1009', 'Faith', 'Caparas', 'student'),
(12, '2018-1008', '2018-1008', 'Grayson', 'Capulong', 'student'),
(13, '2018-1002', '2018-1002', 'Gillermo', 'De Pan', 'student'),
(14, '2018-1015', '2018-1015', 'Jayce', 'Fajardo', 'student'),
(15, '2018-1014', '2018-1014', 'Mike', 'Fontanilla', 'student'),
(16, '2018-1003', '2018-1003', 'Deon', 'Macaraeg', 'student'),
(17, '2018-1017', '2018-1017', 'Pia', 'Manlangit', 'student'),
(18, '2018-1005', '2018-1005', 'Irene', 'Quetua', 'student'),
(19, '2018-1016', '2018-1016', 'Melody', 'Quison', 'student'),
(20, '2018-1004', '2018-1004', 'Grizelda', 'Ruedas', 'student'),
(21, '2018-1001', '2018-1001', 'Cedric', 'Sandoval', 'student'),
(22, '2018-1006', '2018-1006', 'Braiden', 'Solas', 'student'),
(23, '2018-1011', '2018-1011', 'Kevin', 'Torres', 'student'),
(24, '2018-1013', '2018-1013', 'Kate', 'Villegas', 'student'),
(25, '2018-1012', '2018-1012', 'Eve', 'Vizcaya', 'student'),
(26, '2018-0008', '2018-0008', 'Johann', 'Alpapara', 'teacher'),
(27, '2018-1018', '2018-1018', 'Paul', 'Romero', 'student');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
