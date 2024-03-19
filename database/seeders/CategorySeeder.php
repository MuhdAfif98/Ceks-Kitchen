<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Category::factory()->createMany([
            [
                'name' => 'Appetizers',
            ],
            [
                'name' => 'Main Course',
            ],
            [
                'name' => 'Side Dishes',
            ],
            [
                'name' => 'Salads',
            ],
            [
                'name' => 'Soups',
            ],
            [
                'name' => 'Sandwiches',
            ],
            [
                'name' => 'Desserts',
            ],
            [
                'name' => 'Beverages',
            ],
            [
                'name' => 'Specials',
            ],
        ]);
    }
}
