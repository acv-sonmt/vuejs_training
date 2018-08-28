<?php

namespace App\Backend\Http\Controllers;
use Illuminate\Support\Facades\Route;
use App\Core\Entities\DataResultCollection;
use App\Core\Services\Interfaces\UploadServiceInterface;
use App\Core\Common\SDBStatusCode;
use App\Core\Common\UploadConst;
use Illuminate\Support\Facades\Storage;
use App\Backend\Services\Interfaces\UserServiceInterface;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;

class UserController
{
	protected $service;
    protected $uploadService;
    public function __construct(UserServiceInterface $userService,UploadServiceInterface $uploadService)
    {
        $this->service       = $userService;
        $this->uploadService = $uploadService;
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
    public function addPost(Request $request)
    {   
        $image = $request->file("image");
        $result =  new DataResultCollection();
        $rule = [
            'required',
            'mimes:' . UploadConst::FILE_IMAGE_UPLOAD_ACCESSED,
            'image',
            'max:' . UploadConst::BACKEND_UPLOAD_IMAGE_MAX
        ];
        $message_rule = [
            '*.mimes' => 'Mime not Allowed'
        ];
        $validator = Validator::make(array($image), $rule,$message_rule);
        if (!$validator->fails()) {
            $result = $this->uploadService->uploadFile(array($image),'public','uploads/avatars','');
        } else {
            $error = array($validator->errors());
            $result->status = SDBStatusCode::ValidateError;
            $result->message = 'An error occured while uploading avatar!';
            $result->data =$error;
        }
        dd($result);
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
