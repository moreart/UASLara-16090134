<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       \App\User::insert([
            [
              'id'  			=> 1,
              'name'  			=> 'Muhamad Agung Bahagia',
              'username'		=> 'adminmyperpus',
              'email' 			=> 'agungbahagia@outlook.com',
              'password'		=> bcrypt('adminmyperpus'),
              'gambar'			=> NULL,
              'level'			=> 'admin',
              'remember_token'	=> NULL,
              'created_at'      => \Carbon\Carbon::now(),
              'updated_at'      => \Carbon\Carbon::now()
            ],
            [
              'id'  			=> 2,
              'name'  			=> 'Muhamad Agung Bahagia',
              'username'		=> 'usermyperpus',
              'email' 			=> 'jancukers.co.id@gmail.com',
              'password'		=> bcrypt('usermyperpus'),
              'gambar'			=> NULL,
              'level'			=> 'user',
              'remember_token'	=> NULL,
              'created_at'      => \Carbon\Carbon::now(),
              'updated_at'      => \Carbon\Carbon::now()
            ]
        ]);
    }
}
