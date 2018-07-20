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
        position: relative;
    }
    #upload{
        margin-top: 15px;
    }
    .delete-btn{
        position: absolute;
        right: 1px;
        bottom: 0px;
        color: red;
        font-size: 17px;
        display: none;
        cursor: pointer;
    }
    .image-item:hover .delete-btn{
        display: block !important;
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
                <?php if(!empty($urlList)){?>
                <?php foreach ($urlList as $url){ ?>
                    <div class="image-item form-row">
                        <img class='img-item' src='{{$url['url']}}' path="{{$url['path']}}" image-name="" />
                        <span class="fa fa-trash delete-btn"></span>
                    </div>
                    <?php } ?>
                <?php } ?>
            </div>
        </div>
        <div class="clearfix"></div>
        <input type="file"  id="fileupload" multiple="true">
        <button id="upload">UPLOAD</button>
    </div>

<div id="image-item-template" class="display-none">
    <div class="image-item form-row">
        <img class='img-item' src='{{asset("common_images/no-image.png")}}' path="" image-name="" />
        <span class="fa fa-trash delete-btn"></span>
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
                                $(img).attr('path',item.uri);
                                $(img).attr('image-name',item.client_file_name);
                                $('#img-upload-area').append(itemImage);
                            });
                        }

                    }
                });
            });
            $(document).on('click','.delete-btn',function(){
                var parentBlock = $(this).parent('.image-item');
                var path = $(parentBlock).find('.img-item').attr('path');
                $.ajax({
                    type: 'Post',
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    dataType:'JSON',
                    data:{path:path},
                    url: "<?php echo @route('doDeleteFile_template')?>",
                    success: function (result) {
                        if(result.status == '{{SDBStatusCode::OK}}') {
                            $(parentBlock).remove();
                        }

                    }
                });
            });

        });
    </script>
@endsection



