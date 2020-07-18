-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2020 at 02:57 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `persediaan_mobil`
--

CREATE TABLE `persediaan_mobil` (
  `mrk_mobil` varchar(50) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `tipe` varchar(10) NOT NULL,
  `hrga_sw` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `persediaan_mobil`
--

INSERT INTO `persediaan_mobil` (`mrk_mobil`, `nopol`, `tipe`, `hrga_sw`) VALUES
('Grand Livina', 'AB8897HK', 'Matic', 450000),
('BR-V', 'AD2206YW', 'Manual', 450000),
('Brio', 'AD6546LI', 'Matic', 450000),
('Datsun Go', 'AD6666PK', 'Manual', 375000),
('Kijang Innova', 'AD6754BG', 'Manual', 350000),
('AVANSA', 'AD6789OD', 'Matic', 350000),
('APV', 'AD7611MH', 'Matic', 500000),
('Terios', 'AD9090II', 'Manual', 450000),
('CRV', 'B3325GT', 'Matic', 450000),
('XENIA', 'B6543AF', 'Manual', 400000),
('CRV', 'K7898HN', 'Manual', 300000),
('Jazz', 'K8542JK', 'Manual', 300000),
('HR-V', 'K8907WM', 'Manual', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `rentalmobil`
--

CREATE TABLE `rentalmobil` (
  `no_nota` int(6) NOT NULL,
  `nama_peminjam` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` int(13) NOT NULL,
  `mrk_mbl` varchar(20) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `tipe` varchar(10) NOT NULL,
  `harga_sw` int(15) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kmbl` date NOT NULL,
  `lama` int(10) NOT NULL,
  `total` int(15) NOT NULL,
  `bayar` int(15) NOT NULL,
  `kembali` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rentalmobil`
--

INSERT INTO `rentalmobil` (`no_nota`, `nama_peminjam`, `alamat`, `telp`, `mrk_mbl`, `nopol`, `tipe`, `harga_sw`, `tgl_pinjam`, `tgl_kmbl`, `lama`, `total`, `bayar`, `kembali`) VALUES
(1234, 'Yuni ', 'Boyolala', 3456789, 'Kijang Innova', 'AD6754BG', 'Manual', 350000, '2020-02-02', '2020-02-04', 2, 900000, 1000000, 100000),
(1235, 'Wahyu', 'klaten', 8899776, 'AVANSA', 'AD6789OD', 'Matic', 350000, '2020-03-03', '2020-03-05', 2, 700000, 700000, 0),
(1236, 'Aisya', 'Surakarta', 987654324, 'Grand Livina', 'AB8897HK', 'Matic', 450000, '2020-03-14', '2020-03-17', 3, 1350000, 1400000, 50000),
(1237, 'Hafidz', 'Semarang', 12345678, 'BR-V', 'AD2206YW', 'Manual', 450000, '2020-06-01', '2020-06-02', 2, 900000, 1000000, 100000),
(1238, 'Mustofa', 'Sukoharjo', 8765785, 'HR-V', 'K8907WM', 'Manual', 500000, '2020-04-10', '2020-04-12', 2, 1000000, 1000000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `id_user` varchar(6) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`id_user`, `nama`, `username`, `password`, `type`) VALUES
('US001', 'Yuni', 'staff', 'staff', 'staff'),
('US111', 'Nur', 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `persediaan_mobil`
--
ALTER TABLE `persediaan_mobil`
  ADD PRIMARY KEY (`nopol`);

--
-- Indexes for table `rentalmobil`
--
ALTER TABLE `rentalmobil`
  ADD PRIMARY KEY (`no_nota`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
