@extends('layouts.backend')
@section('content')
    <button id="export" class="btn btn-primary">Export</button>
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



