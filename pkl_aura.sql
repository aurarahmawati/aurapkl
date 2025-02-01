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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pkl_aura.okb: ~1 rows (approximately)
INSERT INTO `okb` (`id`, `pegawai_id`, `nama`, `alamat`, `nopol`, `roda`, `namapemiliksesuaistnk`, `masalakupajak`, `nohp`, `dokumentasi`, `created_at`, `updated_at`, `pelaksanaankegiatan`, `hasil`) VALUES
	(12, 7, 'Muhammad Japir', 'Jl. Pangeran Hidayatullah Komp Tri Wijaya Residen No. 14 Rt. 19', 'DA 6069 ABR', '2', 'Muhammad Japir', '2025-01-31', '081348892489', '1737189022_satu.png', '2025-01-18 01:30:22', '2025-01-18 01:33:43', 'Kegiatan ini dilaksanakan selama 1 (satu) hari yaitu tanggal 20 Januari 2025.', 'Kegiatan verifikasi kendaraan bermotor dilaksanakan selama 1 (satu) hari, yaitu tanggal 20 Januari 2025 Kegiatan pendataan tersebut berlokasi di wilayah Banjarmasin Selatan dan Banjarmasin Timur ( Jl. Pangeran Hidayatullah, Jl. Simp. Gatot Subroto dan Jl. Gatot Subroto Timur,  dll).'),
	(13, 8, 'Noor Faizal', 'Jl. Simpang Gatot Subroto V No. 64 Kel. Kebun Bunga Kec. Banjarmasin Timur', 'DA 1253 TAY', '4', 'Noor Faizal', '2025-01-30', '087810865906', '1737189411_dua.png', '2025-01-18 01:36:51', '2025-01-18 01:36:51', 'Kegiatan ini dilaksanakan selama 1 (satu) hari yaitu tanggal 20 Januari 2025.', 'Kegiatan verifikasi kendaraan bermotor dilaksanakan selama 1 (satu) hari, yaitu tanggal 20 Januari 2025 Kegiatan pendataan tersebut berlokasi di wilayah Banjarmasin Selatan dan Banjarmasin Timur ( Jl. Pangeran Hidayatullah, Jl. Simp. Gatot Subroto dan Jl. Gatot Subroto Timur,  dll).'),
	(14, 9, 'NURULLAH', 'Jl. Prona I Rt. 14 Rw.01', 'DA 3324 I', '2', 'NURULLAH', '2025-02-21', '085248487399', '1737726159_7.jfif', '2025-01-24 06:42:41', '2025-01-24 06:42:41', 'Kegiatan ini dilaksanakan selama 1 (satu) hari yaitu tanggal 02 Februari  2025.', 'Kegiatan verifikasi kendaraan bermotor dilaksanakan selama 1 (satu) hari, yaitu tanggal 02 Februari 2025 Kegiatan pendataan tersebut berlokasi di wilayah Banjarmasin Selatan dan Banjarmasin Timur. (Jl. Pramuka melati indah , dll).');

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

-- Dumping data for table pkl_aura.pegawai: ~11 rows (approximately)
INSERT INTO `pegawai` (`id`, `nik`, `nip`, `nama`, `jenis_kelamin`, `alamat`, `telp`, `pangkat`, `golongan`, `jabatan`, `status_pegawai`, `user_id`, `created_at`, `updated_at`) VALUES
	(7, '3302031701980003', '-', 'HERMANSYAH', 'L', 'Jln. Mr.Cokrokusumo RT.13 RW.03 Sungai Besar Banjarbaru', '0812-3456-7890', NULL, NULL, 'Tenaga Pengemudi', 'TEKON', NULL, NULL, NULL),
	(8, '3173011207030007', '198405302009042006', 'Aulia Eka Rahmayanti. ST', 'P', 'Jl. Mutiara No. 17, Perumahan Sungai Andai, Banjarmasin, Kalimantan Selatan', '082123456789', 'Penata Tingkat I', 'III d', 'Penelaah Teknik Kebijakan', 'PNS', NULL, NULL, NULL),
	(9, '3208011205010012', '-', 'Gusti Adelia Amalia', 'P', 'Jl. Dahlia No.25A RT.034 RW.003 Banjarmasin', '085234561234', NULL, NULL, 'Tenaga Pengadministrasian Pajak', 'TEKON', NULL, NULL, NULL),
	(10, '12345678945', '198004302009042004', 'Henny Dian Novita S.Pd, MA', 'P', 'Jl. Pahlawan No. 36, Perumahan Pondok Indah, Banjarmasin, Kalimantan Selatan', '083812345678', 'Penata Tingkat I', 'III d', 'Penelaah Teknik Kebijakan', 'PNS', NULL, NULL, NULL),
	(11, '3173050405010001', '-', 'DEWI YANTI', 'P', 'Jl. Pahlawan No. 9, Kelurahan Sungai Miai, Banjarmasin', '082123456789', NULL, NULL, 'Tenaga Pengadministrasian Pajak', 'TEKON', NULL, NULL, NULL),
	(12, '3302031701980003', '197410222010012001', 'NURNILA OKTAMILANI, S.Kom', 'P', 'Jl. Pahlawan No. 45, Kelurahan Antasan Kecil, Banjarmasin Tengah, Banjarmasin', '081234567890', 'Penata', 'III C', 'Analisa Kinerja', 'PNS', NULL, NULL, NULL),
	(13, '3177011606010023', '-', 'HENDRA MEDIAWAN, SE', 'L', 'Jl. Lambung Mangkurat No. 78, Banjarmasin Selatan, Banjarmasin', '081398765432', NULL, NULL, 'Pengelola Data Pelayanan Perpajakan', 'TEKON', NULL, NULL, NULL),
	(14, '3210041505990004', '198506022010012002', 'NYIMAS RATIH AYU UTAMI', 'P', 'Jl. Merdeka No. 34, Banjarmasin Barat, Kalimantan Selatan', '082123456789', 'Penata Muda', 'III A', 'Bendahara Pemegang Kas Penerimaan Samsat', 'PNS', NULL, NULL, NULL),
	(15, '3305050604020015', '-', 'FIRMANSYAH', 'L', 'Jl. Sultan Adam No. 56, Banjarmasin, Kalimantan Selatan', '082287654321', NULL, NULL, 'Pengadministrasian Pajak', 'TEKON', NULL, NULL, NULL),
	(16, '3173011205030005', '197405032008011015', 'MUSLIM', 'L', 'Jl. Brigjen H. Hasan Basri No. 1, Banjarmasin, Kalimantan Selatan 70123', '087798765432', 'Pengatur Tk.I', 'II D', 'Pengadministrasi Pajak', 'PNS', NULL, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pkl_aura.spt: ~4 rows (approximately)
INSERT INTO `spt` (`id`, `pegawai_id`, `nomor`, `keperluan`, `tujuan`, `tgl_masuk`, `tgl_berlaku`, `upload`, `created_at`, `updated_at`) VALUES
	(6, 7, '841.5/531-UPPD.BJM1/2024', 'Pelaksanaan Verifikasi Data Pajak Kendaraan Bermotor di Wilayah Kecamatan Banjarmasin Timur', 'Banjarmasin', '2025-01-18', '2025-01-20', '1737188649_6057454461204414199.jpg', '2025-01-18 01:24:11', '2025-01-18 01:24:11'),
	(7, 8, '000.1.11/406- UPPD.BJM1/2024', 'Pelaksanaan Verifikasi Data Pajak Kendaraan Bermotor', 'Banjarmasin', '2025-01-20', '2025-01-22', '1737189631_6057454461204414199.jpg', '2025-01-18 01:40:32', '2025-01-18 01:40:32'),
	(8, 9, '842.5/507-UPPD.BJM1/2024', 'Pelaksanaan Verifikasi Data Pajak Kendaraan Bermotor di Wilayah Kecamatan Banjarmasin', 'Banjarmasin', '2025-01-20', '2025-01-22', '1737190188_6057454461204414199.jpg', '2025-01-18 01:49:49', '2025-01-24 07:00:07');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pkl_aura.user: ~6 rows (approximately)
INSERT INTO `user` (`id`, `username`, `password`, `remember_token`, `roles`, `created_at`, `updated_at`, `name`, `pegawai_id`) VALUES
	(1, 'admin', '$2y$10$.p61gnLkCqOnZxeLq9yTzuwUmuUiFOjXjM3FPmmZYrKuwXg09TReG', '4cPJAsUyeCcrIR0mwOLgqHHzyhrPNN2Jeick9p3MFv1MZ5ek74l9fkUQvnel', 'admin', '2024-12-25 01:04:14', '2025-01-24 00:11:16', 'admin', NULL),
	(8, 'Hermansyah', '$2y$10$z/u6YGB2.Tox8ecAFbHDLuDMnzKnajIaVENu6kK8uYgmQ5jCRtwLO', 'JujsNwjRkVuPYilNB5EtlVmCr0SHnOGzaByUxbj5X1W264KKfUYJQsXxUCmF', 'pegawai', '2025-01-10 21:02:59', '2025-01-10 21:03:13', 'Hermansyah', 7),
	(9, 'Aulia Eka Rahmayanti', '$2y$10$47owrvj/EbySffBxLtrhT.kcwRAiP6/t87xUKPkMEZD.yWgoFANRK', 'daKqEp0J1tsKQiJAwRRUAaf7vkmvGlDXsMVrCJnQWNT4A97pdioO25HbViYD', 'pegawai', '2025-01-18 01:18:47', '2025-01-18 01:21:37', 'Aulia Eka Rahmayanti', 8),
	(10, 'Gusti Adelia Amalia', '$2y$10$m/mQdJJRqPX0AQ3t/dExyurf32kpzmR2T0Us6cJOT3VVx43RVbDCW', 'rqICztd8vAKdK8fXQYSNa3umtLahxPx8IbgL0BjZBWNdpl95M427iTJwE0fV', 'pegawai', '2025-01-18 01:19:29', '2025-01-18 01:21:46', 'Gusti Adelia Amalia', 9),
	(11, 'Henny Dian Novita', '$2y$10$eJ9NY/8r1T/Sl7rYVD8COud4Toym3JRMqZJJBuNk8pMrzDBZttHja', NULL, 'pegawai', '2025-01-18 01:20:11', '2025-01-18 01:21:56', 'Henny Dian Novita', 10),
	(12, 'Dewi Yanti', '$2y$10$3EJl7RteWUh6I3v8nptyQOOTqDrGZrfSH6YtW2gTiCa/NtVlOfCii', NULL, 'pegawai', '2025-01-18 01:20:42', '2025-01-18 01:22:11', 'Dewi Yanti', 11),
	(13, 'Nurnila Oktamilani', '$2y$10$WP7Vjpn61Lx.o/ef79KGVuff/7sakFSe.gkLbs6RhUt7IEqVARfNG', NULL, 'pegawai', '2025-01-18 01:21:11', '2025-01-18 01:22:28', 'Nurnila Oktamilani', 12),
	(14, 'Hendra Mediawan', '$2y$10$I3QwRjD1JgkdyJfGuTldm.gBM07Hx5x4tJirGQdMO6Jp2nu22Nq.G', NULL, 'pegawai', '2025-01-24 00:14:03', '2025-01-24 00:14:03', 'Hendra Mediawan', NULL),
	(15, 'Nyimas Ratih Ayu Utami', '$2y$10$TT8KCnnMmw0YyYYrpY93m.t04tOXpfpwBNBq6y.dH7R2ClJADwzwK', NULL, 'pegawai', '2025-01-24 00:17:14', '2025-01-24 00:17:14', 'Nyimas Ratih Ayu Utami', NULL),
	(16, 'Firmansyah', '$2y$10$MEFy5XWeW7dF4H1xdlkFlexpf/tqhMR7zNI7jHyMNB3IRlrF2s9bS', NULL, 'pegawai', '2025-01-24 00:18:19', '2025-01-24 00:18:19', 'Firmansyah', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
