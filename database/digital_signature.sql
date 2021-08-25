-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 25, 2021 at 01:01 PM
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
(40, 'mahasiswa', 'Mahasiswa denga ID MHS0001 Mengajukan berkas dengan perihal Tanda Tangan kegiatan Seminar', '2021-08-25 12:40:55');

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
  `private_key_pengajuan` varchar(150) NOT NULL,
  `public_key_pengajuan` varchar(255) NOT NULL,
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

INSERT INTO `tbl_pengajuan` (`id_pengajuan`, `id_mhs_pengajuan`, `perihal_pengajuan`, `deskripsi_pengajuan`, `tanggal_pengajuan`, `tanggal_selesai_pengajuan`, `nama_file_pengajuan`, `private_key_pengajuan`, `public_key_pengajuan`, `status_pengajuan`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(11, 'MHS0001', 'Tanda tangan kegiatan A', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2021-08-25 10:34:32', NULL, 'fpdf-sign-demo9.pdf', 'e80721793c24ae14edfca9b26ad406a9815cd3ff.pem', '61c9b2b17db77a27841bbeeabff923448b0f6388.pem', 0, '2021-08-25 10:34:32', 'mahasiswa', NULL, NULL, NULL, NULL),
(12, 'MHS0001', 'Tanda Tangan kegiatan Seminar', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2021-08-25 12:40:55', NULL, 'Document1.pdf', 'e80721793c24ae14edfca9b26ad406a9815cd3ff.pem', '61c9b2b17db77a27841bbeeabff923448b0f6388.pem', 0, '2021-08-25 12:40:55', 'mahasiswa', NULL, NULL, NULL, NULL);

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
(24, 11, 'USR0002', '?Lg???A?`~?[Q?v?F??????\0???j?<wDh?+J?;??R???>8^??{?w?\0[?j????*???|?$:)????C??OzZ$???4??`?o?A?????(?*??I???`??2@i??wm??o<???@2?s ???0F?*?M??=V?9h???????t?_??e%???~G\\8F;v?\r???????b???$??}?[???&%??W??j4?2?;?\n??@???@\'lS??8s', '185c7ea5a4c185be2721c7b5d4b859c01279e9b3.png', 1, NULL, NULL),
(25, 12, 'USR0002', '??;Q???-?.?	??\\?u7?ž?{??S?|iBTY??\Z/d=?X?X?qN?$????\"?r???Wþ?+dp?z????yx}? z???\0,h??Q[??K??|????$9???aWW?????g??l3B??????i??qU?jQ?[?3i?vW?+???Tem?????YG??`????e8?<P??????>??3??a?H???????@??pY?z?i<z?1?X9?iZ??T;/\"	 ??4', '$2y$10$hfVw2MthkBFmmAEmE4l3D.D23OQrTBNwHJ2b34dUtklXOparFKdc..png', 1, NULL, NULL),
(26, 12, 'USR0003', '???luo?ZMw?(<??R?Kf#??????J?\01}?|?S9?^?de???-?6?.??.iK??q???}o9????a\"C?HXA??\nz?}?\n)????2?,?Q\"/3o?\"1??@???}}?NY	|???????%?X~i`??????e?v\Z?%?2?aA????K>q3xF?\rix\r??/;C&v?!`?\0??{#?e0????5?????w?I???Z\r??`??:?Q2?Q??O?QN???-', '$2y$10$TkVP7kWKdT7OFxxbXazFiOSwvuLV8ImJ.1HnFx3rSo5A94l5bx5ee.png', 1, NULL, NULL),
(27, 12, 'USR0004', '?f????e?B?|?????\"?}??I?`j?!?\0?2???{??IF??e?%\ZX??\'B???j?0?VJ?}~?3??\0?s?v: cB\n?X[???H(??{%*?5??:YgF?\0h?/]?c???3D=???LC????O!w??i@?fs?&B?????%??>?C@L?#0?FN?M?\nx?H4??rr`\n??D?#?????@?Wt\Z???.??wa???œ-wr!???+>?D?gort???we?~??1???', '$2y$10$1vZLTtzZPb.xfR3hNhcVKuLYdZX5ne5vrcFRi.ITVY7LgMdZ1nObC.png', 1, NULL, NULL);

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
  MODIFY `id_log` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_pengajuan`
--
ALTER TABLE `tbl_pengajuan`
  MODIFY `id_pengajuan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_pengajuan_detail`
--
ALTER TABLE `tbl_pengajuan_detail`
  MODIFY `id_pengajuan_detail` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
