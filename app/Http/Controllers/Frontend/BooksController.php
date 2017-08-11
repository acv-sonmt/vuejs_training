<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Frontend\Controller as FrontendController;
use App\Http\Requests\Frontend;
use App\Services\Interfaces\BookInterface;
use App\Models\Book;
use App\Models\User;

class BooksController extends FrontendController
{
    /**
     * @var BookInterface
     */
    protected $bookService;

    /**
     * Constructor
     */
    public function __construct(BookInterface $bookService)
    {
        $this->bookService = $bookService;
    }

    /**
     * List books page
     *
     * GET /books
     */
    public function index()
    {
        $books = Book::paginate();
        return view('frontend.books.index', compact('books'));
    }

    /**
     * Create book page
     *
     * GET /books/create
     */
    public function create()
    {
        $users = User::all()->pluck('name', 'id');
        return view('frontend.books.create', compact('users'));
    }

    /**
     * Process create book request
     *
     * POST /books
     *
     * @param App\Http\Requests\Frontend\BookRequest $request
     */
    public function store(Frontend\BookRequest $request)
    {
        if ($this->bookService->create($request->except('_token'))) {
            $request->session()->flash('message-success', trans('Create book succesfully.'));
            return redirect(route('books.index'));
        }

        abort(500, trans('Create book failed. Please try later.'));
    }

    /**
     * Show book page
     *
     * GET /books/{book}
     *
     * @param Book $book
     */
    public function show(Book $book)
    {
        return view('frontend.books.show', compact('book'));
    }

    /**
     * Edit book page
     *
     * GET /books/{book}/edit
     *
     * @param Book $book
     */
    public function edit(Book $book)
    {
        $users = User::all()->pluck('name', 'id');
        return view('frontend.books.edit', compact('book', 'users'));
    }

    /**
     * Process update book request
     *
     * PUT /books/{book}
     *
     * @param Book $book
     */
    public function update(Book $book, Frontend\BookRequest $request)
    {
        if ($this->bookService->update($book, $request->except(['_method', '_token']))) {
            $request->session()->flash('message-success', trans('Update book succesfully.'));
            return redirect(route('books.index'));
        }

        abort(500, trans('Create book failed. Please try later.'));
    }

    /**
     * Destroy book
     *
     * DELETE /books/{book}
     *
     * @param Book $book
     */
    public function destroy(Book $book)
    {
        if ($this->bookService->delete($book)) {
            session()->flash('message-warning', trans('Delete book succesfully.'));
            return redirect(route('books.index'));
        }

        abort(500, trans('Delete book failed. Please try later.'));
    }
}
