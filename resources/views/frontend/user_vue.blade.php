{{--/**--}}
{{--* Created by PhpStorm--}}
{{--* User: SonMT--}}
{{--* Date: 11/14/2018--}}
{{--* Time: 9:01 AM--}}
{{--*/--}}

@extends('layouts.app')
@section('content')
        <div id="app">
        <router-link :to="{name: 'user'}" tag="button" class="btn btn-default glyphicon glyphicon-plus">List Users</router-link>
        <router-link :to="{name: 'role'}" tag="button" class="btn btn-default glyphicon glyphicon-plus">List Roles</router-link>
        {{--<user-manager-component data-url="{{route('user_list')}}"></user-manager-component>--}}
        {{--<role-component data-url="{{route('roles_list')}}"></role-component>--}}
         <router-view></router-view>
        </div>
@endsection
@section('scripts')
@endsection