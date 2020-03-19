<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'username' => 'dungnm',
            'email' => 'nm.dung.1991@gmail.com',
            'password' => bcrypt('1'),
            'status' => 1,
        ]);
    }
}