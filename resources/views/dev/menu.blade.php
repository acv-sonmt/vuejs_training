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

                        <li id="parent" style="margin-top: 1% ;background-color: lightgrey; width: 95%" class="menu-item" data-level="<?php echo $dataCategory[$i]->level_value; ?>"><a href="#0"><?php echo $dataCategory[$i]->name; ?></a>
                            <span class="plus">+</span>
                            <span class="minus">-</span>
                        </li>


                        <?php }else if($dataCategory[$i]->level_value > $prevLevel){?>
                            <ul class="group-menu-item" id="sub1">
                                <li style="margin-top: 1% ;background-color: lightgrey;width: 95%" class="menu-item" data-level="<?php echo $dataCategory[$i]->level_value; ?>"><a href="#0"><?php echo $dataCategory[$i]->name; ?></a></li>
                                <?php }else{?>
                                <?php for($j = $dataCategory[$i]->level_value;$j<$prevLevel;$j++){ ?>
                            </ul>
                        <?php } ?>

                        <li style="margin-top: 1% ;background-color: lightgrey;width: 95%" class="menu-item" data-level="<?php echo $dataCategory[$i]->level_value; ?>"><a href="#0"><?php echo $dataCategory[$i]->name; ?></a></li>

                        <?php }?>
                            <div class="CUD"> 
                                <a class="pull-right btn btn-danger btn-xs" data-nodrag ng-click="remove(this)"><span class="glyphicon glyphicon-remove"></span>
                                </a>
                                <a class="pull-right btn btn-warning btn-xs" data-nodrag ng-click="remove(this)"><span class="glyphicon glyphicon-edit"></span>
                                    <a class="pull-right btn btn-primary btn-xs" data-nodrag ng-click="newItem()"><span
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

@endsection
@section('scripts')
    <script type="text/javascript">
         $('#sub1').hide();
         $('.minus').hide();

         $('.plus').on('click', function(event) {
             $('#sub1').show();
             $('.minus').show();
             $('.plus').hide();
         });

         $('.minus').on('click', function(event) {
             $('#sub1').hide();
             $('.plus').show();
             $('.minus').hide();
         });

    </script>
    <script type="text/javascript">
        $(document).ready(function () {

        });

    </script>

@endsection
