<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class oauth_personal_access_clients extends Entity{
	public $id;
	public $client_id;
	public $created_at;
	public $updated_at;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 
