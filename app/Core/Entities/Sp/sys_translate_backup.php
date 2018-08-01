<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class sys_translate_backup extends Entity{
	public $id;
	public $lang_code;
	public $translate_type;
	public $code;
	public $text;
	public $input_type;
	public $created_at;
	public $updated_at;
	public $is_deleted;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 
