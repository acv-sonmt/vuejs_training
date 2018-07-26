<?php

namespace App\Dev\Http\Controllers;

use App\Http\Controllers\Controllers;
use Illuminate\Http\Request;
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
    	if(Input::hasFile('imported-file')){
			$path = Input::file('imported-file')->getRealPath();

			$data = Excel::load($path, function($reader) {
			})->get();

			dd($data);

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
   	}

    public function export(){
        $export = DB::table('users')->get();
        Excel::create('users',function($excel) use($export){
            $excel->sheet('Sheet 1', function($sheet) use($export){
                $exportData = json_decode( json_encode($export),true);
                $sheet->fromArray($exportData,'B5','B5',true);
            });
        })->export('xlsx');
    }
}
