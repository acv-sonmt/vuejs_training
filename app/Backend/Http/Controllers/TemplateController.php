<?php

namespace App\Backend\Http\Controllers;

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
        $this->executeSchedule();
        //return view('backend.template.index');
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
        $diskLocalName = 'public';
        $fileList = Storage::disk($diskLocalName)->allFiles('uploads/templates');
        $fileLocalInforList = array();
        if(!empty($fileList)){
            foreach ($fileList as $path){
                $fileLocalInforList[] = array(
                    'url'=>Storage::disk($diskLocalName)->url($path),
                    'path'=>$path
                );
            }
        }

        return view('backend.template.upload',compact('fileLocalInforList'));
    }
    public function getImageFromS3(){
        $result = new DataResultCollection();
        $result->status = \SDBStatusCode::OK;
        $diskS3Name = 's3';
        $fileList = Storage::disk($diskS3Name)->allFiles('uploads/templates');
        $fileS3InforList = array();
        if(!empty($fileList)){
            foreach ($fileList as $path){
                $fileS3InforList[] = array(
                    'url'=>Storage::disk($diskS3Name)->url($path),
                    'path'=>$path
                );
            }
        }
        $result->data = $fileS3InforList;
        return ResponseHelper::JsonDataResult($result);
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
            $result = $this->uploadService->uploadFile($files,'public','uploads/templates','');
        } else {
            $error = array($validator->errors());
            $result->status = \SDBStatusCode::ValidateError;
            $result->message = 'An error occured while uploading the file.';
            $result->data =$error;
        }

        return ResponseHelper::JsonDataResult($result);
    }
    public function doUploadS3(Request $request)
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
            $result = $this->uploadService->uploadFile($files,'s3','uploads/templates','public');
        } else {
            $error = array($validator->errors());
            $result->status = \SDBStatusCode::ValidateError;
            $result->message = 'An error occured while uploading the file.';
            $result->data =$error;
        }

        return ResponseHelper::JsonDataResult($result);
    }
    public function doDeleteFile(Request $request){
        $fileUrl =  $request->input('path');
        $result = $this->uploadService->deleteFile('public',$fileUrl);
        return ResponseHelper::JsonDataResult($result);
    }
    public function doDeleteFileS3(Request $request){
        $fileUrl =  $request->input('path');
        $result = $this->uploadService->deleteFile('s3',$fileUrl);
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
    public function executeSchedule(){
        Storage::disk('public')->append('test_schedule/test.txt',"test"."\n");
        $cronTabPath =  storage_path('cronjob/task_list.txt');
        $exec = "echo 123456 | /usr/bin/sudo -S your command";
        exec($exec,$out,$rcode);
        Storage::disk('public')->append('test_schedule/test.txt',"File is already to write"."\n\n");
        exec( '/usr/bin/crontab '.$cronTabPath );
        //exec('service crond start');
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
