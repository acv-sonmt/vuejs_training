<?php

namespace App\Backend\Http\Controllers;
use App\Auth\Models\User;
use App\Core\Dao\SDB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;

class TemplateController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {

    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('backend.template.index');
    }
    public function form(){
        return view('backend.template.form');
    }
    public function components(){
        return view('backend.template.component');
    }
    public function buttons(){
        return view('backend.template.button');
    }
    public function upload(){
        return view('backend.template.upload');
    }
    public function generalElement(){
        return view('backend.template.generalElement');
    }
    public function icons(){
        return view('backend.template.icons');
    }
    public function glyphicons(){
        return view('backend.template.glyphicons');
    }
    public function calendar(){
        return view('backend.template.calendar');
    }
    public function exports(){
        return view('backend.template.export');
    }

    /**
     * @return mixed
     * use Maatwebsite\Excel\Excel v2.0
     */
    public function doExports(){
        $data = SDB::execSPsToDataResultCollection('ACL_GET_MODULES_LST',array());
        $dataArr =  $data->dataToArray();
        $excelObject = App::make('excel');
        $template =  $excelObject->load('file.xls', function($reader) {

            // reader methods

        });

        return $excelObject->create('users', function($excel) use($dataArr) {
            $excel->sheet('Sheet 1', function($sheet) use($dataArr) {
                $sheet->fromArray($dataArr);
            });
        })->export('xls');

    }
}
