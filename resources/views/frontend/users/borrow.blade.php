@extends('layouts.frontend')
@section('title', trans('List users'))
@section('borrow_menu', 'active')

@section('content')

    @include('elements.flash_message')

    <h1>
        {{ trans('List books') }}
    </h1>

    @if ($books->isEmpty())

    @else
        {{ Form::open(['route' => 'users.borrow_book', 'method' => 'POST']) }}
            @foreach ($books->chunk(6) as $chunk)
                <div class="row">
                    @foreach ($chunk as $book)
                        <div class="col-xs-2">
                            <div><img src="{{ $book->image }}" class="img-responsive"></div>
                            <div class="checkbox">
                                <label>
                                    {{ Form::checkbox('book_id[]', $book->id) }} {{ $book->name }}
                                </label>
                            </div>
                        </div>
                    @endforeach
                </div>
            @endforeach
            <div class="{{ $errors->has('book_id') ? 'has-error' : '' }}">
                @foreach ($errors->get('book_id') as $message)
                    <span class="help-block">{{ $message }}</span>
                @endforeach
            </div>
            <div class="{{ $errors->has('book_id.*') ? 'has-error' : '' }}">
                @php $bookIdErrors = array_flatten($errors->get('book_id.*')) @endphp
                @foreach ($bookIdErrors as $message)
                    <span class="help-block">{{ $message }}</span>
                @endforeach
            </div>
        <div class="row">
            <div class="col-md-6 col-xs-12">
                <div class="form-group {{ $errors->has('user_id') ? 'has-error' : '' }}">
                    <label for="input-user" class="control-label">{{ trans('User') }}</label>
                    {{ Form::select('user_id', $users, null, ['id' => 'input-user', 'class' => 'form-control', 'maxlength' => 255, 'placeholder' => trans('Select user')]) }}
                    @foreach ($errors->get('user_id') as $message)
                        <span class="help-block">{{ $message }}</span>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn btn-success">{{ trans('Borrow') }}</button>
        </div>
        {{ Form::close() }}
    @endif
@endsection()

