-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2015 at 10:36 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL,
  `TYPE` int(11) NOT NULL,
  `NOM` varchar(100) NOT NULL,
  `PRENOM` varchar(100) NOT NULL,
  `ADRESSE` varchar(200) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `LICENSE` int(11) NOT NULL,
  `POSITION` int(11) NOT NULL,
  `DISPONIBLE` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `TYPE`, `NOM`, `PRENOM`, `ADRESSE`, `EMAIL`, `PASSWORD`, `LICENSE`, `POSITION`, `DISPONIBLE`) VALUES
(0, 0, '', '', '', 'admin@epsi.fr', 'adminadmin', 0, 0, 0),
(1, 1, 'Bernard', 'Henri', 'Route de vienne', 'benard.henri@taxi.fr', 'beber29', 920909, 69001, 1),
(2, 2, 'Jean', 'Mineur', 'Rue du cinéma', 'jmineur@gmail.com', 'jmineur', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur_vehicule`
--

CREATE TABLE IF NOT EXISTS `utilisateur_vehicule` (
  `utilisateur_fk` int(11) NOT NULL,
  `vehicule_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utilisateur_vehicule`
--

INSERT INTO `utilisateur_vehicule` (`utilisateur_fk`, `vehicule_fk`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicule`
--

CREATE TABLE IF NOT EXISTS `vehicule` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `marque` varchar(50) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `capacite` int(11) NOT NULL,
  `immatriculation` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicule`
--

INSERT INTO `vehicule` (`id`, `type`, `marque`, `modele`, `capacite`, `immatriculation`) VALUES
(0, 1, 'Citroën', 'C5', 4, 'BF 303 DRA');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
