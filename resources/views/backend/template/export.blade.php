@extends('layouts.backend')
@section('content')


    <form action="{{ route('doImport_template') }}" class="form-horizontal" method="post" enctype="multipart/form-data">
        <div class="col-md-6">
          {{csrf_field()}}
          <input type="file" name="imported_file"/>
        </div>
        <button id="import" class="btn btn-primary">Import</button>
    </form>

        <button id="export" class="btn btn-primary">Export</button>

    Reference : <a href="https://laravel-excel.maatwebsite.nl/docs/2.1/getting-started/installation">https://laravel-excel.maatwebsite.nl/docs/2.1/getting-started/installation</a>
@endsection
@section('form_scripts')
    <script>

        $(document).ready(function () {

            $.ajaxSetup({
              headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
              }
            });

            $(document).on('click','#export',function () {
                location.href = "{{ route('doExports_template') }}";
            });

        });
    </script>
@endsection



