-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2015 at 11:51 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hubert`
--
CREATE DATABASE IF NOT EXISTS `hubert` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hubert`;

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` int(11) NOT NULL,
  `NOM` varchar(100) DEFAULT NULL,
  `PRENOM` varchar(100) DEFAULT NULL,
  `ADRESSE` varchar(200) DEFAULT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `LICENSE` int(11) NOT NULL DEFAULT '0',
  `POSITION` int(11) NOT NULL DEFAULT '0',
  `DISPONIBLE` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `id` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`ID`, `TYPE`, `NOM`, `PRENOM`, `ADRESSE`, `EMAIL`, `PASSWORD`, `LICENSE`, `POSITION`, `DISPONIBLE`) VALUES
(1, 0, '', '', '', 'test', 'test', 0, 0, 0),
(2, 0, NULL, NULL, NULL, 'admin', 'admin', 0, 0, 0),
(3, 2, 'Jean', 'Durand', '15 route du chat', 'jeanjean@gmail.com', 'jeanjean', 0, 0, 0),
(4, 1, 'Lechauffeur', 'Pierre', '120 boulevard des chatons', 'pierre@taxi.com', 'ptaxi', 2546, 69001, 1);

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur_vehicule`
--

CREATE TABLE IF NOT EXISTS `utilisateur_vehicule` (
  `vehicule_fk` int(11) NOT NULL,
  `utilisateur_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utilisateur_vehicule`
--

INSERT INTO `utilisateur_vehicule` (`vehicule_fk`, `utilisateur_fk`) VALUES
(0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicule`
--

CREATE TABLE IF NOT EXISTS `vehicule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `marque` varchar(50) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `capacite` int(11) DEFAULT '0',
  `immatriculation` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
