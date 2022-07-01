<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Loan>
 */
class LoanFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $date_borrow = date_format($this->faker->dateTimeBetween('-5 years', '-3 days'), 'd-m-Y');
        $due_date = $date_borrow;
        $date_return = date_format($this->faker->dateTimeBetween($date_borrow, 'now'), 'd-m-Y');

        $due_date = date_create_from_format('d-m-Y', $due_date);
        date_add($due_date, date_interval_create_from_date_string('14 days'));
        $date_borrow = date_create_from_format('d-m-Y', $date_borrow);
        $date_return = date_create_from_format('d-m-Y', $date_return);

        return [
            'book_id' => mt_rand(1,100),
            'member_id' => mt_rand(1,50),
            'admin_id' => mt_rand(1,5),
            'date_borrow' => $date_borrow,
            'due_date' => $due_date,
            // 'date_return' => $date_return
        ];
    }
}
