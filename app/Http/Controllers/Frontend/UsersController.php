<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Frontend\Controller as FrontendController;
use App\Http\Requests\Frontend;
use App\Models\Book;
use App\Services\Interfaces\UserInterface;
use App\Models\User;
use Illuminate\Http\Request;

class UsersController extends FrontendController
{
    /**
     * @var UserInterface
     */
    protected $userService;

    /**
     * Constructor
     */
    public function __construct(UserInterface $userService)
    {
        $this->userService = $userService;
    }

    /**
     * List users page
     *
     * GET /users
     */
    public function index()
    {
        $users = User::paginate();
        return view('frontend.users.index', compact('users'));
    }

    /**
     * Create user page
     *
     * GET /users/create
     */
    public function create()
    {
        return view('frontend.users.create');
    }

    /**
     * Process create user request
     *
     * POST /users
     *
     * @param App\Http\Requests\Frontend\CreateUserRequest $request
     */
    public function store(Frontend\CreateUserRequest $request)
    {
        if ($this->userService->create($request->except('_token'))) {
            $request->session()->flash('message-success', trans('Create user succesfully.'));
            return redirect(route('users.index'));
        }

        abort(500, trans('Create user failed. Please try later.'));
    }

    /**
     * Show user page
     *
     * GET /users/{user}
     *
     * @param User $user
     */
    public function show(User $user)
    {
        return view('frontend.users.show', compact('user'));
    }

    /**
     * Edit user page
     *
     * GET /users/{user}/edit
     *
     * @param User $user
     */
    public function edit(User $user)
    {
        return view('frontend.users.edit', compact('user'));
    }

    /**
     * Process update user request
     *
     * PUT /users/{user}
     *
     * @param User $user
     */
    public function update(User $user, Frontend\UpdateUserRequest $request)
    {
        if ($this->userService->update($user, $request->except(['_method', '_token']))) {
            $request->session()->flash('message-success', trans('Update user succesfully.'));
            return redirect(route('users.index'));
        }

        abort(500, trans('Create user failed. Please try later.'));
    }

    /**
     * Destroy user
     *
     * DELETE /users/{user}
     *
     * @param User $user
     */
    public function destroy(User $user)
    {
        if ($this->userService->delete($user)) {
            session()->flash('message-warning', trans('Delete user succesfully.'));
            return redirect(route('users.index'));
        }

        abort(500, trans('Delete user failed. Please try later.'));
    }

    public function listBook()
    {
        $books = Book::all();
        $users = User::all()->pluck('name', 'id');

        return view('frontend.users.borrow', compact('users', 'books'));
    }

    public function borrowBook(Frontend\BorrowBookRequest $request)
    {
        if ($this->userService->borrowBook($request->except(['_token']))) {
            $request->session()->flash('message-success', trans('Borrow book succesfully.'));
            return redirect(route('users.index'));
        }

        abort(500, trans('Borrow book failed. Please try later.'));
    }
}
