@extends('layouts.frontend')
@section('title', trans('List users'))
@section('user_menu', 'active')

@section('content')

<h1>
    {{ trans('Edit user') }}
</h1>

{{ Form::model($user, ['route' => ['users.update', $user->id], 'method' => 'PUT']) }}
{{ method_field('put') }}
<div class="row">
    <div class="col-md-6 col-xs-12">
        <div class="form-body">
            <div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
                <label for="input-name" class="control-label">{{ trans('Name') }}</label>
                {{ Form::text('name', null, ['id' => 'input-name', 'class' => 'form-control', 'maxlength' => 255, 'placeholder' => trans('Name')]) }}
                @foreach ($errors->get('name') as $message)
                <span class="help-block">{{ $message }}</span>
                @endforeach
            </div>
            <div class="form-group {{ $errors->has('email') ? 'has-error' : '' }}">
                <label for="input-email" class="control-label">{{ trans('Email') }} *</label>
                {{ Form::text('email', null, ['id' => 'input-email', 'class' => 'form-control', 'maxlength' => 255, 'placeholder' => trans('Email')]) }}
                @foreach ($errors->get('email') as $message)
                <span class="help-block">{{ $message }}</span>
                @endforeach
            </div>
            <div class="form-group {{ $errors->has('password') ? 'has-error' : '' }}">
                <label for="input-password" class="control-label">{{ trans('Password') }} *</label>
                {{ Form::password('password', ['id' => 'input-password', 'class' => 'form-control', 'maxlength' => 255, 'placeholder' => trans('Password')]) }}
                @foreach ($errors->get('password') as $message)
                <span class="help-block">{{ $message }}</span>
                @endforeach
                <span class="help-block"><em>({{ trans('Let this field empty if you don\'t want to change password.') }})</em></span>
            </div>
            <div class="form-actions">
                <button type="submit" class="btn btn-success">{{ trans('Update') }}</button>
            </div>
        </div>
    </div>
</div>
{{ Form::close() }}

@endsection()
