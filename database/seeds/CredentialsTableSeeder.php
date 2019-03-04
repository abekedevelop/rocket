<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CredentialsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('credentials')->insert([
            'app_name' => 'rocketApi',
            'client_id' => 'a2ebc1ed536e0ed8dbaf55853b951485cf7f18dfa309e96a4fa429e6e9406d40',
        ]);
    }
}
