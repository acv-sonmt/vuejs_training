<!DOCTYPE html>
<html>
<head>
	<title>Add</title>
	<!-- Bootstrap -->
    <link href="{{ asset('backend/template1/css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{ asset('backend/template1/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{ asset('backend/template1/css/daterangepicker.css')}}" rel="stylesheet">
    <link href="{{ asset('backend/template1/css/bootstrap-datetimepicker.css')}}" rel="stylesheet">
	<link href="{{ asset('backend/template1/css/prettify.min.css')}}" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="{{ asset('backend/template1/css/custom.min.css')}}" rel="stylesheet">
    <!--Modal CSS-->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/izimodal/1.5.1/css/iziModal.css">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <style type="text/css">
    	.form{
			margin-left : auto;
			margin-right: auto;
			margin-top: 5%;
			float       : none;
    	}
    	input[type="file"] {
    		display: none;
    	}
		.custom-file-upload { 
			display: inline; 
			padding: 6px 12px;
		}
		.thumb {
			width : 100px;
			height: 100px;
			margin: 0.2em -0.7em 0 0;
			border-radius: 50%;
		}
		.remove_img_preview {
			position:relative;
			left: 100px;
			top:-100px;
			width: 15px;
			background:black;
			color:white;
			border-radius:50px;
			font-size:0.9em;
			padding: 0 0.3em 0;
			text-align:center;
			cursor:pointer;
		}
		.remove_img_preview:before {
			content:"×";
		}
    </style>
</head>
<body>
	<div class="col-md-6 col-xs-12 form">
		<div class="x_panel">
			<div class="x_content">
			<br>
			<form id="form_add" class="form-horizontal input_mask" method="POST" enctype="multipart/form-data">
				<input type="hidden" name="_token" value="{{csrf_token('')}}">
				<div class="form-group">
					<div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
						<label for="file" class="custom-file-upload btn btn-outline-secondary camera">
							<i class="fa fa-camera"></i> Choose Avatar
						</label>
						<input id="file" name="image" type="file" class="form-control" />
						<div id="preview"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-8 col-sm-8 col-xs-12 form-group has-feedback">
						<label>Name </label>
						<input type="text" autofocus="" name="name" class="form-control has-feedback-left" id="name"
						placeholder="Name">
						<span class="fa fa-user form-control-feedback left" aria-hidden="true"></span>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-8 col-sm-8 col-xs-12 form-group has-feedback">
						<label>Date Of Birth </label>
						<input type="text" class="form-control has-feedback-left" id="date" name="date" aria-describedby="inputSuccess2Status">
						<span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true">
						</span>
						<span id="inputSuccess2Status" class="sr-only">(success)</span>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-8 col-sm-8 col-xs-12">
						<label>Gender</label>
						<br>
						<div id="gender" class="btn-group" data-toggle="buttons">
							<label class="btn btn-default">
								<input class="radio-gender" type="radio" checked="" name="gender" value="1"> &nbsp; Male &nbsp;
							</label>
							<label class="btn btn-default">
								<input type="radio" name="gender" value="0"> Female
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-8 col-sm-8 col-xs-12 form-group has-feedback">
						<label>Email </label>
						<input type="email" class="form-control has-feedback-left" id="email" placeholder="Email">
						<span class="fa fa-envelope form-control-feedback left" aria-hidden="true"></span>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-8 col-sm-8 col-xs-12 form-group has-feedback">
						<label>Password </label>
						<input type="password" class="form-control has-feedback-left" id="password" placeholder="Password">
						<span class="fa fa-lock form-control-feedback left" aria-hidden="true"></span>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-8 col-sm-8 col-xs-12 form-group has-feedback">
						<label>Re Password </label>
						<input type="password" class="form-control has-feedback-left" id="re-password" placeholder="Re Password">
						<span class="fa fa-lock form-control-feedback left" aria-hidden="true"></span>
					</div>
				</div>
				<div class="form-group" style="margin-top: 15px">
					<div class="col-md-8 col-sm-8 col-xs-12">
						<label>Role </label>
						<select class="form-control" id="role">
							<option>Choose Role</option>
							@foreach($arrRole as $role)
							<option value="{{$role->role_value}}">
								{{$role->name}}
							</option>
							@endforeach
						</select>
					</div>
				</div>
				<div class="ln_solid"></div>
				<div class="form-group">
					<div>
						<button type="button" class="btn btn-primary">Cancel</button>
						<button class="btn btn-primary" type="reset">Reset</button>
						<button type="button" class="btn btn-success add">Submit</button>
					</div>
				</div>

			</form>
			</div>
		</div>
	</div>
</body>
</html>
<!-- jQuery -->
<script src="{{ asset('backend/template1/js/jquery.min.js')}}"></script>
<!-- Bootstrap -->
<script src="{{ asset('backend/template1/js/bootstrap.min.js')}}"></script>
<script src="{{ asset('backend/template1/js/jquery.autocomplete.min.js')}}"></script>
<script src="{{ asset('backend/template1/js/moment-with-locales.js')}}"></script>
<!-- bootstrap-datetimepicker -->
<script src="{{ asset('backend/template1/js/daterangepicker.js')}}"></script>
<script src="{{ asset('backend/template1/js/bootstrap-datetimepicker.min.js')}}"></script>
<!-- Custom Theme Scripts -->
<script src="{{ asset('backend/template1/js/custom.js')}}"></script>
<script src="{{ asset('backend/template1/js/prettify.js')}}"></script>
<!--Modal JS-->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/izimodal/1.5.1/js/iziModal.js"></script>
<script type="text/javascript">
	//set gender
	$(document).ready(function(){
		var label =$('input[name=gender]:checked').parent("label");
		label.removeClass('btn-default');
		label.addClass('btn-primary active');
		//formart date
		$('#date').daterangepicker({
			singleClasses: "picker_1",
			"singleDatePicker": true,
			"locale": {
				"format": "YYYY-MM-DD",
			}
		}, function(start, end, label) {
		});
	});
	$("body").on("change","input[name=gender]",function(e){
		//add class checked
		$(this).parent("label").addClass("btn btn-primary active");
		//remove class unckecked
		$('input[name=gender]:not(:checked)').parent("label").removeClass('btn-primary').addClass("btn-default");
	});
	//upload image 
	function handleFileSelect(event) {
		var input = this;
		if (input.files && input.files.length) {
			var reader = new FileReader();
			this.enabled = false
			reader.onload = (function (e) {
				$("#preview").html(['<img class="thumb" src="', e.target.result, '" title="Avatar"/><span class="remove_img_preview" title="remove"></span>'].join(''))
			});
			reader.readAsDataURL(input.files[0]);
		}
	}
	$('#file').change(handleFileSelect);
	$('#preview').on('click', '.remove_img_preview', function () {
		$("#preview").empty()
		$("#file").val("");
	});
	//submit add 
	$("body").on("click",".add",function(e){

		var formData = new FormData($('#form_add')[0]);
		formData.append("name", $("#name").val());
		formData.append("image", $('input[type=file]')[0].files[0]);
		formData.append("date", $("#date").val());
		formData.append("gender", $('input[name=gender]:checked').val());
		formData.append("email", $("#email").val());
		formData.append("role", $("#role").val());
		formData.append("pass", $("#password").val());
		$.ajax({
			type: 'POST',
			headers: {
				'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			},
			contentType: false,
    		processData: false,
			url: "{{route('add')}}",
			data:formData,
			success: function (result) {
				console.log(result);
				if (result.status == '{{App\Core\Common\SDBStatusCode::OK}}') {
					parent.$('#modal-add').iziModal('close');
					parent.getList();
					parent.alert("Add");
					//call parent and close modal
				}
			}
		});
	});
</script>
