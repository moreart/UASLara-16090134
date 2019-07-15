<?php

use Illuminate\Database\Seeder;

class BukusTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Buku::insert([
            [
              'id'  			=> 1,
              'judul'  			=> 'Panduan Mudah Belajar Framework Laravel',
              'isbn'			=> '9786020485287',
              'pengarang' 		=> 'Yudho Yudhanto dan Helmi Adi Prasetyo',
              'penerbit'		=> 'Elex Media Komputindo',
              'tahun_terbit'	=> 2018,
              'jumlah_buku'		=> 10,
              'deskripsi'		=> 'Buku Panduan Mudah Belajar Framework Laravel',
              'lokasi'			=> 'rak1',
              'cover'			=> 'laravel_4.jpg',
              'created_at'      => \Carbon\Carbon::now(),
              'updated_at'      => \Carbon\Carbon::now()
            ],
            [
              'id'  			=> 2,
              'judul'  			=> 'Konsep dan Implementasi Pemrograman Laravel 5',
              'isbn'			=> '9786026231017',
              'pengarang' 		=> 'Awan Pribadi Basuki',
              'penerbit'		=> 'Lokomedia',
              'tahun_terbit'	=> 2018,
              'jumlah_buku'		=> 9,
              'deskripsi'		=> 'Konsep dan Implementasi Pemrograman Laravel 5',
              'lokasi'			=> 'rak3',
              'cover'			=> 'laravel_3.jpg',
              'created_at'      => \Carbon\Carbon::now(),
              'updated_at'      => \Carbon\Carbon::now()
            ],
            [
              'id'  			=> 3,
              'judul'  			=> 'Framework Laravel 5: Panduan Praktis&Trik Jitu',
              'isbn'			=> '9786027270107',
              'pengarang' 		=> 'Akhmad Dharma Kasman',
              'penerbit'		=> 'Asfa Solution',
              'tahun_terbit'	=> 2018,
              'jumlah_buku'		=> 10,
              'deskripsi'		=> 'Framework Laravel 5: Panduan Praktis&Trik Jitu',
              'lokasi'			=> 'rak2',
              'cover'			=> 'laravel_1.jpg',
              'created_at'      => \Carbon\Carbon::now(),
              'updated_at'      => \Carbon\Carbon::now()
            ],
        ]);
    }
}
