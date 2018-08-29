<?php
/**
 * Created by PhpStorm.
 * User: MSI
 * Date: 8/3/2018
 * Time: 10:44 AM
 */

namespace App\Backend\Services\Production;

use DB;
use App\Core\Common\SDBStatusCode;
use App\Backend\Services\Interfaces\UserServiceInterface;
use Illuminate\Support\Facades\Lang;
class UserService extends BaseService implements UserServiceInterface
{
    /**
     * @param $validateArray
     * @param $fileName
     * HELPER: Generation Config File contain text translated.
     */
    public function getAll()
    {
        $arrUser = DB::table("users")
                        ->join("sys_roles","users.role_value","=","sys_roles.role_value")
                        ->where("users.is_deleted",0)
                        ->orderby("users.id","desc")
                        ->select("users.*","sys_roles.name as role")
                        ->paginate(5);
        return $arrUser;
    }
    public function getRole()
    {
        $arrRole = DB::table("sys_roles")->get();
        return $arrRole;
    }
    public function getById($id)
    {
        $user = DB::table("users")
                    ->join("users_detail","users.id","=","users_detail.user_id")
                    ->where([["users.is_deleted",0],["users.id",$id]])
                    ->select("users.*","users_detail.gender","users_detail.birth_date","users_detail.avatar")
                    ->get();
        return $user[0];
    } 
    public function insert($obj)
    {
        DB::table("users")->insert([
            "name"       => $obj->name,
            "email"      => $obj->email,
            "role_value" => $obj->role,
            "password"   => $obj->pass,
        ]);
        $id = DB::table("users")->where([["name",$obj->name],["email",$obj->email]])->select("id")->get();
        DB::table("users_detail")->insert([
            "user_id"    => $id[0]->id,
            "gender"     => $obj->gender,
            "birth_date" => $obj->date,
            "avatar"     => $obj->image
        ]);
    }
    public function delete($id)
    {
        DB::table("users")->where("id",$id)->update(["is_deleted"=>1]);
        DB::table("users_detail")->where("user_id",$id)->update(["is_deleted"=>1]);
    }
    public function deleteAll($arrUser)
    {
        foreach($arrUser as $id) {
            DB::table("users")->where("id",$id)->update(["is_deleted"=>1]);
            DB::table("users_detail")->where("user_id",$id)->update(["is_deleted"=>1]);
        }
    }
}
