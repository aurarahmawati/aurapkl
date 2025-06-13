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

-- Dumping structure for table pkl_aura.jadwal
CREATE TABLE IF NOT EXISTS `jadwal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pegawai_id` int DEFAULT NULL,
  `tgl_kegiatan` date DEFAULT NULL,
  `waktu_mulai` time DEFAULT NULL,
  `waktu_selesai` time DEFAULT NULL,
  `keterangan` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lokasi` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `latitude` decimal(20,6) DEFAULT NULL,
  `longitude` decimal(20,6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pkl_aura.jadwal: ~1 rows (approximately)
INSERT INTO `jadwal` (`id`, `pegawai_id`, `tgl_kegiatan`, `waktu_mulai`, `waktu_selesai`, `keterangan`, `lokasi`, `status`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
	(11, 7, '2025-06-10', '15:11:00', '12:16:00', 'pendataan', 'Jalan Pangeran Hidayatullah, Pengambangan, East Banjarmasin, Banjarmasin, South Kalimantan, Kalimantan, 70237, Indonesia', 'Selesai', -3.316333, 114.617956, '2025-06-09 20:12:47', '2025-06-12 22:11:12'),
	(12, 9, '2025-06-17', '16:19:00', '19:20:00', 'pendataan', 'Rusunawa, Kelayan Selatan, South Banjarmasin, Banjarmasin, South Kalimantan, Kalimantan, 70246, Indonesia', 'Belum Di Proses', -3.339039, 114.586771, '2025-06-12 22:21:06', '2025-06-12 22:21:06');

-- Dumping structure for table pkl_aura.okb
CREATE TABLE IF NOT EXISTS `okb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pegawai_id` int DEFAULT NULL,
  `nama` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nopol` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `roda` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `namapemiliksesuaistnk` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `masalakupajak` date DEFAULT NULL,
  `nohp` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dokumentasi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pelaksanaankegiatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `hasil` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pkl_aura.okb: ~6 rows (approximately)
INSERT INTO `okb` (`id`, `pegawai_id`, `nama`, `alamat`, `nopol`, `roda`, `namapemiliksesuaistnk`, `masalakupajak`, `nohp`, `dokumentasi`, `created_at`, `updated_at`, `pelaksanaankegiatan`, `hasil`) VALUES
	(15, 7, 'Muhammad Japir', 'Jl. Pangeran Hidayatullah Komp Tri Wijaya Residen No. 14 Rt. 19', 'DA 6069 ABR', '2', 'Muhammad Japir', '2025-02-28', '081348892489', '1738821330_Picture1.jpg', '2025-02-05 21:55:30', '2025-02-05 21:55:30', 'Kegiatan ini dilaksanakan selama 1 (satu) hari yaitu tanggal 06 Oktober 2025', 'Kegiatan verifikasi kendaraan bermotor dilaksanakan selama 1 (satu) hari, yaitu tanggal 03 Oktober 2024 Kegiatan pendataan tersebut berlokasi di wilayah Banjarmasin Selatan dan Banjarmasin Timur ( Jl. Pangeran Hidayatullah, Jl. Simp. Gatot Subroto dan Jl. Gatot Subroto Timur,  dll).'),
	(16, 8, 'Noor Faizal', 'Jl. Simpang Gatot Subroto V No. 64 Kel. Kebun Bunga Kec. Banjarmasin Timur', 'DA 1253 TAY', '2', 'Noor Faizal', '2025-04-08', '087810865906', '1738825789_Picture2.jpg', '2025-02-05 23:09:50', '2025-02-05 23:09:50', 'Kegiatan ini dilaksanakan selama 1 (satu) hari yaitu tanggal 12 Februari 2025', 'Kegiatan verifikasi kendaraan bermotor dilaksanakan selama 1 (satu) hari, yaitu tanggal 12 Februari 2025 Kegiatan pendataan tersebut berlokasi di wilayah Banjarmasin Selatan dan Banjarmasin Timur ( Jl. Pangeran Hidayatullah, Jl. Simp. Gatot Subroto dan Jl. Gatot Subroto Timur,  dll).'),
	(17, 9, 'Syahrida', 'Jl. Simpang Gatot Subroto V No. 4  Rt. 020', 'DA 2907 MT', '2', 'Syahrida', '2025-04-23', '085248487399', '1738828512_Picture3.jpg', '2025-02-05 23:55:13', '2025-02-05 23:55:13', 'Kegiatan ini dilaksanakan selama 1 (satu) hari yaitu tanggal 06 Februari 2025', 'Kegiatan verifikasi kendaraan bermotor dilaksanakan selama 1 (satu) hari, yaitu tanggal 06 Februari 2025 Kegiatan pendataan tersebut berlokasi di wilayah Banjarmasin Selatan dan Banjarmasin Timur ( Jl. Pangeran Hidayatullah, Jl. Simp. Gatot Subroto dan Jl. Gatot Subroto Timur,  dll).'),
	(18, 7, 'Hj. Rusman', 'Jl. Gatot Subroto Timur I No. 10 Rt. 033', 'DA 3303 AT', '2', 'Hj. Rusman', '2025-04-16', '085752275120', '1738829399_Picture4.jpg', '2025-02-06 00:09:59', '2025-02-06 00:09:59', 'Kegiatan ini dilaksanakan selama 1 (satu) hari yaitu tanggal 10 Februari 2025', 'Kegiatan verifikasi kendaraan bermotor dilaksanakan selama 1 (satu) hari, yaitu tanggal 10 Februari 2025 Kegiatan pendataan tersebut berlokasi di wilayah Banjarmasin Selatan dan Banjarmasin Timur ( Jl. Pangeran Hidayatullah, Jl. Simp. Gatot Subroto dan Jl. Gatot Subroto Timur,  dll).'),
	(19, 9, 'ERNA WATI', 'JL. A. Yani Km. 4,5 Gg. Karya Mufakat', 'DA 4683 AU', '2', 'ERNA WATI', '2025-04-15', '081348867399', '1738837005_Picture5.jpg', '2025-02-06 02:16:45', '2025-02-06 02:16:45', 'Kegiatan ini dilaksanakan selama 1 (satu) hari yaitu tanggal 01 Februari 2025', 'Kegiatan verifikasi kendaraan bermotor dilaksanakan selama 1 (satu) hari, yaitu tanggal 01 Februari 2025 Kegiatan pendataan tersebut berlokasi di wilayah Banjarmasin Selatan dan Banjarmasin Timur ( Jl. A. Yani Km. 4,5 & 5,7 dan Jl. Karya Mufakat Raya,  dll).'),
	(20, 9, 'WITDHA YANTI', 'Jl. A. Yani Km 5,7 Jl. Karya Mufakat 1', 'DA 6405 ADK', '2', 'WITDHA YANTI', '2025-03-28', '085251053981', '1738837210_Picture6.jpg', '2025-02-06 02:20:10', '2025-02-06 02:20:10', 'Kegiatan ini dilaksanakan selama 1 (satu) hari yaitu tanggal 06 Februari 2025', 'Kegiatan verifikasi kendaraan bermotor dilaksanakan selama 1 (satu) hari, yaitu tanggal 06 Februari  2025  Kegiatan pendataan tersebut berlokasi di wilayah Banjarmasin Selatan dan Banjarmasin Timur ( Jl. A. Yani Km. 4,5 & 5,7 dan Jl. Karya Mufakat Raya,  dll).'),
	(22, 11, 'AURA', 'JL. HKSN Komp Surya Gemilang', 'DA 1214 AD', '4', 'AURA', '2025-02-21', '085251053981', '1740011334_Picture1.jpg', '2025-02-19 16:28:57', '2025-02-19 16:28:57', 'Kegiatan ini dilaksanakan selama 1 (satu) hari yaitu tanggal 06 Februari 2025', 'Kegiatan verifikasi kendaraan bermotor dilaksanakan selama 1 (satu) hari, yaitu tanggal 03 Oktober 2024 Kegiatan pendataan tersebut berlokasi di wilayah Banjarmasin Selatan dan Banjarmasin Timur ( Jl. Pangeran Hidayatullah, Jl. Simp. Gatot Subroto dan Jl. Gatot Subroto Timur,  dll).'),
	(23, 12, 'PETRUS PUE', 'Jl. Muhajirin IV/4 Rt.18 Pekauman Banjarmasin Selatan', 'DA 2771', '2', 'PETRUS PUE', '2025-06-20', '081348892489', '1748968288_logo-uniska-ok-300x300.png', '2025-06-03 08:31:29', '2025-06-03 08:31:29', 'Kegiatan ini dilaksanakan selama 1 (satu) hari yaitu tanggal 4 juni 2025', 'Kegiatan verifikasi kendaraan bermotor dilaksanakan selama 1 (satu) hari, yaitu tanggal 4 juni 2025 Kegiatan pendataan tersebut berlokasi di wilayah Banjarmasin Selatan dan Banjarmasin Timur ( Jl. A. Yani dan Jl. Pekauman,  dll).');

-- Dumping structure for table pkl_aura.pegawai
CREATE TABLE IF NOT EXISTS `pegawai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nip` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jenis_kelamin` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telp` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pangkat` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `golongan` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jabatan` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_pegawai` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pkl_aura.pegawai: ~11 rows (approximately)
INSERT INTO `pegawai` (`id`, `nik`, `nip`, `nama`, `jenis_kelamin`, `alamat`, `telp`, `pangkat`, `golongan`, `jabatan`, `status_pegawai`, `user_id`, `created_at`, `updated_at`) VALUES
	(7, '3302031701980003', '-', 'HERMANSYAH', 'L', 'Jln. Mr.Cokrokusumo RT.12 RW.03 Sungai Besar Banjarbaru', '0812-3456-7890', NULL, NULL, 'Tenaga Pengemudi', 'TEKON', NULL, NULL, NULL),
	(8, '3173011207030007', '198405302009042006', 'Aulia Eka Rahmayanti. ST', 'P', 'Jl. Mutiara No. 17, Perumahan Sungai Andai, Banjarmasin, Kalimantan Selatan', '082123456789', 'Penata Tingkat I', 'III d', 'Penelaah Teknik Kebijakan', 'PNS', NULL, NULL, NULL),
	(9, '3208011205010012', '-', 'Gusti Adelia Amalia', 'P', 'Jl. Dahlia No.25A RT.034 RW.003 Banjarmasin', '085234561234', NULL, NULL, 'Tenaga Pengadministrasian Pajak', 'TEKON', NULL, NULL, NULL),
	(10, '12345678945', '198004302009042004', 'Henny Dian Novita S.Pd, MA', 'P', 'Jl. Pahlawan No. 36, Perumahan Pondok Indah, Banjarmasin, Kalimantan Selatan', '083812345678', 'Penata Tingkat I', 'III d', 'Penelaah Teknik Kebijakan', 'PNS', NULL, NULL, NULL),
	(11, '3173050405010001', '-', 'DEWI YANTI', 'P', 'Jl. Pahlawan No. 9, Kelurahan Sungai Miai, Banjarmasin', '082123456789', NULL, NULL, 'Tenaga Pengadministrasian Pajak', 'TEKON', NULL, NULL, NULL),
	(12, '3302031701980003', '197410222010012001', 'NURNILA OKTAMILANI, S.Kom', 'P', 'Jl. Pahlawan No. 45, Kelurahan Antasan Kecil, Banjarmasin Tengah, Banjarmasin', '081234567890', 'Penata', 'III C', 'Analisa Kinerja', 'PNS', NULL, NULL, NULL),
	(13, '3177011606010023', '-', 'HENDRA MEDIAWAN, SE', 'L', 'Jl. Lambung Mangkurat No. 78, Banjarmasin Selatan, Banjarmasin', '081398765432', NULL, NULL, 'Pengelola Data Pelayanan Perpajakan', 'TEKON', NULL, NULL, NULL),
	(14, '3210041505990004', '198506022010012002', 'NYIMAS RATIH AYU UTAMI', 'P', 'Jl. Merdeka No. 34, Banjarmasin Barat, Kalimantan Selatan', '082123456789', 'Penata Muda', 'III A', 'Bendahara Pemegang Kas Penerimaan Samsat', 'PNS', NULL, NULL, NULL),
	(15, '3305050604020015', '-', 'FIRMANSYAH', 'L', 'Jl. Sultan Adam No. 56, Banjarmasin, Kalimantan Selatan', '082287654321', NULL, NULL, 'Pengadministrasian Pajak', 'TEKON', NULL, NULL, NULL),
	(16, '3173011205030005', '197405032008011015', 'MUSLIM', 'L', 'Jl. Brigjen H. Hasan Basri No. 1, Banjarmasin, Kalimantan Selatan 70123', '087798765432', 'Pengatur Tk.I', 'II D', 'Pengadministrasi Pajak', 'PNS', NULL, NULL, NULL),
	(23, '1671042711900003', '196705051989072001', 'ANNI HANISYAH,SE,MM', 'P', 'jalan Kenanga No. 45', '085248483981', 'Pembina', '(IV/a)', 'Kepala Unit UPPD 1', 'PNS', NULL, NULL, NULL);

-- Dumping structure for table pkl_aura.spt
CREATE TABLE IF NOT EXISTS `spt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pegawai_id` int DEFAULT NULL,
  `nomor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keperluan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `tujuan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `tgl_berlaku` date DEFAULT NULL,
  `upload` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pkl_aura.spt: ~3 rows (approximately)
INSERT INTO `spt` (`id`, `pegawai_id`, `nomor`, `keperluan`, `tujuan`, `tgl_masuk`, `tgl_berlaku`, `upload`, `created_at`, `updated_at`) VALUES
	(9, 7, '841.5/531 -UPPD.BJM1/2025', 'Pelaksanaan Verifikasi Data Pajak Kendaraan Bermotor', 'Banjarmasin', '2025-02-03', '2025-02-06', '1738820182_surat tugas.jpeg', '2025-02-05 21:36:24', '2025-02-05 21:36:24'),
	(10, 8, '841.5/567 -UPPD.BJM1/2025', 'Pelaksanaan Verifikasi Data Pajak Kendaraan Bermotor', 'Banjarmasin', '2025-02-10', '2025-02-12', '1738825638_Surat Tugas 2.jpeg', '2025-02-05 23:07:18', '2025-02-05 23:07:18'),
	(11, 9, '841.5/544 -UPPD.BJM1/2025', 'Pelaksanaan Verifikasi Data Pajak Kendaraan Bermotor', 'Banjarmasin', '2025-02-12', '2025-02-13', '1738826127_surat tugas.jpeg', '2025-02-05 23:15:28', '2025-02-05 23:15:28'),
	(13, 7, '841.5/551 -UPPD.BJM1/2025', 'Pelaksanaan Verifikasi Data Pajak Kendaraan Bermotor', 'Banjarmasin', '2025-02-19', '2025-02-21', '1739967720_Surat Tugas 2.jpeg', '2025-02-19 04:22:00', '2025-02-19 04:22:00');

-- Dumping structure for table pkl_aura.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `roles` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pegawai_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table pkl_aura.user: ~11 rows (approximately)
INSERT INTO `user` (`id`, `username`, `password`, `remember_token`, `roles`, `created_at`, `updated_at`, `name`, `pegawai_id`) VALUES
	(1, 'admin', '$2y$10$.p61gnLkCqOnZxeLq9yTzuwUmuUiFOjXjM3FPmmZYrKuwXg09TReG', '3h3e325x6gHaGRvyAiagXgRH4JFGZq89eUQD2oHUjK3vABRgDYNcVaKIjs7b', 'admin', '2024-12-25 01:04:14', '2025-01-24 00:11:16', 'admin', NULL),
	(8, 'Hermansyah', '$2y$10$z/u6YGB2.Tox8ecAFbHDLuDMnzKnajIaVENu6kK8uYgmQ5jCRtwLO', 'y1fIu83WnguptRGoUmDPEyMr2fuz0fye26SRBQT6Uvkr7rE2SitDj315p60w', 'pegawai', '2025-01-10 21:02:59', '2025-01-10 21:03:13', 'Hermansyah', 7),
	(9, 'Aulia Eka Rahmayanti', '$2y$10$47owrvj/EbySffBxLtrhT.kcwRAiP6/t87xUKPkMEZD.yWgoFANRK', '782RGcKnxmYSvC6jPTEUXtsx4CWb05tizcvNXyGmsilUgD9104BfacHl6BrA', 'pegawai', '2025-01-18 01:18:47', '2025-01-18 01:21:37', 'Aulia Eka Rahmayanti', 8),
	(10, 'Gusti Adelia Amalia', '$2y$10$m/mQdJJRqPX0AQ3t/dExyurf32kpzmR2T0Us6cJOT3VVx43RVbDCW', 'kCuNxR4SE4Y0XvXIs6b1gJObQGD9CSkIYfhocw49rNdje3tQRNuyr45oy3wB', 'pegawai', '2025-01-18 01:19:29', '2025-01-18 01:21:46', 'Gusti Adelia Amalia', 9),
	(11, 'Henny Dian Novita', '$2y$10$eJ9NY/8r1T/Sl7rYVD8COud4Toym3JRMqZJJBuNk8pMrzDBZttHja', 'QnE1xgmp6Ap4rhdxj6VwQH7nzng7SV85HmMzN3XkkoBoll3UdRNbXJkvZ53C', 'pegawai', '2025-01-18 01:20:11', '2025-01-18 01:21:56', 'Henny Dian Novita', 10),
	(12, 'Dewi Yanti', '$2y$10$3EJl7RteWUh6I3v8nptyQOOTqDrGZrfSH6YtW2gTiCa/NtVlOfCii', 'VdvkJA6OUMJ3lqfPrWFEaj5LqJGXMwe7RzcEWzl8suVyX3uxaUWQ2xrnIIdB', 'pegawai', '2025-01-18 01:20:42', '2025-01-18 01:22:11', 'Dewi Yanti', 11),
	(13, 'Nurnila Oktamilani', '$2y$10$WP7Vjpn61Lx.o/ef79KGVuff/7sakFSe.gkLbs6RhUt7IEqVARfNG', 'sWWLdq2V3YM5WgqgtVtT7YdrG4wGuCPjSvWDKbDveDjlR5NaEVuyCSogjGXa', 'pegawai', '2025-01-18 01:21:11', '2025-01-18 01:22:28', 'Nurnila Oktamilani', 12),
	(14, 'Hendra Mediawan', '$2y$10$I3QwRjD1JgkdyJfGuTldm.gBM07Hx5x4tJirGQdMO6Jp2nu22Nq.G', NULL, 'pegawai', '2025-01-24 00:14:03', '2025-01-24 00:14:03', 'Hendra Mediawan', NULL),
	(15, 'Nyimas Ratih Ayu Utami', '$2y$10$TT8KCnnMmw0YyYYrpY93m.t04tOXpfpwBNBq6y.dH7R2ClJADwzwK', NULL, 'pegawai', '2025-01-24 00:17:14', '2025-01-24 00:17:14', 'Nyimas Ratih Ayu Utami', NULL),
	(16, 'Firmansyah', '$2y$10$MEFy5XWeW7dF4H1xdlkFlexpf/tqhMR7zNI7jHyMNB3IRlrF2s9bS', NULL, 'pegawai', '2025-01-24 00:18:19', '2025-01-24 00:18:19', 'Firmansyah', NULL),
	(17, 'MUSLIM', '$2y$10$J2KKXbE8K9RewkYuH/1tXuDhedJmgnf.9jLh5cGTzGaYTuviX9dRG', '0HYOGiMNimYULZeZXgs4nd0LMIeCCdNRDYW2yloM9WD6LB7YC9gKFsIwAn9c', 'pegawai', '2025-02-19 06:18:03', '2025-02-19 06:18:23', 'MUSLIM', 16),
	(23, 'ANNI HANISYAH, SE, MM', '$2y$10$z0/dRpb8Aot3XX/U1X/VdOwKy5jTRXhs29hHnZ4F2PcDmQgnLRK0K', 'PSFJm3vWdeMxsb3MEmvHccDwL1WBfqFNsqdCRcZog4qiB8MtA60hFPmzzKCk', 'pimpinan', '2025-06-03 07:33:50', '2025-06-03 07:33:50', 'ANNI HANISYAH, SE, MM', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
