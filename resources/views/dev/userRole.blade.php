@extends('layouts.dev')
@section('content')
    <style>
        /* The switch - the box around the slider */
        .switch {
            position: relative;
            display: inline-block;
            width: 44px;
            height: 24px;
        }

        /* Hide default HTML checkbox */
        .switch input {
            display: none;
        }

        label.switch  {
            margin-bottom: -6px !important;
        }

        /* The slider */
        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            -webkit-transition: .4s;
            transition: .4s;
        }

        .slider:before {
            position: absolute;
            content: "";
            height: 13px;
            width: 13px;
            left: 2px;
            bottom: 6px;
            background-color: white;
            -webkit-transition: .4s;
            transition: .4s;
        }

        input:checked + .slider {
            background-color: #2196F3;
        }

        input:focus + .slider {
            box-shadow: 0 0 1px #2196F3;
        }

        input:checked + .slider:before {
            -webkit-transform: translateX(26px);
            -ms-transform: translateX(26px);
            transform: translateX(26px);
        }

        /* Rounded sliders */
        .slider.round {
            border-radius: 34px;
        }

        .slider.round:before {
            border-radius: 50%;
        }

        .table th {
            text-align: center;
        }

        .function {
            padding-bottom: 10px;
        }
        .padding-left-0{
            padding-left: 0 !important;
        }
    </style>
    @csrf

    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header font-weight-bold">USER - ROLE</div>

                <div class="card-body form-group">
                    <fieldset class="border">
                        <legend>Filter:</legend>
                        <div class="col-md-12 filter">
                            <div class="col-md-12 form-group">
                                <div class="col-md-2 form-title">Role</div>
                                <div class="col-md-4">
                                    <select id="cb-role" class="form-control">
                                        <option value="">---</option>
                                        <?php if(!empty($roleList)){?>
                                        <?php foreach ($roleList as $roleItem){?>
                                        <option
                                                value="<?php echo $roleItem->name;?>"><?php echo $roleItem->name?></option>
                                        <?php   }
                                        }?>
                                    </select>
                                </div>
                                <div class="col-md-2 form-title">Active</div>
                                <div class="col-md-4">
                                    <select id="cb_active" class="form-control">
                                        <option value="">---</option>
                                        <?php if(!empty($dataUseRole)){?>
                                        <?php foreach ($dataUseRole as $Item){?>
                                        <option
                                                value="<?php echo $Item->user_active;?>"><?php echo $Item->user_active?></option>
                                        <?php   }
                                        }?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-12 form-group">
                                <div class="col-md-2 form-title">Name</div>
                                <div class="col-md-4">
                                    <input type="text" id="text-name" class="form-control"/>
                                </div>
                                <div class="col-md-2 form-title">Email</div>
                                <div class="col-md-4">
                                    <input type="text" id="text-email" class="form-control"/>

                                </div>
                            </div>
                        </div>


                    </fieldset>

                    <table id="Useracl-table" class="table-bordered table table-hover w-100">
                        <thead>
                        <tr>
                            <th>###</th>
                            <th>Email</th>
                            <th>Name</th>
                            <th>Gender</th>
                            <th>Birthday</th>
                            <th>IsActive</th>
                            <th>Role</th>

                        </tr>
                        </thead>
                        <tbody>
                        <?php $index = 0; ?>
                        <?php if(!empty($dataUseRole)){
                        foreach ($dataUseRole as $item){
                        $index++;
                        ?>
                        <tr>
                            <td class="text-center"><?php echo $index; ?></td>
                            <td><?php echo $item->user_email; ?></td>
                            <td><?php echo $item->user_name; ?></td>
                            <td>
                                <?php  if ($item->user_gender == 1) {
                                   echo 'nam';
                                }
                                elseif($item->user_gender == 2){
                                    echo 'nữ';
                                }
                                ?>
                            </td>

                            <td><?php echo $item->user_birth_date; ?></td>
                            <td>
                                <?php  if ($item->user_active == 1) {
                                    echo 'Actived';
                                }
                                else{
                                    echo 'Not active';
                                }
                                ?>
                            </td>
                            <td>
                                <select id="change-role" class="lang form-control">
                                    <option value=""><?php echo $item->role_name; ?></option>
                                    <?php if(!empty($roleList)){?>
                                    <?php foreach ($roleList as $roleItem){?>
                                    <option
                                            value="<?php echo $roleItem->id;?>"><?php echo $roleItem->name?>
                                    </option>
                                    <?php   }
                                    }?>
                                </select>
                            </td>

                        </tr>
                        <?php }
                        }?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


@endsection
@section('scripts')
    <script type="text/javascript">
        $(document).ready(function () {
            var table = $('#Useracl-table').DataTable(
                {
                    scrollY:        '60vh',
                    scrollCollapse: true,
                    fixedHeader: true,
                    bJQueryUI: true,
                    info: false,
                    paging: false,
                    dom: 't',
                    searching: true,
                    "columnDefs": [{
                        "targets": 5,
                        "orderable": false
                    }]
                }
            );

            $('#text-name').on('change', function () {
                table.column(1).search(this.value).draw();
            });

            $('#text-email').on('change', function () {
                table.column(2).search(this.value).draw();
            });

            $(document).on('change', '.change-role', function () {
                var data = {
                    role_name: $(this).clone('checked'),
                    role_id: $(this).data('role_map_id')
                };
                $.ajax({
                    data: data,
                    type: 'Post',
                    dataType: 'json',
                    url: "<?php echo @route('updateUserRole')?>",
                    success: function (result) {
                    }
                });
            });

            $(document).on('change', '.change-active-all', function () {
                var checked =  $(this).prop('checked');
                var data = {
                    active: checked
                };
                $.ajax({
                    data: data,
                    type: 'Post',
                    dataType: 'json',
                    url: "<?php echo @route('updateAclActiveAll')?>",
                    success: function (result) {
                        $('#cb-role').val('');
                        $('#cb_active').val('');
                        $('#change_role').val();
                        $('#text-name').val('');
                        $('#text-action').val('');
                        table.column(1).search('').draw();
                        if(checked==true){
                            $('#Useracl-table .change-active').each(function(){
                                $(this).prop('checked',true);
                            });
                        }else{
                            $('#Useracl-table  .change-active').each(function(){
                                $(this).prop('checked',false);
                            });
                        }
                    }
                });
            });

        });


    </script>

@endsection


