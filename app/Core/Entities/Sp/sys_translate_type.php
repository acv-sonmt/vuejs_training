<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class sys_translate_type extends Entity{
	public $id;
	public $code;
	public $comment;
	public $has_input_type;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 
