-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 29, 2021 at 03:16 AM
-- Server version: 8.0.25
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

INSERT INTO `tbl_akun` (`id_akun`, `id_user_akun`, `email_akun`, `password_akun`, `level_akun`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'USR0001', 'test@example.com', '$2y$10$R6slJi4XP2fc8lx2GH5zT.NkjGAaEDo7c8G.OCF7Zt5V6kmLpTSdS', 1, 'sistem', NULL, NULL, NULL, NULL),
(6, 'USR0002', 'user@example.com', '$2y$10$zGjnPs5GMH3tfcLdsZzVJur8ofjk.9Zr6P.nXGlsr0Q7rD22AM.nC', 2, 'TEST', '2021-08-19 07:03:15', 'USERRR', NULL, NULL),
(7, 'MHS0001', 'mhs@example.com', '$2y$10$ZOPskw8ybGb9.b8KUws8F.mVVAfVY3gZJkpn56vqYBJPelwow9qS6', 3, 'TEST', '2021-08-19 07:44:19', 'mahasiswa', NULL, NULL),
(8, 'USR0003', 'prodi@example.com', '$2y$10$LMyWWxydYQSY.cVm9yOHWOMc8pmjoVgiy.GYRxruaFa6odeNQeobK', 2, 'TEST', NULL, NULL, NULL, NULL),
(9, 'USR0004', 'wd3@example.com', '$2y$10$GFAyU9.sz84Kj0n0xgf/u.lKqU0qkL8CeToP1KnrjyZXFTAU3Qpn6', 2, 'TEST', NULL, NULL, NULL, NULL);

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
(3, 'Mahasiswa', '-');

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

INSERT INTO `tbl_log` (`id_log`, `id_user_log`, `nama_aktor_log`, `aksi_log`, `kegiatan_log`, `status_log`) VALUES
(6, '', 'TEST', 'Menambahkan User dan Akun', '', 0),
(7, '', 'TEST', 'Hapus Sementara User dan Akun', '', 0),
(8, '', 'TEST', 'Restore Data User dengan ID USR0002 dan Akun', '', 0),
(9, '', 'TEST', 'Menambahkan Mahasiswa denga ID MHS0001 dan Akunnya', '', 0),
(10, '', 'TEST', 'Hapus Sementara User dengan IDMHS0001 dan Akunnya', '', 0),
(11, '', 'TEST', 'Restore Data User dengan ID MHS0001 dan Akun', '', 0),
(12, '', 'user', 'Edit User', '', 0),
(13, '', 'user', 'Edit Akun', '', 0),
(14, '', 'user', 'Edit User', '', 0),
(15, '', 'user', 'Edit Akun', '', 0),
(16, '', 'USER', 'Edit User', '', 0),
(17, '', 'USER', 'Edit Akun', '', 0),
(18, '', 'USERRR', 'Edit User dengan ID USR0002 beserta akunnya', '', 0),
(19, '', 'USER', 'ubah password dengan ID USR0002', '', 0),
(20, '', 'mahasiswa', 'Edit Mahasiswa dengan ID MHS0001 beserta Akunnya', '', 0),
(21, '', 'mahasiswa', 'ubah password dengan ID MHS0001', '', 0),
(22, '', 'TEST', 'Menambahkan User dengan ID USR0003dan Akunnya ', '', 0),
(23, '', 'TEST', 'Menambahkan User dengan ID USR0004dan Akunnya ', '', 0),
(24, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0),
(25, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Edit Pengajuan berkas dengan perihal Tanda tangan kegiatan A', '', 0),
(26, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Edit Pengajuan berkas dengan perihal Tanda tangan kegiatan A', '', 0),
(27, '', 'TEST', 'Hapus Sementara Pengaduan dengan ID 2', '', 0),
(28, '', 'TEST', 'Hapus Sementara Pengaduan dengan ID 2', '', 0),
(29, '', 'TEST', 'Hapus Sementara Pengaduan dengan ID 2', '', 0),
(30, '', 'TEST', 'Restore Data Pengajuan dengan ID 2', '', 0),
(31, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0),
(32, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0),
(33, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0),
(34, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0),
(35, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0),
(36, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0),
(37, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0),
(38, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0),
(39, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda tangan kegiatan A', '', 0),
(40, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda Tangan kegiatan Seminar', '', 0),
(41, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda Tangan kegiatan Seminar', '', 0),
(42, '', 'USER', 'User USER Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(43, '', 'prodi', 'User prodi Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(44, '', 'prodi', 'User prodi Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(45, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(46, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(47, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(48, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(49, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(50, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(51, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(52, '', 'prodi', 'User prodi Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(53, '', 'prodi', 'User prodi Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(54, '', 'prodi', 'User prodi Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(55, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(56, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(57, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(58, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(59, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(60, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(61, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan kegiatan Seminar', '', 0),
(62, '', 'TEST', 'User dengan ID USR0001 MENOLAK pengajuan dengan perihal Tanda Tangan kegiatan Seminar', '', 0),
(63, '', 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda Tangan Kegiatan Seminar', '', 0),
(64, '', 'TEST', 'User dengan ID USR0001 MENERIMA pengajuan dengan perihal Tanda Tangan Kegiatan Seminar', '', 0),
(65, '', 'USER', 'User USER Melakukan Tanda Tangan pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(66, '', 'prodi', 'User prodi Melakukan Tanda Tangan pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(67, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(68, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(69, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(70, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(71, '', 'WD 3', 'User WD 3 Melakukan Tanda Tangan pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(72, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(73, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(74, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(75, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(76, '', 'mahasiswa', 'User mahasiswa Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(77, '', 'mahasiswa', 'User mahasiswa Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(78, '', 'mahasiswa', 'User mahasiswa Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(79, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(80, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(81, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(82, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(83, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(84, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(85, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(86, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(87, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(88, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(89, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(90, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(91, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(92, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(93, '', 'TEST', 'User TEST Melakukan verifikasi pada pengajuan Tanda Tangan Kegiatan Seminar', '', 0),
(94, 'USR0001', 'TEST', 'User TEST Melakukan verifikasi Tanda Tangan pada pengajuan Tanda Tangan Kegiatan Seminar dan tanda tangan ter VERIFIED', 'verify', 1);

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

INSERT INTO `tbl_mhs` (`id_mhs`, `nama_mhs`, `npm_mhs`, `prodi_mhs`, `no_hp_mhs`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
('MHS0001', 'mahasiswa', '41155050170012', 'Informatika', '087987987652', 'TEST', '2021-08-19 07:44:19', 'mahasiswa', NULL, NULL);

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

INSERT INTO `tbl_pengajuan` (`id_pengajuan`, `id_mhs_pengajuan`, `perihal_pengajuan`, `deskripsi_pengajuan`, `tanggal_selesai_pengajuan`, `nama_file_pengajuan`, `nama_file_verified_pengajuan`, `qr_pengajuan`, `private_key_pengajuan`, `pesan_pengajuan`, `status_pengajuan`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(14, 'MHS0001', 'Tanda Tangan Kegiatan Seminar', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 'Isi_Artikel_185328192270.pdf', 'Isi_Artikel_185328192270_verified_29_08_2021.pdf', 'Isi_Artikel_185328192270_verified_29_08_2021.png', 'e80721793c24ae14edfca9b26ad406a9815cd3ff.pem', '-', 2, 'mahasiswa', NULL, NULL, NULL, NULL);

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

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `nip_user`, `jabatan_user`, `no_hp_user`, `digital_signature_user`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
('USR0001', 'TEST', '123456789', 'test', '087654325', NULL, '', NULL, NULL, NULL, NULL),
('USR0002', 'USER', '123123123123', 'Dekan', '34534543', NULL, 'TEST', '2021-08-19 07:03:15', 'USERRR', NULL, NULL),
('USR0003', 'prodi', '1212121212', 'Kaprodi', '08978787878', NULL, 'TEST', NULL, NULL, NULL, NULL),
('USR0004', 'WD 3', '999999', 'Wakil Dekan 3', '087545565', NULL, 'TEST', NULL, NULL, NULL, NULL);

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
  MODIFY `id_akun` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_level`
--
ALTER TABLE `tbl_level`
  MODIFY `id_level` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `id_log` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `tbl_pengajuan`
--
ALTER TABLE `tbl_pengajuan`
  MODIFY `id_pengajuan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_pengajuan_detail`
--
ALTER TABLE `tbl_pengajuan_detail`
  MODIFY `id_pengajuan_detail` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
