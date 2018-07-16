<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class sys_show_message_exception extends Entity{
	public $code;
	public $message_code;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 
