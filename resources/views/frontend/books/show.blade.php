@extends('layouts.frontend')
@section('title', trans('List books'))
@section('book_menu', 'active')

@section('content')

<h1>
    {{ trans('Book detail') }}
</h1>

<dl class="dl-horizontal">
  <dt>{{ trans('Name') }}<dt>
  <dd>{{ $book->name }}</dd>
  <dt>{{ trans('Description') }}<dt>
  <dd>{{ $book->description }}</dd>
    <dt>{{ trans('Image') }}<dt>
    <dd><img src="{{ $book->image }}" class="book-cover" width="200" height="248"></dd>
</dl>

@endsection()
