-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2017 at 04:11 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `procurement_sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `approv_mat_req`
--

CREATE TABLE `approv_mat_req` (
  `mat_approvalID` int(6) NOT NULL,
  `materialReqID` int(6) NOT NULL,
  `date_mat_approvd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approv_mat_req`
--

INSERT INTO `approv_mat_req` (`mat_approvalID`, `materialReqID`, `date_mat_approvd`) VALUES
(10, 10, '2013-03-29'),
(11, 16, '2013-04-03');

-- --------------------------------------------------------

--
-- Table structure for table `approv_purch_req`
--

CREATE TABLE `approv_purch_req` (
  `purch_approvID` int(6) NOT NULL,
  `date_purch_approvd` date NOT NULL,
  `purchaseReqID` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approv_purch_req`
--

INSERT INTO `approv_purch_req` (`purch_approvID`, `date_purch_approvd`, `purchaseReqID`) VALUES
(5, '2013-03-03', 13),
(6, '2013-03-03', 12),
(7, '2013-03-03', 11),
(8, '2013-03-30', 27),
(9, '2013-03-30', 28),
(10, '2013-03-30', 24),
(11, '2013-03-30', 26),
(12, '2013-03-30', 25),
(13, '2013-03-30', 23),
(14, '2017-04-07', 31),
(15, '2017-04-07', 33),
(16, '2017-04-07', 34),
(17, '2017-04-08', 35),
(18, '2017-04-08', 32),
(19, '2017-04-08', 30);

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `cal_id` int(11) NOT NULL,
  `date` varchar(10) NOT NULL,
  `data` text NOT NULL,
  `user_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`cal_id`, `date`, `data`, `user_id`) VALUES
(10, '2013-04-3', 'early meet', 1002),
(11, '2013-04-17', '', 1002),
(12, '2013-04-10', 'here i am', 1002),
(13, '2013-04-11', 'yep', 1002),
(14, '2013-04-12', 'no', 1002),
(15, '2013-04-16', 'here i went to ', 1002),
(16, '2013-04-18', 'wololo', 1002),
(17, '2013-04-10', 'meeting', 1000),
(18, '2013-04-11', 'you think that\'s what it means', 1000),
(19, '2013-04-17', 'meeting', 1000),
(20, '2013-04-15', 'tomorrow morning', 1000),
(21, '2013-04-22', 'yes that\'s what am talking about', 1000),
(22, '2013-05-16', 'Meeting', 1002),
(23, '2013-05-17', 'Lunch time', 1002),
(24, '2017-04-13', 'test', 1003),
(25, '2017-04-8', 'riad hawladar ', 1000),
(26, '2017-04-9', 'home lone\n', 1000),
(27, '2017-04-9', 'HI test', 1001),
(28, '2017-04-10', 'Hello test', 1001),
(29, '2017-04-5', 'test call', 1000),
(30, '2017-06-7', 'riad ', 1001),
(31, '2017-06-9', '', 1001),
(32, '2017-06-16', '', 1001),
(33, '2017-06-2', 'SDF', 1001),
(34, '2017-06-11', 'ASDFASDF', 1001),
(35, '2017-06-18', 'ASDFASD', 1001);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `itemID` int(10) NOT NULL,
  `itemName` varchar(20) NOT NULL,
  `itemDescription` varchar(30) NOT NULL,
  `pricePerUnit` double NOT NULL,
  `quantity` int(6) NOT NULL,
  `quantity_limit` int(6) NOT NULL,
  `categoryID` int(20) NOT NULL COMMENT 'foreign key from the material category table'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemID`, `itemName`, `itemDescription`, `pricePerUnit`, `quantity`, `quantity_limit`, `categoryID`) VALUES
(1, 'chalk', 'packet', 30, 230, 10, 1),
(2, 'beans', 'bags', 200, 5, 10, 6),
(3, 'printing paper', 'bail', 400, 50, 15, 1),
(4, 'test item', 'type', 10000, 500, 10, 8),
(5, 'New Item Added ', 'newitem', 100, 100, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `item_transaction`
--

CREATE TABLE `item_transaction` (
  `transactionID` int(5) NOT NULL,
  `userID` int(4) NOT NULL COMMENT 'foreignKey from user''s table',
  `itemID` int(10) NOT NULL COMMENT 'foreign key from items table',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_transaction`
--

INSERT INTO `item_transaction` (`transactionID`, `userID`, `itemID`, `date`) VALUES
(22, 1002, 1, '2013-03-02'),
(23, 1003, 1, '2013-03-03'),
(24, 1003, 1, '2013-03-03'),
(25, 1003, 1, '2013-03-04'),
(26, 1003, 1, '2013-03-06'),
(27, 1003, 1, '2013-03-07'),
(32, 1001, 1, '2013-03-15'),
(42, 1002, 2, '2013-03-16'),
(43, 1002, 2, '1970-01-01'),
(44, 1002, 2, '2013-03-20'),
(45, 1002, 2, '2013-03-20'),
(46, 1002, 2, '2013-03-22'),
(47, 1002, 2, '2013-03-29'),
(48, 1002, 2, '2013-03-28'),
(49, 1002, 2, '2013-03-01'),
(50, 1002, 1, '2013-03-29'),
(51, 1002, 1, '2013-03-22'),
(52, 1002, 1, '2013-03-30'),
(53, 1001, 2, '2013-03-30'),
(54, 1001, 1, '2013-03-30'),
(55, 1001, 1, '2013-03-27'),
(56, 1001, 1, '2013-03-27'),
(57, 1001, 1, '2013-03-16'),
(58, 1001, 1, '2013-03-26'),
(59, 1001, 2, '2013-03-06'),
(60, 1001, 2, '2013-03-27'),
(61, 1002, 2, '2013-03-02'),
(62, 1001, 3, '2013-04-23'),
(63, 1002, 1, '2013-04-27'),
(64, 1002, 1, '2013-04-13'),
(65, 1001, 1, '2017-04-25'),
(66, 1008, 1, '2017-04-20'),
(67, 1001, 4, '2017-04-20'),
(68, 1002, 4, '2017-04-18'),
(69, 1001, 4, '2017-04-21'),
(70, 1002, 4, '2017-04-11'),
(71, 1001, 1, '2017-04-29'),
(72, 1002, 2, '2017-04-08'),
(73, 1001, 1, '2017-05-03'),
(74, 1001, 5, '2017-06-17'),
(75, 1002, 5, '2017-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `material_category`
--

CREATE TABLE `material_category` (
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material_category`
--

INSERT INTO `material_category` (`categoryID`, `categoryName`) VALUES
(8, 'building materials'),
(6, 'catering'),
(10, 'New Category Added '),
(1, 'stationery'),
(9, 'tools');

-- --------------------------------------------------------

--
-- Table structure for table `material_requisition`
--

CREATE TABLE `material_requisition` (
  `materialReqID` int(11) NOT NULL,
  `mat_quantity` varchar(30) NOT NULL,
  `department` text NOT NULL,
  `transactionID` int(5) NOT NULL COMMENT 'foreign key from transaction table'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material_requisition`
--

INSERT INTO `material_requisition` (`materialReqID`, `mat_quantity`, `department`, `transactionID`) VALUES
(9, '21', 'maths and informatics', 32),
(10, '3', 'maths and informatics', 53),
(11, '20', 'maths and informatics', 54),
(12, '20', 'maths and informatics', 55),
(13, '20', 'maths and informatics', 56),
(14, '10', 'maths and informatics', 57),
(15, '12', 'maths and informatics', 58),
(16, '3', 'maths and informatics', 59),
(17, '500', 'maths and informatics', 62),
(18, '50', 'maths and informatics', 65),
(19, '1000', 'maths and informatics', 66),
(20, '50', 'maths and informatics', 67),
(21, '111', 'maths and informatics', 69),
(22, '20', 'maths and informatics', 71),
(23, '5', 'maths and informatics', 73),
(24, '10', 'maths and informatics', 74);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_requisition`
--

CREATE TABLE `purchase_requisition` (
  `purchaseReqID` int(10) NOT NULL,
  `quantity_ordered` varchar(20) NOT NULL,
  `supplierID` int(11) NOT NULL,
  `transactionID` int(5) NOT NULL,
  `order_no` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_requisition`
--

INSERT INTO `purchase_requisition` (`purchaseReqID`, `quantity_ordered`, `supplierID`, `transactionID`, `order_no`) VALUES
(8, '100', 3, 22, 2984),
(9, '200', 4, 23, 6729),
(10, '200', 4, 24, 7682),
(11, '300', 4, 25, 4664),
(12, '400', 3, 26, 2494),
(13, '600', 4, 27, 3858),
(23, '50', 4, 42, 7544),
(24, '300', 7, 44, 3267),
(25, '200', 4, 45, 4229),
(26, '45', 8, 46, 422),
(27, '40', 4, 47, 799),
(28, '300', 3, 48, 7661),
(29, '200', 3, 49, 6363),
(30, '50', 7, 61, 2110),
(31, '20', 3, 63, 1560),
(32, '20', 3, 64, 1956),
(33, '2000', 9, 68, 4664),
(34, '500', 9, 70, 2369),
(35, '2000', 4, 72, 1454),
(36, '100', 9, 75, 4155);

-- --------------------------------------------------------

--
-- Table structure for table `receive_note`
--

CREATE TABLE `receive_note` (
  `receiveID` int(10) NOT NULL,
  `quantity_received` varchar(30) NOT NULL,
  `date_received` date NOT NULL,
  `purch_approvID` int(6) NOT NULL COMMENT 'foreign key from approve_purch table'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receive_note`
--

INSERT INTO `receive_note` (`receiveID`, `quantity_received`, `date_received`, `purch_approvID`) VALUES
(119, '30', '2013-03-30', 5),
(120, '40', '2013-03-23', 7),
(123, '30', '2013-03-20', 6),
(125, '20', '2013-03-16', 8);

-- --------------------------------------------------------

--
-- Table structure for table `rejectd_mat_req`
--

CREATE TABLE `rejectd_mat_req` (
  `mat_rejectionID` int(6) NOT NULL,
  `materialReqID` int(6) NOT NULL,
  `date_mat_rejectd` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rejectd_mat_req`
--

INSERT INTO `rejectd_mat_req` (`mat_rejectionID`, `materialReqID`, `date_mat_rejectd`) VALUES
(18, 13, '2013-03-29'),
(19, 14, '2013-03-29'),
(20, 17, '2017-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `rejectd_purch_req`
--

CREATE TABLE `rejectd_purch_req` (
  `purch_rejectdID` int(6) NOT NULL,
  `purchaseReqID` int(6) NOT NULL,
  `date_purch_rejectd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rejectd_purch_req`
--

INSERT INTO `rejectd_purch_req` (`purch_rejectdID`, `purchaseReqID`, `date_purch_rejectd`) VALUES
(1, 10, '2017-04-07'),
(2, 8, '2017-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `return_note`
--

CREATE TABLE `return_note` (
  `returnID` int(11) NOT NULL,
  `receiveID` int(10) NOT NULL COMMENT 'foreign key from receive_note'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_note`
--

INSERT INTO `return_note` (`returnID`, `receiveID`) VALUES
(1, 125);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplierID` int(11) NOT NULL,
  `supplierName` text NOT NULL,
  `supplierLocation` varchar(40) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `itemsSupplied` varchar(40) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplierID`, `supplierName`, `supplierLocation`, `phone_no`, `email`, `itemsSupplied`, `date`, `status`) VALUES
(3, 'Stationery King', 'Nairobi ', '0733456564', 'geedaniel2@gmail.com', 'stationery', '2013-05-01', 'available'),
(4, 'Mwaniki and Sons', 'Voi', '0721345678', 'geedaniel2@gmail.com', 'fresh produce', '2013-02-02', 'available'),
(7, 'Macdonalds', 'Mom', '0722334466', 'dani0g@yah.com', 'bread', '2013-01-03', 'available'),
(8, 'Njuguna Suppliers', 'Kiambu', '0733333333', 'dani0g@yahoo.com', 'statonery', '2013-07-01', 'available'),
(9, 'test suplier', 'test loc', '1234', 'a@g.com', 'test item suplie', '2017-04-14', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(4) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL,
  `department` text NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `secondName` varchar(20) NOT NULL,
  `national_id` varchar(11) NOT NULL,
  `gender` tinytext NOT NULL,
  `email` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `status` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `username`, `password`, `role`, `department`, `firstName`, `secondName`, `national_id`, `gender`, `email`, `dob`, `status`) VALUES
(1000, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'administrator', 'administrator', 'Riadul ', 'Islam', '27456789', 'male', 'admin@admin.com', '1970-01-01', 'active'),
(1001, 'user', '21232f297a57a5a743894a0e4a801fc3', 'secretary', 'user', 'Noor-E', '-Alam', '27072749', 'female', 'jane@procurement.com', '1987-03-01', 'active'),
(1002, 'pro_off', '21232f297a57a5a743894a0e4a801fc3', 'procurement officer', 'procurement', 'Ziaur', 'Rahman', '28394923', 'male', 'ken@procurement.com', '1970-01-01', 'active'),
(1003, 'finance_off', '21232f297a57a5a743894a0e4a801fc3', 'finance officer', 'finance', 'Shuza', 'SA', '20948731', 'male', 'david@procurement.com', '1987-10-01', 'active'),
(1008, 'sec', '21232f297a57a5a743894a0e4a801fc3', 'sec', 'enginner', 'Asaduzzaman', 'Noor', '123', 'male', 'daniel@procurement.com', '2013-04-05', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approv_mat_req`
--
ALTER TABLE `approv_mat_req`
  ADD PRIMARY KEY (`mat_approvalID`),
  ADD UNIQUE KEY `FK_approv_mat_req` (`materialReqID`);

--
-- Indexes for table `approv_purch_req`
--
ALTER TABLE `approv_purch_req`
  ADD PRIMARY KEY (`purch_approvID`),
  ADD UNIQUE KEY `FK_approv_purch_req` (`purchaseReqID`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`cal_id`),
  ADD KEY `FK_calendar` (`user_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemID`),
  ADD UNIQUE KEY `NewIndex1` (`itemName`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `item_transaction`
--
ALTER TABLE `item_transaction`
  ADD PRIMARY KEY (`transactionID`),
  ADD KEY `FK_item_transaction` (`userID`),
  ADD KEY `FK_item_transaction1` (`itemID`);

--
-- Indexes for table `material_category`
--
ALTER TABLE `material_category`
  ADD PRIMARY KEY (`categoryID`),
  ADD UNIQUE KEY `NewIndex1` (`categoryName`);

--
-- Indexes for table `material_requisition`
--
ALTER TABLE `material_requisition`
  ADD PRIMARY KEY (`materialReqID`),
  ADD UNIQUE KEY `FK_material_requisition` (`transactionID`);

--
-- Indexes for table `purchase_requisition`
--
ALTER TABLE `purchase_requisition`
  ADD PRIMARY KEY (`purchaseReqID`),
  ADD UNIQUE KEY `FK_purchase_requisition` (`transactionID`),
  ADD KEY `FK_purchase_requisition1` (`supplierID`);

--
-- Indexes for table `receive_note`
--
ALTER TABLE `receive_note`
  ADD PRIMARY KEY (`receiveID`),
  ADD UNIQUE KEY `FK_receive_note` (`purch_approvID`);

--
-- Indexes for table `rejectd_mat_req`
--
ALTER TABLE `rejectd_mat_req`
  ADD PRIMARY KEY (`mat_rejectionID`),
  ADD UNIQUE KEY `FK_rejectd_mat_req` (`materialReqID`);

--
-- Indexes for table `rejectd_purch_req`
--
ALTER TABLE `rejectd_purch_req`
  ADD PRIMARY KEY (`purch_rejectdID`),
  ADD UNIQUE KEY `FK_rejectd_purch_req` (`purchaseReqID`);

--
-- Indexes for table `return_note`
--
ALTER TABLE `return_note`
  ADD PRIMARY KEY (`returnID`),
  ADD UNIQUE KEY `foreign_key` (`receiveID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplierID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `username_2` (`username`),
  ADD KEY `username_3` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approv_mat_req`
--
ALTER TABLE `approv_mat_req`
  MODIFY `mat_approvalID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `approv_purch_req`
--
ALTER TABLE `approv_purch_req`
  MODIFY `purch_approvID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `cal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `itemID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `item_transaction`
--
ALTER TABLE `item_transaction`
  MODIFY `transactionID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `material_category`
--
ALTER TABLE `material_category`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `material_requisition`
--
ALTER TABLE `material_requisition`
  MODIFY `materialReqID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `purchase_requisition`
--
ALTER TABLE `purchase_requisition`
  MODIFY `purchaseReqID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `receive_note`
--
ALTER TABLE `receive_note`
  MODIFY `receiveID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `rejectd_mat_req`
--
ALTER TABLE `rejectd_mat_req`
  MODIFY `mat_rejectionID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `rejectd_purch_req`
--
ALTER TABLE `rejectd_purch_req`
  MODIFY `purch_rejectdID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `return_note`
--
ALTER TABLE `return_note`
  MODIFY `returnID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `approv_mat_req`
--
ALTER TABLE `approv_mat_req`
  ADD CONSTRAINT `FK_approv_mat_req` FOREIGN KEY (`materialReqID`) REFERENCES `material_requisition` (`materialReqID`);

--
-- Constraints for table `approv_purch_req`
--
ALTER TABLE `approv_purch_req`
  ADD CONSTRAINT `FK_approv_purch_req` FOREIGN KEY (`purchaseReqID`) REFERENCES `purchase_requisition` (`purchaseReqID`);

--
-- Constraints for table `calendar`
--
ALTER TABLE `calendar`
  ADD CONSTRAINT `FK_calendar` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `categoryID` FOREIGN KEY (`categoryID`) REFERENCES `material_category` (`categoryID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_transaction`
--
ALTER TABLE `item_transaction`
  ADD CONSTRAINT `FK_item_transaction` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_item_transaction1` FOREIGN KEY (`itemID`) REFERENCES `items` (`itemID`);

--
-- Constraints for table `material_requisition`
--
ALTER TABLE `material_requisition`
  ADD CONSTRAINT `FK_material_requisition` FOREIGN KEY (`transactionID`) REFERENCES `item_transaction` (`transactionID`);

--
-- Constraints for table `purchase_requisition`
--
ALTER TABLE `purchase_requisition`
  ADD CONSTRAINT `FK_purchase_requisition` FOREIGN KEY (`transactionID`) REFERENCES `item_transaction` (`transactionID`),
  ADD CONSTRAINT `FK_purchase_requisition1` FOREIGN KEY (`supplierID`) REFERENCES `supplier` (`supplierID`);

--
-- Constraints for table `receive_note`
--
ALTER TABLE `receive_note`
  ADD CONSTRAINT `FK_receive_note` FOREIGN KEY (`purch_approvID`) REFERENCES `approv_purch_req` (`purch_approvID`);

--
-- Constraints for table `rejectd_mat_req`
--
ALTER TABLE `rejectd_mat_req`
  ADD CONSTRAINT `FK_rejectd_mat_req` FOREIGN KEY (`materialReqID`) REFERENCES `material_requisition` (`materialReqID`);

--
-- Constraints for table `rejectd_purch_req`
--
ALTER TABLE `rejectd_purch_req`
  ADD CONSTRAINT `FK_rejectd_purch_req` FOREIGN KEY (`purchaseReqID`) REFERENCES `purchase_requisition` (`purchaseReqID`);

--
-- Constraints for table `return_note`
--
ALTER TABLE `return_note`
  ADD CONSTRAINT `FK_return_note` FOREIGN KEY (`receiveID`) REFERENCES `receive_note` (`receiveID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
