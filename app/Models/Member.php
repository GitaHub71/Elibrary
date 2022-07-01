<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    use HasFactory;

    protected $guarded = ['id'];


    // public function scopeOrderMember($query, array $orders){
    //     $query->when($orders ?? false, function($query, $orders){
    //         return $query->orderBy($orders['sort'], $orders['dir']);
    //     }, function($query){
    //         return $query->orderBy('name');
    //     });
    // }

    public function scopeFilter($query, $search){
        $query->when($search ?? false, function($query, $search){
            return $query->where('name', 'like', '%' . $search . '%')
                ->orWhere('username', 'like', '%' . $search . '%')
                ->orWhere('email', 'like', '%' . $search . '%')
                ->orWhere('phone', 'like', '%' . $search . '%')
                ->orWhere('year_joined', 'like', '%' . $search . '%');
        });
    }

    
    public function getRouteKeyName(){
        return 'username';
    }

    public function loans(){
        return $this->hasMany(Loan::class);
    }
}
