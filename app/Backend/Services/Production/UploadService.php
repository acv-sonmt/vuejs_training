<?php
/**
 * Created by PhpStorm.
 * User: MSI
 * Date: 6/14/2018
 * Time: 10:28 AM
 */

namespace App\Acl\Services\Production;

use App\Core\Dao\SDB;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Route;
use App\Backend\Services\Interfaces\UploadServiceInterface;

class UploadService extends BaseService implements UploadServiceInterface
{
    public function test()
    {
       echo 'upload.test';
    }
}

