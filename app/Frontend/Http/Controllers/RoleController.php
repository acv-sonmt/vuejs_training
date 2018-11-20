<?php
/**
 * Created by PhpStorm.
 * User: SonMT
 * Date: 11/20/2018
 * Time: 9:33 AM
 */

namespace App\Frontend\Http\Controllers;

use Illuminate\Support\Facades\DB;


class RoleController
{
    public function listRoles(){
        $header = [
            'name'=>'Tên quyền',
            'description'=>'Mô tả',
        ];
        $data = DB::table('roles')->select(array_keys($header))->get();
        return ['tbody'=>$data, 'thead'=>array_values($header)];
    }

}