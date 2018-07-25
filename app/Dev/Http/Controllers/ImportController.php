<?php

namespace App\Dev\Http\Controllers;

use App\Core\Services\Interfaces\UploadServiceInterface;
use App\Core\Dao\SDB;
use App\Core\Entities\DataResultCollection;
use App\Core\Helpers\CommonHelper;
use App\Core\Helpers\ResponseHelper;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Maatwebsite\Excel\Facades\Excel;
use Maatwebsite\Excel\Writers\LaravelExcelWriter;
use Illuminate\Support\Facades\Input;
use File;
use DB;

class ImportController extends Controller
{
//        Excel::load('file.xls', function($reader) {
//            // reader methods
//        });

    public function getImport(){
        return view('dev.import');
    }


    public function import(Request $request){

        // dd($request);
    	if(Input::hasFile('imported-file')){
			$path = Input::file('imported-file')->getRealPath();
			$data = Excel::load($path, function($reader) {
			})->get();

			// dd($data);

			if(!empty($data) && $data->count()){
				foreach ($data as $key => $value) {
					$insert[] = ['name' => $value->name];
				}
				if(!empty($insert)){
					DB::table('catelory')->insert($insert);
		      	}
			}
		}
		return back();

	    // if($request->file('imported-file')){
     //        $path = $request->file('imported-file')->getRealPath();
     //        $data = Excel::load($path, function($reader){
     //        })->get();
     //      dd($path);

     //      if(!empty($data) && $data->count()){
     //        foreach ($data->toArray() as $row){

     //          if(!empty($row)){
     //            $dataArray[] =[
     //              'name' => $row['name'],
     //              // 'item_code' => $row['code'],
     //              // 'item_price' => $row['price'],
     //              // 'item_qty' => $row['quantity'],
     //              // 'item_tax' => $row['tax'],
     //              // 'item_status' => $row['status'],
     //              // 'created_at' => $row['created_at']
     //            ];
     //          }
     //      }

     //      if(!empty($dataArray))
     //      {
     //         DB::table('catelory')::insert($dataArray);
     //         return back();
     //       }
     //     }
     //   }
     //   else{
     //   	return "false";
     //   }
   	}
}

