<?php

namespace App\Models;

use App\Models\Model as AppModel;

class Book extends AppModel
{
    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [
        'created_at',
        'updated_at',
    ];

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'description',
        'image',
        'owner_id',
    ];

    /**
     * Get the user that owns the book.
     */
    public function owner()
    {
        return $this->belongsTo('App\Models\User', 'owner_id');
    }

    public function getImageAttribute()
    {
        if (!empty($this->attributes['image'])) {
            return url('upload') . '/' . $this->attributes['image'];
        } else {
            return url('upload') . '/' . 'no_book_cover.jpg';
        }
    }
}
