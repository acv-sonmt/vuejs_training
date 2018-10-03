<?php
/**
 * Created by PhpStorm.
 * User: MSI
 * Date: 8/3/2018
 * Time: 10:59 AM
 */

namespace App\Dev\Http\Controllers;

use App\Core\Common\SDBStatusCode;
use App\Core\Helpers\CommonHelper;
use App\Dev\Helpers\ResponseHelper;
use App\Dev\Services\Interfaces\TranslateServiceInterface;
use Validator;
use Illuminate\Http\Request;
use App\Dev\Entities\DataResultCollection;

class TranslationController
{
    protected $service;
    public function __construct(TranslateServiceInterface $translateService)
    {
        $this->service = $translateService;
    }

    public function translationManagement()
    {
        //form CRUD translate text
        $langListFromDB = $this->service->getLanguageCodeList();
        $dataTransFromDB = $this->service->getTranslateList('', '');
        $langList = ($langListFromDB->status == SDBStatusCode::OK)?$langListFromDB->data:array();
        $dataTrans = ($dataTransFromDB->status == SDBStatusCode::OK && !empty($dataTransFromDB->data['infor_arr']))?$this->refactorDataTrans(CommonHelper::flatten($dataTransFromDB->data['value_arr'])):array();
        $dataComboFilter = $this->service->getNewTransComboList();
        return view("dev/translation", compact(['dataTrans', 'langList', 'dataComboFilter']));
    }
    public function createNewTranslationItem(Request $request)
    {
        $validator =
            Validator::make($request->all(), [
                'text_code' => 'required'
            ]);

        if ($validator->fails()) {
            $error = $validator->errors();
            $dataResult = new DataResultCollection();
            $dataResult->status = SDBStatusCode::WebError;
            $dataResult->data = $error;
            return ResponseHelper::JsonDataResult($dataResult);

        } else {
            $transType = $request->input('trans_type');
            $transTextCode = $request->input('text_code');
            $textTrans = $request->input('text_trans');
            $dataFromDB = $this->service->insertTranslationItem($transType, $transTextCode, $textTrans);
            return ResponseHelper::JsonDataResult($dataFromDB);
        }
    }
    public function deleteTranslate(Request $request)
    {
        $code = $request->code;
        $lang = $request->lang;
        $deleteResult = $this->service->deleteTranslate($lang,$code);
        return ResponseHelper::JsonDataResult($deleteResult);
    }
    public function updateTranslate(Request $request)
    {
        $lang = $request->input('lang');
        $code = $request->input('code');
        $transText = $request->input('text');
        $result =  $this->service->updateTranslateText($lang,$code, $transText);
        return ResponseHelper::JsonDataResult($result);
    }

    public function newTextTrans()
    {
        $langListFromDB = $this->service->getLanguageCodeList();
        $langList = ($langListFromDB->status == SDBStatusCode::OK)?$langListFromDB->data:array();
        $comboList = $this->service->getNewTransComboList();
        return view("dev/addtranslate", compact(['langList', 'comboList']))->renderSections()['content'];
    }
    public function generationLanguageFiles()
    {
        $this->service->generationTranslateFileAndScript();
    }
    public function importTranslateToDB()
    {
        $result =  new DataResultCollection();
        $initTransType  = $this->service->initTranslateType();
        $importTrans = $this->service->generationTransDataToDB();
        if($initTransType->status == SDBStatusCode::OK && $importTrans->status == SDBStatusCode::OK){
            $result->status = SDBStatusCode::OK;
        }else{
            $result->status = SDBStatusCode::Excep;
            $result->message = $initTransType->message.",".$importTrans->message;
        }
    }

    protected function refactorDataTrans($data){
        $result=  [];
        foreach ($data as $key=>$value){
            $result[$key] = array(
                'key_list'=>explode('.',$key),
                'value'=>$value
            );
        }
        return $result;
    }
}
