<?php 
//This is dev automatic generate 
 namespace App\Dev\Entities; 
use App\Core\Entities\Entity; 
class DEV_GET_TRANSLATION_TYPE_LST extends Entity{
	public $id;
	public $code;
	public $comment;
	public $has_input_type;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 
