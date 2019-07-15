-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jul 2019 pada 10.03
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myperpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `npm` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id`, `user_id`, `npm`, `nama`, `tempat_lahir`, `tgl_lahir`, `jk`, `prodi`, `created_at`, `updated_at`) VALUES
(3, 3, 16090134, 'Muhamad Agung Bahagia', 'Tegal', '1997-04-11', 'L', 'TI', '2019-07-07 02:53:55', '2019-07-07 02:53:55'),
(4, 4, 16090101, 'Ryaas Parama Ryansha', 'Pemalang', '1998-04-11', 'L', 'TI', '2019-07-07 02:55:11', '2019-07-07 02:55:11'),
(6, 5, 16090105, 'Irfan Efendi', 'Tegal', '1995-09-07', 'L', 'TI', '2019-07-07 02:56:59', '2019-07-07 02:56:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengarang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penerbit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_terbit` int(11) DEFAULT NULL,
  `jumlah_buku` int(11) NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` enum('rak1','rak2','rak3') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul`, `isbn`, `pengarang`, `penerbit`, `tahun_terbit`, `jumlah_buku`, `deskripsi`, `lokasi`, `cover`, `created_at`, `updated_at`) VALUES
(4, 'Yuk Berbisnis dengan Laravel dan Android', '9786230001598', 'Yudho Yudhanto dan Helmi Adi Prasetyo', 'Elex Media Komputindo', 2017, 9, 'Sejak diakuisisi Google tahun 2005, Android langsung melesat meninggalkan dominasi OS Mobile lain. Kemajuannya pun semakin melesat karena pada tahun 2008 dirilis HTC Dream, HP pertama yang menggunakan sistem Android. Tidak lekas puas, untuk menjayakan masa depan OS ini, para petinggi Android membuatnya menjadi open source sehingga semua orang di seluruh dunia boleh dan bebas berkreasi membuat aplikasi Android untuk dijalankan ataupun dibagi di gudang Android, yakni Play Store. Terbukti, sekarang para programmer seluruh dunia sangat senang dan berlomba-lomba membuat dan mengedarkan aplikasi Android di playstore agar dikenal di seluruh dunia.   Bagi para pembuat aplikasi mobile, buku ini mencakup pengantar teori Android, dasar-dasar programming, pengantar Android Studio, teknik menyimpan data, coding, proses bisnis, sampai dengan meluncurkan aplikasi ke dalam Play Store. Jangan khawatir, kami juga menyertakan kode program yang bisa diakses kapan saja di Github. Sampai April 2019 ini, StatCounter GlobalStats merilis bahwa Android berjaya menguasai pasar mobile sampai 93.5%. Artinya, akan sangat beruntung para developer aplikasi mobile jika bisa mengguasai dengan mempelajari serius programming di bidang Android ini. Selamat berkarya menyongsong masa depan cerah bersama Android!', 'rak1', '94068-2019-07-14-08-00-59.jpg', '2019-07-07 02:22:40', '2019-07-14 01:00:59'),
(5, 'Panduan Mudah Belajar Framework Laravel', '9786020485287', 'Yudho Yudhanto dan Helmi Adi Prasetyo', 'Elex Media Komputindo', 2018, 10, 'Dalam dunia pemrograman web, kita pasti mengenal teknologi pemrograman PHP yang telah mendunia. Teknik pemrograman PHP yang lazim digunakan saat ini adalah menggunakan teknik FRAMEWORK sehingga aplikasi yang dibuat dapat lebih mudah dan cepat selesai. Dari berbagai framework yang dikenal saat ini, ada beberapa yang sangat populer, seperti Zend, Symfony 2, CI, Cake, YII, Laravel, dan masih banyak lagi.      Berdasarkan statistik yang dikeluarkan SITEPOINT di tahun 2017 menunjukkan bahwa dari ke 6 buah framework di atas, Laravel menduduki kepopuleran tingkat pertama dengan 25,8%. Jadi, sangat tidak keliru, jika para programmer PHP terutama pemula disarankan belajar juga menggunakan teknik framework Laravel untuk acuan pertama kalinya. Buku ini akan membahas Laravel secara lengkap dan mudah untuk dipahami bagi para pemula. Tidak hanya itu, buku ini juga memberikan contoh studi kasus pembuatan aplikasi toko online yang akan sangat membantu pembaca dalam memahami Laravel lebih jauh lagi. Tunggu apa lagi, segera baca buku ini dan jadilah programmer yang ahli di bidang Laravel.', 'rak2', '52803-2019-07-14-08-02-09.jpg', '2019-07-07 02:27:27', '2019-07-14 01:02:09'),
(6, 'Konsep dan Implementasi Pemrograman Laravel 5', '9786026231017', 'Awan Pribadi Basuki', 'Lokomedia', 2018, 9, 'LARAVEL ADALAH FRAMEWORK PHP YANG PALING POPULER SAAT INI. LARAVEL MEMILIKI BANYAK FITUR MODERN YANG SANGAT MEMBANTU DALAM PROSES PEMBUATAN DAN PENGEMBANGAN WEB. LARAVEL CUKUP SULLIT UNTUK DIKUASAI, TERUTAMA BAGI PEMULA, KARENA KOMPLEKSITAS YANG ADA DIDALAMNYA. BUKU INI MEMBANTU ANDA UNTUK MEMPELAJARI LARAVEL DENGAN CARA YANG MUDAH DAN MENYELURUH.', 'rak3', '76841-2019-07-13-16-20-09.jpg', '2019-07-07 02:29:15', '2019-07-13 09:20:09'),
(7, 'Mudah Menguasai Framework Laravel', '9786020498928', 'Yudho Yudhanto dan Helmi Adi Prasetyo', 'Elex Media Komputindo', 2018, 10, 'Laravel adalah salah satu framework berbasis open source yang paling populer saat ini. Sejak diluncurkan tahun 2011, aplikasi berbasis Laravel ini banyak digemari oleh para komunitas programmer di Github hingga akhirnya menyebar ke seluruh dunia. Framework Laravel menyediakan beberapa jenis PHP library dan beberapa fungsi lain yang bisa memudahkan kita dalam menuliskan baris kode program. Framework Laravel juga dibuat dengan tujuan mempermudah cara untuk membuat aplikasi berbasis web dan memperindah tampilan karena modelnya yang sederhana dan elegan. Framework ini juga terkenal dengan dokumentasinya yang lengkap dan selalu update. Setiap ada pembaharuan versi terbaru selalu ada pembaharuan pada dokumentasinya. Buku ini selain berisi teori dasar juga memberikan studi kasus aplikasi CRUD dan Toko Online. Mengacu kepada buku karya penulis sebelumnya yang berjudul “Panduan Mudah Belajar Framework Laravel”, buku ini telah di-update dan direvisi sedemikian rupa agar semakin lengkap untuk pembaca.', 'rak1', '87539-2019-07-14-08-01-32.jpg', '2019-07-07 02:30:31', '2019-07-14 01:01:32'),
(8, 'Mengenal PHP Menggunakan Framework Laravel', '9786020277943', 'Jubilee Enterprise', 'Elex Media Komputindo', 2018, 9, 'Laravel adalah framework PHP yang masih tergolong baru, namun memiliki potensi cerah di masa depan. Apabila ingin mempelajari PHP dan Laravel dari nol (instalasi, setting, konfigurasi, dan pemrograman dasar), maka bacalah buku ini.  Mengapa mempelajari Laravel itu penting? Karena framework ini menawarkan kecepatan akses dan update data yang efisien, selain kode-kodenya yang mudah dikenali dan ekspresif. Buku ini mengupas tentang instalasi PHP dan Laravel, penggunaan Blade Template Engine, pemanfaatan Composer, Artisan, dan beberapa contoh script siap-pakai.  Diharapkan setelah membaca buku ini Anda akan sanggup menggunakan PHP dan Laravel secara cepat dan efisien untuk berbagai tugas desain website.', 'rak2', '86989-2019-07-14-08-00-19.jpg', '2019-07-07 02:35:37', '2019-07-14 01:00:19'),
(9, 'Membuat Aplikasi Point of Sale dengan Laravel dan AJAX', '9786020441092', 'Rohi Abdulloh', 'Elex Media Komputindo', 2018, 10, 'Aplikasi POS banyak dibutuhkan oleh pelaku usaha. Laravel merupakan framework yang paling popular saat ini. Mempelajari keduanya sekaligus, yaitu membuat aplikasi POS dengan Laravel, tentu akan menjadi pembelajaran yang sangat menarik. Apalagi disertai dengan penggunaan AJAX yang dapat membuat aplikasi berbasis web terasa seperti aplikasi desktop. Itulah yang akan dibahas di dalam buku ini. Pembahasan dimulai dari dasar-dasar penggunaan Laravel dilengkapi dengan trik Laravel untuk aplikasi POS, seperti ekspor dan impor file Excel, membuat file PDF, cetak barcode, direct printing ke printer Dot Matrix, pembuatan helper angka terbilang, dan sebagainya. Dibahas juga langkah demi langkah pembuatan operasi CRUD, dengan dan tanpa AJAX. Di bagian akhir dibahas langkah demi langkah membuat aplikasi POS dengan Laravel dan AJAX. Aplikasi POS yang dibuat ini memiliki fitur menarik seperti cetak barcode, cetak kartu member, pilihan cetak nota menggunakan PDF atau direct printing ke printer Dot Matrix, tampilan tabel dengan DataTable, serta desain menggunakan template AdminLTE. Pembahasan selengkapnya mencakup:  Memahami berbagai fitur Laravel  Operasi CRUD pada Laravel, dengan dan tanpa AJAX  Trik-trik Laravel untuk aplikasi POS  Proses membuat aplikasi POS  Menerapkan template AdminLTE pada Laravel  Trik direct printing ke printer Dot Matrix pada aplikasi PHP Keterampilan: Pemula, Menengah Kelompok: Pemrograman Jenis buku: Referensi, Tutorial', 'rak3', '63073-2019-07-13-16-20-29.jpg', '2019-07-07 02:36:56', '2019-07-13 09:20:29'),
(10, 'Framework Laravel 5: Panduan Praktis&Trik Jitu', '9786027270107', 'Akhmad Dharma Kasman', 'Asfa Solution', 2018, 10, 'Framework Laravel 5: Panduan Praktis&Trik Jitu', 'rak3', '16356-2019-07-13-16-19-36.jpg', '2019-07-07 02:38:37', '2019-07-13 09:19:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_06_17_070037_create_anggotas_table', 1),
(3, '2018_06_17_130244_create_bukus_table', 1),
(4, '2018_06_18_014155_create_transaksis_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `buku_id` int(10) UNSIGNED NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status` enum('pinjam','kembali') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `kode_transaksi`, `anggota_id`, `buku_id`, `tgl_pinjam`, `tgl_kembali`, `status`, `ket`, `created_at`, `updated_at`) VALUES
(2, 'TR00001', 3, 10, '2019-07-07', '2019-07-12', 'kembali', 'Pinjam', '2019-07-07 03:00:00', '2019-07-09 03:20:04'),
(5, 'TR00003', 3, 6, '2019-07-08', '2019-07-14', 'pinjam', NULL, '2019-07-09 03:19:43', '2019-07-09 03:19:43'),
(6, 'TR00006', 4, 8, '2019-07-13', '2019-07-18', 'pinjam', 'Pinjam', '2019-07-13 08:56:22', '2019-07-13 08:56:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `gambar`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Muhamad Agung Bahagia', 'adminmyperpus', 'agungbahagia@outlook.com', '$2y$10$De/nZjwbP7kMSqTPRJwnCevWNzF49UM4xmBoTJAzfgfSuZIEJwCP.', '31787-2019-07-07-09-16-49.jpg', 'admin', 'bvMtNxw5JaIPFwaa9RJTJ9nyMsFtclqM6PX04k9yAtM5hHJYyiDRNquUHkn9', '2019-07-07 02:16:49', '2019-07-07 02:16:49'),
(4, 'Ryaas Parama Ryanshaa', 'usermyperpus', 'agungbahagia@gmail.com', '$2y$10$pGcLYVhpqnyC9cOmIeBRWeGpjGZjsAkY6rqUyQWroqqnfOFqsH796', '12629-2019-07-07-09-18-39.jpg', 'user', 'NlzliHk7qweQfIXSM5j42KvRs4aLbR4Ar5z4lMXPjUAc4297qUH1yZENrlZM', '2019-07-07 02:18:39', '2019-07-07 02:52:47'),
(5, 'Irfan Efendi', 'irfanefendi', 'beatdownirfan@gmail.com', '$2y$10$wIvRKVj.4wXGD1SC/AwkwOh0Gdhf9UMRCQran/aYmKqu1qWY/2fry', '78956-2019-07-07-09-50-18.jpg', 'user', NULL, '2019-07-07 02:50:18', '2019-07-07 02:50:18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggota_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_anggota_id_foreign` (`anggota_id`),
  ADD KEY `transaksi_buku_id_foreign` (`buku_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `anggota_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaksi_buku_id_foreign` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
