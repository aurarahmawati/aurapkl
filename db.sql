-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for pkl_aura
CREATE DATABASE IF NOT EXISTS `pkl_aura` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pkl_aura`;

-- Dumping structure for table pkl_aura.okb
CREATE TABLE IF NOT EXISTS `okb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pegawai_id` int DEFAULT NULL,
  `nama` varchar(225) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` varchar(225) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nopol` varchar(225) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `roda` varchar(225) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `namapemiliksesuaistnk` varchar(225) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `masalakupajak` varchar(225) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nohp` varchar(225) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dokumentasi` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pelaksanaankegiatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `hasil` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pkl_aura.okb: ~4 rows (approximately)
INSERT INTO `okb` (`id`, `pegawai_id`, `nama`, `alamat`, `nopol`, `roda`, `namapemiliksesuaistnk`, `masalakupajak`, `nohp`, `dokumentasi`, `created_at`, `updated_at`, `pelaksanaankegiatan`, `hasil`) VALUES
	(2, NULL, 'wati', 'kayutangi', 'DA 1213 CA', '2', 'AuraRahmawati', '01-07-2025', '081348892489', '1735889939_LOGO UNISKA.png', '2025-01-01 02:27:01', '2025-01-03 00:38:59', NULL, NULL),
	(4, NULL, 'ora', 'handil bakti', 'DA 1213 AC', '2', 'AuraRahmawati', '07-07-2024', '081348892489', '1735888907_LOGO FTI.jpg', '2025-01-03 00:21:47', '2025-01-03 00:21:47', NULL, NULL),
	(5, NULL, 'hkj', 'hkj', 'hkj', '4', 'hkj', 'hkj', 'hkj', '1735892873_bapenda.png', '2025-01-03 01:27:53', '2025-01-03 01:27:53', 'kjhkj', 'hkj'),
	(6, NULL, 'nanda', 'cemara', 'DA 1819 AC', '2', 'ananda risna', '07-07-2024', '081348892489', '1735894805_logo tuti.png', '2025-01-03 02:00:05', '2025-01-03 02:00:05', 'Kegiatan ini dilaksanakan selama 1 (satu) hari yaitu tanggal 03 Oktober 2024.', 'Kegiatan verifikasi kendaraan bermotor dilaksanakan selama 1 (satu) hari, yaitu tanggal 03 Oktober 2024 Kegiatan pendataan tersebut berlokasi di wilayah Banjarmasin Selatan dan Banjarmasin Timur ( Jl. Handil Jatuh, Jl. Bumi Mas dan Jl. Darma Praja).');

-- Dumping structure for table pkl_aura.pegawai
CREATE TABLE IF NOT EXISTS `pegawai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(225) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nip` varchar(225) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama` varchar(225) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jenis_kelamin` varchar(225) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` varchar(225) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telp` varchar(225) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pangkat` varchar(225) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `golongan` varchar(225) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jabatan` varchar(225) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_pegawai` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pkl_aura.pegawai: ~8 rows (approximately)
INSERT INTO `pegawai` (`id`, `nik`, `nip`, `nama`, `jenis_kelamin`, `alamat`, `telp`, `pangkat`, `golongan`, `jabatan`, `status_pegawai`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, '123', '456', 'watiiiii', 'P', 'jl.hksn', '087810865906', 'penata tingkat 1', 'III d', 'kepala sub bagian', 'PNS', NULL, NULL, NULL),
	(3, '11111', '22222222', 'jamal', 'L', 'jl.hksn', '081348892489', 'penata tingkat 1', 'III A', 'Pelayanan Administrasi', 'TEKON', NULL, NULL, NULL),
	(4, '2222', '123456', 'rahma', 'P', 'jl.hksn', '085248487399', 'penata tingkat 2', 'III d', 'pelayanan', 'TEKON', NULL, NULL, NULL),
	(6, '12345678910', NULL, 'lilis', 'P', 'jl.hksn', '087810865906', 'kepala sub bagian', 'III A', 'kepala sub bagian', 'TEKON', NULL, NULL, NULL),
	(7, '1234567894', NULL, 'HERMANSYAH', 'L', 'Jln. Mr.Cokrokusumo RT.13 RW.03 Sungai Besar Banjarbaru', '0812-3456-7890', NULL, NULL, 'Tenaga Pengemudi pada Unit Pelayanan Pendapatan Daerah Banjarmasin 1', 'TEKON', NULL, NULL, NULL),
	(8, '123456789', '198405302293785798', 'Aulia Eka Rahmayanti. ST', 'P', 'Jl. Mutiara No. 17, Perumahan Sungai Andai, Banjarmasin, Kalimantan Selatan', '0821-2345-6789', 'Penata Tingkat I', 'III d', 'Penelaah Teknik Kebijakan', 'PNS', NULL, NULL, NULL),
	(9, '12345678', NULL, 'Gusti Adelia Amalia', 'P', 'Jl. Dahlia No.25A RT.034 RW.003 Banjarmasin', '0852-3456-1234', NULL, NULL, 'Tenaga Pengadministrasian Pajak pada Unit Pelayanan Pendapatan Daerah Banjarmasin 1', 'TEKON', NULL, NULL, NULL),
	(10, '12345678945', '19800430200', 'Henny Dian Novita S.Pd, MA', 'P', 'Jl. Pahlawan No. 36, Perumahan Pondok Indah, Banjarmasin, Kalimantan Selatan', '0838-1234-5678', 'Penata Tingkat I', 'III d', 'Penelaah Teknik Kebijakan', 'PNS', NULL, NULL, NULL);

-- Dumping structure for table pkl_aura.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pegawai_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pkl_aura.user: ~2 rows (approximately)
INSERT INTO `user` (`id`, `username`, `password`, `remember_token`, `roles`, `created_at`, `updated_at`, `name`, `pegawai_id`) VALUES
	(1, 'admin', '$2y$10$.p61gnLkCqOnZxeLq9yTzuwUmuUiFOjXjM3FPmmZYrKuwXg09TReG', 'L2GlzFqAjyMcNQ6Gh3hesTc8ZeXrRXukecNwlqQwFaDle8w3sBzIy3LP79sH', 'admin', '2024-12-25 01:04:14', '2024-12-25 01:04:14', 'aura', NULL),
	(3, 'udin', '$2y$10$Wj6RRTKoXXuM/LLQSm0yxe.b2hJmeads/Bdm4Uy58vw2nbmktcKEm', 'DPK3hfqO9jYc1b8I84qdUdmsgFpE00Myquc6pp98fV7TrqTRqOMuQVvyVIXN', 'pegawai', '2024-12-25 02:57:35', '2024-12-28 01:46:28', 'udin sedunia', 1),
	(4, 'rahma', '$2y$10$vo3vTYe3MFq5O7ZEYcTCBeGx0H4b467wI5hNFOExSdwTjIVetiJYe', NULL, 'pegawai', '2024-12-28 01:48:37', '2024-12-28 01:49:35', 'rahma', 4),
	(5, 'Hermansyah', '$2y$10$TqdeNlntalvE35VFvLtjZ.R0nULf6u5HGggHwdH7sB1ad4by1vZcy', 'TOUnsPmwhtKJF01GsBrC0sHPTJBS2iQYAYc9WufFgYvFmP8ZuChMH1S09lVg', 'pegawai', '2025-01-03 20:06:12', '2025-01-03 20:06:24', 'Hermansyah', 7);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
