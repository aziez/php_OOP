-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 27 Mar 2022 pada 10.41
-- Versi server: 5.7.33
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pelatihan_abdul_aziz`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `beli_formulir`
--

CREATE TABLE `beli_formulir` (
  `nik` varchar(16) NOT NULL,
  `jalur` varchar(30) DEFAULT NULL,
  `akademik` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `petugas` varchar(50) DEFAULT NULL,
  `tahun` char(5) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `tgl_daftar` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mspcmb`
--

CREATE TABLE `mspcmb` (
  `nik` varchar(100) DEFAULT NULL,
  `nisn` varchar(20) DEFAULT NULL,
  `NoUjian` int(11) NOT NULL,
  `akademik` varchar(100) DEFAULT NULL,
  `kelulusan` varchar(100) DEFAULT NULL,
  `ThAjaran` varchar(10) DEFAULT NULL,
  `Angkatan` varchar(5) DEFAULT NULL,
  `KdPS` varchar(35) DEFAULT NULL,
  `lokasi` varchar(35) DEFAULT NULL,
  `prodi` varchar(50) DEFAULT NULL,
  `waktu` varchar(30) DEFAULT NULL,
  `prodi2` varchar(50) DEFAULT NULL,
  `waktu2` varchar(50) DEFAULT NULL,
  `TglDaftar` date DEFAULT NULL,
  `NIM` varchar(15) DEFAULT NULL,
  `Nama` varchar(85) DEFAULT NULL,
  `TmptLhr` varchar(65) DEFAULT NULL,
  `TglLahir` date DEFAULT NULL,
  `JK` varbinary(2) DEFAULT NULL,
  `Alamat1` varchar(255) DEFAULT NULL,
  `Alamat2` varchar(255) DEFAULT NULL,
  `Telp` varchar(100) DEFAULT NULL,
  `Email` varchar(35) DEFAULT NULL,
  `Kota` varchar(100) DEFAULT NULL,
  `WN` varchar(100) DEFAULT NULL,
  `TB` double DEFAULT NULL,
  `BB` double DEFAULT NULL,
  `GolDarah` varchar(3) DEFAULT NULL,
  `Hobby` varchar(255) DEFAULT NULL,
  `Penyakit` varchar(50) DEFAULT NULL,
  `AsalSek` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbjurusan`
--

CREATE TABLE `tbjurusan` (
  `KdJur` varchar(2) NOT NULL,
  `kd_jur_baru` varchar(3) NOT NULL,
  `akademik` varchar(10) NOT NULL,
  `Fak` varchar(50) NOT NULL,
  `Jur` varchar(50) NOT NULL,
  `jur_baru` varchar(50) NOT NULL,
  `sing` varchar(10) NOT NULL,
  `sing_baru` varchar(10) NOT NULL,
  `fak_sing` varchar(10) NOT NULL,
  `ketua` varchar(100) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `quota` int(11) NOT NULL DEFAULT '0',
  `terisi` int(11) NOT NULL DEFAULT '0',
  `tampil` varchar(5) NOT NULL DEFAULT '0',
  `fak_btn` varchar(5) NOT NULL DEFAULT '0',
  `th` char(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bayar`
--

CREATE TABLE `tbl_bayar` (
  `nik` varchar(50) NOT NULL,
  `nm_bank_pengirim` varchar(50) NOT NULL,
  `nm_pengirim` varchar(50) NOT NULL,
  `norek_pengirim` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL,
  `tgl_uploads` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bayar`
--

INSERT INTO `tbl_bayar` (`nik`, `nm_bank_pengirim`, `nm_pengirim`, `norek_pengirim`, `file`, `tgl_uploads`) VALUES
('22255', 'BNI', 'Nama Pengirim', '22525', 'Link', '2022-03-27'),
('25252', 'BCA ', 'Agus Setiawan', '8997878', 'J', '2022-02-28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `beli_formulir`
--
ALTER TABLE `beli_formulir`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `mspcmb`
--
ALTER TABLE `mspcmb`
  ADD PRIMARY KEY (`NoUjian`);

--
-- Indeks untuk tabel `tbjurusan`
--
ALTER TABLE `tbjurusan`
  ADD PRIMARY KEY (`KdJur`);

--
-- Indeks untuk tabel `tbl_bayar`
--
ALTER TABLE `tbl_bayar`
  ADD PRIMARY KEY (`nik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mspcmb`
--
ALTER TABLE `mspcmb`
  MODIFY `NoUjian` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `beli_formulir`
--
ALTER TABLE `beli_formulir`
  ADD CONSTRAINT `FKNIK` FOREIGN KEY (`nik`) REFERENCES `tbl_bayar` (`nik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
