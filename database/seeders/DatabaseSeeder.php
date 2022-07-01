<?php

namespace Database\Seeders;

use App\Models\Admin;
use App\Models\Author;
use App\Models\Book;
use App\Models\Category;
use App\Models\Loan;
use App\Models\Member;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $books = Book::factory(100)->create();

        // Author::factory(100)->create()->each(fn ($author) =>
        //     $author->books()->attach($books->random(mt_rand(1,3)))
        // );

        // Admin::factory(5)->create();

        // Member::factory(50)->create();

        // Category::factory(7)->create();

        Loan::factory(50)->create();

    }
}
