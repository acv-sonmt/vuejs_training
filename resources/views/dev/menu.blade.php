@extends('layouts.dev')

<!-- Latest compiled and minified CSS & JS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<script src="//code.jquery.com/jquery.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  {{-- <link rel="stylesheet" href="/resources/demos/style.css"> --}}
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
@section('content')
    <style>
        .treeview .list-group-item {
            cursor: pointer
        }

        .treeview span.indent {
            margin-left: 10px;
            margin-right: 20px
        }

        .treeview span.icon {
            width: 12px;
            margin-right: 5px
        }

        .treeview .node-disabled {
            color: silver;
            cursor: not-allowed
        }

        .node-treeview6 {
            color: #428bca;
            width: 100%;
        }

        .node-treeview6:not(.node-disabled):hover {
            background-color: #F5F5F5;
        }
        .menu-item,.group-menu-item{
            list-style-type: none;
        }

        .width-200{
            width: 200px;
        }
        
        .CUD{
            float :right !important;
            margin-right:-130px;
            margin-top:-30px;
        }

        .plus{
            margin-left:-20px;
            top:40px;
        }
        .minus{
            top:40px;
            margin-left:-20px;
        }
        .oldName{
            width:100%;
            background-color: #e7f3a44d !important;
            margin-top:15px;
            height: 30px !important;
        }
        .itemDelete{
            margin-left: 10px;

        }
        .itemEdit{
            margin-left: 10px;

        }
        .itemUpdate{
            margin-left: 10px;

        }
        .iteamCreate{
            margin-left: 10px;

        }
        .itemSave{
            margin-left: 10px;
        }
        .glyphicon-remove{
            width: 20px;
            line-height: 25px;
        }
        .glyphicon-edit{
            width: 20px;
            line-height: 25px;
        }
        .glyphicon-update{
           width: 20px;
           line-height: 25px;
        }
        .glyphicon-plus{
            width: 20px;
            line-height: 25px;
        }


    </style>
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header font-weight-bold">Menu</div>
                <h4>Basic</h4>
                <div class="card-body form-group basic-menu">
                    <ul class="basic">
                        <?php
                        $prevLevel = 0;
                        $count = count($dataCategory);
                        for($i = 0;$i < $count ; $i++){
                        if($dataCategory[$i]->level_value == $prevLevel){?>

                        <li class="menu-item menu" data-id="<?php echo $dataCategory[$i]->id; ?>" >
                            <?php if ($i+1 < $count && $dataCategory[$i+1]->level_value > $dataCategory[$i]->level_value){?>
                                    <span class="glyphicon plus plusButton showplus glyphicon-plus"></span>
                                    <span class="glyphicon minus minusButton glyphicon-minus"></span>
                            <?php } ?>
                            <div class="cssIput">
                                <input type="text" name="" class="uname oldName tooltipName form-control" data-toggle="tooltip" title="You don't Empty" required disabled value="<?php echo $dataCategory[$i]->name; ?>">
                            </div>
                            <div class="CUD ButtonCUD dad">
                                <a class="pull-right btn btn-danger itemDelete delete btn-xs"><span class="glyphicon glyphicon-remove"></span></a>
                                <a class="pull-right btn btn-warning itemEdit edit btn-xs" ><span class="glyphicon glyphicon-edit"></span></a>
                                <a class="pull-right btn btn-info update itemUpdate btn-xs" hidden="true"><span class="glyphicon glyphicon-save"></span></a>
                                <a class="pull-right btn btn-primary iteamCreate create btn-xs" ><span class="glyphicon glyphicon-plus"></span></a>
                            </div>
                            <?php if ($i+1 < $count && $dataCategory[$i+1]->level_value > $dataCategory[$i]->level_value){?>

                            <?php }else{ ?>
                        </li>
                            <?php } ?>
                        <?php }else if($dataCategory[$i]->level_value > $prevLevel){?>

                        <ul class="group-menu-item display-none">
                            <li class="menu-item menu" data-id="<?php echo $dataCategory[$i]->id; ?>">
                                <?php if ($i+1 < $count && $dataCategory[$i+1]->level_value > $dataCategory[$i]->level_value){?>
                                   <span class="glyphicon plus plusButton showplus glyphicon-plus"></span>
                                   <span class="glyphicon minus minusButton glyphicon-minus"></span>
                                <?php } ?>

                                <div class="cssIput">
                                    <input type="text" name="" class="uname tooltipName oldName form-control" required data-toggle="tooltip" title="You don't Empty" disabled value="<?php echo $dataCategory[$i]->name; ?>">
                                </div> 
                                
                                <div class="CUD chid">
                                    <a class="pull-right btn btn-danger itemDelete delete btn-xs"><span class="glyphicon glyphicon-remove"></span></a>
                                    <a class="pull-right btn btn-warning itemEdit edit btn-xs" ><span class="glyphicon glyphicon-edit"></span></a>
                                    <a class="pull-right btn btn-info update itemUpdate btn-xs" hidden="true"><span class="glyphicon glyphicon-save"></span></a>
                                    <a class="pull-right btn btn-primary iteamCreate create btn-xs" ><span class="glyphicon glyphicon-plus"></span></a>
                                </div>
                                <?php if ($i+1 < $count && $dataCategory[$i+1]->level_value > $dataCategory[$i]->level_value){?>

                            <?php }else{ ?>
                                </li>
                            <?php } ?>
                            <?php }else{?>
                            <?php for($j = $dataCategory[$i]->level_value;$j<$prevLevel;$j++){ ?>
                        </ul>
                            <?php } ?>
                        <li class="menu-item menu" data-id="<?php echo $dataCategory[$i]->id; ?>">
                            <?php if ($i+1 < $count && $dataCategory[$i+1]->level_value > $dataCategory[$i]->level_value){?>
                                <span class="glyphicon plus plusButton showplus glyphicon-plus"></span>
                                <span class="glyphicon minus minusButton glyphicon-minus"></span>
                            <?php } ?>
                            <div class="cssIput">
                                <input type="text" name="" class="uname tooltipName oldName form-control" required data-toggle="tooltip" title="You don't Empty" disabled value="<?php echo $dataCategory[$i]->name; ?>">
                            </div>
                            <div class="CUD chid2">
                                <a class="pull-right btn btn-danger itemDelete delete btn-xs"><span class="glyphicon glyphicon-remove"></span></a>
                                <a class="pull-right btn btn-warning itemEdit edit btn-xs" ><span class="glyphicon glyphicon-edit"></span></a>
                                <a class="pull-right btn btn-info update itemUpdate btn-xs" hidden="true"><span class="glyphicon glyphicon-save"></span></a>
                                <a class="pull-right btn btn-primary iteamCreate create btn-xs" ><span class="glyphicon glyphicon-plus"></span></a>
                            </div>
                            <?php if ($i+1 < $count && $dataCategory[$i+1]->level_value > $dataCategory[$i]->level_value){?>

                        <?php }else{ ?>
                        </li>
                            <?php } ?>
                        <?php }?>

                        <?php

                        $prevLevel = $dataCategory[$i]->level_value;
                        }

                        ?>
                    </ul>
                </div>

                <div class="ref">
                    <b>Refer: </b><a href="http://mikehillyer.com/articles/managing-hierarchical-data-in-mysql/"
                                     target="_blank">http://mikehillyer.com/articles/managing-hierarchical-data-in-mysql/</a>
                </div>
            </div>
        </div>
    </div>


    <div id="new-node-temp" class=".divchid" hidden="true">
        <li class="menu-item menu menuchid">
                <div class="cssIput">
                    <input type="text" class="newNodeName oldName tooltipName form-control" required data-toggle="tooltip" title="You don't Empty" placeholder="" />
                </div>
            <div class="CUD CUDchid" >
                <a class="pull-right btn btn-danger itemDelete delete btn-xs"><span class="glyphicon  glyphicon-remove"></span>
                </a>
                <a class="pull-right btn btn-info save itemSave btn-xs" ><span class="glyphicon glyphicon-save"></span></a>
                <a class="pull-right btn btn-warning edit itemEdit editchid btn-xs"><span class="glyphicon glyphicon-edit"></span></a>
                <a class="pull-right btn btn-info itemUpdate updatechid btn-xs"><span class="glyphicon glyphicon-save"></span></a>
                <a class="pull-right btn btn-primary iteamCreate create createChid btn-xs" ><span class="glyphicon glyphicon-plus"></span></a>
            </div>
        </li>
    </div>

    <div id="new-node-group-temp" class=".divchid" hidden="true">
        <ul class="group-menu-item">
            <li class="menu-item menu menuchid">
                    <div class="cssIput">
                        <input  type="text" class="newNodeName oldName tooltipName form-control" required data-toggle="tooltip" title="You don't Empty" placeholder=""/>
                    </div>
                <div class="CUD CUDchid">
                    <a class="pull-right btn btn-danger delete btn-xs"><span class="glyphicon itemDelete glyphicon-remove"></span>
                    </a>
                    <a class="pull-right btn btn-info save btn-xs"><span class="glyphicon itemSave glyphicon-save"></span></a>
                    <a class="pull-right btn btn-warning edit editchid btn-xs"><span class="glyphicon itemEdit glyphicon-edit"></span></a>
                    <a class="pull-right btn btn-info updatechid btn-xs" ><span class="glyphicon itemUpdate glyphicon-save"></span></a>
                    <a class="pull-right btn btn-primary create createChid btn-xs" ><span class="glyphicon iteamCreate glyphicon-plus"></span></a>
                </div> 
            </li>
        </ul>
    </div>


@endsection
@section('scripts')


    <script type="text/javascript">
        $('.update').addClass('display-none');
        $('.updatechid').addClass('display-none');
        $('.minus').addClass('display-none');
        $('.createChid').addClass('display-none');
        $('.editchid').addClass('display-none');

// show ra menu
        $('.plusButton').on('click', function(event) {
            $(this).parent('.menu-item').find('ul.group-menu-item').first().removeClass('display-none');  //Lấy ra thằng ul gần nhất
            $(this).next('.minusButton').removeClass('display-none');
            $(this).addClass('display-none');
        });

// ẩn menu đi
        $('.minusButton').on('click', function(event) {
            $(this).parent('.menu-item').find('ul.group-menu-item').first().addClass('display-none');
            $(this).prev('.plusButton').removeClass('display-none');
            $(this).addClass('display-none');
        });

// ẩn dòng "ko được để trống"
        $(document).on('click', '.newNodeName' ,function(event) {
            $(this).parents('li.menu-item').first().find('label.note').first().addClass('display-none');
        });

        $(document).ready(function () {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

// Mở input ra để sửa Menu
            $(document).on('click', '.edit' ,function(event) {
                $(this).parents('li.menu-item').first().find('input.uname').first().prop('disabled', false);
                $(this).parents('li.menu-item').first().find('input.newNodeName').first().prop('disabled', false);
                $(this).parents('li.menu-item').first().find('.edit').first().addClass('display-none');
                $(this).parents('li.menu-item').first().find('.create').first().addClass('display-none');
                $(this).parents('li.menu-item').first().find('.update').first().removeClass('display-none');
                // $(this).parents('li.menu-item').first().find('.updatechid').first().removeClass('display-none');
            });

            $(document).on('click', '.editchid' ,function(event) {
                $(this).parents('li.menu-item').first().find('.updatechid').first().removeClass('display-none');

            });


//Thêm mới menu
            $(document).on('click', '.create' ,function(event) {
                $(this).parents('li.menu-item').first().find('.showplus').first().trigger('click');
                $(this).removeClass('display-none');
                $(this).parent('.menu-item').find('ul.group-menu-item').first().removeClass('display-none');
                $('.menu-item').removeClass('display-none');

                 var parentNodeId =  $(this).parents('li.menu-item').data('id');
                 var addNode = $('#new-node-temp').clone().contents(); //gán html vừa viết ở trên
                 var addNodeGroup = $('#new-node-group-temp').clone().contents();
                 var childBag = $(this).parent('.ButtonCUD').nextAll('ul.group-menu-item').first();

                 if(childBag.length>0){ 
                    $(addNode).find('input.newNodeName').first().attr('parentNodeId',parentNodeId);

                    $(addNode).removeClass('display-none');
                    $(this).parents('li.menu-item').first().find('ul.group-menu-item').first().prepend(addNode);

                }else{
                    $(addNodeGroup).find('input.newNodeName').first().attr('parentNodeId',parentNodeId);
                    $(addNodeGroup).removeClass('display-none');
                    $(this).parents('li.menu-item').first().append(addNodeGroup);
                }
            });

// Lưu lại Sau Khi Sửa
            $(document).on('click','.update', function(event) {
                

                var id = $(this).parents('li.menu-item').data('id');
                var input = $(this).parents('li.menu-item').first().find('input.uname').first();
                var name = $(input).val();
                var data = {
                    id:id,
                    name:name,
                 };

                if (name != ''){
                    $(this).parents('li.menu-item').first().find('input').first().prop('disabled', true);
                    $(this).parents('li.menu-item').first().find('.update').first().addClass('display-none');
                    $(this).parents('li.menu-item').first().find('.edit').first().removeClass('display-none');
                    $(this).parents('li.menu-item').first().find('.create').first().removeClass('display-none');
                     $.ajax({
                        url: '{{ route('updateMenu') }}',
                        type: 'POST',
                        dataType: 'JSON',
                        data: data,
                        success : function(res){

                            if (res.status) {
                                    toastr.success('Yeah! update success!', '',{timeOut: 3000});
                            }
                        }
                    });
                }

                else{
                    $(this).parents('li.menuchid').find('input.tooltipName').tooltip('show');
                        toastr.error('Not Empty!', '',{timeOut: 3000});
                }

            });

// Lưu lại Sau Khi Sửa thằng đang tạo ra
            $(document).on('click','.updatechid', function(event) {
                var id = $(this).parents('li.menu-item').data('id');
                var inputchid = $(this).parents('li.menu-item').first().find('input.newNodeName').first();
                var name = $(inputchid).val();
                var data = {
                    id:id,
                    name:name,
                 };

                if (name != ''){
                    $(this).parents('li.menu-item').first().find('input').first().prop('disabled', true);
                    $(this).parents('li.menu-item').first().find('.updatechid').first().addClass('display-none');
                    $(this).parents('li.menu-item').first().find('.edit').first().removeClass('display-none');
                    $(this).parents('li.menu-item').first().find('.create').first().removeClass('display-none');
                     $.ajax({
                        url: '{{ route('updateMenu') }}',
                        type: 'POST',
                        dataType: 'JSON',
                        data: data,
                        success : function(res){
                            if (res.status) {
                                toastr.success('Yeah! update success!', '',{timeOut: 3000});
                            }
                            else{
                                toastr.error('Not Empty!', '',{timeOut: 3000});

                            }
                        }
                    });
                 }
                 else{
                    $(this).parents('li.menuchid').find('input.tooltipName').tooltip('show');
                 }
            });


//Lưu Lại khi Thêm Mới
            $(document).on('click','.save', function(event) {

                var parentAddId =  $(this).parents('li.menu-item').first().data('id');

                var insert = $(this);
                var input = $(this).parents('li.menuchid').first().find('input.newNodeName').first();
                var name = $(input).val();
                var parentId = $(input).attr('parentNodeId');
                var datas = {
                    name:name,
                    parent_id:parentId
                };

                if (name != ''){
                    $(this).parents('li.menu-item').first().find('.editchid').first().removeClass('display-none');
                    $(this).parents('li.menu-item').first().find('.save').first().addClass('display-none');
                    $(this).parents('li.menu-item').first().find('.createChid').first().removeClass('display-none');
                    $(this).parents('li.menu-item').first().find('input').first().prop('disabled', true);
                    $.ajax({
                        url: '{{ route('createMenu') }}',
                        type: 'POST',
                        dataType: 'JSON',
                        data: datas,
                        success : function(res){
                            var dataFromSP = JSON.parse(res.data[0].data);
                            var newId = dataFromSP.newid;
                            $(insert).parents('ul.group-menu-item').first().find('li.menuchid').first().attr('data-id',newId);
                            if (res.status) {
                                toastr.success('Yeah! add new success !');
                            }
                        }
                    });
                }
                else{
                    $(this).parents('li.menuchid').find('input.tooltipName').tooltip('show');
                }
            });

//Xóa Menu
            $(document).on('click','.delete', function(event) {
                var id = $(this).parents('li.menu-item').data('id');
                var buttonDelete =  $(this);

                swal({
                    title: "YOU WANT DELETE?",
                    text: "You cannot restore it !",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    cancelButtonText: "Cancel",
                    confirmButtonText: "Yes",
                    closeOnConfirm: true,
                },
                    function(isConfirm){
                        if (isConfirm) {
                        $.ajax({
                            url: '{{ route('deleteMenu') }}',
                            type: 'DELETE',
                            data: {id: id},
                            success : function(res) {
                                if (res.status) {
                                    toastr.success('deleted success!', '',{timeOut: 3000});
                                }
                                $(buttonDelete).parents('li.menu-item').first().remove();
                            }
                        });
                        }
                        else{
                        toastr.error('discarded operation!', '',{timeOut: 3000});
                    }
                }); 
            });
        }); 

    </script>




@endsection
