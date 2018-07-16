<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class oauth_refresh_tokens extends Entity{
	public $id;
	public $access_token_id;
	public $revoked;
	public $expires_at;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 
