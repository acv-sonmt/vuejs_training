<?php
/**
 * Created by PhpStorm.
 * User: SonMT
 * Date: 11/14/2018
 * Time: 8:46 AM
 */

namespace App\Frontend\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;


class UserVueController
{
    public function index(){
        return view('frontend.user_vue');
    }

    public function listUser(){
        $header = [
            'avatar'=>'Ảnh',
            'name'=>'Họ Tên',
            'sex'=>'GT',
            'dateofbirth'=>'Ngày sinh',
            'address'=>'Địa chỉ',
            'phone'=>'SĐT',
            'active'=>'Trạng thái',
        ];
        $data = DB::table('user')->select(array_keys($header))->get();
        return ['tbody'=>$data, 'thead'=>array_values($header)];
    }

//    public function genTable(Request $request){
//        $header = [
//            'avatar'=>'Ảnh',
//            'name'=>'Họ Tên',
//            'sex'=>'GT',
//            'dateofbirth'=>'Ngày sinh',
//            'address'=>'Địa chỉ',
//            'phone'=>'SĐT',
//            'active'=>'Trạng thái',
//        ];
//        $data = DB::table('user')->select(array_keys($header))->get();
//        return ['tbody'=>$data, 'thead'=>array_values($header)];
//    }

}