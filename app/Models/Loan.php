<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Loan extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    protected $with = ['book', 'member', 'admin'];

    public function scopeJoinOrder($query, array $orders){

        $query->when($orders ?? false, function($query, $orders){
            switch ($orders['sort']) {
                case 'username':
                    return $query
                        ->join('members', 'loans.member_id', '=', 'members.id')
                        ->select('loans.*', 'members.username')
                        ->orderBy('members.username', $orders['dir']);

                case 'title':
                    return $query
                        ->join('books', 'loans.book_id', '=', 'books.id')
                        ->select('loans.*', 'books.title')
                        ->orderBy('books.title', $orders['dir']);

                case 'admin':
                    return $query
                        ->join('admins', 'loans.admin_id', '=', 'admins.id')
                        ->select('loans.*', 'admins.name')
                        ->orderBy('admins.name', $orders['dir']);
                
                default:
                    return $query->orderBy($orders['sort'], $orders['dir']);
            }
        });
    }

    public function scopeFilter($query, array $filters){
        $query->when($filters['date_borrow'] ?? false, function($query, $date_borrow){
            return $query->where('date_borrow', '>=', $date_borrow);
        });

        $query->when($filters['date_return'] ?? false, function($query, $date_return){
            return $query->when($date_return == 'not returned' ? true : false, function($query){
                $query->where('date_return', null);
            }, function($query) use ($date_return){
                $query->where('date_return', '>=', $date_return);
            });
        });

        $query->when($filters['admin'] ?? false, function($query, $admin){
            return $query->where('admin_id', $admin);
        });

        $query->when($filters['search'] ?? false, function($query, $search){
            return $query->whereHas('member', function($query) use($search){
                $query->where('username', 'like', '%' . $search . '%');
            })->orWhereHas('book', function($query) use($search){
                $query->where('title', 'like', '%' . $search . '%');
            })->orWhereHas('admin', function($query) use($search){
                $query->where('name', 'like', '%' . $search . '%');
            })->orWhere('date_borrow', 'like', '%' . $search . '%')
            ->orWhere('due_date', 'like', '%' . $search . '%')
            ->orWhere(function($query) use($search){
                $query->when($search == 'not returned', function($query) use($search){
                    $query->where('date_return', null);
                }, function($query) use($search){
                    $query->where('date_return', 'like', '%' . $search . '%');
                });
            });
        });

        // $query->when($filters['category'] ?? false, function($query, $category){
        //     return $query->whereHas('book', function($query) use ($category){
        //         $query->whereHas('category', function($query) use ($category){
        //             $query->where('slug', $category);
        //         });
        //     });
        // });
    }

    public function book(){
        return $this->belongsTo(Book::class);
    }

    public function member(){
        return $this->belongsTo(Member::class);
    }

    public function admin(){
        return $this->belongsTo(Admin::class);
    }
}
