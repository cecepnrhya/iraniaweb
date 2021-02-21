-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Feb 2021 pada 11.03
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `adonis_schema`
--

CREATE TABLE `adonis_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `adonis_schema`
--

INSERT INTO `adonis_schema` (`id`, `name`, `batch`, `migration_time`) VALUES
(1, '1503248427885_user', 1, '2021-01-03 15:32:53'),
(2, '1503248427886_token', 1, '2021-01-03 15:32:53'),
(3, '1605516463442_student_schema', 1, '2021-01-03 15:32:53'),
(4, '1606444969857_students_schema', 1, '2021-01-03 15:32:54'),
(5, '1606445313671_students_schema', 1, '2021-01-03 15:32:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `apply_job`
--

CREATE TABLE `apply_job` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `nomor_kontak` varchar(11) NOT NULL,
  `jurusan` varchar(15) NOT NULL,
  `nilai_akhir` int(11) NOT NULL,
  `cv` text NOT NULL,
  `kategori_job_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `apply_job`
--

INSERT INTO `apply_job` (`id`, `nama_lengkap`, `nomor_kontak`, `jurusan`, `nilai_akhir`, `cv`, `kategori_job_id`) VALUES
(1, 'cecep nurcahya', '08569584879', 'TKJ', 20, 'CV.pdf', NULL),
(2, 'cendol', '123123', 'mancing', 99, '', '5'),
(3, 'cendol', '123123', 'mancing', 99, 'goapotik-logo.png', '5'),
(4, 'cendol', '123123', 'mancing', 99, 'goapotik-logo.png', '5'),
(5, 'cece', '323232', '32332323', 232323, 'Elisitasi (1).pdf', ''),
(6, 'cece', '088787', 'Sistem Komputer', 232323, 'Elisitasi (1).pdf', '2'),
(7, 'irania', '323232', 'Sistem Komputer', 232323, '112-Article Text-326-1-10-20200713.pdf', '3'),
(8, 'irania', '323232', 'Sistem Komputer', 232323, '20_Surat_Pernyataan_Tidak_Sedang_Menjalani_Pendidikan_Dan_Tidak_Bekerja_DTS2020 (1).pdf', '6'),
(9, 'ssa', 'sasas', 'asas', 0, '1633493701 TN.pdf', '2'),
(10, 'sass', 'sasas', 'assas', 0, '', ''),
(11, 'sass', 'sasas', 'assas', 0, '', ''),
(12, 'cece', 'sasas', 'Sistem Komputer', 232323, '1633493701 TN.pdf', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_perusahaan`
--

CREATE TABLE `daftar_perusahaan` (
  `id` int(5) NOT NULL,
  `nama_perusahaan` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar_perusahaan`
--

INSERT INTO `daftar_perusahaan` (`id`, `nama_perusahaan`, `alamat`, `email`) VALUES
(1, 'pt.xxxxx', 'Jl. Jend. Sudirman, ', 'cecepnrchya@gmail.com'),
(2, 'pt ayaoaoaoa', 'arab', 'jika@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `no` int(10) NOT NULL,
  `karbon` varchar(10) NOT NULL,
  `waktu` time NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`no`, `karbon`, `waktu`, `tanggal`) VALUES
(1, '5', '12:33:30', '2020-07-26'),
(2, '4', '12:33:30', '2020-07-26'),
(3, '3', '12:45:13', '2020-07-26'),
(4, '5', '12:45:13', '2020-07-26'),
(5, '2', '12:47:32', '2020-07-26'),
(6, '4', '12:47:32', '2020-07-26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_job`
--

CREATE TABLE `kategori_job` (
  `id` int(5) NOT NULL,
  `role` varchar(10) NOT NULL,
  `type` varchar(15) NOT NULL,
  `city` varchar(10) NOT NULL,
  `job_details` text,
  `job_description` text,
  `job_requirements` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_job`
--

INSERT INTO `kategori_job` (`id`, `role`, `type`, `city`, `job_details`, `job_description`, `job_requirements`) VALUES
(1, 'tkj', 'part time', 'bandung', NULL, NULL, NULL),
(2, 'multimedia', 'internship', 'jakarta', NULL, NULL, NULL),
(3, 'akuntansi', 'full time', 'bandung', NULL, NULL, NULL),
(4, 'tkj', 'internship', 'tangerang', NULL, NULL, NULL),
(5, 'Marketing', 'Full Time', 'Bandung', 'Tim Marketing bertanggung jawab dalam membuat & mengimpelementasikan konsep untuk meningkatkan jumlah pengguna.\r\n          <br> Tim ini mencakup berbagai bidang seperti Campaign Management, Community, Public Relations, Partnerships, Offline Marketing & Creative.\r\n          <br> Tim Regional Marketing bertugas menyusun & mengimplementasikan strategi.', '<li>Conceptualize, develop and execute marketing campaigns</li><li>Perform regular analysis of campaign performance</li><li>Ensure smooth and timely execution of campaigns</li><li> Collaborate and coordinate with teams</li>', '<li>Excellent command of English</li><li>High attention to detail and strongly meticulous</li><li>Strong project management and execution abilities</li><li>Ability to be creative operationally and strategically</li>'),
(6, 'tkj', 'full time', 'semarang', 'sasas', 'asasas', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_admin`
--

CREATE TABLE `login_admin` (
  `id` int(5) NOT NULL,
  `nama` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login_admin`
--

INSERT INTO `login_admin` (`id`, `nama`, `password`) VALUES
(5, 'kumaun', 'asasasas'),
(7, 'asasas', 'asasas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `signup`
--

CREATE TABLE `signup` (
  `id` int(5) NOT NULL,
  `NISN` int(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(10) NOT NULL,
  `confirm_password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `signup`
--

INSERT INTO `signup` (`id`, `NISN`, `email`, `password`, `confirm_password`) VALUES
(1, 2147483647, 'cecepnr@gmail.com', 'sasas', 'sasas'),
(2, 0, '', '', ''),
(18, 32422, '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `suhu` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `image` longblob,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `suhu`, `status`, `image_path`, `image`, `created_at`, `updated_at`) VALUES
(1, '36.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210103-10:42:47.png', NULL, '2021-01-03 22:43:05', '2021-01-03 22:43:05'),
(2, '36.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210104-12:46:06.png', NULL, '2021-01-04 00:46:06', '2021-01-04 00:46:06'),
(3, NULL, 'No Mask', 'http://0.0.0.0:3334/uploads/images/20210106-09:12:47.jpg', NULL, '2021-01-06 21:12:47', '2021-01-06 21:12:47'),
(4, '35.5', 'No Mask', 'http://0.0.0.0:3334/uploads/images/20210106-09:15:27.jpg', NULL, '2021-01-06 21:15:27', '2021-01-06 21:15:27'),
(5, '35.5', 'Mask', 'http://0.0.0.0:3334/uploads/images/20210106-09:22:33.jpg', NULL, '2021-01-06 21:22:33', '2021-01-06 21:22:33'),
(6, '28.99', 'mask', 'http://0.0.0.0:3334/uploads/images/20210110-03:34:36.png', NULL, '2021-01-10 03:34:38', '2021-01-10 03:34:38'),
(7, '29.39', 'No Mask', 'http://0.0.0.0:3334/uploads/images/20210110-03:39:00.jpg', NULL, '2021-01-10 03:39:00', '2021-01-10 03:39:00'),
(8, '29.45', 'No Mask', 'http://0.0.0.0:3334/uploads/images/20210110-03:39:10.jpg', NULL, '2021-01-10 03:39:10', '2021-01-10 03:39:10'),
(9, '29.39', 'No Mask', 'http://0.0.0.0:3334/uploads/images/20210110-03:39:42.jpg', NULL, '2021-01-10 03:39:42', '2021-01-10 03:39:42'),
(10, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:56:18.png', NULL, '2021-01-13 20:56:22', '2021-01-13 20:56:22'),
(11, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:56:42.png', NULL, '2021-01-13 20:56:42', '2021-01-13 20:56:42'),
(12, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:56:52.png', NULL, '2021-01-13 20:56:52', '2021-01-13 20:56:52'),
(13, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:02.png', NULL, '2021-01-13 20:57:02', '2021-01-13 20:57:02'),
(14, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:16.png', NULL, '2021-01-13 20:57:16', '2021-01-13 20:57:16'),
(15, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:17.png', NULL, '2021-01-13 20:57:17', '2021-01-13 20:57:17'),
(16, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:18.png', NULL, '2021-01-13 20:57:18', '2021-01-13 20:57:18'),
(17, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:19.png', NULL, '2021-01-13 20:57:19', '2021-01-13 20:57:19'),
(18, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:21.png', NULL, '2021-01-13 20:57:21', '2021-01-13 20:57:21'),
(19, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:22.png', NULL, '2021-01-13 20:57:22', '2021-01-13 20:57:22'),
(20, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:23.png', NULL, '2021-01-13 20:57:23', '2021-01-13 20:57:23'),
(21, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:24.png', NULL, '2021-01-13 20:57:24', '2021-01-13 20:57:24'),
(22, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:25.png', NULL, '2021-01-13 20:57:25', '2021-01-13 20:57:25'),
(23, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:26.png', NULL, '2021-01-13 20:57:26', '2021-01-13 20:57:26'),
(24, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:27.png', NULL, '2021-01-13 20:57:27', '2021-01-13 20:57:27'),
(25, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:28.png', NULL, '2021-01-13 20:57:28', '2021-01-13 20:57:28'),
(26, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:29.png', NULL, '2021-01-13 20:57:29', '2021-01-13 20:57:29'),
(27, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:30.png', NULL, '2021-01-13 20:57:30', '2021-01-13 20:57:30'),
(28, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:31.png', NULL, '2021-01-13 20:57:31', '2021-01-13 20:57:31'),
(29, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:32.png', NULL, '2021-01-13 20:57:32', '2021-01-13 20:57:32'),
(30, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:33.png', NULL, '2021-01-13 20:57:33', '2021-01-13 20:57:33'),
(31, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:34.png', NULL, '2021-01-13 20:57:34', '2021-01-13 20:57:34'),
(32, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:35.png', NULL, '2021-01-13 20:57:35', '2021-01-13 20:57:35'),
(33, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:36.png', NULL, '2021-01-13 20:57:36', '2021-01-13 20:57:36'),
(34, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:38.png', NULL, '2021-01-13 20:57:38', '2021-01-13 20:57:38'),
(35, '35.5', 'mask', 'http://0.0.0.0:3334/uploads/images/20210113-08:57:39.png', NULL, '2021-01-13 20:57:39', '2021-01-13 20:57:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tokens`
--

CREATE TABLE `tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `type` varchar(80) NOT NULL,
  `is_revoked` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(80) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `adonis_schema`
--
ALTER TABLE `adonis_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `apply_job`
--
ALTER TABLE `apply_job`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `daftar_perusahaan`
--
ALTER TABLE `daftar_perusahaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `kategori_job`
--
ALTER TABLE `kategori_job`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login_admin`
--
ALTER TABLE `login_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `NISN` (`NISN`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tokens_token_unique` (`token`),
  ADD KEY `tokens_user_id_foreign` (`user_id`),
  ADD KEY `tokens_token_index` (`token`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `adonis_schema`
--
ALTER TABLE `adonis_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `apply_job`
--
ALTER TABLE `apply_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `daftar_perusahaan`
--
ALTER TABLE `daftar_perusahaan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategori_job`
--
ALTER TABLE `kategori_job`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `login_admin`
--
ALTER TABLE `login_admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
