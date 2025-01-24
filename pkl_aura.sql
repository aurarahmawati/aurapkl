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
  `masalakupajak` date DEFAULT NULL,
  `nohp` varchar(225) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dokumentasi` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pelaksanaankegiatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `hasil` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pkl_aura.okb: ~4 rows (approximately)
INSERT INTO `okb` (`id`, `pegawai_id`, `nama`, `alamat`, `nopol`, `roda`, `namapemiliksesuaistnk`, `masalakupajak`, `nohp`, `dokumentasi`, `created_at`, `updated_at`, `pelaksanaankegiatan`, `hasil`) VALUES
	(11, 4, 'ora', 'Jl. Lambung Mangkurat No. 78, Banjarmasin Selatan, Banjarmasin', 'DA 1819 AC', '2', 'rahmawati', '2025-01-15', '081348892489', '1736585337_logo tuti.png', '2025-01-11 01:48:57', '2025-01-11 01:48:57', 'Kegiatan ini dilaksanakan selama 1 (satu) hari yaitu tanggal 03 Januari 2025', 'Kegiatan verifikasi kendaraan bermotor dilaksanakan selama 1 (satu) hari, yaitu tanggal 03 Oktober 2024 Kegiatan pendataan tersebut berlokasi di wilayah Banjarmasin Selatan dan Banjarmasin Timur ( Jl. Handil Jatuh, Jl. Bumi Mas dan Jl. Darma Praja).');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pkl_aura.pegawai: ~13 rows (approximately)
INSERT INTO `pegawai` (`id`, `nik`, `nip`, `nama`, `jenis_kelamin`, `alamat`, `telp`, `pangkat`, `golongan`, `jabatan`, `status_pegawai`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, '123', '456', 'watiiiii', 'P', 'jl.hksn', '087810865906', 'penata tingkat 1', 'III d', 'kepala sub bagian', 'PNS', NULL, NULL, NULL),
	(4, '2222', '123456', 'rahma', 'P', 'jl.hksn', '085248487399', 'penata tingkat 2', 'III d', 'pelayanan', 'TEKON', NULL, NULL, NULL),
	(7, '3302031701980003', '-', 'HERMANSYAH', 'L', 'Jln. Mr.Cokrokusumo RT.13 RW.03 Sungai Besar Banjarbaru', '0812-3456-7890', NULL, NULL, 'Tenaga Pengemudi', 'TEKON', NULL, NULL, NULL),
	(8, '3173011207030007', '198405302009042006', 'Aulia Eka Rahmayanti. ST', 'P', 'Jl. Mutiara No. 17, Perumahan Sungai Andai, Banjarmasin, Kalimantan Selatan', '082123456789', 'Penata Tingkat I', 'III d', 'Penelaah Teknik Kebijakan', 'PNS', NULL, NULL, NULL),
	(9, '3208011205010012', '-', 'Gusti Adelia Amalia', 'P', 'Jl. Dahlia No.25A RT.034 RW.003 Banjarmasin', '085234561234', NULL, NULL, 'Tenaga Pengadministrasian Pajak', 'TEKON', NULL, NULL, NULL),
	(10, '12345678945', '198004302009042004', 'Henny Dian Novita S.Pd, MA', 'P', 'Jl. Pahlawan No. 36, Perumahan Pondok Indah, Banjarmasin, Kalimantan Selatan', '083812345678', 'Penata Tingkat I', 'III d', 'Penelaah Teknik Kebijakan', 'PNS', NULL, NULL, NULL),
	(11, '3173050405010001', '-', 'DEWI YANTI', 'P', 'Jl. Pahlawan No. 9, Kelurahan Sungai Miai, Banjarmasin', '082123456789', NULL, NULL, 'Tenaga Pengadministrasian Pajak', 'TEKON', NULL, NULL, NULL),
	(12, '3302031701980003', '197410222010012001', 'NURNILA OKTAMILANI, S.Kom', 'P', 'Jl. Pahlawan No. 45, Kelurahan Antasan Kecil, Banjarmasin Tengah, Banjarmasin', '081234567890', 'Penata', 'III C', 'Analisa Kinerja', 'PNS', NULL, NULL, NULL),
	(13, '3177011606010023', '-', 'HENDRA MEDIAWAN, SE', 'L', 'Jl. Lambung Mangkurat No. 78, Banjarmasin Selatan, Banjarmasin', '081398765432', NULL, NULL, 'Pengelola Data Pelayanan Perpajakan', 'TEKON', NULL, NULL, NULL),
	(14, '3210041505990004', '198506022010012002', 'NYIMAS RATIH AYU UTAMI', 'P', 'Jl. Merdeka No. 34, Banjarmasin Barat, Kalimantan Selatan', '082123456789', 'Penata Muda', 'III A', 'Bendahara Pemegang Kas Penerimaan Samsat', 'PNS', NULL, NULL, NULL),
	(15, '3305050604020015', '-', 'FIRMANSYAH', 'L', 'Jl. Sultan Adam No. 56, Banjarmasin, Kalimantan Selatan', '082287654321', NULL, NULL, 'Pengadministrasian Pajak', 'TEKON', NULL, NULL, NULL),
	(16, '3173011205030005', '197405032008011015', 'MUSLIM', 'L', 'Jl. Brigjen H. Hasan Basri No. 1, Banjarmasin, Kalimantan Selatan 70123', '087798765432', 'Pengatur Tk.I', 'II D', 'Pengadministrasi Pajak', 'PNS', NULL, NULL, NULL),
	(17, '3173011207030007', '-', 'LENY MARLINA, SE', 'P', 'Jl. Alun-Alun No. 10, Banjarmasin Utara, Banjarmasin 70126', '087822221111', NULL, NULL, 'Pengelola Data dan Dokumen Perpajakan', 'TEKON', NULL, NULL, NULL);

-- Dumping structure for table pkl_aura.spt
CREATE TABLE IF NOT EXISTS `spt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pegawai_id` int DEFAULT NULL,
  `nomor` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keperluan` text COLLATE utf8mb4_general_ci,
  `tujuan` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `tgl_berlaku` date DEFAULT NULL,
  `upload` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pkl_aura.spt: ~0 rows (approximately)
INSERT INTO `spt` (`id`, `pegawai_id`, `nomor`, `keperluan`, `tujuan`, `tgl_masuk`, `tgl_berlaku`, `upload`, `created_at`, `updated_at`) VALUES
	(4, 1, '841.5/531-UPPD.BJM1/2024', 'Pelaksanaan Verifikasi Data Pajak Kendaraan Bermotor di Wilayah Kecamatan Banjarmasin Timur', 'Banjarmasin', '2025-01-18', '2025-01-21', '1736585028_6057454461204414199.jpg', '2025-01-11 01:43:48', '2025-01-11 01:43:48'),
	(5, 4, '841.5/531-UPPD.BJM1/2024', 'Pelaksanaan Verifikasi Data Pajak Kendaraan Bermotor di Wilayah Kecamatan Banjarmasin Timur', 'Banjarmasin', '2025-01-11', '2025-01-14', '1736585459_6057454461204414199.jpg', '2025-01-11 01:50:59', '2025-01-11 01:50:59');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pkl_aura.user: ~2 rows (approximately)
INSERT INTO `user` (`id`, `username`, `password`, `remember_token`, `roles`, `created_at`, `updated_at`, `name`, `pegawai_id`) VALUES
	(1, 'admin', '$2y$10$.p61gnLkCqOnZxeLq9yTzuwUmuUiFOjXjM3FPmmZYrKuwXg09TReG', 'TttN7Gvm6l376C60tWD8boVSzs0qnP0WxkMSKNfZQ7wDLKG8VDSUb1WsagfZ', 'admin', '2024-12-25 01:04:14', '2025-01-11 02:14:42', 'anna', NULL),
	(6, 'wati', '$2y$10$AaRONFjqLx2glYqgERk22eYud1JJO4uQCH6/qhHXWCb/r5b0ydwQq', 'QbQVsQZ2aFu5KeekRLsvy18FQTwyQ4K5LGEjBnYT2V3QLXOjNaOlxGiQbPeb', 'pegawai', '2025-01-10 04:20:24', '2025-01-10 04:22:17', 'wati', 1),
	(7, 'rahma', '$2y$10$05JGoTizzH63Qpm7O0qAHuS4duJwXkxeZu5xrHhX.Gmk9YHsJ6iz2', '0hQ2raHZGApfJ9M80MNvdhWyY8YU5GACz1lFJO6iC3u6fb6uVptp1nBfUgV7', 'pegawai', '2025-01-10 04:37:33', '2025-01-10 04:37:49', 'rahma', 4),
	(8, 'Hermansyah', '$2y$10$z/u6YGB2.Tox8ecAFbHDLuDMnzKnajIaVENu6kK8uYgmQ5jCRtwLO', 'PaZz0wtRj3mKu3h5dqiNvlEhUurxGyY5yQLb0a7GJcy1KBl945TeKexQe80l', 'pegawai', '2025-01-10 21:02:59', '2025-01-10 21:03:13', 'Hermansyah', 7);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
