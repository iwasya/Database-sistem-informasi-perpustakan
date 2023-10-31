-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2023 at 05:53 AM
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
-- Database: `sistem_informasi_perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama_anggota` varchar(50) DEFAULT NULL,
  `no_telp` bigint(13) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`id_anggota`, `nama_anggota`, `no_telp`, `alamat`) VALUES
(1, 'Ani Cahyani', 2484473334, '111 University Drive'),
(2, 'Doni Prabowo', 2163853268, '222 College Avenue'),
(3, 'Lina Wijaya', 2183704518, '333 Campus Road'),
(4, 'Agus Santosa', 2172237919, '444 School Street'),
(5, 'Rina Utami', 6145721459, '555 Learning Lane');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `penulis` varchar(50) DEFAULT NULL,
  `penerbit` varchar(50) DEFAULT NULL,
  `tahun_terbit` date DEFAULT NULL,
  `jumlah_halaman` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `judul`, `penulis`, `penerbit`, `tahun_terbit`, `jumlah_halaman`) VALUES
(1, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 'Scholastic', '1997-06-26', 320),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'J.B. Lippincott & Co.', '1960-07-11', 281),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Charles Scribner\'s Sons', '1925-04-10', 180),
(4, 'To the Lighthouse', 'Virginia Woolf', 'Hogarth Press', '1927-05-05', 209),
(5, '1984', 'George Orwell', 'Secker and Warburg', '1949-06-08', 328);

-- --------------------------------------------------------

--
-- Table structure for table `tb_denda`
--

CREATE TABLE `tb_denda` (
  `id_denda` int(11) NOT NULL,
  `denda` varchar(10) DEFAULT NULL,
  `total_denda` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_denda`
--

INSERT INTO `tb_denda` (`id_denda`, `denda`, `total_denda`) VALUES
(1, 'Denda A', '100'),
(2, 'Denda B', '50'),
(3, 'Denda C', '75'),
(4, 'Denda D', '120'),
(5, 'Denda E', '90');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjaman`
--

CREATE TABLE `tb_peminjaman` (
  `id_pinjam` int(11) NOT NULL,
  `waktu_pinjam` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `jatuh_tempo` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_peminjaman`
--

INSERT INTO `tb_peminjaman` (`id_pinjam`, `waktu_pinjam`, `jatuh_tempo`) VALUES
(1, '2023-10-30 03:00:00', '2023-11-15'),
(2, '2023-10-31 07:30:00', '2023-11-16'),
(3, '2023-11-02 02:15:00', '2023-11-18'),
(4, '2023-11-03 09:45:00', '2023-11-17'),
(5, '2023-11-05 04:30:00', '2023-11-20');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengembalian`
--

CREATE TABLE `tb_pengembalian` (
  `id_kembali` int(11) NOT NULL,
  `waktu_kembali` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pengembalian`
--

INSERT INTO `tb_pengembalian` (`id_kembali`, `waktu_kembali`) VALUES
(1, '2023-11-10 07:00:00'),
(2, '2023-11-11 05:30:00'),
(3, '2023-11-13 03:15:00'),
(4, '2023-11-14 11:45:00'),
(5, '2023-11-16 08:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(50) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_petugas`
--

INSERT INTO `tb_petugas` (`id_petugas`, `nama_petugas`, `no_telp`, `alamat`) VALUES
(1, 'Budi Santoso', '123-456-7890', '123 Main Street'),
(2, 'Siti Rahayu', '987-654-3210', '456 Elm Street'),
(3, 'Iwan Pratama', '555-123-4567', '789 Oak Street'),
(4, 'Dewi Putri', '111-222-3333', '101 Maple Avenue'),
(5, 'Rudi Setiawan', '777-888-9999', '202 Pine Road');

-- --------------------------------------------------------

--
-- Table structure for table `tb_prodi`
--

CREATE TABLE `tb_prodi` (
  `id_prodi` int(11) NOT NULL,
  `nama_prodi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_prodi`
--

INSERT INTO `tb_prodi` (`id_prodi`, `nama_prodi`) VALUES
(1, 'S1 Keperawatan'),
(2, 'S1 Informatika '),
(3, 'S1 Teknologi Informa'),
(4, 'S1 Sistem Informasi '),
(5, 'S1 Hukum');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rak`
--

CREATE TABLE `tb_rak` (
  `id_rak` int(11) NOT NULL,
  `no_rak` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_rak`
--

INSERT INTO `tb_rak` (`id_rak`, `no_rak`) VALUES
(1, 'Rak A'),
(2, 'Rak B'),
(3, 'Rak C'),
(4, 'Rak D'),
(5, 'Rak E');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `tb_denda`
--
ALTER TABLE `tb_denda`
  ADD PRIMARY KEY (`id_denda`);

--
-- Indexes for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indexes for table `tb_pengembalian`
--
ALTER TABLE `tb_pengembalian`
  ADD PRIMARY KEY (`id_kembali`);

--
-- Indexes for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indexes for table `tb_rak`
--
ALTER TABLE `tb_rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_denda`
--
ALTER TABLE `tb_denda`
  MODIFY `id_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_pengembalian`
--
ALTER TABLE `tb_pengembalian`
  MODIFY `id_kembali` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_rak`
--
ALTER TABLE `tb_rak`
  MODIFY `id_rak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD CONSTRAINT `fk_anggota_prodi` FOREIGN KEY (`id_anggota`) REFERENCES `tb_prodi` (`id_prodi`);

--
-- Constraints for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD CONSTRAINT `fk_buku_rak` FOREIGN KEY (`id_buku`) REFERENCES `tb_rak` (`id_rak`);

--
-- Constraints for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD CONSTRAINT `fk_peminjaman_anggota` FOREIGN KEY (`id_pinjam`) REFERENCES `tb_anggota` (`id_anggota`),
  ADD CONSTRAINT `fk_peminjaman_buku` FOREIGN KEY (`id_pinjam`) REFERENCES `tb_buku` (`id_buku`),
  ADD CONSTRAINT `fk_peminjaman_denda` FOREIGN KEY (`id_pinjam`) REFERENCES `tb_denda` (`id_denda`),
  ADD CONSTRAINT `fk_peminjaman_petugas` FOREIGN KEY (`id_pinjam`) REFERENCES `tb_petugas` (`id_petugas`);

--
-- Constraints for table `tb_pengembalian`
--
ALTER TABLE `tb_pengembalian`
  ADD CONSTRAINT `fk_pengembalian_anggota` FOREIGN KEY (`id_kembali`) REFERENCES `tb_anggota` (`id_anggota`),
  ADD CONSTRAINT `fk_pengembalian_buku` FOREIGN KEY (`id_kembali`) REFERENCES `tb_buku` (`id_buku`),
  ADD CONSTRAINT `fk_pengembalian_denda` FOREIGN KEY (`id_kembali`) REFERENCES `tb_denda` (`id_denda`),
  ADD CONSTRAINT `fk_pengembalian_petugas` FOREIGN KEY (`id_kembali`) REFERENCES `tb_petugas` (`id_petugas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
