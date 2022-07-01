<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Book extends Model
{
    use HasFactory, Sluggable;

    protected $guarded = ['id'];

    protected $with = ['authors', 'category'];

    // public function scopeOrderBook($query, array $orders){
    //     $query->when($orders ?? false, function($query, $orders){
    //         return $query->orderBy($orders['sort'], $orders['dir']);
    //     }, function($query){
    //         return $query->orderBy('title');
    //     });
    // }

    public function scopeFilter($query, array $filters){
        $query->when($filters['category'] ?? false, function ($query, $category){
            return $query->whereHas('category', function($query) use ($category){
                $query->where('slug', $category);
            });
        });

        $query->when($filters['year'] ?? false, function($query, $year){
            return $query->where('publication_year', $year);
        });

        $query->when($filters['search'] ?? false, function($query, $search){
            return $query->where(function($query) use($search){
                $query->where('title', 'like', '%' . $search . '%')
                    ->orWhere('slug', 'like', '%' . $search . '%')
                    ->orWhere('publication_year', 'like', '%' . $search . '%')
                    ->orWhere('synopsis', 'like', '%' . $search . '%')
                    ->orWhere('copies_left', 'like', '%' . $search . '%')
                    ->orWhereHas('authors', function($query) use($search){
                        $query->where('name', 'like', '%' . $search . '%');
                    });
            });
        });
    }

    public function authors(){
        return $this->belongsToMany(Author::class);
    }

    public function category(){
        return $this->belongsTo(Category::class);
    }

    public function loans(){
        return $this->hasMany(Loan::class);
    }

    public function getRouteKeyName(){
        return 'slug';
    }

    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }
}
