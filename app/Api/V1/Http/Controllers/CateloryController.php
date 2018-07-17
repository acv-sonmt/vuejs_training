<?php

namespace App\Api\V1\Http\Controllers;
use App\Core\Dao\SDB;
use App\Core\Helpers\ResponseHelper;
class CateloryController extends Controller
{
    public function index(){

        $listCategory = SDB::execSPsToDataResultCollection('API_GET_CATEGORY_LST');
        return ResponseHelper::JsonDataResult($listCategory);
    }
}
