<!DOCTYPE html>
<html>
<head>
    <title>Create Role</title>
<meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <link href="{{ asset('backend/template1/css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{ asset('backend/template1/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{ asset('backend/template1/css/daterangepicker.css')}}" rel="stylesheet">

    <link href="{{ asset('backend/template1/css/bootstrap-datetimepicker.css')}}" rel="stylesheet">
    <link href="{{ asset('backend/template1/css/bootstrap-colorpicker.min.css')}}" rel="stylesheet">
    <link href="{{ asset('css/lib/jquery-confirm.css') }}" rel="stylesheet">

    <!-- Fonts -->
    <link rel="stylesheet" type="text/css" href="{{ asset('css/fonts/font-face.css') }}">
    <!-- Latest compiled and minified CSS & JS -->
    <link href="{{ asset('css/lib/bootstrap.min.css') }}" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/lib/jquery-confirm.css') }}" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/izimodal/1.5.1/css/iziModal.min.css" />
    <style type="text/css">
        #edit-role{
            margin: 30px;
        }
    </style>
</head>
<body>

<!-- edit Role Modal -->
    <div id="edit-role" >

                <form id="fr-edit" data-toggle="validator" method="POST">
                    <input type="hidden" name="_token" value="{{csrf_token('')}}">

                    <div class="form-group">
                        <input type="hidden" name="id" value="">
                        <label class="control-label" for="title">Name:</label>

                        <input type="text" name="name" value="{{$edit->name}}" class="form-control" />

                        <div class="help-block with-errors"></div>

                    </div>
                    <div class="form-group">

                        <label class="control-label" for="title">Role Value:</label>

                        <input type="text" name="role_value" value="{{$edit->role_value}}" class="form-control" />

                        <div class="help-block with-errors"></div>

                    </div>
                    <div class="form-group">

                        <label class="control-label" for="title">Description:</label>

                        <input type="text" name="description" value="{{$edit->description}} " class="form-control"/>

                        <div class="help-block with-errors"></div>

                    </div>

                    <div class="form-group">

                        <button type="submit" class="btn submit-edit btn-success">Submit</button>
                        <button type="button" id="close" class="btn btn-danger" data-izimodal-close="" data-izimodal-transitionout="bounceOutDown">Close</button>
                    </div>

                </form>
</div>

<!-- jQuery -->
<script src="{{ asset('backend/template1/js/jquery.min.js')}}"></script>
<!-- Bootstrap -->
<script src="{{ asset('backend/template1/js/bootstrap.min.js')}}"></script>
<script src="{{ asset('backend/template1/js/jquery.autocomplete.min.js')}}"></script>
<script src="{{ asset('js/lib/jquery-confirm.js')}}"></script>
<script src="{{ asset('backend/template1/js/moment-with-locales.js')}}"></script>

<!-- bootstrap-datetimepicker -->
<script src="{{ asset('backend/template1/js/daterangepicker.js')}}"></script>
<script src="{{ asset('backend/template1/js/bootstrap-datetimepicker.min.js')}}"></script>

<script src="{{ asset('backend/template1/js/bootstrap-colorpicker.min.js')}}"></script>
<!-- //---- -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/izimodal/1.5.1/js/iziModal.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
<link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet">


<script type="text/javascript">
    $("#close").click(function(){
        parent.$('#modal-iFrame2').iziModal('close'); 
    });  


$("#fr-edit").submit(function(e){
                stopEvent(e);
            });


///submit edit role

$(".submit-edit").click(function(e){
    e.preventDefault();
    var id = "{{$edit->id}}";
    var name = $("#edit-role").find("input[name='name']").val();
    var role_value = $("#edit-role").find("input[name='role_value']").val();
    var description = $("#edit-role").find("input[name='description']").val();
    

    $.ajax({

        dataType: 'json',

        type:'POST',

        url: '{{route('updateRole')}}',

        data:{id:id, name:name, role_value:role_value, description:description}

    }).done(function(data){
        parent.toastr.success('Customer Created Successfully.', 'Success Alert', {timeOut: 3000}); 
        parent.location.reload();

    });

});

</script>
</body>
</html>