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
        
        $dataMenuCollection = $this->devService->CategoryAddChildInLeft(13,$data['name']);
        $dataMenu = ($dataMenuCollection->status == \SDBStatusCode::OK)?$dataMenuCollection->data:array();
        // $catalories = new Catelory();
        // $catalories->name = $data->name;
        // $catalories->save();

        // $dataMenu = Catelory::create($data);
        return response()->json([
            'message' => 'success',
            'data' => $dataMenu,
        ]);
    }
 }