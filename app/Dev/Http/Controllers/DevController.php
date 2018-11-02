<?php
/**
 * @author thanhnv
 */

namespace App\Dev\Http\Controllers;
use App\Core\Dao\SDB;
use App\Core\MailSender\UserRegisterSender;
use App\Dev\Entities\DataResultCollection;
use App\Dev\Helpers\ResponseHelper;
use App\Core\ExtendValidationRules\UpperCaseRule;
use App\Dev\Services\Interfaces\AclServiceInterface;
use App\Dev\Services\Interfaces\DevServiceInterface;
use App\Dev\Services\Interfaces\TranslateServiceInterface;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Core\Common\SDBStatusCode;
use Illuminate\Support\Facades\Mail;
use Validator;

class DevController extends Controller
{
    protected $devService;
    protected $aclService;
    protected $translateService;

    /**
     * Constructor
     */
    public function __construct(DevServiceInterface $devService, AclServiceInterface $aclService , TranslateServiceInterface $translateService)
    {
        $this->devService = $devService;
        $this->aclService = $aclService;
        $this->translateService = $translateService;
    }
    public function initProject()
    {
        $this->aclService->initRoleDataToDB();
        $this->aclService->generationAclFile();
    }

    /**
     * test readAcl file
     */
    public function readAclConfig()
    {
        $a = $this->devService->getConfigDataFromFile('acl');
        echo '<prev>';
        print_r($a);
    }

    public function index()
    {
        $readyImportTransFromRemote = true;
        return view("dev/index",compact('readyImportTransFromRemote'));
    }

    public function testCustomValidate(Request $request)
    {
        $validator =
            Validator::make($request->all(), [
                'text_code' => ['required',new UpperCaseRule()]
            ]);
        if ($validator->fails()) {
            dd($validator->errors());
        }
    }
    public function entityManagement(){
        $listSPCollection =  $this->devService->getAllSPList();
        $listSp = $listSPCollection->status==SDBStatusCode::OK?$listSPCollection->data:array();
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
    public function importDataTranslationFromTest(){
        $result =  new DataResultCollection();
        try{
            $remoteConnection = SDB::connection('mysql_server_remote_translation');
            //get data remote
            $dataLangRemote = $remoteConnection->table('sys_languages')->get();
            $dataTransRemote = $remoteConnection->table('sys_translation')->get();
            $dataTransTypeRemote = $remoteConnection->table('sys_translate_type')->get();

            $dataLangInsert = json_decode(json_encode($dataLangRemote->toArray(),true),true);
            $dataTransInsert =  json_decode(json_encode($dataTransRemote->toArray(),true),true);
            $dataTransTypeInsert = json_decode(json_encode($dataTransTypeRemote->toArray(),true),true);
            SDB::beginTransaction();
            //truncate data translation in local
            SDB::table('sys_languages')->truncate();
            SDB::table('sys_translate_type')->truncate();
            SDB::table('sys_translation')->truncate();

            //Import data remove to local
            SDB::table('sys_languages')->insert($dataLangInsert);
            SDB::table('sys_translate_type')->insert($dataTransTypeInsert);
            SDB::table('sys_translation')->insert($dataTransInsert);
            SDB::commit();
            $result = $this->translateService->generationTranslateFileAndScript();
        }catch (\Exception $e){
            $result->status = SDBStatusCode::Excep;
            $result->message="controller:". $e->getMessage();
            SDB::rollBack();
        }
        return ResponseHelper::JsonDataResult($result);
    }
    public function log(){
        return view("dev/log");
    }
    public function runSchedules(){
    }
    public function test()
    {
        Mail::to("nguyenthanhuet@gmail.com")->send(new UserRegisterSender("nguyenthanhuet@gmail.com"));
        echo 'test';
    }

}
