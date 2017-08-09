@extends('layouts.frontend')
@section('title', trans('List users'))
@section('user_menu', 'active')

@section('content')

<h1>
    {{ trans('User detail') }}
</h1>

<dl class="dl-horizontal">
  <dt>{{ trans('Name') }}<dt>
  <dd>{{ $user->name }}</dd>
  <dt>{{ trans('Email') }}<dt>
  <dd>{{ $user->email }}</dd>
</dl>

@endsection()
