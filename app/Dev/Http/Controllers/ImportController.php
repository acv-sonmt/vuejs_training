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

    public function getImport()
    {
        return view('dev.import');
    }

    public function import(Request $request)
    {
        if (Input::hasFile('imported_file')) {
            $path = Input::file('imported_file')->getRealPath();
            Excel::load(Input::file('imported_file'), function ($file) {
                $data = DB::table('users')->get();

                Excel::create('file', function ($excel) use ($data , $file) {
                    $exportData = json_decode(json_encode($data), true);

                    // đang check lại
                    for ($i=0; $i < 2 ; $i++) { 
                        $sheet1 = $file->setActiveSheetIndex($i);
                        $sheet1->fromArray($exportData, null, 'F8', true);
                        $excel->addExternalSheet($sheet1);
                        }
                    
                })->export('xls');
            });
        }
        
        return back();
    }
}

