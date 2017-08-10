@extends('layouts.frontend')
@section('title', trans('List books'))
@section('book_menu', 'active')

@section('content')

@include('elements.flash_message')

<h1>
    {{ trans('List books') }}

    <div class="pull-right">
        <a class="btn btn-primary" href="{{ route('books.create') }}">{{ trans('Create book') }}</a>
    </div>
</h1>

@if ($books->isEmpty())
    <p class="bg-info pd-16 mt-16">{{ trans('Have no books.') }}</p>
@else
    <div class="table-responsive mt-16">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th width="20">{{ trans('No') }}</th>
                    <th width="20%">{{ trans('Name') }}</th>
                    <th>{{ trans('Description') }}</th>
                    <th width="10%">{{ trans('Owner') }}</th>
                    <th width="25%">{{ trans('Action') }}</th>
                </tr>
            </thead>
            <tbody>
                @php $index = 1 @endphp
                @foreach ($books as $book)
                    <tr>
                        <td>{{ $index++ }}</td>
                        <td>{{ $book->name }}</td>
                        <td>{{ $book->description }}</td>
                        <td>{{ $book->owner->name }}</td>
                        <td class="text-right">
                            <a class="btn btn-success btn-sm" href="{{ route('books.show', $book->id) }}">{{ trans('View') }}</a>
                            <a class="btn btn-warning btn-sm" href="{{ route('books.edit', $book->id) }}">{{ trans('Edit') }}</a>
                            {{ Form::open(['route' => ['books.destroy', $book->id], 'method' => 'delete', 'class' => 'form-delete', 'style' => 'display:inline-block;']) }}
                                {{ method_field('delete') }}
                                <button type="submit" class="btn btn-danger btn-sm">{{ trans('Delete') }}</button>
                            {{ Form::close() }}
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
{{ $books->links() }}
@endif

@endsection()

@section('inline_scripts')
    <script type="text/javascript">
    $('.form-delete').submit(function(){
        if (confirm("{{ trans('Are you sure?') }}")) {
            return true;
        }

        return false;
    });
    </script>
@endsection
