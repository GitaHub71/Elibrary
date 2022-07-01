<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Author>
 */
class AuthorFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $name = $this->faker->unique()->name();
        return [
            'name' => $name,
            'slug' => Str::slug($name, '-'),
            'date_born' => $this->faker->dateTimeBetween('-80 years', '-20 years'),
            'bio' => collect($this->faker->paragraphs(mt_rand(1,3)))
                ->map(fn($p)=> "<p>$p</p>")
                ->implode('')
        ];
    }
}
