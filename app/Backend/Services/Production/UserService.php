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
        $arrUser = DB::table("users")->get();
        return $arrUser;
    }
}
