<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Relations\Pivot;

class author_book extends Pivot
{
    protected $guarded = ['id'];

    public function authors(){
        return $this->belongsTo(Author::class);
    }

    public function books(){
        return $this->belongsTo(Book::class);
    }
}
