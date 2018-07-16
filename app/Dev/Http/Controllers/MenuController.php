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
 }