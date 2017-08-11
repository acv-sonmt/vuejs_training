<?php

namespace App\Services\Interfaces;

use App\Models\Book;

interface BookInterface
{
    public function create(array $inputs);
    public function update(Book $book, array $inputs);
    public function delete(Book $book);
}
