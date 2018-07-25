@extends('layouts.backend')
@section('content')

    <form action="{{route('postImport')}}" class="form-horizontal" method="post" enctype="multipart/form-data">
        <div class="col-md-6">
          {{csrf_field()}}
          <input type="file" name="imported-file"/>
        </div>
        <div class="col-md-6">
            <button class="btn btn-primary" type="submit">Import</button>
        </div>
      </form>

    
@endsection
@section('form_scripts')
    {{-- <script>
        $(document).ready(function () {
           $(document).on('click','#import',function () {
                var data = {};
               $.ajax({
                   data: data,
                   type: 'Post',
                   dataType: 'json',
                   url: "{{route('postImport') }}",
                   success: function (result) {
                       console.log($result);
                   }
               });
           });
        });
    </script> --}}
@endsection