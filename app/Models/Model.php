<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model as IlluminateModel;

class Model extends IlluminateModel
{
    /**
     * Override __callStatic method for testing model
     *
     * {@inheritDoc}
     */
    public static function __callStatic($method, $parameters)
    {
        if (env('APP_ENV') == 'testing') {
            $model = app()->make(get_called_class());
            return $model->$method(...$parameters);
        }

        return parent::__callStatic($method, $parameters);
    }
}
