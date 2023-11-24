-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Nov 2023 pada 04.54
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumah_sakit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `nama_rs`
--

CREATE TABLE `nama_rs` (
  `RS_Wava_Husada` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nama_rs`
--

INSERT INTO `nama_rs` (`RS_Wava_Husada`) VALUES
('Jl. Panglima Sudirman 99A Kepa'),
('Telp: 0341-393000 Fax: 0341-39'),
('Email: info@wavahusada.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `No_Imvoice` varchar(30) DEFAULT NULL,
  `No_Billing` varchar(15) DEFAULT NULL,
  `Alamat` varchar(30) DEFAULT NULL,
  `Nama_Pasien` varchar(30) DEFAULT NULL,
  `Tanggal_Lahir` varchar(30) DEFAULT NULL,
  `No_RM` int(20) DEFAULT NULL,
  `MRS` varchar(10) DEFAULT NULL,
  `KRS` varchar(10) DEFAULT NULL,
  `No_Mava` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`No_Imvoice`, `No_Billing`, `Alamat`, `Nama_Pasien`, `Tanggal_Lahir`, `No_RM`, `MRS`, `KRS`, `No_Mava`) VALUES
('INV-0190-WHI-2453', '2306050', 'Kepanjen', 'Yoelanda', '10 Juni 2006', 1029, '03/09/2023', '03/09/2023', 2147483647);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `No` int(11) NOT NULL,
  `Uraian` varchar(30) DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`No`, `Uraian`, `Jumlah`) VALUES
(1, 'Administrasi', 30000),
(2, 'Obat & Alkes', 93000),
(3, 'Pemeriksaan', 50000),
(4, 'biaya lain-lain: Rp.', 0),
(5, 'Total: Rp.', 174000),
(6, 'Diskon: Rp.', 0),
(7, 'Deposit: Rp.', 0),
(8, 'Sisa yang harus dibayar: Rp.', 174000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`No`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
