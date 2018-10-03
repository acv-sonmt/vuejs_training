<?php
/**
 * @author SonMT
 * Date: 8/23/2018
 * 
 */

namespace App\Dev\Http\Controllers;

use App\Core\Common\SDBStatusCode;
use App\Dev\Helpers\ResponseHelper;
// use App\Dev\Services\Interfaces\TranslateServiceInterface;
use Validator;
use Illuminate\Http\Request;
use App\Dev\Entities\DataResultCollection;
use DB;


class RoleController extends Controller
{
	public function roleManagement(Request $request)
	{
		$roles = DB::table('sys_roles')->get();
		return view('dev.roles', compact('roles'));
	}

	public function getCreateNewRoleItem()
	{
		return view('dev/addrole');
	}


	public function createNewRoleItem(Request $request)
	{
		$validator =
            Validator::make($request->all(), [
                'name' => 'required',
                'role_value' => 'required',    
            ]);
        $dataResult = new DataResultCollection();
        if ($validator->fails()) {
            $error = $validator->errors();
            
            $dataResult->status = SDBStatusCode::WebError;
            $dataResult->data = $error;

        } else {
            $create = DB::table('sys_roles')->insert($request->all());
             
            $dataResult->status = SDBStatusCode::OK;

        }
        return ResponseHelper::JsonDataResult($dataResult);
	}

	public function getEditRoleItem(Request $request)
	{
		$id= $request->id;
		$edit = DB::table('sys_roles')->where("id",$id)->get();
		$edit = $edit[0];
		return view('dev/editrole', compact('edit'));
	}

	public function updateRole(Request $request)
	{	
		$id = $request->id;
		$edit = DB::table('sys_roles')->where("id",$id)->update([
			"name" => $request->name,
			"role_value" => $request->role_value,
			"description" => $request->description
		]);

		return response()->json($edit);
		
	}

	public function deleteRole(Request $request)
	{	

		$id = $request->id;
	
        DB::table('sys_roles')->where("id",$id)->delete();
     	
        return response()->json(['done']);
	}


}