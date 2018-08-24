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
    public function delete($id)
    {
        DB::table("users")->where("id",$id)->update(["is_deleted"=>1]);
        DB::table("users_detail")->where("id",$id)->update(["is_deleted"=>1]);
    }
    public function deleteAll($arrUser)
    {
        foreach($arrUser as $id) {
            DB::table("users")->where("id",$id)->update(["is_deleted"=>1]);
            DB::table("users_detail")->where("user_id",$id)->update(["is_deleted"=>1]);
        }
    }
}
