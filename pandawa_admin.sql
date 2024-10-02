-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2022 at 11:58 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pandawa_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `sub_logo` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `icon_1` varchar(100) NOT NULL,
  `icon_2` varchar(255) NOT NULL,
  `icon_3` varchar(255) NOT NULL,
  `icon_4` varchar(255) NOT NULL,
  `feedback` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `copyright` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `gambar`, `sub_logo`, `lokasi`, `icon_1`, `icon_2`, `icon_3`, `icon_4`, `feedback`, `email`, `copyright`) VALUES
(29, '', 'logo114.jpg', 'Kawasan Niaga, Jl. Soekarno Hatta Jl. MTC Barat No.590, Sekejati, Kec. Buahbatu, Kota Bandung, Jawa Barat 40286', 'Code13.png', 'Code14.png', 'Code15.png', 'Code16.png', 'Questions or Feedback', 'pandawa@yogaswara.co.id', 'Copyright © 2022 PT PANDAWA YOGASWARA ABADI TEKNOLOGI All rights reserved.');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `gambar_1` varchar(255) NOT NULL,
  `gambar_2` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `judul`, `sub_judul`, `gambar_1`, `gambar_2`, `status`) VALUES
(18, 'IT Solution for Your Business', 'Selamat datang di Pandawa. Sebuah Perusahaan Solusi Teknologi informasi dengan layanan pembuatan aplikasi web,mobile & design digital', 'Code3.png', 'image_13.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `klien`
--

CREATE TABLE `klien` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `subjudul_1` varchar(255) NOT NULL,
  `subjudul_2` varchar(255) NOT NULL,
  `subjudul_3` varchar(255) NOT NULL,
  `subjudul_4` varchar(255) NOT NULL,
  `teks_1` varchar(255) NOT NULL,
  `teks_2` varchar(255) NOT NULL,
  `teks_3` varchar(255) NOT NULL,
  `teks_4` varchar(255) NOT NULL,
  `gambar_1` varchar(255) NOT NULL,
  `gambar_2` varchar(255) NOT NULL,
  `gambar_3` varchar(255) NOT NULL,
  `gambar_4` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `klien`
--

INSERT INTO `klien` (`id`, `judul`, `subjudul_1`, `subjudul_2`, `subjudul_3`, `subjudul_4`, `teks_1`, `teks_2`, `teks_3`, `teks_4`, `gambar_1`, `gambar_2`, `gambar_3`, `gambar_4`, `status`) VALUES
(3, 'Portofolio', 'RSUD SMC Singaparna medika Citrautama', 'Rumah Sakit Umum Medimas', 'Rumah Sakit UmumDaerah Dr.(H.C)Ir. Soekarno', 'Rumah Sakit Ibu dan Anak Cahaya bunda', 'Jl. Raya Rancamaya, Cikunten, Kec. Singaparna, Kabupaten Tasikmalaya, Jawa Barat 46412', 'Jl. Evakuasi No.116, Karyamulya, Kec. Kesambi, Kota Cirebon, Jawa Barat 45132', 'Kabupaten Bangka, Kepulauan Bangka Belitung 33172', 'Jl. Perjuangan No.8, Sunyaragi, Kec. Kesambi, Kota Cirebon, Jawa Barat 45131', 'logoc.png', 'logok.jpg', 'logob1.jpg', 'logoa12.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `id` int(30) NOT NULL,
  `judul_satu` varchar(255) NOT NULL,
  `judul_dua` varchar(255) NOT NULL,
  `judul_tiga` varchar(255) NOT NULL,
  `judul_empat` varchar(255) NOT NULL,
  `sub_judul1` varchar(255) NOT NULL,
  `sub_judul2` varchar(255) NOT NULL,
  `sub_judul3` varchar(255) NOT NULL,
  `sub_judul4` varchar(255) NOT NULL,
  `gambar1` varchar(255) NOT NULL,
  `gambar2` varchar(255) NOT NULL,
  `gambar3` varchar(255) NOT NULL,
  `gambar4` varchar(255) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `sub_heading` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`id`, `judul_satu`, `judul_dua`, `judul_tiga`, `judul_empat`, `sub_judul1`, `sub_judul2`, `sub_judul3`, `sub_judul4`, `gambar1`, `gambar2`, `gambar3`, `gambar4`, `heading`, `sub_heading`) VALUES
(7, 'Light', 'Standart', 'Standart Plus', 'Enterprise', 'Apliasi Klinik Yang Mencakup Pendaftaran, Dokter, Rekam Medis, Kasir', 'Aplikasi RS Yang Mencakup Pendafataran, IGD Poli, Dokter, Rekam Medis, Penunjang Medis, Kasir', 'Aplikasi RS Yang Mencakup Pendafataran, IGD, Poli, Rawat Inap, Dokter, Rekam Medis, Penunjang Medis, Kasir.', 'Aplikasi RS Yang Mencakup Pendafataran, IGD Poli, Rawat Inap, Dokter, ', 'iconh.svg', 'iconj.svg', 'iconp.svg', 'iconr.svg', 'Pilih Layanan Kami', 'Berbagai macam produk & Layanan');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `pid` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis` int(11) DEFAULT NULL COMMENT '1=pegawai, 2=dosen, 3=mahasiswa, 4=pendaftar',
  `kelamin` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `hp` bigint(20) DEFAULT NULL,
  `jabatan_id` int(11) DEFAULT NULL,
  `kontak` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(150) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(100) DEFAULT NULL,
  `nomor_pegawai` varchar(150) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `aktif` enum('t','f') DEFAULT 't',
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`pid`, `nama`, `jenis`, `kelamin`, `alamat`, `hp`, `jabatan_id`, `kontak`, `tempat_lahir`, `tanggal_lahir`, `agama`, `nomor_pegawai`, `email`, `aktif`, `foto`) VALUES
(1, 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', NULL),
(5, 'siti', NULL, 'p', 'Kp. Cipeutyeuy RT/RW 005/003 Desa. Mekarasih Kec. Malangbong Kab. Garut Prov. Jawa Barat Indonesia', 85721941547, NULL, NULL, 'sfjdf', '2022-08-01', 'ISLAM', '121212', 'asaa@gmail.com', 't', NULL),
(6, 'siti', NULL, NULL, 'siti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `gambar_satu` varchar(255) NOT NULL,
  `gambar_dua` varchar(255) NOT NULL,
  `gambar_tiga` varchar(255) NOT NULL,
  `sub_gambar_satu` varchar(255) NOT NULL,
  `sub_gambar_dua` varchar(255) NOT NULL,
  `sub_gambar_tiga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `judul`, `sub_judul`, `gambar_satu`, `gambar_dua`, `gambar_tiga`, `sub_gambar_satu`, `sub_gambar_dua`, `sub_gambar_tiga`) VALUES
(2, 'Produk', 'Berbagai macam produk', 'MiConv_com__website-s3.jpg', 'MiConv_com__mobile-s3.jpg', 'MiConv_com__kiosk3.jpg', 'Website', 'Mobile', 'Kiosk');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `link` varchar(25) NOT NULL,
  `kat_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_menu`
--

INSERT INTO `tb_menu` (`id_menu`, `nama_menu`, `icon`, `link`, `kat_menu`) VALUES
(1, 'Master Data', 'fa fa-gears', '#', 0),
(2, 'Pegawai', 'fa fa-user', 'masterdata/pegawai', 1),
(3, 'User', 'fa fa-users', 'masterdata/user', 1),
(4, 'User Group', 'fa fa-list-alt', 'masterdata/usergroup', 1),
(5, 'Controlpanel', 'fa fa-gears', '#', 0),
(6, 'Home', 'fa fa-home', 'home', 5),
(7, 'Layanan', 'fa fa-send', 'layanan', 5),
(8, 'Produk', 'fa fa-list-ol', 'produk', 5),
(9, 'Klien', 'fa fa-users', 'klien', 5),
(10, 'Footer', 'fa fa-plus', 'footer', 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `u_name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `u_paswd` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `role` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `pid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `nama`, `u_name`, `u_paswd`, `role`, `pid`) VALUES
(3, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_akses`
--

CREATE TABLE `user_akses` (
  `id_akses` int(11) NOT NULL,
  `idmenu` int(11) NOT NULL,
  `idgroupuser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `idgroupuser` int(11) NOT NULL,
  `nama_group_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `klien`
--
ALTER TABLE `klien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`pid`) USING BTREE;

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id_menu`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`) USING BTREE,
  ADD KEY `pid_user_seq` (`pid`) USING BTREE;

--
-- Indexes for table `user_akses`
--
ALTER TABLE `user_akses`
  ADD PRIMARY KEY (`id_akses`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`idgroupuser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `klien`
--
ALTER TABLE `klien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_akses`
--
ALTER TABLE `user_akses`
  MODIFY `id_akses` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `idgroupuser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
