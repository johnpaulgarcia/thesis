-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2018 at 06:30 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cemeterydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_clients`
--

CREATE TABLE `db_clients` (
  `clientID` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `SRent` varchar(100) NOT NULL,
  `ERent` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_clients`
--

INSERT INTO `db_clients` (`clientID`, `fullname`, `contact`, `address`, `SRent`, `ERent`) VALUES
('1718799460', 'jay', '164106514964', 'hsdfhsdlh', '2018-10-16', '2018-10-31'),
('1929430410', 'mark', 'potso', 'hsdfhsdlh', '2018-10-10', '2018-10-31'),
('1816135619', 'Christopher Alejo', '785843579347', 'jsdfljsadf;sdf', '2018-10-11', '2018-10-31'),
('408541171', 'Karl Basibas', '52353245', '453245234', '2018-10-05', '2018-10-26');

-- --------------------------------------------------------

--
-- Table structure for table `db_deadreg`
--

CREATE TABLE `db_deadreg` (
  `deceasedID` int(11) NOT NULL,
  `clientID` varchar(100) NOT NULL,
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `typetomb` varchar(100) NOT NULL,
  `Birth` varchar(100) NOT NULL,
  `Death` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_deadreg`
--

INSERT INTO `db_deadreg` (`deceasedID`, `clientID`, `Firstname`, `Lastname`, `typetomb`, `Birth`, `Death`, `Location`, `Image`) VALUES
(1, '1718799460', 'Jay', 'Lo', 'Nakadapa', '2018-10-05', '2018-10-11', 'FSADFAS', 'icons8-plus-100.png'),
(2, '1929430410', 'jayben', 'adra', 'Muslim Style', '2018-10-03', '2018-10-25', 'FSADFAS', 'icons8-plus-100.png'),
(3, '1929430410', 'koji', 'suzuki', 'Nakadapa', '2018-10-06', '2018-10-31', 'FASDFA', 'icons8-plus-100.png'),
(4, '1929430410', 'gerald', 'mestiola', 'Nakatiwarik', '2018-10-04', '2018-10-31', 'fsdfsad', 'icons8-plus-100.png');

-- --------------------------------------------------------

--
-- Table structure for table `db_login`
--

CREATE TABLE `db_login` (
  `ID` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `db_staff`
--

CREATE TABLE `db_staff` (
  `staffID` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_staff`
--

INSERT INTO `db_staff` (`staffID`, `fullname`, `username`, `password`) VALUES
('1', 'jay', 'nigelooliquino', 'potso');

-- --------------------------------------------------------

--
-- Table structure for table `db_typetombs`
--

CREATE TABLE `db_typetombs` (
  `ID` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_typetombs`
--

INSERT INTO `db_typetombs` (`ID`, `type`) VALUES
('single', ''),
('double deck', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_updatemap`
--

CREATE TABLE `db_updatemap` (
  `deceasedID` varchar(100) NOT NULL,
  `Firtsname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `selected_text` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `Birth` varchar(100) NOT NULL,
  `Death` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_deadreg`
--
ALTER TABLE `db_deadreg`
  ADD PRIMARY KEY (`deceasedID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_deadreg`
--
ALTER TABLE `db_deadreg`
  MODIFY `deceasedID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
