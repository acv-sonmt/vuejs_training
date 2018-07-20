<?php

namespace App\Backend\Http\Controllers;

use App\Backend\Services\Interfaces\UploadServiceInterface;
use App\Core\Dao\SDB;
use App\Core\Entities\DataResultCollection;
use App\Core\Helpers\CommonHelper;
use App\Core\Helpers\ResponseHelper;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Maatwebsite\Excel\Facades\Excel;
use Maatwebsite\Excel\Writers\LaravelExcelWriter;

class TemplateController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    protected $uploadService;

    public function __construct(UploadServiceInterface $uploadService)
    {
        $this->uploadService = $uploadService;
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

    public function form()
    {
        return view('backend.template.form');
    }

    public function components()
    {
        return view('backend.template.component');
    }

    public function buttons()
    {
        return view('backend.template.button');
    }

    public function upload()
    {
        return view('backend.template.upload');
    }

    public function doUpload(Request $request)
    {
        $files = $request->allFiles();
        $result =  new DataResultCollection();
        $rule = [
            "*"=>$this->getImageRules(),
        ];
        $message_rule = [
            '*.mimes' => 'Mime not Allowed'
        ];
        $validator = Validator::make($request->allFiles(), $rule,$message_rule);
        if (!$validator->fails()) {
            $result = $this->uploadService->uploadLocal($files);
        } else {
            $error = array($validator->errors());
            $result->status = \SDBStatusCode::ValidateError;
            $result->message = 'An error occured while uploading the file.';
            $result->data =$error;
        }

        return ResponseHelper::JsonDataResult($result);
    }

    public function generalElement()
    {
        return view('backend.template.generalElement');
    }

    public function icons()
    {
        return view('backend.template.icons');
    }

    public function glyphicons()
    {
        return view('backend.template.glyphicons');
    }

    public function calendar()
    {
        return view('backend.template.calendar');
    }

    public function tables()
    {
        return view('backend.template.table');
    }

    public function exports()
    {
        return view('backend.template.export');
    }

    /**
     * @return mixed
     * use Maatwebsite\Excel\Excel v2.0
     */
    public function doExports()
    {
        $data = SDB::execSPsToDataResultCollection('ACL_GET_MODULES_LST', array());
        $dataArr = $data->dataToArray();
        $excelTemplatePath = CommonHelper::getExcelTemplatePath() . "\\backend\\template1.xlsx";
        $reader = Excel::load($excelTemplatePath);
        Excel::create('Filename', function (LaravelExcelWriter $excel) use ($dataArr, $reader) {
            $excel->sheet('New sheet', function (\PHPExcel_Worksheet $sheet) use ($dataArr) {
                $sheet->fromArray($dataArr);
            });
        })->export('xlsx');

        return 'dsds';
    }

    /**
     * Rules for image
     *
     * @return array
     */
    protected function getImageRules()
    {
        return [
            'required',
            'mimes:' . \UploadConst::FILE_IMAGE_UPLOAD_ACCESSED,
            'image',
            'max:' . \UploadConst::BACKEND_UPLOAD_IMAGE_MAX
        ];
    }
}
