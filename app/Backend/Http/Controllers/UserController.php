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
    public function getList(){
    	return view("backend.users.list");
    }
    public function paginate(){
    	$arrUser = $this->service->getAll();
    	return response()->json(["data" => $arrUser]);
    }
    public function add()
    {
        $arrRole = $this->service->getRole();
        return view("backend.users.add",["arrRole" => $arrRole]);
    }
    public function getById(Request $request){
        $user = $this->service->getById($request->id);
        $arrRole = $this->service->getRole();
        return view("backend.users.edit",[
            "user" => $user, 
            "arrRole" => $arrRole
        ]);
    }
    public function delete(Request $request){
        $this->service->delete($request->id);
    }
    public function deleteAll(Request $request){
        $this->service->deleteAll($request->arrUser);
    }
}
