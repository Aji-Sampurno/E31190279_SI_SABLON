-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2020 at 01:46 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sablon`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(5) NOT NULL,
  `nama_barang` varchar(16) DEFAULT NULL,
  `stok` bigint(20) DEFAULT NULL,
  `harga` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `stok`, `harga`) VALUES
('FO001', 'foil', 10, 20000),
('FO002', 'foam', 10, 20000),
('GD001', 'glow in the dark', 10, 20000),
('GL001', 'glitter', 10, 20000),
('PA001', 'pasta', 10, 20000),
('PI001', 'pigmen', 10, 20000),
('PL001', 'plastisol', 10, 20000),
('RU001', 'rubber', 10, 20000),
('SE001', 'separasi', 10, 20000),
('SW001', 'super white', 10, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` varchar(5) NOT NULL,
  `pasword` varchar(5) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `umur` int(2) DEFAULT NULL,
  `tanggal_awal_kerja` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `pasword`, `nama`, `alamat`, `jenis_kelamin`, `umur`, `tanggal_awal_kerja`) VALUES
('01003', '01003', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pemilik`
--

CREATE TABLE `pemilik` (
  `id_pemilik` varchar(5) NOT NULL,
  `pasword` varchar(5) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `umur` int(2) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemilik`
--

INSERT INTO `pemilik` (`id_pemilik`, `pasword`, `nama`, `alamat`, `umur`, `jenis_kelamin`) VALUES
('01023', '01023', 'Amad', 'Kab Jember', 30, 'laki-laki');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id_pesanan` varchar(5) DEFAULT NULL,
  `nama_pemesan` varchar(20) DEFAULT NULL,
  `no_hp` varchar(12) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `jenis_kain` varchar(5) DEFAULT NULL,
  `warna` varchar(30) DEFAULT NULL,
  `jenis_sablon` varchar(5) DEFAULT NULL,
  `jumlah` bigint(255) DEFAULT NULL,
  `tanggal_pengambilan` date DEFAULT NULL,
  `s` int(255) DEFAULT NULL,
  `m` int(255) DEFAULT NULL,
  `l` int(255) DEFAULT NULL,
  `xl` int(255) DEFAULT NULL,
  `xxl` int(255) DEFAULT NULL,
  `lain` int(255) DEFAULT NULL,
  `harga` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id_pesanan`, `nama_pemesan`, `no_hp`, `alamat`, `jenis_kain`, `warna`, `jenis_sablon`, `jumlah`, `tanggal_pengambilan`, `s`, `m`, `l`, `xl`, `xxl`, `lain`, `harga`) VALUES
('01023', 'aji', '8000', 'malang', 'katun', 'biru', 'FO001', 10, '2020-06-12', 1, 1, 1, 1, 1, 5, 0),
('1', '1', '1', '1', '1', '1', 'FO001', 1, '2020-06-13', 1, 1, 1, 1, 1, 1, 0),
('1', '111', '1', '1', '1', '1', 'FO001', 1, '2020-06-06', 1, 1, 1, 1, 1, 1, 0),
('12', '1', '1', '1', '1', '1', 'FO002', 1, '2020-06-20', 1, 1, 1, 1, 1, 1, 0),
('2', '1', '1', '1', '1', '1', 'FO001', 21, '2020-06-18', 2, 2, 2, 22, 2, 2, 0),
('2', '12', '2', '21', '1221', '1212', 'FO001', 12, '2020-06-10', 2, 2, 2, 2, 2, 2, 0),
('3', '12', '2', '21', '1221', '1212', 'FO002', 12, '2020-06-10', 2, 2, 2, 2, 2, 2, 0),
('12', '12', '2112', '12', '21', '12', '12', 12, '2020-06-13', 21, 12, 12, 21, 21, 21, 12);

-- --------------------------------------------------------

--
-- Table structure for table `selesai`
--

CREATE TABLE `selesai` (
  `id_pesanan` varchar(5) DEFAULT NULL,
  `nama_pemesan` varchar(20) DEFAULT NULL,
  `no_hp` int(12) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `jenis_kain` varchar(5) DEFAULT NULL,
  `warna` varchar(30) DEFAULT NULL,
  `jenis_sablon` varchar(5) DEFAULT NULL,
  `jumlah` bigint(255) DEFAULT NULL,
  `tanggal_pengambilan` date DEFAULT NULL,
  `s` int(255) DEFAULT NULL,
  `m` int(255) DEFAULT NULL,
  `l` int(255) DEFAULT NULL,
  `xl` int(255) DEFAULT NULL,
  `xxl` int(255) DEFAULT NULL,
  `lain` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `pemilik`
--
ALTER TABLE `pemilik`
  ADD PRIMARY KEY (`id_pemilik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
