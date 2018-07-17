@extends('layouts.dev')

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
            float:right !important;
            margin-top: -2.1% !important;
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

                        <li  style="margin-top: 1% ;background-color: lightgrey" class="menu-item" data-id="<?php echo $dataCategory[$i]->id; ?>"><a href="#0" ><?php echo $dataCategory[$i]->name; ?></a>
                            @if ($i+1 < $count && $dataCategory[$i+1]->level_value > $dataCategory[$i]->level_value)
                                <span class="plus"><button style="background-color: lightgreen">+</button></span>
                                <span class="minus"><button style="background-color: lightgreen">-</button></span>
                            @endif
                            
                        </li>


                        <?php }else if($dataCategory[$i]->level_value > $prevLevel){?>
                            <ul class="group-menu-item">
                                <li style="margin-top: 1% ;background-color: lightgrey" class="menu-item" data-id="<?php echo $dataCategory[$i]->level_value; ?>"><a href="#0"><?php echo $dataCategory[$i]->name; ?></a></li>
                                <?php }else{?>
                                <?php for($j = $dataCategory[$i]->level_value;$j<$prevLevel;$j++){ ?>
                            </ul>
                        <?php } ?>

                        <li style="margin-top: 1% ;background-color: lightgrey" class="menu-item" data-id="<?php echo $dataCategory[$i]->level_value; ?>"><a href="#0"><?php echo $dataCategory[$i]->name; ?></a>
                            @if ($i+1 < $count && $dataCategory[$i+1]->level_value > $dataCategory[$i]->level_value)

                                <span class="plus"><button style="background-color: lightgreen">+</button></span>
                                <span class="minus"><button style="background-color: lightgreen">-</button></span>
                            @endif
                        </li>

                        <?php }?>
                            <div class="CUD"> 
                                <a class="pull-right btn btn-danger btn-xs" data-nodrag ng-click="remove(this)"><span class="glyphicon glyphicon-remove"></span>
                                </a>
                                <a class="pull-right btn btn-warning btn-xs" data-nodrag ng-click="remove(this)"><span class="glyphicon glyphicon-edit"></span>
                                <a class="pull-right btn btn-primary create btn-xs" data-nodrag ng-click="newItem()"><span
                                    class="glyphicon glyphicon-plus"></span></a>
                                </a>
                            </div>
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

    <div class="col-md-12">
        <div class="modal fade" id="create-item" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                        <h4 class="modal-title" id="myModalLabel">Thêm Mới</h4>
                    </div>
                    <div class="modal-body">
                            <form action="" method="POST" class="form-horizontal" role="form" enctype="multipart/form-data" id="formCreate">
                            <div class="form-group">
                                <label for="name">Name:</label>
                                <input type="text" name="name" id="name" class="form-control" />
                            </div>

                            <div class="form-group">
                                <button type="submit" style="margin-left: 43%" id="btnSubmit" class="btn btn-success">Tạo</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
@section('scripts')
    <script type="text/javascript">
         $('ul.group-menu-item').hide();
         $('.minus').hide();


         $('.plus').on('click', function(event) {

            $(this).parent('.menu-item').nextAll('ul.group-menu-item').first().show();  //Lấy ra thằng ul gần nhất
             $(this).next('.minus').show();
             $(this).hide();
         });

         $('.minus').on('click', function(event) {
             $(this).parent('.menu-item').nextAll('ul.group-menu-item').hide();
             $(this).prev('.plus').show();
             $(this).hide();
         });

         
    </script>

    <script type="text/javascript">
         
        
        $(document).ready(function () {

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $('.create').on('click', function(event) {
                 $('#create-item').modal().show();
             });

            $("#formCreate").submit(function(e){
                e.preventDefault();
                var name = $('#name').val();
                console.log(name);
                $.ajax({
                    url: '{{ route('createMenu') }}',
                    type: 'POST',
                    dataType: 'JSON',
                    data: {name: 'name'},
                    success : function(res){
                      var html= '<li>'+data.name+'</li>';
                      toastr.success('Thêm mới thành công !');
                    }
                })
   
            });
        });

    </script>

@endsection
