<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class sys_screens extends Entity{
	public $id;
	public $module;
	public $controller;
	public $action;
	public $screen_code;
	public $description;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 
