@extends('layouts.dev')
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
            background-color: lightgrey;
            margin-right:-6%;
            margin-top:-1.8%;
        }
        
        /*.CUDdad{
           background-color: lightgrey;
            margin-right:-6%;
            margin-top:-1.8%;;

        }
        .CUDchid{
           background-color: lightgrey;
            margin-right:-6%;
            margin-top:-1.8%;

        }*/
        .display-none{
            /*display: none;*/
        }

        .menu{
            margin-top: 1% ;
            background-color:white;
        }

        .plusButton{
            background-color:#98ff544d;

            margin-left:-2.5%;
        }
        .minusButton{
            background-color:#ef4e224d;

            margin-left:-2.5%;
        }
        .uname{
            width:100%;
            /*margin-top: -4%;*/
            background-color: #e7f3a44d;
        }
        .newNodeName{
            margin-left:5%;
            width:90%;
            background-color: #f3e6a49e;

            /*margin-top: -1.5%;*/
        }
        .fa-arrow-down{
            font-size: 12px;
        }
        .fa-arrow-right{
            font-size: 12px;
        }
        .note{
            color: red;
            margin-left:5%;

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
                                    <span class="plus"><button class="plusButton"><i class="fa fa-arrow-down"></i></button></span>
                                    <span class="minus"><button class="minusButton"><i class="fa fa-arrow-right"></i></button></span>
                            <?php } ?>
                            <input type="" name="" class="uname" disabled value="<?php echo $dataCategory[$i]->name; ?>">
                            
                            <div class="CUD dad">
                                <a class="pull-right btn btn-danger delete btn-xs"><span class="glyphicon glyphicon-remove"></span></a>
                                <a class="pull-right btn btn-warning edit btn-xs" ><span class="glyphicon glyphicon-edit"></span></a>
                                <a class="pull-right btn btn-info update btn-xs" hidden="true"><span class="glyphicon glyphicon-save"></span></a>
                                <a class="pull-right btn btn-primary create btn-xs" ><span class="glyphicon glyphicon-plus"></span></a>
                            </div>
                            <?php if ($i+1 < $count && $dataCategory[$i+1]->level_value > $dataCategory[$i]->level_value){?>

                            <?php }else{ ?>
                            </li>
                            <?php } ?>
                        <?php }else if($dataCategory[$i]->level_value > $prevLevel){?>

                        <ul class="group-menu-item display-none">
                            <li class="menu-item menu" data-id="<?php echo $dataCategory[$i]->id; ?>">
                                <?php if ($i+1 < $count && $dataCategory[$i+1]->level_value > $dataCategory[$i]->level_value){?>
                                    <span class="plus"><button class="plusButton"><i class="fa fa-arrow-down"></i></button></span>
                                    <span class="minus"><button class="minusButton"><i class="fa fa-arrow-right"></i></button></span>
                                <?php } ?>
                                <input type="" name="" class="uname" disabled value="<?php echo $dataCategory[$i]->name; ?>">
                                
                                <div class="CUD CUDdad">
                                    <a class="pull-right btn btn-danger delete btn-xs"><span class="glyphicon glyphicon-remove"></span></a>
                                    <a class="pull-right btn btn-warning edit btn-xs" ><span class="glyphicon glyphicon-edit"></span></a>
                                    <a class="pull-right btn btn-info update btn-xs" hidden="true"><span class="glyphicon glyphicon-save"></span></a>
                                    <a class="pull-right btn btn-primary create btn-xs" ><span class="glyphicon glyphicon-plus"></span></a>
                                </div>
                                <?php if ($i+1 < $count && $dataCategory[$i+1]->level_value > $dataCategory[$i]->level_value){?>

                            <?php }else{ ?>
                                </li>
                            <?php } ?>
                            <?php }else{?>
                            <?php for($j = $dataCategory[$i]->level_value;$j<$prevLevel;$j++){ ?>
                        </ul>
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


<div id="new-node-temp" hidden="true">
    <li class="menu-item menu" data-id="">
            <label class="note">* không được bỏ trống</label>
            <input type="text" class="newNodeName form-control" placeholder="Thêm Mới" />
        <div class="CUD CUDchid" >
            <a class="pull-right btn btn-danger delete btn-xs"><span class="glyphicon glyphicon-remove"></span>
            </a>
            <a class="pull-right btn btn-info save btn-xs" ><span class="glyphicon glyphicon-save"></span></a>
        </div>
    </li>
</div>

<div id="new-node-group-temp" hidden="true">
    <ul class="group-menu-item">
        <li class="menu-item menu" data-id="">
            <label class="note">* không được bỏ trống</label>
                <input  type="text" class="newNodeName form-control" placeholder="Thêm Mới"/>
            <div class="CUD CUDchid">
                <a class="pull-right btn btn-danger delete btn-xs"><span class="glyphicon glyphicon-remove"></span>
                </a>
                <a class="pull-right btn btn-info save btn-xs" ><span class="glyphicon glyphicon-save"></span></a>
            </div>
        </li>
    </ul>
</div>


@endsection
@section('scripts')
    <script type="text/javascript">
        $('.update').addClass('display-none');
        $('.minus').addClass('display-none');

        $('.plus').on('click', function(event) {
            $(this).parent('.menu-item').find('ul.group-menu-item').first().removeClass('display-none');  //Lấy ra thằng ul gần nhất
            $(this).next('.minus').removeClass('display-none');
            $(this).addClass('display-none');
        });

        $('.minus').on('click', function(event) {
            $(this).parent('.menu-item').find('ul.group-menu-item').first().addClass('display-none');
            $(this).prev('.plus').removeClass('display-none');
            $(this).addClass('display-none');
        });

        $(document).on('click', '.newNodeName' ,function(event) {
 
                    $(this).parents('li.menu-item').first().find('label.note').first().addClass('display-none');
        });

        $(document).on('click', '.edit' ,function(event) {
            $(this).parents('li.menu-item').first().find('input.uname').first().prop('disabled', false);
            $(this).parents('li.menu-item').first().find('.edit').first().addClass('display-none');
            $(this).parents('li.menu-item').first().find('.update').first().removeClass('display-none');
        });
        $(document).ready(function () {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $('.create').on('click', function(e) {

                 var parentNodeId =  $(this).parents('li.menu-item').data('id');
                 var addNode = $('#new-node-temp').clone().contents(); //gán html vừa viết ở trên
                 var addNodeGroup = $('#new-node-group-temp').clone().contents();

                 var childBag = $(this).parent('.CUD').nextAll('ul.group-menu-item').first();

                 if(childBag.length>0){
                    $(addNode).find('input.newNodeName').first().attr('parentNodeId',parentNodeId);
                    $(addNode).removeClass('display-none');
                    $(this).parents('li.menu-item').first().find('ul.group-menu-item').first().append(addNode);

                }else{
                    $(addNodeGroup).find('input.newNodeName').first().attr('parentNodeId',parentNodeId);
                    $(addNodeGroup).removeClass('display-none');
                    $(this).parents('li.menu-item').first().append(addNodeGroup);
                }
            });

            $(document).on('click','.update', function(event) {
                $(this).parents('li.menu-item').first().find('input').first().prop('disabled', true);
                $(this).parents('li.menu-item').first().find('.update').first().addClass('display-none');
                $(this).parents('li.menu-item').first().find('.edit').first().removeClass('display-none');

                var id = $(this).parents('li.menu-item').data('id');
                var input = $(this).parents('li.menu-item').first().find('input.uname').first();
                var name = $(input).val();

                var data = {
                    id:id,
                    name:name
                 };

                 $.ajax({
                    url: '{{ route('updateMenu') }}',
                    type: 'POST',
                    dataType: 'JSON',
                    data: data,
                    success : function(res){
                      // toastr.success('Thêm mới thành công !');
                    }
                })

            });

            $(document).on('click','.save', function(event) {

                $(this).parents('li.menu-item').first().find('.save').first().addClass('display-none');

                var input = $(this).parents('li.menu-item').first().find('input.newNodeName').first();
                var name = $(input).val();
                var parentId = $(input).attr('parentNodeId');
                var data = {
                    name:name,
                    parent_id:parentId
                };

                $.ajax({
                    url: '{{ route('createMenu') }}',
                    type: 'POST',
                    dataType: 'JSON',
                    data: data,
                    success : function(res){
                      // toastr.success('Thêm mới thành công !');
                    }
                })

            });

            $(document).on('click','.delete', function(event) {

                var id = $(this).parents('li.menu-item').data('id');
                var buttonDelete =  $(this);
                    $.ajax({
                        url: '{{ route('deleteMenu') }}',
                        type: 'DELETE',
                        data: {id: id},
                        success : function(res) {
                                // toastr.success('Xoá thành công!', '',{timeOut: 1000});
                            $(buttonDelete).parents('li.menu-item').first().remove();
                        }
                    });
            });

        });
    </script>

@endsection
