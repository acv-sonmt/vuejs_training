<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class sys_languages extends Entity{
	public $id;
	public $code;
	public $name;
	public $order;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 
