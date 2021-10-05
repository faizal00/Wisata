-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 15 Sep 2021 pada 13.12
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Wisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `Tempat`
--

CREATE TABLE `Tempat` (
  `id` int(11) NOT NULL,
  `Nama_Tempat` char(60) NOT NULL,
  `Jenis` char(60) NOT NULL,
  `Lokasi` char(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `Tempat`
--

INSERT INTO `Tempat` (`id`, `Nama_Tempat`, `Jenis`, `Lokasi`) VALUES
(3, 'Menara Eiffel', 'Luar Negeri', 'Paris');

-- --------------------------------------------------------

--
-- Struktur dari tabel `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `User`
--

INSERT INTO `User` (`id`, `username`, `password`, `image`) VALUES
(1, 'user', 'user', '469694437_Logo PNG.png'),
(2, 'Admin', 'Admin', '191283218_Logo PNG.png'),
(3, 'Faizal', 'Faizal', '1479426927_1.jpg'),
(4, 'Dicky', 'Dicky', '1329080985_photo_2020-07-28_14-27-54.jpg'),
(5, 'Tata', 'Tata', '37504055_code.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `Tempat`
--
ALTER TABLE `Tempat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `Tempat`
--
ALTER TABLE `Tempat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
