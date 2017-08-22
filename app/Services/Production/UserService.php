<?php

namespace App\Services\Production;

use App\Services\Interfaces\UserServiceInterface;
use App\Models\User;

class UserService extends BaseService implements UserServiceInterface
{
    /**
     * Create new user
     *
     * @param array $inputs
     * @return User
     * @throws \Exception
     */
    public function create(array $inputs)
    {
        return User::create($inputs);
    }

    /**
     * Update user
     *
     * @param User $user
     * @param array $inputs
     * @return User
     * @throws \Exception
     */
    public function update(User $user, array $inputs)
    {
        $user->update($inputs);
        return $user;
    }

    /**
     * Delete user
     *
     * @param User $user
     * @return bool
     * @throws \Exception
     */
    public function delete(User $user)
    {
        return $user->delete();
    }

    /**
     * Borrow book
     *
     * @param array $inputs
     * @return bool
     * @throws \Exception
     */
    public function borrowBook(array $inputs) {
        $user = User::findOrFail($inputs['user_id']);

        return $user->books()->syncWithoutDetaching($inputs['book_id']);
    }
}
