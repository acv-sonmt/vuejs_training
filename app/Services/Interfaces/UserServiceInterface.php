<?php

namespace App\Services\Interfaces;

use App\Models\User;

interface UserServiceInterface
{
    public function create(array $inputs);
    public function update(User $user, array $inputs);
    public function delete(User $user);
    public function borrowBook(array $inputs);
}
