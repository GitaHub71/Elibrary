<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Author extends Model
{
    use HasFactory, Sluggable;

    protected $guarded = ['id'];


    // public function scopeOrderAuthor($query, array $orders){
    //     $query->when($orders ?? false, function($query, $orders){
    //         return $query->orderBy($orders['sort'], $orders['dir']);
    //     }, function($query){
    //         return $query->orderBy('name');
    //     });
    // }

    public function scopeFilter($query, array $filters){
        $query->when($filters['search'] ?? false, function($query, $search){
            return $query->where('name', 'like', '%' . $search . '%')
                ->orWhere('date_born', 'like', '%' . $search . '%')
                ->orWhere('bio', 'like', '%' . $search . '%')
                ->orWhereHas('books', function($query) use($search){
                    $query->where('title', 'like', '%' . $search . '%')
                        ->orWhere('publication_year', 'like', '%' . $search . '%')
                        ->orWhereHas('category', function($query) use($search){
                            $query->where('name', 'like', '%' . $search . '%');
                        });
                });
        });

        $query->when($filters['category'] ?? false, function($query, $category){
            return $query->whereHas('books', function($query) use($category){
                $query->whereHas('category', function($query) use($category){
                    $query->where('slug', $category);
                });
            });
        });
    }


    //relationship books
    public function books(){
        return $this->belongsToMany(Book::class);
    }
    
    public function getRouteKeyName(){
        return 'slug';
    }

    //method sluggable
    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'name'
            ]
        ];
    }
}
