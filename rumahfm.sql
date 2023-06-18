-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 07:57 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumahfm`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `waktu` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deskripsi` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `nama`, `waktu`, `deskripsi`) VALUES
(11, 'Survei ULM Mengajar', '2023-06-10 08:00:00', 'SC OC CO');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventaris`
--

CREATE TABLE `inventaris` (
  `id` int(11) NOT NULL,
  `kode_batang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `deskripsi` varchar(300) NOT NULL,
  `tahun` year(4) NOT NULL,
  `string_img` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `nama` varchar(255) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`nama`, `nim`, `waktu`) VALUES
('Muhammad Ramadhani', '2110131210003', '2023-06-05 06:23:35'),
('Achmad Syaiba', '2110112110011', '2023-06-05 14:51:35'),
('Muhammad Ramadhani GT', '2110131210003', '2023-06-05 14:51:49'),
('Cahyani Widya Safitri', '2110127320003', '2023-06-05 15:00:33'),
('Farah Mu\'thia', '2010111220022', '2023-06-05 15:02:04'),
('Wiwin Sri Wahyuni ', '2110129220020', '2023-06-05 15:03:05'),
('Muhammad Ramadhani', '2110131210003', '2023-06-05 15:12:14'),
('Izzatul Asfia ', '2110118320006', '2023-06-05 15:13:02'),
('Hafizah Ariyani ', '2110118220009', '2023-06-05 15:34:07'),
('Wiwin Sri Wahyuni', '2110129220020', '2023-06-05 23:33:40'),
('Farah Mu\'thia', '2010111220022', '2023-06-05 23:44:36'),
('Muhammad Aditya Ramadhan', '2110128210024', '2023-06-05 23:49:30'),
('Risma Liyanti', '2110116120002', '2023-06-05 23:52:31'),
('Muhammad Ramadhani', '2110131210003', '2023-06-05 23:53:27'),
('Muhammad Ramadhani', '2110131210003', '2023-06-06 00:14:10'),
('Siti Mawaddah', '2010111120011', '2023-06-06 00:14:32'),
('Fahimah', '2110116220008', '2023-06-06 00:14:34'),
('Muhammad Ramadhani', '2110131210003', '2023-06-06 00:15:03'),
('Fahimah', '2110116220008', '2023-06-06 00:15:40'),
('Rini Oktaviani', '2110116220007', '2023-06-06 00:30:43'),
('Muhammad Ramadhani', '2110131210003', '2023-06-06 05:02:25'),
('Muhammad Ramadhani', '2110131210003', '2023-06-06 05:07:47'),
('Muhammad Ramadhani', '2110131210003', '2023-06-06 05:08:05'),
('Muhammad Ramadhani', '2110131210003', '2023-06-06 05:17:11'),
('Muhammad Ramadhani', '2110131210003', '2023-06-06 05:23:42'),
('Budi Rahman ', '2010112210037', '2023-06-06 05:24:29'),
('Achmad Syaiba', '2110112110011', '2023-06-06 05:25:45'),
('Adelia Erlyn Nor Candra Prasetyana', '2110131320010', '2023-06-06 05:32:57'),
('Muhammad Ramadhani', '2110131210003', '2023-06-06 05:51:33'),
('Muhammad Ramadhani', '2110131210003', '2023-06-06 05:55:10'),
('Muhammad Ramadhani', '2110131210003', '2023-06-06 09:27:45'),
('Muhammad Ramadhani', '2110131210003', '2023-06-06 22:28:49'),
('Muhammad Ramadhani', '2110131210003', '2023-06-06 22:29:19'),
('Wahdah ', '2010111120013', '2023-06-06 22:48:59'),
('Muhammad Ramadhani', '2110131210003', '2023-06-07 07:27:44'),
('Muhammad Ramadhani', '2110131210003', '2023-06-07 07:35:10'),
('Muhammad Ramadhani', '2110131210003', '2023-06-07 07:42:18'),
('Annisa Desti Fahjri', '2010118220041', '2023-06-07 08:38:12'),
('Muhammad Ramadhani', '2110131210003', '2023-06-07 08:38:48'),
('Aulia Gunaidah ', '2110118320003', '2023-06-07 08:39:22'),
('Muhammad Ramadhani', '2110131210003', '2023-06-07 08:44:55'),
('Muhammad Ramadhani', '2110131210003', '2023-06-07 13:11:28'),
('Muhammad Ramadhani', '2110131210003', '2023-06-07 13:16:03'),
('Farah Mu\'thia', '2010111220022', '2023-06-07 13:28:28'),
('Muhammad Ramadhani', '2110131210003', '2023-06-07 21:09:43'),
('Muhammad Ramadhani', '2110131210003', '2023-06-08 00:58:43'),
('Muhammad Ramadhani', '2110131210003', '2023-06-08 11:44:12'),
('Muhammad Ramadhani', '2110131210003', '2023-06-09 03:41:54'),
('Mety Sabrina', '2110112220018', '2023-06-10 05:21:00'),
('Muhammad Ramadhani', '2110131210003', '2023-06-12 04:28:10'),
('Muhammad Ramadhani', '2110131210003', '2023-06-13 06:14:25'),
('Muhammad Ramadhani', '2110131210003', '2023-06-13 22:21:39'),
('Achmad Syaiba', '2110112110011', '2023-06-14 00:42:08'),
('Muhammad Ramadhani', '2110131210003', '2023-06-14 00:44:36'),
('Muhammad Ramadhani', '2110131210003', '2023-06-14 05:02:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2023_04_24_073741_add_paid_to_users_table', 2),
(10, '2014_10_12_000000_create_users_table', 3),
(11, '2014_10_12_100000_create_password_reset_tokens_table', 3),
(12, '2019_08_19_000000_create_failed_jobs_table', 3),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `id` int(11) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `nama_agen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `presensi`
--

INSERT INTO `presensi` (`id`, `nim`, `nama`, `waktu`, `keterangan`, `nama_agen`) VALUES
(1, '2110112110011', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Achmad Syaiba'),
(2, '2110131320010', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Adelia Erlyn Nor Candra Prasetyana'),
(3, '2010118220041', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Annisa Desti Fahjri'),
(4, '2110118320003', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Aulia Gunaidah'),
(5, '2110113120005', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Ayu Nadila'),
(6, '2010112210037', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Budi Rahman '),
(7, '2110127320003', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Cahyani Widya Safitri'),
(8, '2010120220011', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Dhea Suntia'),
(9, '2110129220014', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Dina Rusdiyanti'),
(10, '2110116220008', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Fahimah'),
(11, '2110116120003', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Fara Khoerunnisa '),
(12, '2010111220022', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Farah Mu\'thia'),
(13, '2110129120004', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Fatimah '),
(14, '2110130310002', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Fauzi'),
(15, '2110118220009', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Hafizah Ariyani'),
(16, '2110116310004', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'I Gusti Kadek Agus Rianta '),
(17, '2110118320006', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Izzatul Asfia'),
(18, '2110120120016', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Khairunnisa'),
(19, '2110129220038', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Laila Hayati'),
(20, '2110130110001', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'M. Abdul Karim Amrullah'),
(21, '2110118220045', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Mar Atu Husnani'),
(22, '2110113320003', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Marisa'),
(23, '2110116220013', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Maudiya Fitriani '),
(24, '2110118320016', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Maulida '),
(25, '2110112220018', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Mety Sabrina'),
(26, '2110128210024', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Muhammad Aditya Ramadhan'),
(27, '2110122110018', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Muhammad Adlian Ashafiq'),
(28, '2110129210021', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Muhammad Kamil Radhina'),
(29, '2110131210003', 'MDN', '2023-06-14 08:53:00', 'Hadir', 'Muhammad Ramadhani'),
(30, '2110131310007', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Muhammad Rizky Al Farabi'),
(31, '2110121120004', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Muliyanti '),
(32, '2110115220026', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Murniasih'),
(33, '2110115120007', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Nabiela Azzahra '),
(34, '2110125120037', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Najwa Kuramah'),
(35, '2110126320026', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Nava Vathul Fitria '),
(36, '2110115220041', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Nila Sari'),
(37, '2110129220006', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Nina Febryanie'),
(38, '2110118220036', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Nindi  Destiana Yulianti'),
(39, '2110125220045', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Noor Laily Anggraini'),
(40, '2110129120003', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Noorhayati '),
(41, '2110125220099', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Nor Aliya Maulida Putri '),
(42, '2010112220007', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Nur Risda Hasanah'),
(43, '2110125120011', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Nurul Azizah'),
(44, '2110129220039', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Nurul Husna'),
(45, '2110112220031', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Putri Aisyah'),
(46, '2110129220031', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Putri Ayu Aisah '),
(47, '2110129320010', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Rachel Yesianti Argita '),
(48, '2110126220006', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Raudhatul Amelia'),
(49, '2010112210017', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Rilo Pambudi Triantoro'),
(50, '2110116220007', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Rini Oktaviani'),
(51, '2110116120002', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Risma Liyanti'),
(52, '2110131220008', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Risma Wulandari'),
(53, '2110129220004', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Siti Latifah '),
(54, '2010111120011', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Siti Mawaddah'),
(55, '2110113220015', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Syifa'),
(56, '2110123120002', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Tiara Ariliani'),
(57, '2110118120008', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Tiara Paramita '),
(58, '2110127320014', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Tiara Puspita Dewi'),
(59, '2110131210018', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Tio Ezekiel'),
(60, '2110118220042', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Trisveni Kumalasari'),
(61, '2010111120013', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Wahdah'),
(62, '2110117110004', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Wildy Ahmad Fayadhi'),
(63, '2110129220020', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Wiwin Sri Wahyuni'),
(64, '2010131310009', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Yogie prayoga'),
(65, '1610119110011', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Yusuf Rizal Libario, S. Pd'),
(66, '2010125320086', 'MDN', '2023-06-14 08:53:00', 'Tanpa Keterangan', 'Zeni Sarah');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nim` varchar(255) NOT NULL,
  `nomor_anggota` varchar(255) DEFAULT NULL,
  `departemen` varchar(255) NOT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `angkatan` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `no_wa` varchar(255) NOT NULL,
  `prodi` enum('Pendidikan Sejarah','Pendidikan Kewarganegaraan','Pendidikan Ekonomi','Pendidikan Sosiologi','Pendidikan Geografi','Pendidikan IPS','Pendidikan Bahasa Indonesia','Pendidikan Bahasa Inggris','Pendidikan Seni Pertunjukan','Pendidikan Matematika','Pendidikan Biologi','Pendidikan Kimia','Pendidikan Fisika','Pendidikan IPA','Pendidikan Komputer','Pendidikan Jasmani','Pendidikan Guru SD','Pendidikan Guru PAUD','Bimbingan dan Konseling','Pendidikan Khusus','Teknologi Pendidikan') DEFAULT NULL,
  `status_agen` enum('Muda','Berkarya','Istimewa','Alumni') NOT NULL,
  `role` enum('admin','anggota','peninjau') NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `poin` int(11) NOT NULL DEFAULT 0,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nim`, `nomor_anggota`, `departemen`, `jabatan`, `tahun`, `nama`, `angkatan`, `tempat_lahir`, `tanggal_lahir`, `email`, `no_wa`, `prodi`, `status_agen`, `role`, `foto`, `poin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1610119110011, '1610119110011', '048', 'Pengembangan Diri', 'Kepala Departemen', '2017', 'Yusuf Rizal Libario, S. Pd', '2', 'Banjarmasin', '1998-09-23', 'yusufrl11@gmail.com', '085754651127', 'Pendidikan Biologi', 'Alumni', 'peninjau', NULL, 0, '$2y$10$jF26Zt3U/bvaIr49P.dbke2US2OOPuWHj0GAWYhkpDLbSd0PNWjPe', NULL, NULL, NULL),
(2010111120011, '2010111120011', NULL, 'Media dan Informasi', NULL, NULL, 'Siti Mawaddah', NULL, 'Banjarbaru', '2001-06-04', 'sitimawaddah461@gmail.com', '083141321156', 'Pendidikan Sejarah', 'Berkarya', 'anggota', NULL, 0, '$2y$10$6gYv1Cl5gt1EqIWMmVHBB.z3MNWGVx2G4YxsZquGirJxpy/FlT5CS', NULL, NULL, NULL),
(2010111120013, '2010111120013', '289', 'Media dan Informasi', 'Anggota', '2022', 'Wahdah', '7', 'Sungai Sahurah', '2001-11-27', 'wahdahvic@gmail.com', '087759918781', 'Pendidikan Sejarah', 'Berkarya', 'anggota', 'images/agen/MFsmsyrwtmMb3QfMLmZuximlwCVjvs59sZPHfnbg.jpg', 0, '$2y$10$1G2Ir0pdIvOMZuqzH5ymvOFTT/u9HgnOmXIFU6gjaxxsEIHfhnGVu', NULL, NULL, NULL),
(2010111220022, '2010111220022', '294', 'Media dan Informasi', 'Anggota', '2022', 'Farah Mu\'thia', '7', 'Banjarmasin', '2002-04-10', '2010111220022@mhs.ulm.ac.id', '082155319899', 'Pendidikan Sejarah', 'Berkarya', 'anggota', '', 0, '$2y$10$y6sLOiNG07YD2ZMaGGWYc.UhjKx3nBKzo..Mb7JMcv7Fw0Mqow1sS', NULL, NULL, NULL),
(2010112210017, '2010112210017', '292', 'Pengabdian Masyarakat', 'Anggota', '2022', 'Rilo Pambudi Triantoro', '7', '', '2002-01-09', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$jxqHhqMGHGddfFgyO.6obu1V3fFozNGFzSQNjSBoXOiX.G7pAg/0m', NULL, NULL, NULL),
(2010112210037, '2010112210037', '295', 'Pengabdian Masyarakat', 'Anggota', '2022', 'Budi Rahman ', '7', '', '2002-04-16', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$DOsRaYh/Tq4H8SF7evK4iOx1vPpPf9TxKGQpwuTDIM.AYM6P1UhLO', NULL, NULL, NULL),
(2010112220007, '2010112220007', '291', 'Dana Usaha', 'Anggota', '2022', 'Nur Risda Hasanah', '7', '', '2001-12-21', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$PI9nj91BTacmTiMeVNL6u.2ANfzmLAkxItBHSFh0I1CNGtXJyyoLi', NULL, NULL, NULL),
(2010118220041, '2010118220041', '290', 'Dana Usaha', 'Anggota', '2022', 'Annisa Desti Fahjri', '7', '', '2001-12-07', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$6r9vjHgozCtpno2yC66XQOqquBAJcom8T0oJb9Y68fgrh8AhpX5aq', NULL, NULL, NULL),
(2010120220011, '2010120220011', '325', 'Kesekretariatan', 'Anggota', '2022', 'Dhea Suntia', '7', '', '2003-04-16', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$Br10rTXcrxBqcoaIuk5YpuRnJNIZ1k3vvNl8QpybB.N.OvL2ED3xy', NULL, NULL, NULL),
(2010125320086, '2010125320086', '297', 'Dana Usaha', 'Sekretaris Bendahara', '2022', 'Zeni Sarah', '7', '', '2002-06-20', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$3VL5TTd/dskAT44aTonk9ekUVcmL1kHssPOLHQMpV9oklS9uVOGam', NULL, NULL, NULL),
(2010131310009, '2010131310009', '298', 'Media dan Informasi', 'Kepala Departemen', '2022', 'Yogie prayoga', '7', 'TulungAgung', '2002-07-12', 'yogie.prayoga35@gmail.com', '081522630817', 'Pendidikan Matematika', 'Berkarya', 'anggota', 'images/agen/JpmBOa5t1HvJyikc24y0n5J4GFvXMhlPiSq1Xaka.jpg', 0, '$2y$10$KpYeNt.2RQ45ld5G2xTrreh3yHTN4xe46YIKAb/Di2xJCwGCgkqPS', NULL, NULL, NULL),
(2110112110011, '2110112110011', '340', 'Jaringan dan Kemitraan', 'Kepala Departemen', '2022', 'Achmad Syaiba', '7', 'Banjarmasin', '2003-07-07', 'ahmadsyaiba07@gmail.com', '082149345906', 'Pendidikan Kewarganegaraan', 'Berkarya', 'anggota', 'images/agen/paEssChwIl4xPr9ztzUDpFa0fCcg6GjV7xcXEoZ7.jpg', 0, '$2y$10$xKJG4IcD7sHk546r/1d7Redfy0mepUDiJI3JYMATjeRhXoz00ixPe', NULL, NULL, NULL),
(2110112220018, '2110112220018', '313', 'Kesekretariatan', 'Anggota', '2022', 'Mety Sabrina', '7', '', '2003-01-22', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$qFZzR5KikbrVXcHxBgm1PeiPrYk9pgrjglhCfeMWSjtswBFzcfbSK', NULL, NULL, NULL),
(2110112220031, '2110112220031', '309', 'Jaringan dan Kemitraan', 'Anggota', '2022', 'Putri Aisyah', '7', '', '2002-12-24', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$s2/1WDBSuBeI2A.CvTk5LeTCQj1CmUTYZm2P8VP/UhfgnvXDKtuUi', NULL, NULL, NULL),
(2110113120005, '2110113120005', '336', 'Dana Usaha', 'Anggota', '2022', 'Ayu Nadila', '7', '', '2003-06-26', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$Mw22ENG8u9qvCkxl4v.bye8rDNnaBjw5ceis7iqU9EhzyjVXjbQo.', NULL, NULL, NULL),
(2110113220015, '2110113220015', '304', 'Jaringan dan Kemitraan', 'Anggota', '2022', 'Syifa', '7', '', '2002-11-28', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$CtXLZEVGNbANdeOJH2Q.Y.XIY5H3lvUMOv0Q4asELS7nyFBcdBs3G', NULL, NULL, NULL),
(2110113320003, '2110113320003', '333', 'Pengabdian Masyarakat', 'Anggota', '2022', 'Marisa', '7', '', '2003-06-09', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$gL7b66sOsy9sRYlOUVnDLOaFVTtSSim4zi4EUZpACGkGuWCdwkam2', NULL, NULL, NULL),
(2110115120007, '2110115120007', '317', 'Jaringan dan Kemitraan', 'Anggota', '2022', 'Nabiela Azzahra ', '7', '', '2003-02-14', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$YQqIXaRkAzn4vALQBzbTD.c91NVJXe2EOtG4gGwzR4D2wlWa8PvsS', NULL, NULL, NULL),
(2110115220026, '2110115220026', '320', 'Jaringan dan Kemitraan', 'Anggota', '2022', 'Murniasih', '7', '', '2003-03-27', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$kINBjCL7qlXwfK8fUyF7F.ODEn3XK1VgH4gFg6epc1BHaoRBrsU7e', NULL, NULL, NULL),
(2110115220041, '2110115220041', '319', 'Jaringan dan Kemitraan', 'Anggota', '2022', 'Nila Sari', '7', '', '2003-03-12', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$EANNFpueCuN0MVlSrMA/pOxNa0GURqmuDk7JYNNgo1HknOp/b8ahq', NULL, NULL, NULL),
(2110116120002, '2110116120002', '343', 'Steering Commite', 'Sekretaris Umum', '2022', 'Risma Liyanti', '7', 'Cantung', '2003-07-27', 'rismaliyanti0@gmail.com', '083139113438', 'Pendidikan Bahasa Indonesia', 'Berkarya', 'admin', 'images/agen/p08CDr8HFVRbhiWvvjlLd2S12hp1ZGXb2VtDMDhw.jpg', 0, '$2y$10$v4xR5MZjvcNbUIcclA.Ut.6V7UFH0X4GUw5nsT5WNGd08wPuDwRq6', NULL, NULL, NULL),
(2110116120003, '2110116120003', '327', 'Jaringan dan Kemitraan', 'Sekretaris Bendahara', '2022', 'Fara Khoerunnisa ', '7', '', '2003-04-23', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$WytsUcebG2qfxcBV1qdK/OajbymSGJOO..tkLIiw63nVg.JLp7dfm', NULL, NULL, NULL),
(2110116220007, '2110116220007', '351', 'Kesekretariatan', 'Kepala Departemen', '2022', 'Rini Oktaviani', '7', '', '2003-10-29', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$Bb.AQcO3qjmCdfOob2EZc.s15Bo4EK30F/BWAjBXC5blgmwcqjHQ2', NULL, NULL, NULL),
(2110116220008, '2110116220008', '330', 'Pengabdian Masyarakat', 'Anggota', '2022', 'Fahimah', '7', 'Tanah Laut', '2003-06-03', 'fahimah0363@gmail.com', '082352277479', 'Pendidikan Bahasa Indonesia', 'Berkarya', 'anggota', 'images/agen/dpGYH8Yx7bj73JXOkqhH5EUwsVK2RFZcYVxLs7G7.jpg', 0, '$2y$10$SCz2uK7PCyC7YBxJNdd07uNzJP0YGDIcPMSBm0h3DGxNUT.gkLBxC', NULL, NULL, NULL),
(2110116220013, '2110116220013', '307', 'Pengembangan Diri', 'Anggota', '2022', 'Maudiya Fitriani ', '7', '', '2002-12-09', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$yUQr5QuIVOyhSHO.nzEt0.h9CPQ8UvM.AGlfvc9v71DbJ6p3yFGIO', NULL, NULL, NULL),
(2110116310004, '2110116310004', '338', 'Jaringan dan Kemitraan', 'Anggota', '2022', 'I Gusti Kadek Agus Rianta ', '7', '', '2003-06-30', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$cWuhGcyAnALTDUK7QBQM0eDAQ24CEMDG0Rh3mrpngGC6z2npcqsw6', NULL, NULL, NULL),
(2110117110004, '2110117110004', '326', 'Media dan Informasi', 'Anggota', '2022', 'Wildy Ahmad Fayadhi', '7', '', '2003-04-19', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$UAoP0X7N9byIPG.TvuIoHeUWD.1PSrXRHc98JbNNWgb/8PDKoOO1y', NULL, NULL, NULL),
(2110118120008, '2110118120008', '356', 'Pengabdian Masyarakat', 'Anggota', '2022', 'Tiara Paramita ', '7', '', '2004-05-27', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$nk6ujwBEs9p8fMVgiebPku.MbozOsdKLBwGbg34ORIBfG9ElwbUYi', NULL, NULL, NULL),
(2110118220009, '2110118220009', '347', 'Pengabdian Masyarakat', 'Anggota', '2022', 'Hafizah Ariyani', '7', 'Tabalong', '2003-09-06', '2110118220009@mhs.ulm.ac.id', '082353342558', 'Pendidikan Matematika', 'Berkarya', 'anggota', '', 0, '$2y$10$YBRqI63E2lr89dDE1drW7OLjjzyQTqeQEZPtnTZqmihmoXeHmVzoS', NULL, NULL, NULL),
(2110118220036, '2110118220036', '341', 'Pengembangan Diri', 'Sekretaris Bendahara', '2022', 'Nindi  Destiana Yulianti', '7', 'Pandansari', '2003-07-15', 'nindiyulianti58@gmail.com', '085246362203', 'Pendidikan Matematika', 'Berkarya', 'anggota', '', 0, '$2y$10$EbHv3fDb6G.RKV.24MKxEOUY.jXMStCMiBK6YcpPF1cA3lXDEPdre', NULL, NULL, NULL),
(2110118220042, '2110118220042', '288', 'Pengembangan Diri', 'Anggota', '2022', 'Trisveni Kumalasari', '7', '', '2001-10-29', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$WIxaIRaRXNdqJ5dB/UsTcOuMLRSCnEy9eSXV/Ks4I.Wv7l/VO0r0O', NULL, NULL, NULL),
(2110118220045, '2110118220045', '354', 'Pengembangan Diri', 'Anggota', '2022', 'Mar Atu Husnani', '7', '', '2004-01-26', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$VqCYTx.hb7iDDmsYRcYUF.XLeFHca0HNdGkdRHY27.fFg7adE5dm2', NULL, NULL, NULL),
(2110118320003, '2110118320003', '293', 'Kesekretariatan', 'Anggota', '2022', 'Aulia Gunaidah', '7', '-', '2002-03-19', 'sample@gmail.com', '0', 'Pendidikan Matematika', 'Berkarya', 'anggota', 'images/agen/QHkxA6qPZMNoautlsErOv4fewlIwMLKZoUFHrlRK.png', 0, '$2y$10$CLh1UeD9P6RsAxaYsGjTVOT2oWOZ8DUdxaGrZQ.GUbZLkgXZ6xAom', NULL, NULL, NULL),
(2110118320006, '2110118320006', '348', 'Kesekretariatan', 'Anggota', '2022', 'Izzatul Asfia', '7', 'Kandangan', '2003-10-04', 'asfiaizzatul@gmail.com', '085787340957', 'Pendidikan Matematika', 'Berkarya', 'anggota', '', 0, '$2y$10$QDdXfEXzvSt10xKXPUb6euNqo0PML.8W20UcwdhUcZY5b6zHqSq.e', NULL, NULL, NULL),
(2110118320016, '2110118320016', '353', 'Media dan Informasi', 'Anggota', '2022', 'Maulida ', '7', '', '2004-01-02', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$UMRllrzvQUs5kEra6njSxegSncSqfF6oZaMip7X4sPMsFQaHv1IT.', NULL, NULL, NULL),
(2110120120016, '2110120120016', '344', 'Dana Usaha', 'Anggota', '2022', 'Khairunnisa', '7', '', '2003-08-05', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$ojkqVYKuqkHo0i0Z.6.2QemblUus8VSXHEyskoQ/BIGRZk.egV6TC', NULL, NULL, NULL),
(2110121120004, '2110121120004', '306', 'Kesekretariatan', 'Anggota', '2022', 'Muliyanti ', '7', '', '2002-12-09', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$c1W7ebc0b8uf2Z.FyI873OMeiwnKjsOKVfAw4KBOI2ldG8a16qJfW', NULL, NULL, NULL),
(2110122110018, '2110122110018', '331', 'Pengembangan Diri', 'Anggota', '2022', 'Muhammad Adlian Ashafiq', '7', '', '2003-06-03', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$kRxi9.C3dP/5I4VWV2vL8ugm0BErqhq2Bkq41Q..chEDhh/WP4YyW', NULL, NULL, NULL),
(2110123120002, '2110123120002', '322', 'Pengabdian Masyarakat', 'Sekretaris Bendahara', '2022', 'Tiara Ariliani', '7', 'Banjarmasin', '2003-04-10', '2110123120002@mhs.ulm.ac.id', '083817224653', 'Bimbingan dan Konseling', 'Berkarya', 'anggota', 'images/agen/5sp6sQpIJW9FsKg3HRcEzJEt3vU1JneAxeXLJUxN.jpg', 0, '$2y$10$15vkfB2BWtBV/ucSfpy7..z6SY.VZxMpijZLmOwM71ZkA/VvNlzh2', NULL, NULL, NULL),
(2110125120011, '2110125120011', '355', 'Dana Usaha', 'Kepala Departemen', '2022', 'Nurul Azizah', '7', '', '2004-03-13', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$.Wmb3WXSbAQfgwGPyVZNGOK.I3XDM9oTN3QuzEqLs.rDjeMXwista', NULL, NULL, NULL),
(2110125120037, '2110125120037', '328', 'Kesekretariatan', 'Anggota', '2022', 'Najwa Kuramah', '7', '', '2003-04-30', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$kDL3XR8haGtcGbUsILWdG.UGDHWXyJCeOFa1jVrxJ33oLRm49foZS', NULL, NULL, NULL),
(2110125220045, '2110125220045', '345', 'Kesekretariatan', 'Sekretaris Bendahara', '2022', 'Noor Laily Anggraini', '7', '', '2003-08-14', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$LfgxG.KZEtBdMLttlbhyEOPipbkYshcIg.oMcdNYnHIVdGeaS7yVi', NULL, NULL, NULL),
(2110125220099, '2110125220099', '329', 'Dana Usaha', 'Anggota', '2022', 'Nor Aliya Maulida Putri ', '7', '', '2003-05-13', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$AT/zI45NFyApmmiENQxcv.1lpJWmzapv1rrRDXM8a6UvMS.dUb9Xi', NULL, NULL, NULL),
(2110126220006, '2110126220006', '323', 'Dana Usaha', 'Anggota', '2022', 'Raudhatul Amelia', '7', '', '2003-04-11', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$FHT1fGVBIn2P1Jo2fsYDCObtKgYovatReJqVWRt9MwnkqcL094Pxi', NULL, NULL, NULL),
(2110126320026, '2110126320026', '352', 'Dana Usaha', 'Anggota', '2022', 'Nava Vathul Fitria ', '7', '', '2003-11-08', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$aqEOfozUAlEOzJHJF8yhn.Z90GyTqVFcmNB6Qr2YEZFMB5tAeJIYy', NULL, NULL, NULL),
(2110127320003, '2110127320003', '315', 'Jaringan dan Kemitraan', 'Anggota', '2022', 'Cahyani Widya Safitri', '7', '', '2003-01-27', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$ekqMxVwc7xDgwY2IUpCUBO4Z0OTEYJ9hvanrSucz.OszMD5aQm0Ni', NULL, NULL, NULL),
(2110127320014, '2110127320014', '308', 'Media dan Informasi', 'Sekretaris Bendahara', '2022', 'Tiara Puspita Dewi', '7', '', '2002-12-16', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$.tgAU0wsnFq25rbvORj9xOTS503HOjWdj5fiujE.DJgBPKX6Ro2ia', NULL, NULL, NULL),
(2110128210024, '2110128210024', '286', 'Pengembangan Diri', 'Anggota', '2022', 'Muhammad Aditya Ramadhan', '7', 'Banjarmasin', '2001-08-30', 'm.aditya.ramadhan.01@gmail.com', '08981261977', 'Pendidikan IPS', 'Berkarya', 'anggota', 'images/agen/Crp15EGnRfHl88PXCIQx5zqAPLGXNwgyqb4SsMns.jpg', 0, '$2y$10$bA/Mb3fwjsjIxA9dj6hfEuiZZYEjnte7JF75liL2obuDltYS8a8uq', NULL, NULL, NULL),
(2110129120003, '2110129120003', '310', 'Kesekretariatan', 'Anggota', '2022', 'Noorhayati ', '7', '', '2003-01-01', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$7yKZwPKLas8V/HXy/lQ2O.0RCSJYD/d5kNiwqg6wg11lpwH2VhnzS', NULL, NULL, NULL),
(2110129120004, '2110129120004', '324', 'Pengembangan Diri', 'Anggota', '2022', 'Fatimah ', '7', '', '2003-04-12', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$qLLBwRCc8oxfv66zhSyxUuTVgBXGBhjtNTStlcdt0ZtBo3QgWOLY.', NULL, NULL, NULL),
(2110129210021, '2110129210021', '314', 'Pengembangan Diri', 'Anggota', '2022', 'Muhammad Kamil Radhina', '7', '', '2003-01-26', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$31eBL9v7cd3ne7XXLRGP3.NP9SjwQtR697s6QxgR.aD/rfRZVHKRy', NULL, NULL, NULL),
(2110129220004, '2110129220004', '302', 'Jaringan dan Kemitraan', 'Anggota', '2022', 'Siti Latifah ', '7', '', '2002-10-15', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$uhH4MhDiqGw/BEJY2cIL4uPs7vVDmZRbMMp5qJODJsd9UqsDEx1uu', NULL, NULL, NULL),
(2110129220006, '2110129220006', '312', 'Pengabdian Masyarakat', 'Anggota', '2022', 'Nina Febryanie', '7', '', '2003-01-17', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$/um/7IDcLsgpz/xnMnqNCueazaOl8yiV9KWl22IDEW0xwKcEQ/Y0K', NULL, NULL, NULL),
(2110129220014, '2110129220014', '300', 'Media dan Informasi', 'Anggota', '2022', 'Dina Rusdiyanti', '7', '', '2002-08-12', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$XTwFnBECQUZCZGsXZihTCezVo5H5JngkD3w78LcPllL7TxL4Dnzvq', NULL, NULL, NULL),
(2110129220020, '2110129220020', '321', 'Pengembangan Diri', 'Anggota', '2022', 'Wiwin Sri Wahyuni', '7', 'Lamandau', '2003-04-02', 'wiwinsriwahyuniii@gmail.com', '085251246440', 'Pendidikan IPA', 'Berkarya', 'anggota', 'images/agen/4nx5mANw8goruntlWwvo8kioTj7Ip57N2iOMQ4gw.jpg', 0, '$2y$10$CMKSeF7zUnttpo9wdh3e1u309lwlCU2tfO/QEi/cXXBx5w7psLo6i', NULL, NULL, NULL),
(2110129220031, '2110129220031', '299', 'Dana Usaha', 'Anggota', '2022', 'Putri Ayu Aisah ', '7', '', '2002-07-12', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$C7Yn8lFPbtUgFUzbxF8jLO.AgZ2RS3swYWQ5tjekPlZxKQzl48Bla', NULL, NULL, NULL),
(2110129220038, '2110129220038', '357', 'Media dan Informasi', 'Anggota', '2022', 'Laila Hayati', '7', '', '2004-09-06', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$zYXvciyeBjzh4e3ZfpRmY.COotslEh0TwBSuMRuABg0NuhCr8Ep.m', NULL, NULL, NULL),
(2110129220039, '2110129220039', '342', 'Media dan Informasi', 'Anggota', '2022', 'Nurul Husna', '7', '', '2003-07-27', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$ycsX3x6DC8Ndnw4pk9lbFO4oL5LrfsvnmDvuE8KEvDnf4s07M10LC', NULL, NULL, NULL),
(2110129320010, '2110129320010', '332', 'Pengabdian Masyarakat', 'Anggota', '2022', 'Rachel Yesianti Argita ', '7', '', '2003-06-05', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$2JHG2u1xf/8i5kq3eqbaYujbDmpGKU5C.r5jlweADkmYF2wIPyMn2', NULL, NULL, NULL),
(2110130110001, '2110130110001', '301', 'Pengembangan Diri', 'Kepala Departemen', '2022', 'M. Abdul Karim Amrullah', '7', 'Karang Anyar', '2002-09-13', '2110130110001@mhs.ulm.ac.id', '083141751627', 'Teknologi Pendidikan', 'Berkarya', 'anggota', '', 0, '$2y$10$VcMkrDim9OMecYM5AIl1vuMBgPhp9bHl8vcHtx79/OefiOo78nn56', NULL, NULL, NULL),
(2110130310002, '2110130310002', '296', 'Pengabdian Masyarakat', 'Anggota', '2022', 'Fauzi', '7', 'Banjarmasin', '2002-04-20', 'ipau.keren.20@gmail.com', '083142477356', 'Teknologi Pendidikan', 'Berkarya', 'anggota', '', 0, '$2y$10$X2oiTmCx4hXFGbZWAs89ee/5ExqE1aFUSS/68rfY1j8MAR2qPZ3/u', NULL, NULL, NULL),
(2110131210003, '2110131210003', '303', 'Steering Commite', 'Ketua Umum', '2022', 'Muhammad Ramadhani', '7', 'Kota Banjarmasin', '2002-11-13', 'ramadhaniking2015@gmail.com', '085753269130', 'Pendidikan Komputer', 'Berkarya', 'admin', 'images/agen/ky8PF4WJQv30zs0YMt2mImCYk6cgWbIquoit4W4x.jpg', 321, '$2y$10$oXmRXYSb8CzU6emj36/rzu8253c8iMjmu9OMqGImFfdVWojvm48lu', NULL, NULL, NULL),
(2110131210018, '2110131210018', '316', 'Jaringan dan Kemitraan', 'Anggota', '2022', 'Tio Ezekiel', '7', 'K. Kapuas', '2003-02-01', 'tioezekiel7@gmail.com', '082159191735', 'Pendidikan Komputer', 'Berkarya', 'anggota', '', 0, '$2y$10$Ae1Xgwm8l0.UL4UbWTocXuIs.1Maghe4MElOLxStXNwkjc2UAA7Dm', NULL, NULL, NULL),
(2110131220008, '2110131220008', '334', 'Steering Commite', 'Bendahara Umum', '2022', 'Risma Wulandari', '7', 'Banjarbaru', '2003-06-19', 'rismawndri19@gmail.com', '082158987472', 'Pendidikan Komputer', 'Berkarya', 'admin', '', 0, '$2y$10$d9Lzn/PzGL57eMP2osRPpOKcPYk7MMl1kJoI.fqFz1FH02eZeHbpe', NULL, NULL, NULL),
(2110131310007, '2110131310007', '339', 'Pengabdian Masyarakat', 'Kepala Departemen', '2022', 'Muhammad Rizky Al Farabi', '7', '', '2003-07-03', '', '', '', 'Berkarya', 'anggota', '', 0, '$2y$10$bbko01fxbN2mgrrOX3zaLOXI7zinWM9ps/byFQcyfGIkpkHRucaQG', NULL, NULL, NULL),
(2110131320010, '2110131320010', '318', 'Pengembangan Diri', 'Anggota', '2022', 'Adelia Erlyn Nor Candra Prasetyana', '7', 'Martapura', '2003-03-06', 'adeliaerlyn06@gmail.com', '08998431893', 'Pendidikan Komputer', 'Berkarya', 'anggota', 'images/agen/cYuzjSHS71ZTAivLJyaHRRE1a1RBiMfqxC99onvg.jpg', 0, '$2y$10$n8fP.dPhwEnc4hgNUS1acuJ9nzh5TJ7UWVgpuvCJDH6k2c3wHKiqW', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventaris`
--
ALTER TABLE `inventaris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nim` (`nim`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nim_unique` (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `inventaris`
--
ALTER TABLE `inventaris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2110131320011;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
