-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 17, 2021 at 12:12 PM
-- Server version: 8.0.25
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digital_signature`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_akun`
--

CREATE TABLE `tbl_akun` (
  `id_akun` int NOT NULL,
  `id_user_akun` varchar(12) NOT NULL,
  `email_akun` varchar(150) NOT NULL,
  `password_akun` varchar(150) NOT NULL,
  `level_akun` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_akun`
--

INSERT INTO `tbl_akun` (`id_akun`, `id_user_akun`, `email_akun`, `password_akun`, `level_akun`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'USR0001', 'test@example.com', '$2y$10$R6slJi4XP2fc8lx2GH5zT.NkjGAaEDo7c8G.OCF7Zt5V6kmLpTSdS', 1, '2021-08-13 10:44:14', 'sistem', '2021-09-17 06:52:04', 'TEST', NULL, NULL),
(16, 'USR0002', 'pengesah1@gmail.com', '$2y$10$IzX6oNNEVEG7..ZGw8fLi.60Wif675Fih7Ih7BdC711Og441ZO45q', 2, '2021-09-17 12:02:33', 'TEST', NULL, NULL, NULL, NULL),
(17, 'USR0003', 'lkm1@gmail.com', '$2y$10$iy0Gq1myFnq50oD.z763CO58N6AP6/SBJIlyT9epVZYaxieTOfI0a', 3, '2021-09-17 12:04:23', 'TEST', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level`
--

CREATE TABLE `tbl_level` (
  `id_level` int NOT NULL,
  `nama_level` varchar(150) NOT NULL,
  `keterangan_level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level`
--

INSERT INTO `tbl_level` (`id_level`, `nama_level`, `keterangan_level`) VALUES
(1, 'Akademik', '--'),
(2, 'Pengesah', '-'),
(3, 'LKM', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log`
--

CREATE TABLE `tbl_log` (
  `id_log` int NOT NULL,
  `id_user_log` varchar(20) NOT NULL,
  `nama_aktor_log` varchar(150) NOT NULL,
  `aksi_log` varchar(255) NOT NULL,
  `kegiatan_log` varchar(50) NOT NULL,
  `status_log` int NOT NULL,
  `tanggal_log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_log`
--

INSERT INTO `tbl_log` (`id_log`, `id_user_log`, `nama_aktor_log`, `aksi_log`, `kegiatan_log`, `status_log`, `tanggal_log`) VALUES
(6, '', 'TEST', 'Menambahkan User dan Akun', '', 0, '2021-08-18 10:47:46'),
(7, '', 'TEST', 'Hapus Sementara User dan Akun', '', 0, '2021-08-18 10:48:33'),
(8, '', 'TEST', 'Restore Data User dengan ID USR0002 dan Akun', '', 0, '2021-08-18 11:19:46'),
(9, '', 'TEST', 'Menambahkan Mahasiswa denga ID MHS0001 dan Akunnya', '', 0, '2021-08-18 11:29:20'),
(10, '', 'TEST', 'Hapus Sementara User dengan IDMHS0001 dan Akunnya', '', 0, '2021-08-18 11:42:38'),
(11, '', 'TEST', 'Restore Data User dengan ID MHS0001 dan Akun', '', 0, '2021-08-18 11:47:30'),
(12, '', 'user', 'Edit User', '', 0, '2021-08-19 11:54:36'),
(13, '', 'user', 'Edit Akun', '', 0, '2021-08-19 11:54:36'),
(14, '', 'user', 'Edit User', '', 0, '2021-08-19 11:55:19'),
(15, '', 'user', 'Edit Akun', '', 0, '2021-08-19 11:55:19'),
(16, '', 'USER', 'Edit User', '', 0, '2021-08-19 11:58:43'),
(17, '', 'USER', 'Edit Akun', '', 0, '2021-08-19 11:58:43'),
(18, '', 'USERRR', 'Edit User dengan ID USR0002 beserta akunnya', '', 0, '2021-08-19 12:03:15'),
(19, '', 'USER', 'ubah password dengan ID USR0002', '', 0, '2021-08-19 12:15:08'),
(20, '', 'mahasiswa', 'Edit Mahasiswa dengan ID MHS0001 beserta Akunnya', '', 0, '2021-08-19 12:44:20'),
(21, '', 'mahasiswa', 'ubah password dengan ID MHS0001', '', 0, '2021-08-19 12:46:24'),
(22, '', 'TEST', 'Menambahkan User dengan ID USR0003dan Akunnya ', '', 0, '2021-08-22 11:51:08'),
(23, '', 'TEST', 'Menambahkan User dengan ID USR0004dan Akunnya ', '', 0, '2021-08-22 11:52:39'),
(24, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0, '2021-08-22 17:07:49'),
(25, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Edit Pengajuan berkas dengan perihal Tanda tangan kegiatan A', '', 0, '2021-08-23 06:04:49'),
(26, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Edit Pengajuan berkas dengan perihal Tanda tangan kegiatan A', '', 0, '2021-08-23 06:13:01'),
(27, '', 'TEST', 'Hapus Sementara Pengaduan dengan ID 2', '', 0, '2021-08-23 06:31:36'),
(28, '', 'TEST', 'Hapus Sementara Pengaduan dengan ID 2', '', 0, '2021-08-23 06:32:45'),
(29, '', 'TEST', 'Hapus Sementara Pengaduan dengan ID 2', '', 0, '2021-08-23 07:21:40'),
(30, '', 'TEST', 'Restore Data Pengajuan dengan ID 2', '', 0, '2021-08-23 07:33:37'),
(31, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0, '2021-08-25 07:41:15'),
(32, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0, '2021-08-25 09:09:15'),
(33, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0, '2021-08-25 09:24:42'),
(34, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0, '2021-08-25 09:28:46'),
(35, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0, '2021-08-25 09:42:22'),
(36, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0, '2021-08-25 09:53:49'),
(37, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0, '2021-08-25 10:13:43'),
(38, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0, '2021-08-25 10:33:14'),
(39, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0, '2021-08-25 10:34:32'),
(40, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda Tangan kegiatan Seminar', '', 0, '2021-08-25 12:40:55'),
(41, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 07:28:54'),
(42, '', 'USER', 'User USER Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 09:18:20'),
(43, '', 'prodi', 'User prodi Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 09:22:20'),
(44, '', 'prodi', 'User prodi Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 09:24:42'),
(45, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 09:27:42'),
(46, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 09:28:27'),
(47, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 09:29:52'),
(48, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 09:32:31'),
(49, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 09:37:32'),
(50, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 09:40:08'),
(51, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 09:41:28'),
(52, '', 'prodi', 'User prodi Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 09:42:10'),
(53, '', 'prodi', 'User prodi Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 09:42:18'),
(54, '', 'prodi', 'User prodi Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 09:43:34'),
(55, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 09:44:14'),
(56, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 09:46:15'),
(57, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 09:48:07'),
(58, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 09:52:07'),
(59, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 09:52:51'),
(60, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 09:53:24'),
(61, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 13:14:47'),
(62, '', 'TEST', 'User dengan ID USR0001 MENOLAK pengajuan dengan perihal Tanda Tangan kegiatan Seminar', '', 0, '2021-08-26 14:37:02'),
(63, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-26 14:46:03'),
(64, '', 'TEST', 'User dengan ID USR0001 MENERIMA pengajuan dengan perihal Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-26 14:47:10'),
(65, '', 'USER', 'User USER Melakukan Tanda Tangan pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-26 14:49:34'),
(66, '', 'prodi', 'User prodi Melakukan Tanda Tangan pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-26 14:50:13'),
(67, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-26 14:50:55'),
(68, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-26 14:53:07'),
(69, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-26 14:53:26'),
(70, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-26 14:53:43'),
(71, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-26 14:57:12'),
(72, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-26 14:57:46'),
(73, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-26 15:03:59'),
(74, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-26 15:05:01'),
(75, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-26 15:06:09'),
(76, '', 'mahasiswa', 'User mahasiswa Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-26 15:16:50'),
(77, '', 'mahasiswa', 'User mahasiswa Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-26 15:18:11'),
(78, '', 'mahasiswa', 'User mahasiswa Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-26 15:19:37'),
(79, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-29 01:30:09'),
(80, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-29 01:30:21'),
(81, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-29 01:30:31'),
(82, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-29 01:30:50'),
(83, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-29 01:31:06'),
(84, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-29 01:51:47'),
(85, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-29 01:52:10'),
(86, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-29 01:52:25'),
(87, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-29 02:32:47'),
(88, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-29 02:33:11'),
(89, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-29 02:34:56'),
(90, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-29 02:36:19'),
(91, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-29 02:37:25'),
(92, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-29 02:39:24'),
(93, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-08-29 02:59:07'),
(94, 'USR0001', 'TEST', 'User TEST Melakukan verifikasi Tanda Tangan pada pengajuan Tanda Tangan Kegiatan Seminar dan tanda tangan ter VERIFIED', 'verify', 1, '2021-08-29 03:15:15'),
(95, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 00:30:40'),
(96, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 00:32:32'),
(97, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 00:32:40'),
(98, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 00:33:09'),
(99, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 00:33:15'),
(100, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 00:33:22'),
(101, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 00:33:31'),
(102, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 00:36:00'),
(103, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 00:36:07'),
(104, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 00:36:49'),
(105, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 00:37:42'),
(106, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 00:38:00'),
(107, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 00:38:10'),
(108, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 00:38:19'),
(109, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-09-02 00:39:47'),
(110, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-09-02 00:41:58'),
(111, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0, '2021-09-02 00:42:37'),
(112, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 00:42:50'),
(113, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 00:43:02'),
(114, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 00:43:41'),
(115, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 01:14:30'),
(116, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 01:14:55'),
(117, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 01:16:46'),
(118, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 01:16:58'),
(119, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 01:17:03'),
(120, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 01:27:23'),
(121, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 01:34:59'),
(122, 'USR0001', 'TEST', 'Verifikiasi tanda tangan  perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-02 01:35:14'),
(123, 'USR0001', 'TEST', 'Verifikiasi tanda tangan USER perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-04 03:59:47'),
(124, 'USR0001', 'TEST', 'Verifikiasi tanda tangan WD 3 perihal Tanda Tangan Kegiatan Seminar', 'verify', 1, '2021-09-04 04:00:44'),
(125, '', 'TEST', 'Menambahkan User dengan ID USR0005dan Akunnya ', '', 0, '2021-09-17 06:31:12'),
(126, '', 'TEST', 'Menambahkan User dengan ID USR0006dan Akunnya ', '', 0, '2021-09-17 06:33:24'),
(127, '', 'TEST', 'Menambahkan User dengan ID USR0007dan Akunnya ', '', 0, '2021-09-17 06:38:53'),
(128, '', 'TEST', 'Menambahkan User dengan ID USR0008dan Akunnya ', '', 0, '2021-09-17 06:40:01'),
(129, '', 'TEST', 'Edit User dengan ID USR0001 beserta akunnya', '', 0, '2021-09-17 06:52:04'),
(130, '', 'LKKKM', 'Mahasiswa denga ID USR0008 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0, '2021-09-17 09:43:22'),
(131, '', 'LKKKM', 'Mahasiswa denga ID USR0008 Mengajukan berkas dengan perihal Tanda Tangan kegiatan Seminar', '', 0, '2021-09-17 11:25:35'),
(132, '', 'TEST', 'Menambahkan User dengan ID USR0009dan Akunnya ', '', 0, '2021-09-17 11:34:49'),
(133, '', 'TEST', 'Menambahkan User dengan ID USR0010dan Akunnya ', '', 0, '2021-09-17 11:36:30'),
(134, '', 'cobainLKM', 'Mahasiswa denga ID USR0009 Mengajukan berkas dengan perihal Tanda Tangan kegiatan Seminar', '', 0, '2021-09-17 11:40:30'),
(135, '', 'cobainPengesah', 'User cobainPengesah Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-09-17 11:49:10'),
(136, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0, '2021-09-17 11:52:40'),
(137, '', 'TEST', 'User dengan ID USR0001 MENOLAK pengajuan dengan perihal Tanda Tangan kegiatan Seminar', '', 0, '2021-09-17 11:56:27'),
(138, '', 'TEST', 'Menambahkan User dengan ID USR0002dan Akunnya ', '', 0, '2021-09-17 12:02:33'),
(139, '', 'TEST', 'Menambahkan User dengan ID USR0003dan Akunnya ', '', 0, '2021-09-17 12:04:23'),
(140, '', 'LKM1', 'Mahasiswa denga ID USR0003 Mengajukan berkas dengan perihal Contoh pengajuan', '', 0, '2021-09-17 12:07:27'),
(141, '', 'Pengesah1', 'User Pengesah1 Melakukan Tanda Tangan pada pengajuan Contoh pengajuan', '', 0, '2021-09-17 12:08:51'),
(142, '', 'TEST', 'User dengan ID USR0001 MENERIMA pengajuan dengan perihal Contoh pengajuan', '', 0, '2021-09-17 12:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengajuan`
--

CREATE TABLE `tbl_pengajuan` (
  `id_pengajuan` int NOT NULL,
  `id_mhs_pengajuan` varchar(20) NOT NULL,
  `perihal_pengajuan` varchar(150) NOT NULL,
  `deskripsi_pengajuan` text NOT NULL,
  `tanggal_pengajuan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tanggal_selesai_pengajuan` datetime DEFAULT NULL,
  `nama_file_pengajuan` varchar(150) NOT NULL,
  `nama_file_verified_pengajuan` varchar(250) DEFAULT NULL,
  `qr_pengajuan` varchar(250) DEFAULT NULL,
  `private_key_pengajuan` varchar(150) NOT NULL,
  `pesan_pengajuan` text,
  `status_pengajuan` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(150) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengajuan`
--

INSERT INTO `tbl_pengajuan` (`id_pengajuan`, `id_mhs_pengajuan`, `perihal_pengajuan`, `deskripsi_pengajuan`, `tanggal_pengajuan`, `tanggal_selesai_pengajuan`, `nama_file_pengajuan`, `nama_file_verified_pengajuan`, `qr_pengajuan`, `private_key_pengajuan`, `pesan_pengajuan`, `status_pengajuan`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(18, 'USR0003', 'Contoh pengajuan', 'ini deskripsi', '2021-09-17 12:07:27', NULL, 'fpdf-sign-demo.pdf', '-', NULL, 'e80721793c24ae14edfca9b26ad406a9815cd3ff.pem', '-', 1, '2021-09-17 12:07:27', 'LKM1', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengajuan_detail`
--

CREATE TABLE `tbl_pengajuan_detail` (
  `id_pengajuan_detail` int NOT NULL,
  `id_pengajuan` int NOT NULL,
  `id_pengesah` varchar(20) NOT NULL,
  `digital_signature` text,
  `qr_code` varchar(250) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengajuan_detail`
--

INSERT INTO `tbl_pengajuan_detail` (`id_pengajuan_detail`, `id_pengajuan`, `id_pengesah`, `digital_signature`, `qr_code`, `status`, `deleted_at`, `deleted_by`) VALUES
(41, 18, 'USR0002', 'Br8djDrYPNoLPZF2A7l2OqxKPMzPzik8lGxEPmj4/qfQezPgcnFnuRpSn3Cewc4QscaWWImB+mx64h5548jacTyDvjm33LZhgqdCilgavkcSlvFuc89QFkL5LaEjxPwLkVhcgqJPN0IMnc9jeWKnWJTeD0haVt9c1MvUxHxCmswPIkAs6fgK+89AfC8ZoodMHZzh+Dp+2H9xR6ZgCYqv7P+88IYrEN3R8kgAE2m2gBdB4e3jdq52S8C9ybNflPzzemvY6kmoVr61DA47qpJMAB9ihDxu0HE03m2HMg0qoU8GUXF5/IQBJgnRSO0qhgwIWdOs0YI7yDvs52UK2pgKqw==', '185c7ea5a4c185be2721c7b5d4b859c01279e9b3.png', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` varchar(12) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `nip_user` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `jabatan_user` varchar(159) NOT NULL,
  `prodi_user` varchar(150) DEFAULT NULL,
  `no_hp_user` varchar(12) NOT NULL,
  `digital_signature_user` varchar(150) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `nip_user`, `jabatan_user`, `prodi_user`, `no_hp_user`, `digital_signature_user`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
('USR0001', 'TEST', '123456789', 'test', NULL, '087654325', NULL, '2021-08-18 10:24:54', '', '2021-09-17 06:52:04', 'TEST', NULL, NULL),
('USR0002', 'Pengesah1', '019230212', 'Kaprodi', '-', '08975545534', NULL, '2021-09-17 12:02:33', 'TEST', NULL, NULL, NULL, NULL),
('USR0003', 'LKM1', '-', 'Mahasiswa', 'Teknik Informatika', '08978787878', NULL, '2021-09-17 12:04:23', 'TEST', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_akun`
--
ALTER TABLE `tbl_akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `tbl_level`
--
ALTER TABLE `tbl_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `tbl_pengajuan`
--
ALTER TABLE `tbl_pengajuan`
  ADD PRIMARY KEY (`id_pengajuan`);

--
-- Indexes for table `tbl_pengajuan_detail`
--
ALTER TABLE `tbl_pengajuan_detail`
  ADD PRIMARY KEY (`id_pengajuan_detail`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_akun`
--
ALTER TABLE `tbl_akun`
  MODIFY `id_akun` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_level`
--
ALTER TABLE `tbl_level`
  MODIFY `id_level` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `id_log` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `tbl_pengajuan`
--
ALTER TABLE `tbl_pengajuan`
  MODIFY `id_pengajuan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_pengajuan_detail`
--
ALTER TABLE `tbl_pengajuan_detail`
  MODIFY `id_pengajuan_detail` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
