@extends('layouts.backend')
@section('content')
    <button id="export" class="btn btn-primary">Export</button>
    Reference : <a href="https://laravel-excel.maatwebsite.nl/docs/2.1/getting-started/installation">https://laravel-excel.maatwebsite.nl/docs/2.1/getting-started/installation</a>
@endsection
@section('form_scripts')
    <script>
        $(document).ready(function () {
            $(document).on('click','#export',function () {
                var data = {};
                $.ajax({
                    data: data,
                    type: 'Post',
                    dataType: 'json',
                    url: "<?php echo @route('doExports_template')?>",
                    success: function (result) {
                        console.log($result);
                    }
                });
            });
        });
    </script>
@endsection



