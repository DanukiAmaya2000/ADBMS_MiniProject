-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 02, 2024 at 11:06 AM
-- Server version: 8.0.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scms`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `CATEGORY_ID` int NOT NULL AUTO_INCREMENT,
  `CNAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CNAME`) VALUES
(1, 'HP'),
(2, 'Lenovo'),
(3, 'Asus');

-- --------------------------------------------------------

--
-- Stand-in structure for view `category_view`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `category_view`;
CREATE TABLE IF NOT EXISTS `category_view` (
`CATEGORY_ID` int
,`CNAME` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `CUST_ID` int NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NUMBER`) VALUES
(1, 'Sureka', 'Perera', '0711234567'),
(2, 'Champika', 'De Silva', '0712345678'),
(3, 'Sanjeewa', 'Kumara', '0723456789'),
(4, 'Madushani', 'Weerasinghe', '0724567890'),
(5, 'Duminda', 'Karunanayake', '0735678901'),
(6, 'Navod', 'Bandara', '0736789012'),
(7, 'Upeksha', 'Pathirigama', '0747890123'),
(8, 'Manoj', 'Samarakoon', '0748901234'),
(9, 'Rajitha', 'Serasinghe', '0759012345'),
(10, 'Nipuni', 'Gunasekara', '0750123456'),
(11, 'Akalanka', 'Kolombage', '0761234567'),
(12, 'Hiru', 'Kanishta', '0762345678'),
(13, 'Hemal', 'Warnakulasooriya', '0773456789'),
(14, 'Amarasinghe', 'Sirisena', '0774567890'),
(15, 'Gayathri', 'Kalpana', '0785678901');

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_info_view`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `customer_info_view`;
CREATE TABLE IF NOT EXISTS `customer_info_view` (
`CUST_ID` int
,`FIRST_NAME` varchar(50)
,`LAST_NAME` varchar(50)
,`PHONE_NUMBER` varchar(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `EMPLOYEE_ID` int NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL,
  `JOB_ID` int DEFAULT NULL,
  `HIRED_DATE` varchar(50) NOT NULL,
  `LOCATION_ID` int DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`),
  UNIQUE KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  KEY `LOCATION_ID` (`LOCATION_ID`),
  KEY `JOB_ID` (`JOB_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `EMAIL`, `PHONE_NUMBER`, `JOB_ID`, `HIRED_DATE`, `LOCATION_ID`) VALUES
(1, 'Amal', 'Perera', 'Male', 'amal.perera@example.com', '0712345678', 1, '2023-01-15', 201),
(2, 'Nimal', 'Silva', 'Male', 'nimal.silva@example.com', '0713456789', 2, '2022-03-10', 202),
(3, 'Kamal', 'Wijesinghe', 'Male', 'kamal.wijesinghe@example.com', '0724567890', 3, '2021-05-05', 203),
(4, 'Sunil', 'Bandara', 'Male', 'sunil.bandara@example.com', '0725678901', 3, '2020-07-20', 204),
(5, 'Anula', 'Rathnayake', 'Female', 'anula.rathnayake@example.com', '0736789012', 2, '2019-09-15', 205),
(6, 'Kumari', 'Fernando', 'Female', 'kumari.fernando@example.com', '0737890123', 3, '2018-11-10', 206),
(7, 'Chathura', 'Gunawardena', 'Male', 'chathura.gunawardena@example.com', '0748901234', 3, '2023-02-25', 207),
(8, 'Sanduni', 'Jayasinghe', 'Female', 'sanduni.jayasinghe@example.com', '0759012345', 2, '2022-04-18', 208),
(9, 'Tharanga', 'Dissanayake', 'Male', 'tharanga.dissanayake@example.com', '0750123456', 3, '2021-06-12', 209),
(10, 'Shanika', 'Karunaratne', 'Female', 'shanika.karunaratne@example.com', '0761234567', 2, '2020-08-03', 210),
(11, 'Sithara', 'Abeysekara', 'Female', 'sithara.abeysekara@example.com', '0762345678', 3, '2019-10-27', 211),
(12, 'Heshan', 'Wickramasinghe', 'Male', 'heshan.wickramasinghe@example.com', '0773456789', 3, '2018-12-19', 212),
(13, 'Lasanthi', 'Dias', 'Female', 'lasanthi.dias@example.com', '0774567890', 3, '2023-03-07', 213),
(14, 'Dilan', 'Senanayake', 'Male', 'dilan.senanayake@example.com', '0785678901', 2, '2022-05-01', 214),
(15, 'Buddhika', 'Ranasinghe', 'Male', 'buddhika.ranasinghe@example.com', '0786789012', 2, '2021-07-14', 215);

-- --------------------------------------------------------

--
-- Stand-in structure for view `employee_details_view`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `employee_details_view`;
CREATE TABLE IF NOT EXISTS `employee_details_view` (
`EMPLOYEE_ID` int
,`FIRST_NAME` varchar(50)
,`JOB_TITLE` varchar(50)
,`LAST_NAME` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `inventory_view`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `inventory_view`;
CREATE TABLE IF NOT EXISTS `inventory_view` (
`CNAME` varchar(50)
,`DATE_STOCK_IN` varchar(50)
,`NAME` varchar(50)
,`ON_HAND` bigint
,`PRODUCT_CODE` varchar(20)
,`PRODUCT_ID` int
,`QTY_STOCK` bigint
);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
CREATE TABLE IF NOT EXISTS `job` (
  `JOB_ID` int NOT NULL,
  `JOB_TITLE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`JOB_ID`, `JOB_TITLE`) VALUES
(1, 'Manager'),
(2, 'Cashier'),
(3, 'Salesperson');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `LOCATION_ID` int NOT NULL AUTO_INCREMENT,
  `PROVINCE` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`LOCATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LOCATION_ID`, `PROVINCE`, `CITY`) VALUES
(201, 'Western', 'Colombo'),
(202, 'Central', 'Kandy'),
(203, 'Southern', 'Galle'),
(204, 'Northern', 'Jaffna'),
(205, 'Eastern', 'Trincomalee'),
(206, 'North Western', 'Kurunegala'),
(207, 'North Central', 'Anuradhapura'),
(208, 'Uva', 'Badulla'),
(209, 'Sabaragamuwa', 'Ratnapura'),
(210, 'Western', 'Negombo'),
(211, 'Central', 'Nuwara Eliya'),
(212, 'Southern', 'Matara'),
(213, 'Northern', 'Kilinochchi'),
(214, 'Eastern', 'Batticaloa'),
(215, 'North Western', 'Puttalam');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
CREATE TABLE IF NOT EXISTS `manager` (
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL,
  UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  KEY `LOCATION_ID` (`LOCATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`FIRST_NAME`, `LAST_NAME`, `LOCATION_ID`, `EMAIL`, `PHONE_NUMBER`) VALUES
('Suneth', 'Perera', 201, 'suneth.perera@example.com', '0712345678'),
('Ruwan', 'Silva', 202, 'ruwan.silva@example.com', '0713456789');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `PRODUCT_ID` int NOT NULL AUTO_INCREMENT,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(250) NOT NULL,
  `QTY_STOCK` int DEFAULT NULL,
  `ON_HAND` int NOT NULL,
  `PRICE` int DEFAULT NULL,
  `CATEGORY_ID` int DEFAULT NULL,
  `SUPPLIER_ID` int DEFAULT NULL,
  `DATE_STOCK_IN` varchar(50) NOT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  KEY `CATEGORY_ID` (`CATEGORY_ID`),
  KEY `SUPPLIER_ID` (`SUPPLIER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `PRODUCT_CODE`, `NAME`, `DESCRIPTION`, `QTY_STOCK`, `ON_HAND`, `PRICE`, `CATEGORY_ID`, `SUPPLIER_ID`, `DATE_STOCK_IN`) VALUES
(28, '1', 'HP 15 fd0333TU', 'Intel Core i5-1334U, 512GB SSD, 8GB RAM, 15.6” FHD, Intel Iris Xe, Windows 11 Home', 10, 10, 1150, 1, 1, '2024-10-01'),
(29, '2', 'HP Envy 14 X360', 'Intel Ultra 7 155U, 1TB SSD, 16GB RAM, 14” WQXGA Touch, Intel Graphics, Windows 11 Home', 8, 8, 1300, 1, 1, '2024-10-02'),
(30, '3', 'Lenovo IdeaPad 5', 'Intel Core 7 150U (14th Gen), 1TB SSD, 16GB RAM, 14” IPS Touch, Intel Graphics, Windows 11 Home', 12, 12, 1250, 2, 2, '2024-10-05'),
(31, '4', 'Asus Zenbook DUO UX8406MA', 'Intel Core Ultra 7 AI 155H, 1TB SSD, 16GB RAM, 14” OLED 120Hz, Intel Arc, Windows 11 Home', 5, 5, 1500, 3, 2, '2024-10-06'),
(32, '5', 'Asus ExpertBook B1 B1502CVA', 'Intel Core i5-1335U, 512GB SSD, 8GB RAM, 15.6” FHD, Intel UHD, Windows 11 Pro', 7, 7, 1050, 3, 3, '2024-10-08'),
(33, '6', 'Asus TUF Gaming F15 FX507VU', 'Intel Core i7-13620H, 1TB SSD, 16GB RAM, 15.6” FHD 144Hz, RTX 4050, Windows 11 Home', 6, 6, 1600, 3, 3, '2024-10-09'),
(34, '7', 'Asus Vivobook Pro 15', 'Intel Core AI Ultra 7 155H, 1TB SSD, 16GB RAM, 15.6” FHD OLED, RTX 3050, Windows 11 Home', 4, 4, 1400, 3, 4, '2024-10-11'),
(35, '8', 'Lenovo LOQ Gaming 15ARP9 Ryzen 7', 'AMD Ryzen 7 7435HS, 512GB SSD, 24GB RAM, 15.6” FHD IPS, RTX 4060, Windows 11 Home', 9, 9, 1350, 2, 4, '2024-10-12'),
(36, '9', 'Lenovo LOQ Gaming 15ARP9 Ryzen 7', 'AMD Ryzen 7 7435HS, 512GB SSD, 24GB RAM, 15.6” FHD IPS, RTX 4050, Windows 11 Home', 6, 6, 1250, 2, 4, '2024-10-14'),
(37, '10', 'Lenovo LOQ Gaming 15ARP9 Ryzen 5', 'AMD Ryzen 5 7235HS, 512GB SSD, 12GB RAM, 15.6” FHD IPS, RTX 3050, Windows 11 Home', 8, 8, 1150, 2, 4, '2024-10-15'),
(38, '11', 'Asus TUF A15 FA507NVR', 'AMD Ryzen 7 7435HS, 512GB SSD, 16GB RAM, 15.6” FHD 144Hz, RTX 4060, FreeDOS', 10, 10, 1300, 3, 5, '2024-10-16'),
(39, '12', 'HP Pavilion x360 2-in-1 ek1119TU', 'Intel Core i7-1355U, 1TB SSD, 16GB RAM, 14” FHD Touch, Intel Iris Xe, Windows 11 Home', 5, 5, 1200, 1, 5, '2024-10-18'),
(40, '13', 'HP Pavilion x360 2-in-1 ek1115TU', 'Intel Core i7-1355U, 512GB SSD, 16GB RAM, 14” FHD IPS, Intel Iris Xe, Windows 11 Home', 6, 6, 1100, 1, 5, '2024-10-19');

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_details_view`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `product_details_view`;
CREATE TABLE IF NOT EXISTS `product_details_view` (
`CNAME` varchar(50)
,`DATE_STOCK_IN` varchar(50)
,`NAME` varchar(50)
,`PRICE` int
,`PRODUCT_CODE` varchar(20)
,`PRODUCT_ID` int
);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `SUPPLIER_ID` int NOT NULL AUTO_INCREMENT,
  `COMPANY_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int NOT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`SUPPLIER_ID`),
  KEY `LOCATION_ID` (`LOCATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPPLIER_ID`, `COMPANY_NAME`, `LOCATION_ID`, `PHONE_NUMBER`) VALUES
(17, 'Lenovo', 201, '0712345678'),
(18, 'HP', 202, '0713456789'),
(19, 'Asus', 203, '0724567890'),
(20, 'Dell', 204, '0725678901'),
(21, 'Acer', 205, '0736789012'),
(22, 'MSI', 206, '0737890123'),
(23, 'Samsung', 207, '0748901234'),
(24, 'Apple', 208, '0759012345'),
(25, 'LG', 209, '0750123456'),
(26, 'Microsoft', 210, '0761234567'),
(27, 'Sony', 211, '0762345678'),
(28, 'Toshiba', 213, '0774567890'),
(29, 'Panasonic', 214, '0785678901');

-- --------------------------------------------------------

--
-- Stand-in structure for view `suppliers_view`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `suppliers_view`;
CREATE TABLE IF NOT EXISTS `suppliers_view` (
`CITY` varchar(100)
,`COMPANY_NAME` varchar(50)
,`PHONE_NUMBER` varchar(11)
,`PROVINCE` varchar(100)
,`SUPPLIER_ID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `supplier_view`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `supplier_view`;
CREATE TABLE IF NOT EXISTS `supplier_view` (
`COMPANY_NAME` varchar(50)
,`SUPPLIER_ID` int
);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `TRANS_ID` int NOT NULL AUTO_INCREMENT,
  `CUST_ID` int DEFAULT NULL,
  `NUMOFITEMS` varchar(250) NOT NULL,
  `SUBTOTAL` varchar(50) NOT NULL,
  `LESSVAT` varchar(50) NOT NULL,
  `NETVAT` varchar(50) NOT NULL,
  `ADDVAT` varchar(50) NOT NULL,
  `GRANDTOTAL` varchar(250) NOT NULL,
  `CASH` varchar(250) NOT NULL,
  `DATE` varchar(50) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  PRIMARY KEY (`TRANS_ID`),
  KEY `TRANS_DETAIL_ID` (`TRANS_D_ID`),
  KEY `CUST_ID` (`CUST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TRANS_ID`, `CUST_ID`, `NUMOFITEMS`, `SUBTOTAL`, `LESSVAT`, `NETVAT`, `ADDVAT`, `GRANDTOTAL`, `CASH`, `DATE`, `TRANS_D_ID`) VALUES
(3, 1, '3', '456982.00', '48962.36', '408019.64', '48962.36', '456982.00', '500000', '2019-03-18', '0718160336'),
(4, 2, '2', '1967.00', '210.75', '1756.25', '210.75', '1967.00', '2000', '2019-03-18', '0718160622'),
(5, 3, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '550', '2019-03-18', '0718170309'),
(6, 4, '1', '77850.00', '8341.07', '69508.93', '8341.07', '77850.00', '80000', '2019-03-18', '0718170352'),
(7, 5, '1', '1718.00', '184.07', '1533.93', '184.07', '1718.00', '2000', '2019-03-18', '0718170511'),
(8, 6, '1', '1718.00', '184.07', '1533.93', '184.07', '1718.00', '2000', '2019-03-18', '0718170524'),
(9, 7, '1', '1718.00', '184.07', '1533.93', '184.07', '1718.00', '2000', '2019-03-18', '0718170551'),
(10, 8, '1', '289.00', '30.96', '258.04', '30.96', '289.00', '500', '2019-03-18', '0718170624'),
(11, 9, '2', '1148.00', '123.00', '1025.00', '123.00', '1148.00', '2000', '2019-03-18', '0718170825'),
(12, 10, '1', '5500.00', '589.29', '4910.71', '589.29', '5500.00', '6000', '2019-03-18 19:40', '0718194016'),
(13, 11, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '550', '2022-07-14 14:12', '0714141333'),
(14, 12, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '1000', '2022-07-14 15:54', '0714155515'),
(15, 13, '2', '1128.00', '120.86', '1007.14', '120.86', '1128.00', '1128', '2022-07-14 16:08', '0714160904'),
(16, 14, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '550', '2022-07-14 16:10', '0714161034');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

DROP TABLE IF EXISTS `transaction_details`;
CREATE TABLE IF NOT EXISTS `transaction_details` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TRANS_D_ID` varchar(250) NOT NULL,
  `PRODUCTS` varchar(250) NOT NULL,
  `QTY` varchar(250) NOT NULL,
  `PRICE` varchar(250) NOT NULL,
  `EMPLOYEE` varchar(250) NOT NULL,
  `ROLE` varchar(250) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `TRANS_D_ID` (`TRANS_D_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`ID`, `TRANS_D_ID`, `PRODUCTS`, `QTY`, `PRICE`, `EMPLOYEE`, `ROLE`) VALUES
(26, '0318160336', 'HP 15 fd0333TU – i5', '1', '456982.00', 'Saman Perera', 'Salesperson'),
(27, '0318160622', 'HP Envy 14 X360 2 in 1 fc0121TU – Ultra 7', '1', '1967.00', 'Kumara Silva', 'Cashier'),
(28, '0318170309', 'Lenovo IdeaPad 5 2-in-1 14IRU9 – Core 7', '1', '550.00', 'Nimal Jayasinghe', 'Salesperson'),
(29, '0318170352', 'Asus Zenbook DUO UX8406MA – Ultra 7', '1', '77850.00', 'Ajith Fernando', 'Salesperson'),
(30, '0318170511', 'Asus ExpertBook B1 B1502CVA – i5', '1', '1718.00', 'Dinesh Perera', 'Cashier'),
(31, '0318170524', 'Asus TUF Gaming F15 FX507VU – i7', '1', '1718.00', 'Tharindu Perera', 'Salesperson'),
(32, '0318170551', 'Asus Vivobook Pro 15 Creator Q533MJ – Ultra 7', '1', '1718.00', 'Ramesh Karunaratne', 'Cashier'),
(33, '0318170624', 'Lenovo LOQ Gaming 15ARP9 – Ryzen 7', '1', '289.00', 'Chamara Seneviratne', 'Cashier'),
(34, '0318194016', 'Lenovo LOQ Gaming 15ARP9 – Ryzen 7', '1', '5500.00', 'Mahesh Weerasinghe', 'Cashier'),
(35, '0714141333', 'Lenovo LOQ Gaming 15ARP9 – Ryzen 5', '1', '550.00', 'Dulanjana Jayasuriya', 'Salesperson'),
(36, '0714155515', 'Asus TUF A15 FA507NVR Gaming – Ryzen 7', '1', '550.00', 'Sajith Ranasinghe', 'SCashier'),
(37, '0714160904', 'HP Pavilion x360 2-in-1 ek1119TU – i7', '1', '1128.00', 'Naveen Balasuriya', 'Cashier'),
(38, '0714161034', 'HP Pavilion x360 2-in-1 ek1115TU – i7', '1', '550.00', 'Shiran Fernando', 'Cashier');

-- --------------------------------------------------------

--
-- Stand-in structure for view `transaction_view`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `transaction_view`;
CREATE TABLE IF NOT EXISTS `transaction_view` (
`FIRST_NAME` varchar(50)
,`LAST_NAME` varchar(50)
,`NUMOFITEMS` varchar(250)
,`TRANS_D_ID` varchar(250)
,`TRANS_ID` int
);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `TYPE_ID` int NOT NULL,
  `TYPE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`TYPE_ID`, `TYPE`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `EMPLOYEE_ID` int DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `TYPE_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `TYPE_ID` (`TYPE_ID`),
  KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `EMPLOYEE_ID`, `USERNAME`, `PASSWORD`, `TYPE_ID`) VALUES
(1, 1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1),
(7, 2, 'user', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_type_view`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `user_type_view`;
CREATE TABLE IF NOT EXISTS `user_type_view` (
`ID` int
,`TYPE` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `category_view`
--
DROP TABLE IF EXISTS `category_view`;

DROP VIEW IF EXISTS `category_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `category_view`  AS SELECT DISTINCT `category`.`CNAME` AS `CNAME`, `category`.`CATEGORY_ID` AS `CATEGORY_ID` FROM `category` ORDER BY `category`.`CNAME` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `customer_info_view`
--
DROP TABLE IF EXISTS `customer_info_view`;

DROP VIEW IF EXISTS `customer_info_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_info_view`  AS SELECT `customer`.`CUST_ID` AS `CUST_ID`, `customer`.`FIRST_NAME` AS `FIRST_NAME`, `customer`.`LAST_NAME` AS `LAST_NAME`, `customer`.`PHONE_NUMBER` AS `PHONE_NUMBER` FROM `customer` ;

-- --------------------------------------------------------

--
-- Structure for view `employee_details_view`
--
DROP TABLE IF EXISTS `employee_details_view`;

DROP VIEW IF EXISTS `employee_details_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_details_view`  AS SELECT `e`.`EMPLOYEE_ID` AS `EMPLOYEE_ID`, `e`.`FIRST_NAME` AS `FIRST_NAME`, `e`.`LAST_NAME` AS `LAST_NAME`, `j`.`JOB_TITLE` AS `JOB_TITLE` FROM (`employee` `e` join `job` `j` on((`e`.`JOB_ID` = `j`.`JOB_ID`))) ;

-- --------------------------------------------------------

--
-- Structure for view `inventory_view`
--
DROP TABLE IF EXISTS `inventory_view`;

DROP VIEW IF EXISTS `inventory_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `inventory_view`  AS SELECT `p`.`PRODUCT_ID` AS `PRODUCT_ID`, `p`.`PRODUCT_CODE` AS `PRODUCT_CODE`, `p`.`NAME` AS `NAME`, count(`p`.`QTY_STOCK`) AS `QTY_STOCK`, count(`p`.`ON_HAND`) AS `ON_HAND`, `c`.`CNAME` AS `CNAME`, `p`.`DATE_STOCK_IN` AS `DATE_STOCK_IN` FROM (`product` `p` join `category` `c` on((`p`.`CATEGORY_ID` = `c`.`CATEGORY_ID`))) GROUP BY `p`.`PRODUCT_CODE` ;

-- --------------------------------------------------------

--
-- Structure for view `product_details_view`
--
DROP TABLE IF EXISTS `product_details_view`;

DROP VIEW IF EXISTS `product_details_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_details_view`  AS SELECT `p`.`PRODUCT_ID` AS `PRODUCT_ID`, `p`.`PRODUCT_CODE` AS `PRODUCT_CODE`, `p`.`NAME` AS `NAME`, `p`.`PRICE` AS `PRICE`, `c`.`CNAME` AS `CNAME`, `p`.`DATE_STOCK_IN` AS `DATE_STOCK_IN` FROM (`product` `p` join `category` `c` on((`p`.`CATEGORY_ID` = `c`.`CATEGORY_ID`))) GROUP BY `p`.`PRODUCT_CODE` ;

-- --------------------------------------------------------

--
-- Structure for view `suppliers_view`
--
DROP TABLE IF EXISTS `suppliers_view`;

DROP VIEW IF EXISTS `suppliers_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `suppliers_view`  AS SELECT `s`.`SUPPLIER_ID` AS `SUPPLIER_ID`, `s`.`COMPANY_NAME` AS `COMPANY_NAME`, `l`.`PROVINCE` AS `PROVINCE`, `l`.`CITY` AS `CITY`, `s`.`PHONE_NUMBER` AS `PHONE_NUMBER` FROM (`supplier` `s` join `location` `l` on((`s`.`LOCATION_ID` = `l`.`LOCATION_ID`))) ;

-- --------------------------------------------------------

--
-- Structure for view `supplier_view`
--
DROP TABLE IF EXISTS `supplier_view`;

DROP VIEW IF EXISTS `supplier_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `supplier_view`  AS SELECT DISTINCT `supplier`.`SUPPLIER_ID` AS `SUPPLIER_ID`, `supplier`.`COMPANY_NAME` AS `COMPANY_NAME` FROM `supplier` ORDER BY `supplier`.`COMPANY_NAME` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `transaction_view`
--
DROP TABLE IF EXISTS `transaction_view`;

DROP VIEW IF EXISTS `transaction_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `transaction_view`  AS SELECT `t`.`TRANS_D_ID` AS `TRANS_D_ID`, `t`.`TRANS_ID` AS `TRANS_ID`, `t`.`NUMOFITEMS` AS `NUMOFITEMS`, `c`.`FIRST_NAME` AS `FIRST_NAME`, `c`.`LAST_NAME` AS `LAST_NAME` FROM (`transaction` `t` join `customer` `c` on((`t`.`CUST_ID` = `c`.`CUST_ID`))) ORDER BY `t`.`TRANS_D_ID` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `user_type_view`
--
DROP TABLE IF EXISTS `user_type_view`;

DROP VIEW IF EXISTS `user_type_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_type_view`  AS SELECT `u`.`ID` AS `ID`, `t`.`TYPE` AS `TYPE` FROM (`users` `u` join `type` `t` on((`t`.`TYPE_ID` = `u`.`TYPE_ID`))) ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`JOB_ID`) REFERENCES `job` (`JOB_ID`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`TYPE_ID`) REFERENCES `type` (`TYPE_ID`),
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`EMPLOYEE_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
