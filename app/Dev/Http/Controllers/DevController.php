<?php
/**
 * @author thanhnv
 */

namespace App\Dev\Http\Controllers;
use App\Core\Dao\SDB;
use App\Dev\Entities\DataResultCollection;
use App\Dev\Rules\UpperCaseRule;
use App\Dev\Services\Interfaces\DevServiceInterface;
use App\Dev\Helpers\ResponseHelper;
use App\Dev\Helpers\CommonHelper;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Validator;

class DevController extends Controller
{
    protected $devService;

    /**
     * Constructor
     */
    public function __construct(DevServiceInterface $devService)
    {
        $this->devService = $devService;
    }

    public function translationManagement()
    {
        //form CRUD translate text
        $langListFromDB = $this->devService->getLanguageCodeList();
        $dataTransFromDB = $this->devService->getTranslateList('', '');
        $langList = ($langListFromDB->status == \SDBStatusCode::OK)?$langListFromDB->data:array();
        $dataTrans = ($dataTransFromDB->status == \SDBStatusCode::OK)?$dataTransFromDB->data:array();
        $dataComboFilter = $this->devService->getNewTransComboList();
        return view("dev/translation", compact(['dataTrans', 'langList', 'dataComboFilter']));
    }

    public function createNewTranslationItem(Request $request)
    {
        $validator =
            Validator::make($request->all(), [
                'text_code' => 'required'
            ]);

        if ($validator->fails()) {
            $error = array($validator->errors());
            $dataResult = new DataResultCollection();
            $dataResult->status = \SDBStatusCode::WebError;
            $dataResult->data = $error;
            return ResponseHelper::JsonDataResult($dataResult);

        } else {
            $transType = $request->input('trans_type');
            $transInputType = $request->input('trans_input_type');
            $transTextCode = $request->input('text_code');
            $textTrans = $request->input('text_trans');
            $dataFromDB = $this->devService->insertTranslationItem($transType, $transInputType, $transTextCode, $textTrans);
            return ResponseHelper::JsonDataResult($dataFromDB);
        }

    }

    public function generationLanguageFiles()
    {
        $this->devService->generationTranslateFileAndScript();

    }

    public function generationAclConfigFiles()
    {
        $this->devService->generationAclFile();
    }


    public function importScreensList()
    {
        $this->devService->initRoleDataToDB();
    }

    public function importTranslateToDB()
    {
        $this->devService->generationTransDataToDB();
    }

    public function initProject()
    {
        $this->devService->generateEntityClass();
        $this->devService->initRoleDataToDB();
        $this->devService->generationAclFile();
        //generationTranslate validation
        $this->devService->generationTranslateFileAndScript();
    }
    public function refreshAclDB(){
       $this->devService->generationRoleDataToDB();
    }

    public function readAclConfig()
    {
        $a = $this->devService->getConfigDataFromFile('acl');
        echo '<prev>';
        print_r($a);
    }

    public function index()
    {
        return view("dev/index");
    }

    public function generationAclFile()
    {
        $this->devService->generationAclFile();
        return null;
    }

    public function aclManangement()
    {
        $dataAcl = $this->devService->getRoleInfoFromDB();
        $roleList =  $this->devService->getRoleList();
        $moduleList =$this->devService->getModuleList();
        return view("dev/acl", compact(['dataAcl','roleList','moduleList']));
    }

    public function updateAclActive(Request $request)
    {
        $active = $request->input('active');
        $roleMapId = $request->input('role_map_id');
        $isActive = 0;
        if (isset($active) && strtolower($active) == 'true') {
            $isActive = 1;
        }
        $this->devService->updateActiveAcl($roleMapId, $isActive);
        return CommonHelper::convertVaidateErrorToCommonStruct(array());
    }
    public function updateAclActiveAll(Request $request){
        $active = $request->input('active');
        $isActive = 0;
        if (isset($active) && strtolower($active) == 'true') {
            $isActive = 1;
        }
        $this->devService->updateActiveAclAll( $isActive);
        return CommonHelper::convertVaidateErrorToCommonStruct(array());
    }
    public function updateTranslate(Request $request)
    {
        $id = $request->input('id');
        $transText = $request->input('text');
        $this->devService->updateTranslateText($id, $transText);
        return null;
    }

    public function newTextTrans()
    {
        $langListFromDB = $this->devService->getLanguageCodeList();
        $langList = ($langListFromDB->status == \SDBStatusCode::OK)?$langListFromDB->data:array();
        $comboList = $this->devService->getNewTransComboList();
        return view("dev/addtranslate", compact(['langList', 'comboList']))->renderSections()['content'];
    }

    public function testCustomValidate(Request $request)
    {
        $validator =
            Validator::make($request->all(), [
                'text_code' => ['required', new UpperCaseRule()]
            ]);
        if ($validator->fails()) {
            dd($validator->errors());
        }
    }
    public function entityManagement(){
        $listSPCollection =  $this->devService->getAllSPList();
        $listSp = $listSPCollection->status==\SDBStatusCode::OK?$listSPCollection->data:array();
        return view("dev/entitymanagement", compact('listSp'));
    }
    public function generateEntity()
    {
        $this->devService->generateEntityClass();
    }
    public function generateOneEntity(Request $request)
    {
        $spName = $request->input('name');
        $this->devService->generateSpecEntityClass($spName);
    }
    public function doc(){
        return view("dev/document");
    }
    public function log(){
        return view("dev/log");
    }
    public function userAcl(){
        return view("dev/useracl");
    }
    public function test()
    {
        echo '<pre>';
        $data=DB::table('sys_translation')->simplePaginate(15,null,'page',3);
        $data=DB::table('sys_translation')->simplePaginate(15,null,'page',4);
        $this->devService->test();
        print_r($data);
       // $this->devService->generationTranslateScript('validation','validation');
    }

}
