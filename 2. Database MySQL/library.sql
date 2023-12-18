-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2023 at 04:02 PM
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
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `category` enum('fiksi','nonfiksi') NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `title`, `author`, `category`, `quantity`) VALUES
(1, 'Jakarta Sebelum Pagi', 'Ziggy', 'fiksi', 1),
(2, 'Semua Ikan di Langit', 'Ziggy', 'fiksi', 6),
(3, 'Ensiklopedia AAA', 'Dr. Ir. Derwin Suhartono', 'nonfiksi', 14),
(4, 'Ensiklopedia BBB', 'Andry Chowanda, S.Kom, MM., Ph.D., MBCS', 'nonfiksi', 13),
(5, 'Habis Gelap Terbitlah Terang', 'R.A. Kartini', 'nonfiksi', 25),
(6, 'Gadis Kretek', 'Ratih Kumala', 'fiksi', 15),
(7, 'Ketika Cinta Bertasbih', 'Habiburrahman El Shirazy', 'fiksi', 3),
(8, 'Matahari', 'Tere Liye', 'fiksi', 20),
(9, 'Bumi', 'Tere Liye', 'fiksi', 19),
(10, 'Supernova: Partikel', 'Dee Lestari', 'fiksi', 6),
(11, 'Progresnya Berapa Persen?', 'Soraya Nasution', 'fiksi', 7),
(12, 'The Architecture of Love', 'Ika Natassa', 'fiksi', 9),
(13, 'Laut Bercerita', 'Leila S. Chudori', 'fiksi', 3),
(14, 'Memory Bookstore', 'Choung Myung Seob, Dwita Rizki Nientyas', 'fiksi', 5),
(15, 'Perahu Kertas', 'Dewi Lestari', 'fiksi', 11),
(16, 'The Great Gatsby', 'F. Scott Fitzgerald', 'fiksi', 20),
(17, 'To Kill a Mockingbird', 'Harper Lee', 'fiksi', 15),
(18, '1984', 'George Orwell', 'fiksi', 25),
(19, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'nonfiksi', 30),
(20, 'The Subtle Art of Not Giving a F*ck', 'Mark Manson', 'nonfiksi', 18),
(21, 'Brave New World', 'Aldous Huxley', 'fiksi', 22),
(22, 'The Catcher in the Rye', 'J.D. Salinger', 'fiksi', 12),
(23, 'The Da Vinci Code', 'Dan Brown', 'fiksi', 28),
(24, 'Thinking, Fast and Slow', 'Daniel Kahneman', 'nonfiksi', 15),
(25, 'The Power of Habit', 'Charles Duhigg', 'nonfiksi', 20),
(26, 'The Hobbit', 'J.R.R. Tolkien', 'fiksi', 25),
(27, 'The Alchemist', 'Paulo Coelho', 'fiksi', 18),
(28, 'Laskar Pelangi', 'Andrea Hirata', 'fiksi', 17),
(29, 'Bumi Manusia', 'Pramoedya Ananta Toer', 'fiksi', 20),
(30, 'Supernova: Akar', 'Dee Lestari', 'fiksi', 18),
(31, 'Ayat-Ayat Cinta', 'Habiburrahman El-Shirazy', 'fiksi', 25),
(32, 'Tentang Kamu', 'Tere Liye', 'fiksi', 12),
(33, 'Negeri 5 Menara', 'Ahmad Fuadi', 'fiksi', 22),
(34, 'Pulang', 'Tere Liye', 'fiksi', 30),
(35, 'Cinta di Dalam Gelas', 'Andrea Hirata', 'fiksi', 28),
(36, 'Bidadari-Bidadari Surga', 'Tere Liye', 'fiksi', 18),
(37, 'Ronggeng Dukuh Paruk', 'Ahmad Tohari', 'fiksi', 20),
(38, 'Sang Pemimpi', 'Andrea Hirata', 'fiksi', 25),
(39, 'Dilan: Dia Adalah Dilanku Tahun 1990', 'Pidi Baiq', 'fiksi', 15),
(40, 'Jejak Langkah', 'Pramoedya Ananta Toer', 'fiksi', 22),
(41, 'Polaris Musim Dingin', 'Alicia', 'fiksi', 3);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `pass`) VALUES
(1, 'yassar', 'ysr27'),
(2, 'ai', 'ai'),
(3, 'annabil', '27'),
(4, 'aa', 'aa'),
(5, 'g', 'g'),
(6, 'aku', 'aku123');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nama` varchar(255) NOT NULL,
  `nim` int(11) NOT NULL,
  `jurusan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nama`, `nim`, `jurusan`) VALUES
('John', 1, 'Computer Science'),
('Jane', 2, 'Electrical Engineering'),
('Alice', 3, 'Mechanical Engineering'),
('Bob', 4, 'Civil Engineering'),
('Eva', 5, 'Chemical Engineering'),
('Chris', 6, 'Information Technology'),
('Grace', 7, 'Mathematics'),
('David', 8, 'Physics'),
('Sophie', 9, 'Biology'),
('Michael', 10, 'Chemistry'),
('Olivia', 11, 'Statistics'),
('Ryan', 12, 'Business Administration'),
('Zoe', 13, 'Economics'),
('Daniel', 14, 'Psychology'),
('Emma', 15, 'Sociology'),
('Andrew', 16, 'History'),
('Isabella', 17, 'Political Science'),
('William', 18, 'English Literature'),
('Ava', 19, 'Marketing'),
('Liam', 20, 'Finance');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `pinjamId` int(11) NOT NULL,
  `studentId` int(11) DEFAULT NULL,
  `bookId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status_pinjam` enum('Pinjam','Selesai') DEFAULT NULL,
  `TGLPINJAM` date DEFAULT NULL,
  `TGLKEMBALI` date DEFAULT NULL,
  `denda` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`pinjamId`, `studentId`, `bookId`, `quantity`, `status_pinjam`, `TGLPINJAM`, `TGLKEMBALI`, `denda`) VALUES
(1, 1, 1, 2, 'Selesai', '2023-01-02', '2023-03-04', 61000.00),
(2, 2, 2, 1, 'Selesai', '2023-01-05', '2023-03-04', 58000.00),
(3, 3, 3, 3, 'Selesai', '2023-01-10', '2023-01-14', 0.00),
(4, 4, 4, 1, 'Pinjam', '2023-02-15', NULL, NULL),
(5, 5, 5, 2, 'Pinjam', '2023-02-20', NULL, NULL),
(6, 6, 6, 1, 'Pinjam', '2023-03-01', NULL, NULL),
(7, 7, 7, 3, 'Pinjam', '2023-03-10', NULL, NULL),
(8, 8, 8, 1, 'Pinjam', '2023-03-15', NULL, NULL),
(9, 9, 9, 2, 'Pinjam', '2023-04-02', NULL, NULL),
(10, 10, 10, 1, 'Pinjam', '2023-04-10', NULL, NULL),
(11, 11, 11, 1, 'Pinjam', '2023-04-15', NULL, NULL),
(12, 12, 12, 2, 'Pinjam', '2023-05-01', NULL, NULL),
(13, 13, 13, 1, 'Pinjam', '2023-05-05', NULL, NULL),
(14, 14, 14, 3, 'Pinjam', '2023-05-10', NULL, NULL),
(15, 15, 15, 1, 'Pinjam', '2023-06-01', NULL, NULL),
(16, 16, 16, 2, 'Pinjam', '2023-06-10', NULL, NULL),
(17, 17, 17, 1, 'Pinjam', '2023-06-15', NULL, NULL),
(18, 18, 18, 2, 'Pinjam', '2023-07-01', NULL, NULL),
(19, 19, 19, 1, 'Pinjam', '2023-07-10', NULL, NULL),
(20, 20, 20, 3, 'Pinjam', '2023-07-15', NULL, NULL),
(21, 3, 3, 3, 'Pinjam', '2023-12-16', NULL, NULL);

--
-- Triggers `pinjam`
--
DELIMITER $$
CREATE TRIGGER `hitung_denda` BEFORE UPDATE ON `pinjam` FOR EACH ROW BEGIN
    IF NEW.TGLKEMBALI IS NOT NULL AND DATEDIFF(NEW.TGLKEMBALI, NEW.TGLPINJAM) > 7 THEN
        SET NEW.denda = DATEDIFF(NEW.TGLKEMBALI, NEW.TGLPINJAM) * 1000;
    ELSE
        SET NEW.denda = 0;
    END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD UNIQUE KEY `unique_nim` (`nim`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`pinjamId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `pinjamId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
