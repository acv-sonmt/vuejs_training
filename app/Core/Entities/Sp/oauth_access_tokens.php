<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class oauth_access_tokens extends Entity{
	public $id;
	public $user_id;
	public $client_id;
	public $name;
	public $scopes;
	public $revoked;
	public $created_at;
	public $updated_at;
	public $expires_at;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 
