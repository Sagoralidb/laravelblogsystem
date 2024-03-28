<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Tag;

class TagSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $categories=['php','laravel','backend development','fontend development','js'];
        foreach($categories as $category)
        {
            Tag::create([
                'name'=> $category
            ]);
        }
    }
}
