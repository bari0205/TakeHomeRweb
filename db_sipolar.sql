-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2019 at 04:30 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_sipolar`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
`id_admin` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text,
  `status` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'oimtrust', 'ac43724f16e9241d990427ab7c8f4228', 'admin', '2018-01-25 17:13:14', '2018-01-29 16:38:25'),
(2, 'approve', 'ac43724f16e9241d990427ab7c8f4228', 'approve', '2018-01-29 17:56:54', '2018-01-30 09:13:27'),
(4, 'admin', 'ac43724f16e9241d990427ab7c8f4228', 'admin', '2018-01-30 09:32:01', '2018-01-30 09:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fakultas`
--

CREATE TABLE IF NOT EXISTS `tbl_fakultas` (
`id_fakultas` int(11) NOT NULL,
  `nama_fakultas` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_fakultas`
--

INSERT INTO `tbl_fakultas` (`id_fakultas`, `nama_fakultas`, `created_at`, `updated_at`) VALUES
(1, 'Ilmu Pendidikan', '2018-01-25 17:59:20', '2018-01-25 17:59:20'),
(2, 'Ekonomika dan Bisnis', '2018-01-25 18:51:09', '2018-01-25 18:51:45'),
(3, 'Sains dan Teknologi', '2018-01-27 21:35:35', '2018-01-27 21:35:35'),
(4, 'Ilmu Hukum', '2018-01-27 21:35:49', '2018-01-27 21:35:49'),
(5, 'Peternakan', '2018-01-27 21:37:32', '2018-01-27 21:37:32'),
(6, 'Bahasa dan Sastra', '2018-01-27 21:37:45', '2018-01-27 21:37:45'),
(7, 'Program Pasca Sarjana', '2018-01-27 21:38:00', '2018-01-27 21:38:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hari`
--

CREATE TABLE IF NOT EXISTS `tbl_hari` (
`id_hari` int(11) NOT NULL,
  `nama_hari` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_hari`
--

INSERT INTO `tbl_hari` (`id_hari`, `nama_hari`, `created_at`, `updated_at`) VALUES
(1, 'Senin', '2018-02-05 17:24:06', '2018-02-05 17:24:06'),
(2, 'Selasa', '2018-02-05 17:25:38', '2018-02-05 17:26:49'),
(3, 'Rabu', '2018-02-05 17:25:38', '2018-02-05 17:27:12'),
(4, 'Kamis', '2018-02-05 17:25:38', '2018-02-05 17:27:21'),
(5, 'Jumat', '2018-02-05 17:25:38', '2018-02-05 17:27:30'),
(6, 'Sabtu', '2018-02-05 17:25:38', '2018-02-05 17:27:38'),
(7, 'Minggu', '2018-02-05 17:27:55', '2018-02-05 17:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peminjaman`
--

CREATE TABLE IF NOT EXISTS `tbl_peminjaman` (
`id_peminjaman` int(11) NOT NULL,
  `id_user` int(15) NOT NULL,
  `id_ruang` int(11) NOT NULL,
  `id_hari` int(11) NOT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `jam_awal` time NOT NULL,
  `jam_akhir` time NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'MENUNGGU',
  `alasan` varchar(255) DEFAULT 'Tidak Ada',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_peminjaman`
--

INSERT INTO `tbl_peminjaman` (`id_peminjaman`, `id_user`, `id_ruang`, `id_hari`, `tgl_pinjam`, `jam_awal`, `jam_akhir`, `keterangan`, `status`, `alasan`, `created_at`, `updated_at`) VALUES
(7, 12354, 1, 4, '2019-05-09', '08:00:00', '09:00:00', 'riset rweb', 'DITERIMA', 'Peminjaman anda pada tanggal 2019-05-09 mulai dari jam 08:00:00 hingga jam 09:00:00 di terima', '0000-00-00 00:00:00', '2019-05-08 13:54:42'),
(8, 12345, 2, 2, '2019-05-09', '10:00:00', '12:00:00', 'riset aplikasi penerapan nlp', 'DITERIMA', 'Peminjaman anda pada tanggal 2019-05-09 mulai dari jam 10:00:00 hingga jam 12:00:00 di terima', '0000-00-00 00:00:00', '2019-05-08 14:17:54'),
(9, 11111, 2, 1, '2019-05-09', '17:00:00', '21:00:00', 'riset design frontend', 'DITERIMA', 'Peminjaman anda pada tanggal 2019-05-09 mulai dari jam 17:00:00 hingga jam 21:00:00 di terima', '0000-00-00 00:00:00', '2019-05-08 14:21:28'),
(10, 11111, 1, 3, '2019-05-09', '07:30:00', '09:00:00', 'praktikum rweb', 'DITERIMA', 'Peminjaman anda pada tanggal 2019-05-09 mulai dari jam 07:30:00 hingga jam 09:00:00 di terima', '0000-00-00 00:00:00', '2019-05-08 14:22:24'),
(11, 12354, 1, 5, '2019-05-09', '13:30:00', '17:00:00', 'penelitian microchips', 'DITERIMA', 'Peminjaman anda pada tanggal 2019-05-09 mulai dari jam 13:30:00 hingga jam 17:00:00 di terima', '0000-00-00 00:00:00', '2019-05-08 14:28:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prodi`
--

CREATE TABLE IF NOT EXISTS `tbl_prodi` (
`id_prodi` int(11) NOT NULL,
  `nama_prodi` varchar(100) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tbl_prodi`
--

INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `id_fakultas`, `created_at`, `updated_at`) VALUES
(1, 'Bimbingan dan Konseling', 1, '2018-01-26 09:20:06', '2018-01-26 09:20:06'),
(2, 'Pendidikan Geografi', 1, '2018-01-26 09:21:08', '2018-01-26 10:15:43'),
(3, 'PGPAUD', 1, '2018-01-27 21:56:03', '2018-01-27 21:56:03'),
(4, 'PGSD', 1, '2018-01-27 21:58:09', '2018-01-27 21:58:09'),
(5, 'PPKn', 1, '2018-01-27 21:58:28', '2018-01-27 21:58:28'),
(6, 'Manajemen', 2, '2018-01-27 22:00:08', '2018-01-27 22:00:08'),
(7, 'Akuntansi', 2, '2018-01-27 22:00:24', '2018-01-27 22:00:24'),
(8, 'Pendidikan Ekonomi', 2, '2018-01-27 22:03:49', '2018-01-27 22:03:49'),
(9, 'Magister Manajemen', 2, '2018-01-27 22:05:53', '2018-01-27 22:05:53'),
(10, 'Sistem Informasi', 3, '2018-01-27 22:06:16', '2018-01-27 22:06:16'),
(11, 'Teknik Informatika', 3, '2018-01-27 22:10:09', '2018-01-27 22:10:09'),
(12, 'Pendidikan Fisika', 3, '2018-01-27 22:25:08', '2018-01-27 22:25:08'),
(13, 'Pendidikan Matematika', 3, '2018-01-27 22:31:28', '2018-01-27 22:31:28'),
(14, 'Ilmu Hukum', 4, '2018-01-27 22:32:59', '2018-01-27 22:32:59'),
(15, 'Peternakan', 5, '2018-01-27 22:33:40', '2018-01-27 22:33:40'),
(16, 'Sastra Inggris', 6, '2018-01-27 22:34:36', '2018-01-27 22:34:36'),
(17, 'Pendidikan Bahasa dan Sastra Indonesia', 6, '2018-01-27 22:35:03', '2018-01-27 22:35:03'),
(18, 'Pendidikan Bahasa Inggris', 6, '2018-01-27 22:35:25', '2018-01-27 22:35:25'),
(19, 'Magister Pendidikan IPS', 7, '2018-01-27 22:36:24', '2018-01-27 22:36:24'),
(20, 'Magister Manajemen', 7, '2018-01-27 22:36:44', '2018-01-27 22:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ruang`
--

CREATE TABLE IF NOT EXISTS `tbl_ruang` (
`id_ruang` int(11) NOT NULL,
  `nama_ruang` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'KOSONG',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_ruang`
--

INSERT INTO `tbl_ruang` (`id_ruang`, `nama_ruang`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lab Riset KKSC', 'TERPAKAI', '2018-01-26 22:13:10', '2019-05-08 11:43:18'),
(2, 'Lab Riset Relata', 'TERPAKAI', '2018-01-26 22:17:16', '2019-05-08 11:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` int(15) NOT NULL,
  `password` varchar(225) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `status` varchar(15) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `password`, `nama_user`, `id_fakultas`, `id_prodi`, `alamat`, `status`, `created_at`, `updated_at`) VALUES
(11111, 'ac43724f16e9241d990427ab7c8f4228', 'Om Bri', 3, 11, 'Bengkulu', 'Tidak Tetap', '2018-01-28 10:39:16', '2019-05-08 14:00:14'),
(12345, 'ac43724f16e9241d990427ab7c8f4228', 'Mas Luck', 1, 1, 'Malang', 'Tetap', '2018-01-27 21:29:01', '2019-05-08 13:59:20'),
(12354, 'ac43724f16e9241d990427ab7c8f4228', 'Mas Gema Gemuk', 1, 4, 'Curup', 'Tetap', '2018-01-27 22:42:53', '2019-05-08 13:59:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_fakultas`
--
ALTER TABLE `tbl_fakultas`
 ADD PRIMARY KEY (`id_fakultas`);

--
-- Indexes for table `tbl_hari`
--
ALTER TABLE `tbl_hari`
 ADD PRIMARY KEY (`id_hari`);

--
-- Indexes for table `tbl_peminjaman`
--
ALTER TABLE `tbl_peminjaman`
 ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indexes for table `tbl_prodi`
--
ALTER TABLE `tbl_prodi`
 ADD PRIMARY KEY (`id_prodi`);

--
-- Indexes for table `tbl_ruang`
--
ALTER TABLE `tbl_ruang`
 ADD PRIMARY KEY (`id_ruang`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_fakultas`
--
ALTER TABLE `tbl_fakultas`
MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_hari`
--
ALTER TABLE `tbl_hari`
MODIFY `id_hari` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_peminjaman`
--
ALTER TABLE `tbl_peminjaman`
MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_prodi`
--
ALTER TABLE `tbl_prodi`
MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_ruang`
--
ALTER TABLE `tbl_ruang`
MODIFY `id_ruang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
