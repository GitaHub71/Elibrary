<?php

namespace App\Rules;

use App\Models\Book;
use Illuminate\Contracts\Validation\Rule;

class BookAvailable implements Rule
{
    public $book;

    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct($value)
    {
        $this->book = Book::find($value);
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        return $this->book->copies_left > 0;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'No copy left for '.$this->book->title;
    }
}
