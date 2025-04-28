-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2025 at 04:43 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dea`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dea`
--

CREATE TABLE `tb_dea` (
  `id` int(11) NOT NULL,
  `nim` varchar(9) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `gender` set('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_dea`
--

INSERT INTO `tb_dea` (`id`, `nim`, `nama`, `gender`) VALUES
(2, '232302013', 'Dea', 'P'),
(3, '232302008', 'Mirna', 'P'),
(5, '232302014', 'Farhan Rohman', 'L'),
(6, '232302012', 'Christianty', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mhs`
--

CREATE TABLE `tb_mhs` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nim` char(9) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `desa` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mhs`
--

INSERT INTO `tb_mhs` (`id`, `nama`, `nim`, `kelas`, `alamat`, `desa`, `kecamatan`) VALUES
(1, 'Dea', '123456789', 'A', 'Bojongbolang', 'Sukadana', 'Cimanggung'),
(2, 'Budi', '987654321', 'B', '', '', NULL),
(3, 'Cici', '112233445', 'C', NULL, NULL, NULL),
(4, 'Doni', '998877665', 'A', NULL, NULL, NULL),
(5, 'Eka', '223344556', 'B', NULL, NULL, NULL),
(6, 'Fani', '667788990', 'C', NULL, NULL, NULL),
(7, 'Gita', '555666777', 'A', NULL, NULL, NULL),
(8, 'Hadi', '444555666', 'B', '', NULL, NULL),
(9, 'Ika', '333444555', 'C', NULL, NULL, NULL),
(10, 'Joko', '222333444', 'A', NULL, NULL, NULL),
(11, 'Kiki', '111222333', 'B', NULL, NULL, NULL),
(12, 'Lina', '555444333', 'C', NULL, NULL, NULL),
(13, 'Mira', '888777666', 'A', NULL, NULL, NULL),
(14, 'Nina', '777666555', 'B', NULL, NULL, NULL),
(15, 'Oki', '666555444', 'C', NULL, NULL, NULL),
(16, 'Pia', '999888777', 'A', NULL, NULL, NULL),
(17, 'Riko', '444333222', 'B', NULL, NULL, NULL),
(18, 'Sari', '123456780', 'C', NULL, NULL, NULL),
(19, 'Tina', '987654322', 'A', NULL, NULL, NULL),
(20, 'Udin', '112233446', 'B', NULL, NULL, NULL),
(21, 'Vina', '998877666', 'C', NULL, NULL, NULL),
(22, 'Wira', '223344557', 'A', NULL, NULL, NULL),
(23, 'Xena', '667788991', 'B', NULL, NULL, NULL),
(24, 'Yani', '555666778', 'C', NULL, NULL, NULL),
(25, 'Zaki', '444555667', 'A', NULL, NULL, NULL),
(26, 'Andi', '333444556', 'B', NULL, NULL, NULL),
(27, 'Bela', '222333445', 'C', NULL, NULL, NULL),
(28, 'Caca', '111222334', 'A', NULL, NULL, NULL),
(29, 'Dede', '555444334', 'B', NULL, NULL, NULL),
(30, 'Eka', '888777667', 'C', NULL, NULL, NULL),
(31, 'Fira', '777666556', 'A', NULL, NULL, NULL),
(32, 'Gila', '666555445', 'B', NULL, NULL, NULL),
(33, 'Hira', '999888778', 'C', NULL, NULL, NULL),
(34, 'Indra', '444333223', 'A', NULL, NULL, NULL),
(35, 'Juni', '123456781', 'B', NULL, NULL, NULL),
(36, 'Karo', '987654323', 'C', NULL, NULL, NULL),
(37, 'Luki', '112233447', 'A', NULL, NULL, NULL),
(38, 'Mira', '998877667', 'B', NULL, NULL, NULL),
(39, 'Niko', '223344558', 'C', NULL, NULL, NULL),
(40, 'Pia', '667788992', 'A', NULL, NULL, NULL),
(41, 'Rani', '555666779', 'B', NULL, NULL, NULL),
(42, 'Soni', '444555668', 'C', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dea`
--
ALTER TABLE `tb_dea`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_mhs`
--
ALTER TABLE `tb_mhs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nim` (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_dea`
--
ALTER TABLE `tb_dea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_mhs`
--
ALTER TABLE `tb_mhs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
