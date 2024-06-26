<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Seeder;
use App\Models\User;
class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::create([
            'name'=>'Sagor Ali BD',
            'email'=>'mdsagorali033@gmail.com',
            'password'=> Hash::make(1234),
            'is_admin'=>1
        ]);

    }
}
