<?php

namespace App\Backend\Http\Controllers;
use Illuminate\Support\Facades\Route;
use App\Backend\Services\Interfaces\UserServiceInterface;
use Validator;
use Illuminate\Http\Request;

class UserController
{
	protected $service;
    public function __construct(UserServiceInterface $userService)
    {
        $this->service = $userService;
    }
    public function getAll(){
    	$arrUser = $this->service->getAll();
    	return view("backend.users.list",["arrUser" => $arrUser]);
    }
}
