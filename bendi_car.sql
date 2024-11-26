-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Nov 2024 pada 07.47
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bendi_car`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `denda`
--

CREATE TABLE `denda` (
  `id_denda` int(15) DEFAULT NULL,
  `jenis` varchar(35) DEFAULT NULL,
  `besaran_denda` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kendaraan`
--

CREATE TABLE `kendaraan` (
  `no_pol` int(15) DEFAULT NULL,
  `merk` varchar(35) DEFAULT NULL,
  `jenis` varchar(30) DEFAULT NULL,
  `harga_sewa` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemilik`
--

CREATE TABLE `pemilik` (
  `id` int(15) DEFAULT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `no_telp` int(15) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewa`
--

CREATE TABLE `penyewa` (
  `no_ktp` int(15) DEFAULT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  `no_telp` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penyewa`
--

INSERT INTO `penyewa` (`no_ktp`, `nama`, `alamat`, `no_telp`) VALUES
(2147483647, 'Safitri', 'Bandung', 2147483647),
(2147483647, 'Yulia Nuraini', 'Tanjung Bintang', 8823167),
(123, 'ricky', 'kalianda', 123),
(2147483647, 'Tiara Aprilia', 'Sukajaya', 2147483647);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id` int(15) DEFAULT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `no_telp` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id`, `nama`, `no_telp`) VALUES
(1, 'pitri', 88272),
(2, 'epa', 89572);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(15) DEFAULT NULL,
  `kd_pinjam` int(15) DEFAULT NULL,
  `kd_kembali` int(15) DEFAULT NULL,
  `kondisi` varchar(30) DEFAULT NULL,
  `no_ktp` int(15) DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `total_denda` int(15) DEFAULT NULL,
  `total_bayar` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
