<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Book>
 */
class BookFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $title = $this->faker->unique()->words(mt_rand(2,7), true);
        return [
            'category_id' => mt_rand(1,7),
            'title' => ucwords($title),
            'slug' => Str::slug($title, '-'),
            'publication_year' => $this->faker->year(),
            'synopsis' => collect($this->faker->paragraphs(mt_rand(1,3)))
                ->map(fn($p)=> "<p>$p</p>")
                ->implode(''),
            'copies_left' => mt_rand(1,10)
        ];
    }
}
