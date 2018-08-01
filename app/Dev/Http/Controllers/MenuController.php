<?php
/**
 * @author hoanv
 */

namespace App\Dev\Http\Controllers;
use App\Dev\Entities\DataResultCollection;
use App\Dev\Rules\UpperCaseRule;
use App\Dev\Services\Interfaces\DevServiceInterface;
use App\Dev\Helpers\ResponseHelper;
use App\Dev\Helpers\CommonHelper;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Validator;
use App\Dev\Catelory;

class MenuController extends Controller
{

    protected $devService;

    public function __construct(DevServiceInterface $devService)
    {
        $this->devService = $devService;
    }

    public function menu()
    {
        //form CRUD translate text
        $dataCategoryCollection = $this->devService->getCategoryWithLevelList();
        $dataCategory = ($dataCategoryCollection->status == \SDBStatusCode::OK)?$dataCategoryCollection->data:array();
        return view("dev/menu", compact('dataCategory'));
    }

    public function createMenu(Request $request){
        $data= $request->all();
        $dataMenuCollection =  new DataResultCollection();
        $dataMenuCollection->status = \SDBStatusCode::OK;
        if ($data['name'] !='') {
            $dataMenuCollection = $this->devService->categoryAddChildInLeft(array($data['parent_id'], $data['name'],$data['url']));   
        }
        return ResponseHelper::JsonDataResult($dataMenuCollection);
    }

    public function updateMenu(Request $request){
        $data = $request->all();
        if ($data['name'] !='') {
            $dataUpdateCollection = $this->devService->categoryUpdateMenu(array($data['id'], $data['name'],$data['url']));
        }

        $dataUpdate = ($dataUpdateCollection->status == \SDBStatusCode::OK)?$dataUpdateCollection->data:array();
        return response()->json([
            'status' => 'true',
            'data' => $dataUpdate,
        ]);
    }

    public function deleteMenu(Request $request){
        $id = $request->id;
        $menuDelete = $this->devService->categoryDeleteNodeAndChild($id);
        $dataMenuDelete = ($menuDelete->status == \SDBStatusCode::OK)?$dataMenuCollection->data:array();
        return response()->json([
            'status' => 'true',
            'data' => $dataMenuDelete,
        ]);
    }
 }