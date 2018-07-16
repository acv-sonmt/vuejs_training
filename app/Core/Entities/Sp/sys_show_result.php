<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class sys_show_result extends Entity{
	public $code;
	public $data_error;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 
