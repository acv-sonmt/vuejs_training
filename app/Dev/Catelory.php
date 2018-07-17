<?php 
namespace App;
// use Illuminate\Database\Eloquent\Model;

use Illuminate\Notifications\Notifiable;
use Illuminate\Http\Request;
use DB;

class Catelory extends Authenticatable
{
    use Notifiable;

    protected $fillable = [
        'name', 'lft', 'rgt'
    ];

    // public static function(){

    // }

}

?>