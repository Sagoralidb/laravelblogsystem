<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Category;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $categories=['Science','Sports','Entertainment','জাতীয়','আর্ন্তজাতিক'];
        foreach($categories as $category)
        {
            Category::create([
                'name'=> $category
            ]);
        }
    }
}
