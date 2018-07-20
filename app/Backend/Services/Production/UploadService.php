<?php
/**
 * Created by PhpStorm.
 * User: MSI
 * Date: 6/14/2018
 * Time: 10:28 AM
 */

namespace App\Backend\Services\Production;

use App\Backend\Services\Interfaces\UploadServiceInterface;
use App\Core\Entities\DataResultCollection;
use Illuminate\Support\Facades\Storage;

class UploadService extends BaseService implements UploadServiceInterface
{
    /**
     * @param $files : file list from request
     * upload file to storage and to do something as insert information to DB, delete.....
     */
    public function uploadLocal($files):DataResultCollection
    {
        $subFolder = "upload/template";
        $fileSystemDisk = "public";
        $result = new DataResultCollection();
        $result->status = \SDBStatusCode::OK;
        $result->data = array();
        //NOTE : This will store file to path with: root path has config in config/filesystems.php, sub folder is $subFolder
        if (is_array($files) && !empty($files)) {
            foreach ($files as $item) {
                $path = $item->store($subFolder, $fileSystemDisk);
                $fileInfor = array(
                    'client_file_name' => $item->getClientOriginalName(),
                    'uri' => $path,
                    'url' => Storage::disk($fileSystemDisk)->url($path)
                );
                $result->data[] = $fileInfor;
            }
        }
        return $result;
    }

    public function test()
    {
        echo 'upload.test';
    }
}

