<?php
/**
 * @author thanhnv
 */
namespace App\Core\Dao;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
use App\Core\Entities\DataResultCollection;
use App\Core\Helpers\CommonHelper;
/**
 * Class SDB
 * @package App\Dao
 * Database access ->call sps
 */
class SDB extends DB
{
    /**
     * @param $procName
     * @param null $parameters
     * @param bool $isExecute
     * @return \Illuminate\Support\Collection|mixed
     */
    public static function execSPsToDataResultCollection($procName, $parameters = null, $isExecute = false):DataResultCollection
    {

        $results = new \ArrayObject();
        $dataResult = new DataResultCollection();
        try {
            $syntax = '';
            if (isset($parameters) && is_array($parameters)) {
                for ($i = 0; $i < count($parameters); $i++) {
                    $syntax .= (!empty($syntax) ? ',' : '') . '?';
                }
            }
            $syntax = 'CALL ' . $procName . '(' . $syntax . ');';

            $pdo = parent::connection()->getPdo();
            $pdo->setAttribute(\PDO::ATTR_EMULATE_PREPARES, true);
            $stmt = $pdo->prepare($syntax, [\PDO::ATTR_CURSOR => \PDO::CURSOR_SCROLL]);
            if (isset($parameters) && is_array($parameters)) {
                for ($i = 0; $i < count($parameters); $i++) {
                    $stmt->bindValue((1 + $i), $parameters[$i]);
                }
            }
            $exec = $stmt->execute();
            if (!$exec) {
                $dataResult->status = \SDBStatusCode::PDOExceoption;
                $dataResult->message = $pdo->errorInfo();
            }
            if ($isExecute) return $exec;
            do {
                try {
                    $results[] = $stmt->fetchAll(\PDO::FETCH_OBJ);
                } catch (\Exception $ex) {
                    //Next, don't exception handler here
                }
            } while ($stmt->nextRowset());
            if (isset($results[0])) {
                $dataResult->data = $results[0];
                $dataResult->status = \SDBStatusCode::OK;
                $dataResult->message = null;
            }
            else {
                //new class
                $dataResult->data = new $procName();
                $dataResult->status = \SDBStatusCode::DataNull;
            }
        } catch (\Exception $exception) {
            $dataResult->status = \SDBStatusCode::Excep;
            $dataResult->message = $exception->getMessage();
            //Logging
            CommonHelper::CommonLog($exception->getMessage());
        }

        return $dataResult;
    }

    /**
     * @param $procName
     * @param null $parameters
     * @param bool $isExecute
     * @return array|mixed
     */
    public static function execSPs($procName, $parameters = null, $isExecute = false)
    {
        $results = [];
        try{
            $syntax = '';
            if(isset( $parameters) && is_array($parameters)){
                for ($i = 0; $i < count($parameters); $i++) {
                    $syntax .= (!empty($syntax) ? ',' : '') . '?';
                }
            }
            $syntax = 'CALL ' . $procName . '(' . $syntax . ');';

            $pdo = parent::connection()->getPdo();
            $pdo->setAttribute(\PDO::ATTR_EMULATE_PREPARES, true);
            $stmt = $pdo->prepare($syntax,[\PDO::ATTR_CURSOR=>\PDO::CURSOR_SCROLL]);
            if(isset( $parameters) && is_array($parameters)) {
                for ($i = 0; $i < count($parameters); $i++) {
                    $stmt->bindValue((1 + $i), $parameters[$i]);
                }
            }
            $exec = $stmt->execute();
            if (!$exec) return $pdo->errorInfo();
            if ($isExecute) return $exec;
            do {
                try {
                    $results[] = $stmt->fetchAll(\PDO::FETCH_OBJ);
                } catch (\Exception $ex) {

                }
            } while ($stmt->nextRowset());
            if (1 === count($results)) return $results[0];
        }catch (\Exception $exception){
            $results =  array(
                (object) [
                    'code'=>-9999,
                    'data_error'=>array('SDB_exception'=>$exception->getMessage())
                ]
            );
            CommonHelper::CommonLog($exception->getMessage());
        }
        return $results;
    }

}
