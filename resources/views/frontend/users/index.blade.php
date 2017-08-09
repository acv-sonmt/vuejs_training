@extends('layouts.frontend')
@section('title', trans('List users'))
@section('user_menu', 'active')

@section('content')

@include('elements.flash_message')

<h1>
    {{ trans('List users') }}

    <div class="pull-right">
        <a class="btn btn-primary" href="{{ route('users.create') }}">{{ trans('Create user') }}</a>
    </div>
</h1>

@empty ($users)
    <p class="bg-info pd-16 mt-16">{{ trans('Have no users.') }}</p>
@else
<div class="table-responsive mt-16">
    <table class="table table-bordered">
        <thead>
            <tr>
                <th width="32">{{ trans('No') }}</th>
                <th width="25%">{{ trans('Name') }}</th>
                <th>{{ trans('Email') }}</th>
                <th width="25%">{{ trans('Action') }}</th>
            </tr>
        </thead>
        <tbody>
        @php $index = 1 @endphp
        @foreach ($users as $user)
            <tr>
                <td>{{ $index++ }}</td>
                <td>{{ $user->name }}</td>
                <td>{{ $user->email }}</td>
                <td class="text-right">
                    <a class="btn btn-success btn-sm" href="{{ route('users.show', $user->id) }}">{{ trans('View') }}</a>
                    <a class="btn btn-warning btn-sm" href="{{ route('users.edit', $user->id) }}">{{ trans('Edit') }}</a>
                    {{ Form::open(['route' => ['users.destroy', $user->id], 'method' => 'delete', 'class' => 'form-delete', 'style' => 'display:inline-block;']) }}
                        {{ method_field('delete') }}
                        <button type="submit" class="btn btn-danger btn-sm">{{ __('Delete') }}</button>
                    {{ Form::close() }}
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>
{{ $users->links() }}
@endempty


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
