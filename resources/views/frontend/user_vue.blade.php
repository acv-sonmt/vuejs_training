{{--/**--}}
{{--* Created by PhpStorm--}}
{{--* User: SonMT--}}
{{--* Date: 11/14/2018--}}
{{--* Time: 9:01 AM--}}
{{--*/--}}

@extends('layouts.app')
@section('content')
        <user-manager-component data-url="{{route('user_list')}}"></user-manager-component>
        <gennarate-table data-url="{{route('gentable')}}"></gennarate-table>
@endsection
@section('scripts')
@endsection