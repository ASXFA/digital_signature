-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 26, 2021 at 03:25 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `id_akun` int(5) NOT NULL,
  `id_user_akun` varchar(12) NOT NULL,
  `email_akun` varchar(150) NOT NULL,
  `password_akun` varchar(150) NOT NULL,
  `level_akun` int(5) NOT NULL,
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
(1, 'USR0001', 'test@example.com', '$2y$10$R6slJi4XP2fc8lx2GH5zT.NkjGAaEDo7c8G.OCF7Zt5V6kmLpTSdS', 1, '2021-08-13 10:44:14', 'sistem', NULL, NULL, NULL, NULL),
(6, 'USR0002', 'user@example.com', '$2y$10$zGjnPs5GMH3tfcLdsZzVJur8ofjk.9Zr6P.nXGlsr0Q7rD22AM.nC', 2, '2021-08-18 10:47:46', 'TEST', '2021-08-19 07:03:15', 'USERRR', NULL, NULL),
(7, 'MHS0001', 'mhs@example.com', '$2y$10$ZOPskw8ybGb9.b8KUws8F.mVVAfVY3gZJkpn56vqYBJPelwow9qS6', 3, '2021-08-18 11:29:20', 'TEST', '2021-08-19 07:44:19', 'mahasiswa', NULL, NULL),
(8, 'USR0003', 'prodi@example.com', '$2y$10$LMyWWxydYQSY.cVm9yOHWOMc8pmjoVgiy.GYRxruaFa6odeNQeobK', 2, '2021-08-22 11:51:08', 'TEST', NULL, NULL, NULL, NULL),
(9, 'USR0004', 'wd3@example.com', '$2y$10$GFAyU9.sz84Kj0n0xgf/u.lKqU0qkL8CeToP1KnrjyZXFTAU3Qpn6', 2, '2021-08-22 11:52:39', 'TEST', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level`
--

CREATE TABLE `tbl_level` (
  `id_level` int(5) NOT NULL,
  `nama_level` varchar(150) NOT NULL,
  `keterangan_level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level`
--

INSERT INTO `tbl_level` (`id_level`, `nama_level`, `keterangan_level`) VALUES
(1, 'Akademik', '--'),
(2, 'Pengesah', '-'),
(3, 'Mahasiswa', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log`
--

CREATE TABLE `tbl_log` (
  `id_log` int(10) NOT NULL,
  `nama_aktor_log` varchar(150) NOT NULL,
  `aksi_log` varchar(255) NOT NULL,
  `tanggal_log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_log`
--

INSERT INTO `tbl_log` (`id_log`, `nama_aktor_log`, `aksi_log`, `tanggal_log`) VALUES
(6, 'TEST', 'Menambahkan User dan Akun', '2021-08-18 10:47:46'),
(7, 'TEST', 'Hapus Sementara User dan Akun', '2021-08-18 10:48:33'),
(8, 'TEST', 'Restore Data User dengan ID USR0002 dan Akun', '2021-08-18 11:19:46'),
(9, 'TEST', 'Menambahkan Mahasiswa denga ID MHS0001 dan Akunnya', '2021-08-18 11:29:20'),
(10, 'TEST', 'Hapus Sementara User dengan IDMHS0001 dan Akunnya', '2021-08-18 11:42:38'),
(11, 'TEST', 'Restore Data User dengan ID MHS0001 dan Akun', '2021-08-18 11:47:30'),
(12, 'user', 'Edit User', '2021-08-19 11:54:36'),
(13, 'user', 'Edit Akun', '2021-08-19 11:54:36'),
(14, 'user', 'Edit User', '2021-08-19 11:55:19'),
(15, 'user', 'Edit Akun', '2021-08-19 11:55:19'),
(16, 'USER', 'Edit User', '2021-08-19 11:58:43'),
(17, 'USER', 'Edit Akun', '2021-08-19 11:58:43'),
(18, 'USERRR', 'Edit User dengan ID USR0002 beserta akunnya', '2021-08-19 12:03:15'),
(19, 'USER', 'ubah password dengan ID USR0002', '2021-08-19 12:15:08'),
(20, 'mahasiswa', 'Edit Mahasiswa dengan ID MHS0001 beserta Akunnya', '2021-08-19 12:44:20'),
(21, 'mahasiswa', 'ubah password dengan ID MHS0001', '2021-08-19 12:46:24'),
(22, 'TEST', 'Menambahkan User dengan ID USR0003dan Akunnya ', '2021-08-22 11:51:08'),
(23, 'TEST', 'Menambahkan User dengan ID USR0004dan Akunnya ', '2021-08-22 11:52:39'),
(24, 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '2021-08-22 17:07:49'),
(25, 'mahasiswa', 'Mahasiswa denga ID MHS0001 Edit Pengajuan berkas dengan perihal Tanda tangan kegiatan A', '2021-08-23 06:04:49'),
(26, 'mahasiswa', 'Mahasiswa denga ID MHS0001 Edit Pengajuan berkas dengan perihal Tanda tangan kegiatan A', '2021-08-23 06:13:01'),
(27, 'TEST', 'Hapus Sementara Pengaduan dengan ID 2', '2021-08-23 06:31:36'),
(28, 'TEST', 'Hapus Sementara Pengaduan dengan ID 2', '2021-08-23 06:32:45'),
(29, 'TEST', 'Hapus Sementara Pengaduan dengan ID 2', '2021-08-23 07:21:40'),
(30, 'TEST', 'Restore Data Pengajuan dengan ID 2', '2021-08-23 07:33:37'),
(31, 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '2021-08-25 07:41:15'),
(32, 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '2021-08-25 09:09:15'),
(33, 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '2021-08-25 09:24:42'),
(34, 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '2021-08-25 09:28:46'),
(35, 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '2021-08-25 09:42:22'),
(36, 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '2021-08-25 09:53:49'),
(37, 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '2021-08-25 10:13:43'),
(38, 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '2021-08-25 10:33:14'),
(39, 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '2021-08-25 10:34:32'),
(40, 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda Tangan kegiatan Seminar', '2021-08-25 12:40:55'),
(41, 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda Tangan kegiatan Seminar', '2021-08-26 07:28:54'),
(42, 'USER', 'User USER Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 09:18:20'),
(43, 'prodi', 'User prodi Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 09:22:20'),
(44, 'prodi', 'User prodi Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 09:24:42'),
(45, 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 09:27:42'),
(46, 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 09:28:27'),
(47, 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 09:29:52'),
(48, 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 09:32:31'),
(49, 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 09:37:32'),
(50, 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 09:40:08'),
(51, 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 09:41:28'),
(52, 'prodi', 'User prodi Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 09:42:10'),
(53, 'prodi', 'User prodi Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 09:42:18'),
(54, 'prodi', 'User prodi Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 09:43:34'),
(55, 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 09:44:14'),
(56, 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 09:46:15'),
(57, 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 09:48:07'),
(58, 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 09:52:07'),
(59, 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 09:52:51'),
(60, 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 09:53:24'),
(61, 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan kegiatan Seminar', '2021-08-26 13:14:47'),
(62, 'TEST', 'User dengan ID USR0001 MENOLAK pengajuan dengan perihal Tanda Tangan kegiatan Seminar', '2021-08-26 14:37:02'),
(63, 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda Tangan Kegiatan Seminar', '2021-08-26 14:46:03'),
(64, 'TEST', 'User dengan ID USR0001 MENERIMA pengajuan dengan perihal Tanda Tangan Kegiatan Seminar', '2021-08-26 14:47:10'),
(65, 'USER', 'User USER Melakukan Tanda Tangan pada pengajuan Tanda Tangan Kegiatan Seminar', '2021-08-26 14:49:34'),
(66, 'prodi', 'User prodi Melakukan Tanda Tangan pada pengajuan Tanda Tangan Kegiatan Seminar', '2021-08-26 14:50:13'),
(67, 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan Kegiatan Seminar', '2021-08-26 14:50:55'),
(68, 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '2021-08-26 14:53:07'),
(69, 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '2021-08-26 14:53:26'),
(70, 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '2021-08-26 14:53:43'),
(71, 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan Kegiatan Seminar', '2021-08-26 14:57:12'),
(72, 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '2021-08-26 14:57:46'),
(73, 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '2021-08-26 15:03:59'),
(74, 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '2021-08-26 15:05:01'),
(75, 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '2021-08-26 15:06:09'),
(76, 'mahasiswa', 'User mahasiswa Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '2021-08-26 15:16:50'),
(77, 'mahasiswa', 'User mahasiswa Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '2021-08-26 15:18:11'),
(78, 'mahasiswa', 'User mahasiswa Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '2021-08-26 15:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mhs`
--

CREATE TABLE `tbl_mhs` (
  `id_mhs` varchar(12) NOT NULL,
  `nama_mhs` varchar(255) NOT NULL,
  `npm_mhs` varchar(20) NOT NULL,
  `prodi_mhs` varchar(150) NOT NULL,
  `no_hp_mhs` varchar(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mhs`
--

INSERT INTO `tbl_mhs` (`id_mhs`, `nama_mhs`, `npm_mhs`, `prodi_mhs`, `no_hp_mhs`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
('MHS0001', 'mahasiswa', '41155050170012', 'Informatika', '087987987652', '2021-08-18 11:29:20', 'TEST', '2021-08-19 07:44:19', 'mahasiswa', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengajuan`
--

CREATE TABLE `tbl_pengajuan` (
  `id_pengajuan` int(5) NOT NULL,
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
  `status_pengajuan` int(5) NOT NULL,
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
(14, 'MHS0001', 'Tanda Tangan Kegiatan Seminar', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-08-26 14:46:02', NULL, 'Isi_Artikel_185328192270.pdf', 'Isi_Artikel_185328192270_verified_26 08 2021.pdf', 'Isi_Artikel_185328192270_verified_26 08 2021.png', 'e80721793c24ae14edfca9b26ad406a9815cd3ff.pem', '-', 2, '2021-08-26 14:46:02', 'mahasiswa', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengajuan_detail`
--

CREATE TABLE `tbl_pengajuan_detail` (
  `id_pengajuan_detail` int(5) NOT NULL,
  `id_pengajuan` int(5) NOT NULL,
  `id_pengesah` varchar(20) NOT NULL,
  `digital_signature` text,
  `qr_code` varchar(250) DEFAULT NULL,
  `status` int(5) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengajuan_detail`
--

INSERT INTO `tbl_pengajuan_detail` (`id_pengajuan_detail`, `id_pengajuan`, `id_pengesah`, `digital_signature`, `qr_code`, `status`, `deleted_at`, `deleted_by`) VALUES
(31, 14, 'USR0002', 'fWS1IeAzacWjtYjJptG0YRbAZI0KqI68n7u3ArWkua4xgPsjT2EII/VwER3KZXu2kuLtcsjWduQRYNsOd0YGCMr4E9x8+aZaVLOQLi+8mqqWWZDPKJRX4qOMkhjVPlCBocL2r0x7GskU0q7NZawsSA7mCZXLQD4vMlRZ8WqFp46P84rjSlIs8A6nKVzuDzk1NtooUe4bfuFP6CaVzIsIPPQLg7lZmTYULA4ekKjzJ/3+kFXPCLYTS9FyLJhlSV52ZIZujPNZejdjVs6tdP0lyAxYKoJk+SgftttE65zkGiusd1JSqctV148amkc60UkDgLUejLmW7nyjTt5A4cF8cA==', '185c7ea5a4c185be2721c7b5d4b859c01279e9b3.png', 2, NULL, NULL),
(32, 14, 'USR0003', 'B0VAIHvOyGW40usk8YWto3GFMGDnKya9Awc2K0U9Z8Q9n6y4KCCLXwGURr8tXdCmdyVCbnDxDuuc9l/bu1RdZIRK9HRTYv3gPX8lP8eiQ0XzBhSmi04yleaeyWLAu98500VFUABtStu6pZJfAw2pOO6Cqr0XF8DavFgOQHvBMyQcQE18NQWD7BA66O0fJksKxsDwUG9dGoe1/MkDCSPKkXzLVpHnVSPIHK5J8WmJeSBE/kEvq3uZKBBPfMXSBIDWaFoQGBT/40RKH/loRrySWyuCTw+RQFrC/0c2MWvgbw0JbIW80aEkv9EsKB9IvdkMhpQXmKsw5e5wLUti1WOpoQ==', 'ac6b3a69ffd41b82ddb4213defe7cf47be121c04.png', 2, NULL, NULL),
(33, 14, 'USR0004', 'Nyzrer3R6wZtQfD8+qlB68XAS/AjBaV10+aTeaKW6rE51BvFaRwEVzGmYjV5BMze8fcHLLWB/z2S7Iw6ORAQVuRUAPFQC3wSLSCDxeaFIIhY/0A1Uq81N1tF9S3AvA3dpvKCUXqYT85J7inas2tz7ngF8p2CzdXtbWxJnejXlUuSJw/Dx8jT9fnjUdoIS98ikbTRs0C5F/R77iqk6BUOMmPLyHLK6rnJYa940gEu2tUVF59m9u3ENIsCZ3kIdfZrjqekHXtDNYspAaB6ttqSqZEosArnDTfy33JdL+e863Q2+gqkf7OQoop1eJoB/LDTAWduatwJegzgXUk+6wqV3w==', 'c0afc15211b59fb9b02e25f7db1f6f3ef58f969b.png', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` varchar(12) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `nip_user` varchar(20) NOT NULL,
  `jabatan_user` varchar(159) NOT NULL,
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

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `nip_user`, `jabatan_user`, `no_hp_user`, `digital_signature_user`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
('USR0001', 'TEST', '123456789', 'test', '087654325', NULL, '2021-08-18 10:24:54', '', NULL, NULL, NULL, NULL),
('USR0002', 'USER', '123123123123', 'Dekan', '34534543', NULL, '2021-08-18 10:47:46', 'TEST', '2021-08-19 07:03:15', 'USERRR', NULL, NULL),
('USR0003', 'prodi', '1212121212', 'Kaprodi', '08978787878', NULL, '2021-08-22 11:51:07', 'TEST', NULL, NULL, NULL, NULL),
('USR0004', 'WD 3', '999999', 'Wakil Dekan 3', '087545565', NULL, '2021-08-22 11:52:39', 'TEST', NULL, NULL, NULL, NULL);

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
-- Indexes for table `tbl_mhs`
--
ALTER TABLE `tbl_mhs`
  ADD PRIMARY KEY (`id_mhs`);

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
  MODIFY `id_akun` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_level`
--
ALTER TABLE `tbl_level`
  MODIFY `id_level` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `id_log` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tbl_pengajuan`
--
ALTER TABLE `tbl_pengajuan`
  MODIFY `id_pengajuan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_pengajuan_detail`
--
ALTER TABLE `tbl_pengajuan_detail`
  MODIFY `id_pengajuan_detail` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
