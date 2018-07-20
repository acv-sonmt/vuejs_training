@extends('layouts.backend')
@section('lib_style')

@endsection
@section('content')
<style>
    .img-item{
        height: 100px;
    }
    .image-item{
        float: left;
        margin: 10px;
        border: 1px solid;
    }
    #upload{
        margin-top: 15px;
    }
</style>
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Form Upload </h3>
            </div>

        </div>
        <div class="row">
            <div id="img-upload-area" class="img-uploaded">

            </div>
        </div>
        <div class="clearfix"></div>
        <input type="file"  id="fileupload" multiple="true">
        <button id="upload">UPLOAD</button>
    </div>

<div id="image-item-template" class="display-none">
    <div class="image-item form-row">
        <img class='img-item' src='{{asset("common_images/no-image.png")}}' image-name="" />
    </div>
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
                    dataType:'JSON',
                    cache: false,
                    contentType: false,
                    processData: false,
                    data:formData,
                    url: "<?php echo @route('doUpload_template')?>",
                    success: function (result) {
                        if(result.status == '{{SDBStatusCode::OK}}') {
                            $.each(result.data,function(key,item){
                                var itemImage = $('#image-item-template').find('.image-item').clone();
                                var img = $(itemImage).find('.img-item');
                                $(img).attr('src',item.url);
                                $(img).attr('image-name',item.client_file_name);
                                $('#img-upload-area').append(itemImage);
                            });
                        }

                    }
                });
            });

        });
    </script>
@endsection



