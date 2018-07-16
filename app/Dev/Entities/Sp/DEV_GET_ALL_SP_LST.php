<?php 
//This is dev automatic generate 
 namespace App\Dev\Entities; 
use App\Core\Entities\Entity; 
class DEV_GET_ALL_SP_LST extends Entity{
	public $Db;
	public $Name;
	public $Type;
	public $Definer;
	public $Modified;
	public $Created;
	public $Security_type;
	public $Comment;
	public $character_set_client;
	public $collation_connection;
	public $Database_Collation;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 
