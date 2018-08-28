<?php

namespace App\Backend\Http\Controllers;
use Illuminate\Support\Facades\Route;
use App\Core\Entities\DataResultCollection;
use App\Core\Services\Interfaces\UploadServiceInterface;
use App\Core\Common\SDBStatusCode;
use App\Core\Common\UploadConst;
use Illuminate\Support\Facades\Storage;
use App\Backend\Services\Interfaces\UserServiceInterface;
use App\Core\Helpers\ResponseHelper;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Intervention\Image\ImageManagerStatic as Image;
use DateTime;

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
            "image" => "required|mimes:".UploadConst::FILE_IMAGE_UPLOAD_ACCESSED."|image|max:".UploadConst::BACKEND_UPLOAD_IMAGE_MAX,
            "name"  => "required|min:3|max:32",
            "date"  => "required|date",
            "email" => "required|email|unique:users",
            "pass"  =>"required|min:3|max:32",
        ];
        $message_rule = [
            '*.mimes' => 'Mime not Allowed'
        ];
        $validator = Validator::make($request->all(), $rule,$message_rule);
        if (!$validator->fails()) {
            $result = $this->uploadService->uploadFile(array($image),'public','uploads/avatars','');
        } else {
            $error = array($validator->errors());
            $result->status = SDBStatusCode::ValidateError;
            $result->message = 'An error occured while uploading avatar!';
            $result->data =$error;
        }
        dd($result);
        if($result->status=="OK"){
            foreach ($result->data as $data){
                $imageUrl = $data["url"];
            }
            $obj         = new \stdClass();
            $obj->image  = $imageUrl;
            $obj->name   = $request->name; 
            $obj->date   = $request->date;
            $obj->gender = $request->gender; 
            $obj->email  = $request->email;
            $obj->pass   = md5($request->pass);
            $obj->role   = $request->role;
            $this->service->insert($obj);
        }
        return ResponseHelper::JsonDataResult($result);
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
function resize_image($file, $w, $h, $crop=FALSE) {
    list($width, $height) = getimagesize($file);
    $r = $width / $height;
    if ($crop) {
        if ($width > $height) {
            $width = ceil($width-($width*abs($r-$w/$h)));
        } else {
            $height = ceil($height-($height*abs($r-$w/$h)));
        }
        $newwidth = $w;
        $newheight = $h;
    } else {
        if ($w/$h > $r) {
            $newwidth = $h*$r;
            $newheight = $h;
        } else {
            $newheight = $w/$r;
            $newwidth = $w;
        }
    }
    $src = imagecreatefromjpeg($file);
    $dst = imagecreatetruecolor($newwidth, $newheight);
    imagecopyresampled($dst, $src, 0, 0, 0, 0, $newwidth, $newheight, $width, $height);
    return $dst;
}
