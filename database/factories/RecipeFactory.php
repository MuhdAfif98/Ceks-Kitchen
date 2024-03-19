<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Recipe>
 */
class RecipeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $ingredient = [
            ['name' => fake()->word(), 'quantity' => fake()->randomNumber()],
            ['name' => fake()->word(), 'quantity' => fake()->randomNumber()],
            ['name' => fake()->word(), 'quantity' => fake()->randomNumber()],
            ['name' => fake()->word(), 'quantity' => fake()->randomNumber()],
        ];

        $instruction = [
            ['step' => 'Step 1: ' . fake()->sentence()],
            ['step' => 'Step 2: ' . fake()->sentence()],
            ['step' => 'Step 3: ' . fake()->sentence()],
            ['step' => 'Step 4: ' . fake()->sentence()],
            ['step' => 'Step 5: ' . fake()->sentence()],
        ];

        return [
            'user_id' => rand(13, 23),
            'title' => fake()->sentence(15),
            'description' => fake()->sentence(),
            'ingredient' => json_encode($ingredient),
            'instruction' => json_encode($instruction),
            'image' => fake()->imageUrl(),
        ];
    }
}
