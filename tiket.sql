-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2016 at 03:03 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tiket`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE IF NOT EXISTS `bus` (
  `idbus` varchar(20) NOT NULL,
  `idpenumpang` varchar(20) NOT NULL,
  `tujuan` varchar(20) NOT NULL,
  `hsatuan` double NOT NULL,
  PRIMARY KEY (`idbus`,`idpenumpang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE IF NOT EXISTS `nota` (
  `idnota` varchar(20) NOT NULL,
  `idpemesanan` varchar(20) NOT NULL,
  `tharga` double NOT NULL,
  `tipepembayaran` varchar(20) NOT NULL,
  PRIMARY KEY (`idnota`,`idpemesanan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
  `idpemesanan` varchar(20) NOT NULL,
  `idpenumpang` varchar(20) NOT NULL,
  `idbus` varchar(20) NOT NULL,
  `tglkeberangkatan` date NOT NULL,
  `jtiket` double NOT NULL,
  `hsatuan` double NOT NULL,
  `tharga` double NOT NULL,
  PRIMARY KEY (`idpemesanan`,`idpenumpang`,`idbus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penumpang`
--

CREATE TABLE IF NOT EXISTS `penumpang` (
  `idpenumpang` int(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `npenumpang` varchar(20) NOT NULL,
  `ttl` varchar(20) NOT NULL,
  `jenkel` varchar(10) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  PRIMARY KEY (`idpenumpang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE IF NOT EXISTS `tiket` (
  `idtiket` varchar(20) NOT NULL,
  `idpenumpang` varchar(20) NOT NULL,
  `idnota` varchar(20) NOT NULL,
  PRIMARY KEY (`idtiket`,`idpenumpang`,`idnota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
