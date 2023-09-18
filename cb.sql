-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Sep 2023 pada 11.23
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataset`
--

CREATE TABLE `dataset` (
  `id` int(11) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `abstrak` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dataset`
--

INSERT INTO `dataset` (`id`, `penulis`, `judul`, `abstrak`) VALUES
(1, '', 'SISTEM PENDUKUNG KEPUTUSAN PEMILIHAN SUPPLIER PAKAIAN DENGAN METODE SIMPLE ADDITIVE WEIGHTING PADA TOKO HENHEN COLLECTION ', 'HenHen Collection merupakan toko pakaian yang menjual berbagai macam jenis pakaian. Toko tersebut saat ini mengalami kesulitan dalam memilih supplier pakaian dikarenakan banyaknya kriteria yang dipertimbangkan dan proses pemilihan supplier masih berdasarkan perasaan dan perkiraan pemilik toko. Situasi semacam ini dapat berdampak pada ketersediaan barang yang akhirnya berpengaruh terhadap keuntungan, kepuasan, dan kesetiaan pelanggan. Kesulitan tersebut dapat dipecahkan dengan membangun sistem pendukung keputusan untuk memilih supplier pakaian. Penilaian pemasok yang sebelumnya cenderung bersifat subjektif dapat dipecahkan dengan menerapkan metode Simple Additive Weighting (SAW) yang diimplementasikan ke dalam aplikasi berbasis website. Metode ini dapat mencari alternatif optimal berdasarkan kriteria yang telah ditentukan dengan melakukan penjumlahan terbobot untuk semua atribut pada setiap alternatif yang ada. Dengan metode tersebut, maka diharapkan dapat membandingkan setiap alternatif supplier secara seimbang dan menghasilkan alternatif melalui perhitungan yang pasti dan konsisten.'),
(2, '', 'IMPLEMENTASI METODE ELECTRE PENUGASAN DOSEN SEBAGAI TIM MARKETING UNIVERSITAS AMIKOM YOGYAKARTA ', 'Pendidikan merupakan prioritas penting saat ini, pendidikan yang baik dan berkualitas dapat menentukan karir seseorang dalam dunia kerja sehingga menjadi lebih profesional, oleh karena itu pendidikan pada tingkat perguruan tinggi saat ini dipandang penting oleh masyarakat. Jumlah perguruan tinggi yang banyak, menyebabkan terjadinya persaingan yang ketat untuk mendapatkan calon mahasiswa, berbagai potensi dan keunggulan yang dimiliki perguruan tinggi akan dikerahkan, maka dari itu sangat penting bagi perguruan tinggi melakukan promosi untuk mengenalkan perguruan tinggi tersebut. Universitas Amikom Yogyakarta adalah Perguruan tinggi swasta yang melakukan promosi untuk menarik minat calon mahasiswa. Tim marketing yang dibentuk terdiri dari beberapa dosen yang ditugaskan untuk mempromosikan kampus, Selain mengajar dosen juga melakukan bimbingan, sebagai tim penguji dan tidak menutup kemungkinan menjadi panitia dalam suatu acara internal kampus, untuk itu dari permasalahan tersebut maka dibuat penelitian Penentuan Tim Marketing yang bertujuan supaya dalam menentukan tim marketing tidak berbarengan dengan mengajar, ataupun kegiatan lain.'),
(3, '', 'Sistem Pendukung Keputusan Pendeteksi Kerusakan Komputer\r\nPada Universitas Al-Khairiyah', 'Pada zaman serba otomatis sekarang ini peranan teknologi informasi sangatlah\r\ndibutuhkan oleh segala kalangan masyarakat, Komputer merupakan alat yang sangat berperan\r\npenting dalam aktifitas sehari-hari baik itu dlingkungan sekolah maupun diluar sekolah. Namun\r\nkomputer juga dapat mengalami kerusakan yang menyebabkan kerja staff dan dosen jadi\r\nterganggu.\r\nMetodologi yang digunakan dalam perancangan sistem informasi ini adalah Metode\r\nWaterfall. Sistem ini dirancang dengan menggunakan konsep-konsep UML (Unifield Modelling\r\nLanguage) serta diimplementasikan menggunakan Data Base Microsoft Access 2010, dan Visual\r\nBasic 6.0.\r\nHasil yang diharapkan dari penelitian ini adalah menghasilkan sistem pendukung\r\nkeputusan pendeteksi kerusakan komputer yang akan membantu pengguna baik teknisi lab atau\r\nstaff untuk mengetahui kerusakan komputer dan solusinya.'),
(4, '', 'Sistem Pendukung Keputusan (Decisin Support System) ', 'Sistem pendukung keputusan (Inggris: decision support systems disingkat DSS) adalah bagian dari sistem informasi berbasis komputer (termasuk sistem berbasis pengetahuan (manajemen pengetahuan)) yang dipakai untuk mendukung pengambilan keputusan dalam suatu organisasi atau Perusahaan.DSS dapat juga dikatakan sebagai sistem komputer yang mengolah data menjadi informasi untuk mengambil keputusan dari masalah semi-terstruktur yang spesifik.'),
(5, '', 'SISTEM PENDUKUNG KEPUTUSAN PEMILIHAN SISWA BERPRESTASI DENGAN METODE SIMPLE ADDITIVE WEIGHTING (SAW) (STUDI KASUS : SMK DWI WARNA SUKABUMI) ', 'Dalam suatu sekolah, peringkat siswa berprestasi biasanya hanya dipilih berdasarkan nilai akhir nya saja, begitu pula di SMK Dwi Warna. Pemilihan siswa berprestasi di SMK Dwi Warna Sukabumi hanya berdasarkan nilai raport yang menduduki peringkat 1 sampai 5 saja. Proses pemilihan tersebut banyak terdapat peluang untuk membuat keputusan yang salah karena proses pemilihan siswa hanya berdasarkan satu aspek saja yaitu nilai akhir siswa, sedangkan nilai sikap dan prestasi yang didapat diluar sekolah tidak dijadikan bahan pertimbangan sebagai bahan tambahan kriteria untuk menentukan siswa yang dianggap berprestasi dan mendapatkan beasiswa. Ini berarti kemungkinan besar Siswa berprestasi yang dipilih tidak mencapai standar yang diinginkan yang tidak memperoleh kandidat yang terbaik. Tujuan dari penelitian ini adalah sebagai jalan alternatif bagi sekolah untuk menentukan siswa berprestasi supaya tidak hanya berdasarkan nilai akademik saja, dan tidak ada kecurangan dalam pemilihan siswa berprestasi. Metode yang digunakan dalam penelitian ini yaitu metode Simple Additive Weighting (SAW). Hasil dari penelitian ini bahwa metode SAW dapat memberikan hasil terbaik dari kriteria dan bobot yang sudah ditentukan. Dari hasil perhitungan dengan metode SAW didapatkan oleh siswa bernama Rini Anggraeni dengan nilai preferensi 93,76.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dataset`
--
ALTER TABLE `dataset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
