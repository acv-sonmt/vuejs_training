@extends('layouts.dev')
<style>

.edit, .save,.delete{
    cursor: pointer;
}
.table th{
    text-align: center;
}
.table td{
    vertical-align: middle;
}
.save, #save-all{
    color: green;
}
.function{
    padding-bottom: 10px; 
}
.btn{
    cursor: pointer;
}
.form-title{
    padding-top: 7px;
}
#edit-all.open{
    color: green;
}
.text-warning{
    color: orange;
}
legend{
    font-size: 16px !important;
}
</style>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/izimodal/1.5.1/css/iziModal.min.css" />
@section('content')

<div class="row justify-content-center">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header font-weight-bold">Roles management form</div>


            <div class="function col-md-12">
                <button id="add" class="btn btn-primary pull-left glyphicon-plus" title="Add new text"></button>
                
            </div>
            <div class="card-body">
                <table id="tbl-roles" class="table-bordered table table-hover w-100">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Name</th>
                            <th>Roles Value</th>
                            <th style="min-width: 408px;">Description</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $index = 0; ?>
                        <?php if(!empty($roles)){
                            foreach ($roles as $item){
                                $index++;
                                ?>
                                <tr class="roles-record">
                                    <td class="text-center"><?php echo $index; ?></td>
                                    <td><?php echo $item->name; ?></td>
                                    <td><?php echo $item->role_value; ?></td>
                                    <td><?php echo $item->description; ?></td>
                                    <td class="text-center" >
                                        <span class="edit-role glyphicon glyphicon-edit" data-id="<?php echo $item->id; ?>"></span>
                                        <span class="delete-role glyphicon glyphicon-trash" data-id="{{$item->id}}"></span>
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
<div id="modal-iFrame" class="iziModal" display="none"></div>
<div id="modal-iFrame2" class="iziModal" display="none"></div>




@endsection     
@section('scripts')
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
<link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/izimodal/1.5.1/js/iziModal.min.js"></script>

<script type="text/javascript">
 $(document).ready(function () {
    dataTable();
});

 $.ajaxSetup({

    headers: {

        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')

    }
});


//create role
$(document).on('click', '#add', function(event) {
  event.preventDefault();
  $('#modal-iFrame').iziModal('open', this); // Do not forget the "this"
});


$("#modal-iFrame").iziModal({
  title: 'Create Role', //Modal title
  subtitle: 'Fill the table.', //Modal subtitle
  headerColor: 'rgb(51, 76, 123)', //Color of modal header. Hexa colors allowed.
  overlayColor: 'rgba(0, 0, 0, 0.4)', //Color of overlay behind the modal
  iconColor: '',
  iconClass: 'icon-chat',
  iframe: true, //In this example, this flag is mandatory. Izimodal needs to understand you will call an iFrame from here
  iframeURL: "{{route('getCreateNewRoleItem')}}" //Link will be opened inside modal
});


///Edit role

$(document).on('click', '.edit-role', function(event) {
  event.preventDefault();
  $('#modal-iFrame2').iziModal('open', this); // Do not forget the "this"
});

$("#modal-iFrame2").iziModal({
  title: 'Edit Role', //Modal title
  subtitle: 'Fill the table.', //Modal subtitle
  headerColor: 'rgb(51, 76, 123)', //Color of modal header. Hexa colors allowed.
  overlayColor: 'rgba(0, 0, 0, 0.4)', //Color of overlay behind the modal
  iconColor: '',
  iconClass: 'icon-chat',
  iframe: true, //In this example, this flag is mandatory. Izimodal needs to understand you will call an iFrame from here
  iframeURL: "", //Link will be opened inside modal
    onOpening: function(modal){

                var id =$(event.target).closest("span").data("id");//get Id, get button then get id
                $(".iziModal-iframe").attr("src","{{route('getEditRoleItem')}}?id="+id);
            },

});



$(document).on('click', '.delete-role', function () {
                var id = $(this).data('id');
                var code = $(this).data("code");
                $.confirm({
                    title: '<p class="text-warning">Warning</p>',
                    boxWidth: '500px',
                    useBootstrap: false,
                    closeOnclick: false,
                    content: "Are you sure to delete?",
                    buttons: {
                        Save: {
                            text: 'OK',
                            btnClass: 'btn btn-primary',
                            action: function () {
                                $.ajax({
                                    method: 'Post',
                                    data:{code:code},
                                    url: '{{route('deleteRole')}}?id='+ id,
                                    success: function (result) {
                                        location.reload();
                                    }
                                });
                            }
                        },
                        cancel: {
                            text: ' Cancel',
                            btnClass: 'btn btn-danger',
                            action: function () {
                            }
                        }
                    }
                });
            });



function dataTable() {
    var table = $('#tbl-roles').DataTable(
    {
        scrollY:        '60vh',
        scrollCollapse: true,
        fixedHeader: true,
        bJQueryUI: true,
        info:     false,
        paging: false,
        dom: 't',
        searching: false
    }
    );
}

</script>

@endsection
