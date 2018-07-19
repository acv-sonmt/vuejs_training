@extends('layouts.backend')
@section('lib_style')

@endsection
@section('content')

    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Form Upload </h3>
            </div>

        </div>

        <div class="clearfix"></div>

        <input type="file"  id="fileupload" multiple="true">
        <button id="upload">UPLOAD</button>
    </div>


@endsection
@section('lib_scripts')

@endsection
@section('form_scripts')
    <script>
        $(document).ready(function(){
            $('#upload').click(function(){
                var formData = new FormData();
                var fileList  = $('#fileupload').prop('files');
                var countFile = fileList.length;
                for(var i = 0;i< countFile;i++){
                    formData.append('file_'+fileList[i].name+'_'+i, fileList[i]);
                }
                $.ajax({
                    type: 'Post',
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    dataType: 'script',
                    cache: false,
                    contentType: false,
                    processData: false,
                    data:formData,
                    url: "<?php echo @route('doUpload_template')?>",
                    success: function (result) {

                    }
                });
            });

        });
    </script>
@endsection



