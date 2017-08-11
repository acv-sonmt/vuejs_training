@extends('layouts.frontend')
@section('title', trans('List books'))
@section('book_menu', 'active')

@section('content')

    <h1>
        {{ trans('Edit book') }}
    </h1>

    {{ Form::model($book, ['route' => ['books.update', $book->id], 'method' => 'PUT', 'files' => true]) }}
    {{ method_field('put') }}
    <div class="row">
        <div class="col-md-6 col-xs-12">
            <div class="form-body">
                <div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
                    <label for="input-name" class="control-label">{{ trans('Name') }} *</label>
                    {{ Form::text('name', null, ['id' => 'input-name', 'class' => 'form-control', 'maxlength' => 255, 'placeholder' => trans('Name')]) }}
                    @foreach ($errors->get('name') as $message)
                        <span class="help-block">{{ $message }}</span>
                    @endforeach
                </div>
                <div class="form-group {{ $errors->has('description') ? 'has-error' : '' }}">
                    <label for="input-description" class="control-label">{{ trans('Description') }}</label>
                    {{ Form::textArea('description', null, ['id' => 'input-description', 'class' => 'form-control', 'maxlength' => 255, 'placeholder' => trans('Description')]) }}
                    @foreach ($errors->get('description') as $message)
                        <span class="help-block">{{ $message }}</span>
                    @endforeach
                </div>
                <div class="form-group {{ $errors->has('owner') ? 'has-error' : '' }}">
                    <label for="input-owner" class="control-label">{{ trans('Owner') }}</label>
                    {{ Form::select('owner_id', $users, null, ['id' => 'input-owner', 'class' => 'form-control', 'maxlength' => 255, 'placeholder' => trans('Select owner')]) }}
                    @foreach ($errors->get('owner_id') as $message)
                        <span class="help-block">{{ $message }}</span>
                    @endforeach
                </div>
                <div>
                    <img src="{{ $book->image }}" class="book-cover"  width="200" height="248">
                </div>
                <div class="form-group {{ $errors->has('image') ? 'has-error' : '' }}">
                    <label for="input-image" class="control-label">{{ trans('Image') }}</label>
                    {{ Form::file('image', ['id' => 'input-image']) }}
                    @foreach ($errors->get('image') as $message)
                        <span class="help-block">{{ $message }}</span>
                    @endforeach
                </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-success">{{ trans('Update') }}</button>
                </div>
            </div>
        </div>
    </div>
    {{ Form::close() }}

@endsection()
