<?php

namespace App\Services\Production;

use App\Services\Interfaces\UserInterface;
use App\Models\User;

class UserService extends BaseService implements UserInterface
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
        return $user->update($inputs);
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
}
