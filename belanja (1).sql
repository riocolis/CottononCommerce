-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Sep 2018 pada 05.14
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `belanja`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama`) VALUES
(1, 'admin', 'hapus', 'admin kosong');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapelanggan`
--

CREATE TABLE IF NOT EXISTS `datapelanggan` (
`id` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `hp` int(11) NOT NULL,
  `kodepos` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `datapelanggan`
--

INSERT INTO `datapelanggan` (`id`, `id_pelanggan`, `alamat`, `hp`, `kodepos`) VALUES
(1, 2, 'Jl. Gatotsubroto Semarang', 2147483647, 20002),
(7, 4, 'jl.jajalmxmxm', 2147483647, 540403);

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi`
--

CREATE TABLE IF NOT EXISTS `konfirmasi` (
`id` int(11) NOT NULL,
  `id_pembelian` int(10) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `nama_rek` varchar(100) NOT NULL,
  `no_rek` bigint(255) NOT NULL,
  `gambar_rek` varchar(100) NOT NULL,
  `nominal` int(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfirmasi`
--

INSERT INTO `konfirmasi` (`id`, `id_pembelian`, `nama_bank`, `nama_rek`, `no_rek`, `gambar_rek`, `nominal`) VALUES
(1, 16, 'BCA', 'Siswanto', 6216123412213, 'rek1.jpg', 80000),
(5, 24, 'BCA', 'MXMXMX', 2033039202, 'bukti_pembayarantrf_pelanggan_feriezshop_1505960757_517a8d31.jpg', 400000),
(6, 27, 'BNI', 'xczxc', 23123412, 'KRS jous.png', 400000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
`id_pelanggan` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email`, `password`, `nama`) VALUES
(1, 'jajalpelanggan@gmail.com', 'jajal', 'jajal pelanggan'),
(2, 'mirslav@gmail.com', '123456', 'mirslav'),
(3, 'mister@gmail.com', 'jajal', 'Mister'),
(4, 'pengguna21@gmail.com', '123456', 'pengguna'),
(5, 'hope212@gmail.com', 'title', 'hope');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
`id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `tanggal`, `total`) VALUES
(16, 2, '2018-06-11', 90000),
(17, 2, '2018-06-11', 175000),
(18, 2, '2018-06-13', 195000),
(21, 2, '2018-06-13', 270000),
(22, 4, '2018-06-27', 90000),
(23, 4, '2018-06-27', 220000),
(24, 4, '2018-06-27', 170000),
(25, 2, '2018-06-27', 130000),
(26, 4, '2018-06-27', 330000),
(27, 4, '2018-06-27', 185000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
`id` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jenis` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `gambar`, `nama`, `jenis`, `harga`) VALUES
(1, 'kscwok.jpg', 'Kaos Abu-Abu INDONESIA', 'Kaos', 40000),
(5, 'kscwok2.jpg', 'Kaos Merah Peta Indonesia', 'Kaos', 45000),
(6, 'kscwok3.jpg', 'Kaos Ter-Cyduk', 'Kaos', 50000),
(7, 'kswnt6.jpg', 'Kaos Polos Biru', 'Kaos', 95000),
(8, 'kswnt7.jpg', 'Kaos Polos Orange', 'Kaos', 92000),
(9, 'kswnt8.jpg', 'Kaos Polos Pink Janda', 'Kaos', 85000),
(10, 'jktcwok2.jpg', 'Jaket Biru Ceria', 'Jaket', 75000),
(11, 'kswnt3.jpg', 'Kaos Break Free', 'Kaos', 60000),
(12, 'jktcwok3.png', 'Jaket Navy Es Krim', 'Jaket', 70000),
(13, 'jktcwok5.png', 'Jaket Hitam Legam', 'Jaket', 90000),
(14, 'wnt2.jpg', 'Dress Merah Muda', 'Dress', 105000),
(15, 'wnt3.jpg', 'Dress Coklat Manja', 'Dress', 97000),
(16, 'dr1.jpg', 'Dress Zebra Cross Merah', 'Dress', 90000),
(17, 'dr3.jpg', 'Dress Merah Kembang', 'Dress', 90000),
(18, 'dr6.jpg', 'Dress Biru Panjang', 'Dress', 85000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_beli`
--

CREATE TABLE IF NOT EXISTS `produk_beli` (
`id` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk_beli`
--

INSERT INTO `produk_beli` (`id`, `id_pembelian`, `id_produk`, `jumlah`) VALUES
(1, 1, 1, 2),
(13, 0, 1, 1),
(14, 16, 1, 1),
(15, 17, 1, 2),
(16, 17, 5, 1),
(17, 18, 1, 1),
(18, 18, 14, 1),
(19, 19, 1, 1),
(20, 19, 15, 1),
(21, 20, 5, 3),
(22, 21, 1, 2),
(23, 21, 12, 2),
(24, 22, 1, 1),
(25, 23, 1, 2),
(26, 23, 5, 2),
(27, 24, 1, 3),
(28, 25, 1, 2),
(29, 26, 12, 4),
(30, 27, 5, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datapelanggan`
--
ALTER TABLE `datapelanggan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
 ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
 ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk_beli`
--
ALTER TABLE `produk_beli`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `datapelanggan`
--
ALTER TABLE `datapelanggan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `produk_beli`
--
ALTER TABLE `produk_beli`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
