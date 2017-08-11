<?php

namespace App\Services\Production;

use App\Services\Interfaces\BookServiceInterface;
use App\Models\Book;
use Image;

class BookService extends BaseService implements BookServiceInterface
{
    /**
     * Create new book
     *
     * @param array $inputs
     * @return Book
     * @throws \Exception
     */
    public function create(array $inputs)
    {
        if (isset($inputs['image'])) {
            $inputs['image'] = self::uploadImage($inputs['image']);
        }

        return Book::create($inputs);
    }

    /**
     * Update book
     *
     * @param Book $book
     * @param array $inputs
     * @return Book
     * @throws \Exception
     */
    public function update(Book $book, array $inputs)
    {
        if (isset($inputs['image'])) {
            $inputs['image'] = self::uploadImage($inputs['image']);
        }

        $book->update($inputs);
        return $book;
    }

    /**
     * Delete book
     *
     * @param Book $book
     * @return bool
     * @throws \Exception
     */
    public function delete(Book $book)
    {
        return $book->delete();
    }

    public function uploadImage($image) {
        $path = public_path('upload/');
        $filename  = time() . '.' . $image->getClientOriginalExtension();

        $image->move($path, $filename);

        return $filename;
    }
}
