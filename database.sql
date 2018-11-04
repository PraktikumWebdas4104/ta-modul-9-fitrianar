-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Nov 2018 pada 23.41
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.4

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
-- Struktur dari tabel `tabel_user`
--

CREATE TABLE `tabel_user` (
  `id` int(10) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `alamat` varchar(35) NOT NULL,
  `usia` int(2) NOT NULL,
  `genre` text NOT NULL,
  `wisata` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_user`
--

INSERT INTO `tabel_user` (`id`, `nama`, `alamat`, `usia`, `genre`, `wisata`) VALUES
(11, 'egh', 'fth', 19, 'Horror, Anime, Thriller', 'Bali, Raja ampat, Pulau Derawan'),
(12, 'fitri', 'etg3', 17, 'Animasi', 'Bali, Raja ampat, Pulau Derawan'),
(13, 'egh', 'etg3', 19, 'Anime, Thriller', 'Bali, Raja ampat'),
(14, 'df', 'fth', 17, 'Thriller, Animasi', 'Bali, Raja ampat, Pulau Derawan'),
(15, 'Sri Fitriana Ramadhini', 'fdg', 19, 'Action, Anime, Thriller', 'Raja ampat, Bangka belitung'),
(17, 'fitri', 'weiwe', 19, 'Action, Anime, Thriller', 'Pulau Derawan, Bangka belitung'),
(19, 'pasrah', 'weiwe', 17, 'Action, Thriller, Animasi', 'Bali, Raja ampat');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
