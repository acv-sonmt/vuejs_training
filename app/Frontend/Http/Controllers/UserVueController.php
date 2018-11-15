<?php
/**
 * Created by PhpStorm.
 * User: SonMT
 * Date: 11/14/2018
 * Time: 8:46 AM
 */

namespace App\Frontend\Http\Controllers;
use Illuminate\Support\Facades\DB;

class UserVueController
{
    public function index(){
        return view('frontend.user_vue');
    }

    public function listUser(){
        $users = DB::table('user')->get();
        return ($users);
    }

    public function genTable(){
        $thead = DB::select('select column_name from information_schema.columns where table_schema = "vuejs_test_db" and table_name ="user"');
        $tbody= DB::table('user')->get();
        $arr= array('thead'=>$thead, 'tbody'=>$tbody);
        return $arr;
    }

//    public function createUser(){
//        return view get
//    }
//    public function getAddFloor(Request $request)
//    {
//        return view("backend.floor.add");
//    }
//
//    public function postAddFloor(Request $request)
//    {
//        $result             = new DataResultCollection();
//        $rule               = ["name" => "required|min:3"];
//        $validator          = Validator::make($request->all(),$rule);
//        $storeId = 1;
//        $obj=array([
//            'store_id'=>$storeId,
//            'name'=>$request->name
//        ]);
//        if(!$validator->fails()){
//            $this->floorService->addFloor($obj);
//            $result->status   = SDBStatusCode::OK;
//            $result->message  = 'Success';
//        }else {
//            $error           = $validator->errors();
//            $result->status  = SDBStatusCode::ValidateError;
//            $result->message = 'An error occured when validate!';
//            $result->data    = $error;
//        }
//        return ResponseHelper::JsonDataResult($result);
//    }
}