<?php
/**
 * Created by PhpStorm.
 * User: MSI
 * Date: 6/14/2018
 * Time: 10:23 AM
 */
namespace App\Backend\Services\Interfaces;

use App\Core\Entities\DataResultCollection;

interface UploadServiceInterface
{
    public function uploadLocal($files):DataResultCollection;
    public function test();
}
