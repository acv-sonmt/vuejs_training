<?php
/**
 * Created by PhpStorm.
 * User: MSI
 * Date: 6/14/2018
 * Time: 10:28 AM
 */

namespace App\Dev\Services\Production;

use App\Dev\Dao\DEVDB;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Lang;
use Illuminate\Support\Facades\Route;
use App\Dev\Services\Interfaces\DevServiceInterface;
use App\Dev\Entities\DataResultCollection;
use Mockery\CountValidator\Exception;
use App\Dev\Helpers\CommonHelper;

class DevService extends BaseService implements DevServiceInterface
{
    protected  $listModule = [];
    public function __construct()
    {
        $modules =  DEVDB::select('SELECT module_code FROM sys_modules');
        if(!empty($modules)){
            foreach ($modules as $item){
                $this->listModule[] = $item->module_code;
            }
        }
    }

    public function getLanguageCodeList():DataResultCollection
    {
        $lang = DEVDB::execSPsToDataResultCollection('DEV_GET_LANGUAGE_CODE_LST');
        return $lang;
    }

    public function getTranslateList($translateType, $lang):DataResultCollection
    {
        return DEVDB::execSPsToDataResultCollection('DEV_GET_TRANSLATION_DATA_LST', array($translateType, $lang));
    }

    /**
     * @param $translateType
     * @return array
     * HELPER: Get data translated text by type ( validation, auth, label...)
     */
    public function getTranslateMessageArray($translateType = '')
    {
        $resuiltArr = [];
        $lang = DEVDB::execSPsToDataResultCollection('DEV_GET_LANGUAGE_CODE_LST');
        if ($lang->status==\SDBStatusCode::OK) {

            foreach ($lang->data as $item) {
                $resuiltArr[$item->code] = array();
            }
            $rules = DEVDB::execSPsToDataResultCollection('DEV_GET_TRANSLATION_DATA_LST', array($translateType, ''));

            if (!empty($resuiltArr)) {
                foreach ($resuiltArr as $itemKey => $itemValue) {
                    if ($rules->status==\SDBStatusCode::OK) {
                        foreach ($rules->data as $ruleItem) {
                            if ($itemKey == $ruleItem->lang_code) {
                                if ($ruleItem->type_code == '') {
                                    $resuiltArr[$itemKey][$ruleItem->code] = $ruleItem->text;
                                } else {
                                    $resuiltArr[$itemKey][$ruleItem->code][$ruleItem->type_code] = $ruleItem->text;
                                }
                            }
                        }
                    }
                }

            }
        }
        return $resuiltArr;
    }

    public function getCategoryWithLevelList():DataResultCollection
    {
        return DEVDB::execSPsToDataResultCollection('DEV_GET_CATEGORY_WITH_LEVEL_LIST');
    }

    public function CategoryAddChildInLeft($parentNodeId, $newNodeName ):DataResultCollection
    {
        return DEVDB::execSPsToDataResultCollection('DEV_CATELORY_ADD_CHILD_IN_LEFT',array($parentNodeId, $newNodeName));
    }

    public function categoryDeleteNodeAndChild($nodeId):DataResultCollection
    {
        return DEVDB::execSPsToDataResultCollection('DEV_CATELORY_DELETE_NODE_AND_CHILD',array($nodeId));
    }

    public function categoryUpdateMenu($nodeId, $pName):DataResultCollection {
        return DEVDB::execSPsToDataResultCollection('DEV_CATELORY_UPDATE',array($nodeId, $pName));
    }



    public function getRoleInfoFromDB()
    {
        return DEVDB::execSPs('DEV_GET_ROLES_MAP_ACTION_LST');
    }

    /**
     * @param $validateArray
     * @param $fileName
     * HELPER: Generation Config File contain text translated.
     */
    public function generationTranslateFile($translateType, $fileName)
    {
        $validateArray = $this->getTranslateMessageArray($translateType);
        $folderLangPath = base_path() . '/resources/lang/';
        foreach ($validateArray as $langCode => $langGroupContent) {
            $langFolder = strtolower($folderLangPath . $langCode);
            if (!is_dir($langFolder)) {
                mkdir($langFolder);
            }
            $fileTranslate = $langFolder . '/' . $fileName . '.php';

            //Create file validate if not existed
            if (file_exists($fileTranslate)) {
                $fh = fopen($fileTranslate, 'w');
            } else {
                $fh = fopen($fileTranslate, 'w');
            }
            $contentFile = "<?php \n";
            $contentFile .= "//This is dev automatic generate \n ";
            //Generate content file
            if (!empty($langGroupContent)) {
                $contentFile .= "return [\n";
                if (!empty($langGroupContent)) {
                    foreach ($langGroupContent as $keycode => $value) {
                        if (!is_array($value)) {
                            $contentFile .= "\t" . '"' . $keycode . '"=>"' . $value . '"' . ",\n";
                        } else {
                            $contentFile .= "\t'" . $keycode . "'=>[\n";

                            if (!empty($value)) {
                                foreach ($value as $inputType => $text) {
                                    $contentFile .= "\t\t" . '"' . $inputType . '"=>"' . $text . '"' . ",\n";
                                }
                            }
                            $contentFile .= "\t],\n";
                        }
                    }
                }
                $contentFile .= '];';
            }
            //Write content file
            fwrite($fh, $contentFile);
            fclose($fh);
        }
    }

    /**
     * @param $validateArray
     * @param $fileName
     * HELPER: Generation Javascript File contain text translated.
     */
    public function generationTranslateScript($translateType, $fileName)
    {
        $validateArray = $this->getTranslateMessageArray($translateType);
        $dir = base_path() . '/public/js/lang/';
        $folderLangPath = $dir. $fileName . '.js';
        //Create file validate if not existed
        if (!is_dir($dir)) {
            mkdir($dir);
        }
        $fh = fopen($folderLangPath, 'w');
        $contentFile = "//This is dev automatic generate \n ";
        $contentFile .= "var _validateMessage = \n";
        $txt = json_encode($validateArray);
        $contentFile .= $txt . ';';
        //Write content file
        fwrite($fh, $contentFile);
        fclose($fh);

    }

    public function generationTranslateFileAndScript()
    {
        $transTypeList = DEVDB::execSPsToDataResultCollection("DEV_GET_TRANSLATION_TYPE_LST");
        if ($transTypeList->status==\SDBStatusCode::OK) {
            foreach ($transTypeList->data as $item) {
                $this->generationTranslateScript($item->code, $item->code);
                $this->generationTranslateFile($item->code, $item->code);
            }
        }
    }

    public function getNewTransComboList()
    {
        return DEVDB::execSPs('DEV_ADD_TRANSLATE_COMBO_LST');
    }

    /**
     * @return array
     * HELPER: get role mapping screen to Array
     */
    public function getRoleMapArray()
    {
        $resultArr = [];
        $roleInfo = DEVDB::execSPs('DEV_GET_ROLES_MAP_ACTION_LST');
        if (!empty($roleInfo)) {
            $roles = $roleInfo[0];
            $roleMap = $roleInfo[1];
            if (!empty($roles)) {
                foreach ($roles as $item) {
                    $resultArr[$item->role_value] = array();
                }
                if (!empty($resultArr)) {
                    foreach ($resultArr as $itemKey => $itemValue) {
                        if (!empty($roleMap)) {
                            foreach ($roleMap as $roleMapItem) {
                                if ($itemKey == $roleMapItem->role_value) {
                                    $resultArr[$itemKey][$roleMapItem->screen_code] = $roleMapItem->is_active;
                                }
                            }
                        }
                    }

                }
            }
        }

        return $resultArr;
    }

    /**
     * @param $roleMapScreen : array role map
     * Struct input as:
     * HELPER: generate acl file to config folder
     */
    public function generationAclFile()
    {
        $roleMapScreen = $this->getRoleMapArray();
        $fileName = 'acl';//fixed, warning: Must not dupplicate with other config file, which existed.
        $fileAcl = base_path() . '/config/' . $fileName . '.php';

        //Create file validate if not existed
        if (file_exists($fileAcl)) {
            $fh = fopen($fileAcl, 'w');
        } else {
            $fh = fopen($fileAcl, 'w');
        }
        $contentFile = "<?php \n";
        $contentFile .= "//This is dev automatic generate \n ";
        //Generate content file

        $contentFile .= "return [\n";
        if (!empty($roleMapScreen)) {
            foreach ($roleMapScreen as $roleValue => $value) {
                $contentFile .= "\t'" . $roleValue . "'=>[\n";
                if (!empty($value)) {
                    foreach ($value as $screenCode => $isActive) {
                        $contentFile .= "\t\t'" . $screenCode . "'=>'" . $isActive . "',\n";
                    }
                }
                $contentFile .= "\t],\n";
            }
        }
        $contentFile .= '];';

        //Write content file
        fwrite($fh, $contentFile);
        fclose($fh);

    }

    /**
     * @param $name : name of config file. ex: 'acl' or 'app' or 'auth'....
     * @return mixed
     * HELPER: Read file config
     */
    public function getConfigDataFromFile($name)
    {
        $resultArray = Config::get($name);
        return $resultArray;
    }

    /**
     * innitization role in database
     * @return bool
     *
     */
    public function initRoleDataToDB(){
        $data = $this->getListScreen();
        $systemAdminRole = \RoleConst::SysAdminRole;
        $roleList = $this->getRoleList();
        //Insert sys screen data
        DEVDB::table('sys_screens')->truncate();
        DEVDB::table('sys_screens')->insert($data);

        //Insert dev module data
        $this->importModuleListToDB();

        //Mapping role with screen
        DEVDB::table('sys_role_map_screen')->truncate();
        $id = 0;
        $dataRolesMapping = array();
        if(!empty($roleList)){
            foreach ($roleList as $role) {
                if(!empty($data)){
                    foreach ($data as $item) {
                        $id++;
                        $isActive = 0;
                        if ($role->role_value == $systemAdminRole) {
                            $isActive = 1;
                        }
                        $dataRolesMapping[] = array(
                            'id' => $id,
                            'role_value' => $role->role_value,
                            'screen_id' => $item['id'],
                            'is_active' => $isActive
                        );
                    }
                }

            }

        }

        DEVDB::table('sys_role_map_screen')->insert($dataRolesMapping);
        return true;
    }

    /**
     * @return array
     * generation screens list, insert role map screen and merger role to database.
     */
    public function generationRoleDataToDB()
    {
        //Insert dev module data
        $this->importModuleListToDB();
        $data = $this->getListScreen();
        DEVDB::execSPs('DEV_IMPORT_AND_MERGER_ROLE_ACT',array(json_encode($data)));
        return true;
    }


    /**
     * @return array
     * generation screens list, insert to database and innitization system administrator role.
     */
    public function generationTransDataToDB()
    {
        $dir = base_path() . '/resources/lang';
        $langList = array_diff(scandir($dir), array('..', '.'));
        $id = 0;
        DEVDB::execSPsToDataResultCollection('DEV_BACKUP_TRANSLATE_ACT');
        DEVDB::table('sys_translation')->truncate();
        if (!empty($langList)) {
            foreach ($langList as $lang) {
                $dir = base_path() . '/resources/lang/' . $lang;
                $typeTranslateList = array_diff(scandir($dir), array('..', '.'));
                Lang::setLocale($lang);
                if (!empty($typeTranslateList)) {
                    foreach ($typeTranslateList as $translateFileName) {
                        $typeTranslate = str_replace('.php', '', $translateFileName);
                        $tran = Lang::get($typeTranslate);
                        $dataTrans = array();
                        if (is_array($tran)&&!empty($tran)) {
                            foreach ($tran as $tranItemKey => $tranItemValue) {
                                if (!is_array($tranItemValue)) {
                                    $id++;
                                    $dataTrans[] = array(
                                        'id' => $id,
                                        'lang_code' => strtolower($lang),
                                        'input_type' => '',
                                        'code' => $tranItemKey,
                                        'text' => $tranItemValue,
                                        'translate_type' => $typeTranslate,
                                        'created_at' => now(),
                                        'is_deleted' => 0
                                    );
                                } else {
                                    if (is_array($tranItemValue) && !empty($tranItemValue)) {
                                        foreach ($tranItemValue as $inputTypeKey => $inputValueMss) {
                                            if (!is_array($inputValueMss)) {
                                                $id++;
                                                $dataTrans[] = array(
                                                    'id' => $id,
                                                    'lang_code' => strtolower($lang),
                                                    'input_type' => $inputTypeKey,
                                                    'code' => $tranItemKey,
                                                    'text' => $inputValueMss,
                                                    'translate_type_code' => $typeTranslate,
                                                    'created_at' => now(),
                                                    'is_deleted' => 0
                                                );
                                            }

                                        }
                                    }

                                }

                            }
                        }
                        if (!empty($dataTrans)) {
                            DEVDB::table('sys_translation')->insert($dataTrans);
                        }
                    }
                }
            }
        }
    }

    public function updateActiveAcl($roleMapId, $isActive)
    {
        DEVDB::execSPsToDataResultCollection("DEV_ROLE_UPDATE_ACTIVE_ACT", array($roleMapId, $isActive));
    }
    public function updateActiveAclAll($isActive)
    {
        DEVDB::execSPsToDataResultCollection("DEV_ROLE_UPDATE_ACTIVE_ALL_ACT", array($isActive));
    }
    public function updateTranslateText($id, $transText)
    {
        DEVDB::execSPsToDataResultCollection("DEV_TRANSLATE_UPDATE_TEXT_ACT", array($id, $transText));
    }

    public function insertTranslationItem($transType, $transInputType, $transTextCode, $textTrans)
    {
        return DEVDB::execSPsToDataResultCollection("DEV_TRANSLATE_INSERT_NEW_TEXT_ACT", array($transType, $transInputType, $transTextCode, $textTrans));
    }
    public function generateEntityClass(){
        try{
            //Generate Storeprocedure entity
            $spsList =  DEVDB::execSPsToDataResultCollection('DEV_GET_ALL_SP_LST');
            if($spsList->status==\SDBStatusCode::OK){
                foreach ($spsList->data as $row){
                    DEVDB::generateEntityClass($row->Name,$this->getModuleNameFromSpName($row->Name));
                }
            }
            //Generate Table and View entity
            $tableList =  DEVDB::execSPsToDataResultCollection('DEV_GET_ALL_TABLE_LST');
            if($tableList->status==\SDBStatusCode::OK){
                foreach ($tableList->data as $row){
                    DEVDB::generateEntityClassByTable($row->name);
                }
            }
        }catch (Exception $e){
            CommonHelper::CommonLog($e->getMessage());
        }
    }
    public function generateSpecEntityClass($spName){
        DEVDB::generateEntityClass($spName,$this->getModuleNameFromSpName($spName));
    }
    public function getAllSPList():DataResultCollection{
        $spsList =  DEVDB::execSPsToDataResultCollection('DEV_GET_ALL_SP_LST');
        return $spsList;
    }
    public function getRoleList(){
        $roleList = DEVDB::execSPs('DEV_GET_ROLES_LST');
        return $roleList;
    }
    public function getModuleList(){
        $moduleList = DEVDB::execSPs('DEV_GET_MODULES_LST');
        return $moduleList;
    }
    /**
     * @return array
     */
    protected function getListScreen()
    {
        $controllers = [];
        $i = 0;
        $id = 0;
        $listRouter = Route:: getRoutes()->getRoutes();
        foreach ($listRouter as $route) {
            $action = $route->getAction();
            if (array_key_exists('controller', $action)) {
                $_module = strtolower(trim(str_replace('App\\', '', $action['namespace']), '\\'));
                $_module =  explode("\\",$_module)[0];
                $id++;
                $_action = explode('@', $action['controller']);

                $_namespaces_chunks = explode('\\', $_action[0]);

                $controllers[$i]['id'] = $id;
                $controllers[$i]['module'] = $_module;
                $controllers[$i]['controller'] = strtolower(end($_namespaces_chunks));
                $controllers[$i]['action'] = strtolower(end($_action));
                $controllers[$i]['screen_code']=$action['namespace']."\\".$controllers[$i]['controller']."\\".$controllers[$i]['action'];
                $controllers[$i]['description']=$action['namespace'];
            }
            $i++;
        }
        return ($controllers);
    }
    protected function getListModulesFromProjectStruct(){
        $moduleList = [];
        $i = 0;
        $id = 0;
        $listRouter = Route:: getRoutes()->getRoutes();
        foreach ($listRouter as $route) {
            $action = $route->getAction();
            if (array_key_exists('controller', $action)) {
                $_module = strtolower(trim(str_replace('App\\', '', $action['namespace']), '\\'));
                $_module =  explode("\\",$_module)[0];
                $moduleList[]= $_module;
            }
            $i++;
        }
        return (array_unique($moduleList));
    }

    /**
     * read project struct to generation module list to Database
     */
    protected function importModuleListToDB(){
        $moduleSkipAcl = ['dev'];
        DEVDB::table(('sys_modules'))->truncate();
        $dataModule = [];
        $dataModuleList =  $this->getListModulesFromProjectStruct();
        if(!empty($dataModuleList)){
            $i = 0;
            foreach ($dataModuleList as $itemScreen){
                $i++;
                $dataModule[] = array(
                    'id'=>$i,
                    'module_code'=>$itemScreen,
                    'module_name'=>$itemScreen,
                    'order_value'=>$i,
                    'is_skip_acl'=>(in_array($itemScreen,$moduleSkipAcl)?1:0),
                );
            }
        }
        DEVDB::table('sys_modules')->insert($dataModule);
    }
    /**
     * @return array|mixed
     */
    protected function getCatagoryList()
    {
        $categoryData = DEVDB::execSPsToDataResultCollection('DEV_GET_CATEGORY_LST');
        return $categoryData;
    }
    protected function getModuleNameFromSpName($procedureName){
        $result = 'Core';//default
        $delimiter = '_';
        $procedureName =  strtolower($procedureName);
        if(strpos($procedureName, $delimiter) !== false){
            $module =explode ($delimiter,$procedureName)[0];
            if(in_array($module,$this->listModule)){
                $result =  ucfirst($module);
            }
        }
        return $result;
    }
    public function test()
    {
       echo 'dev.test';
    }
}

