<!DOCTYPE html>
<html>
<head>
	<title>Edit</title>
	<!-- Bootstrap -->
    <link href="{{ asset('backend/template1/css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{ asset('backend/template1/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{ asset('backend/template1/css/daterangepicker.css')}}" rel="stylesheet">
    <link href="{{ asset('backend/template1/css/bootstrap-datetimepicker.css')}}" rel="stylesheet">
	<link href="{{ asset('backend/template1/css/prettify.min.css')}}" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="{{ asset('backend/template1/css/custom.min.css')}}" rel="stylesheet">
    <style type="text/css">
    	.form{
			margin-left : auto;
			margin-right: auto;
			margin-top: 5%;
			float       : none;
    	}
    </style>
</head>
<body>
	<div class="col-md-6 col-xs-12 form">
		<div class="x_panel">
			<div class="x_content">
			<br>
			<form class="form-horizontal input_mask" method="POST">
				<input type="hidden" name="_token" value="{{csrf_token()}}">
				<div class="form-group">
					<div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
						<p>Image Here</p>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
						<label>Name </label>
						<input type="text" autofocus="" class="form-control has-feedback-left" value="{{$user->name}}" id="name"
						placeholder="Name">
						<span class="fa fa-user form-control-feedback left" aria-hidden="true"></span>
					</div>
				</div>
				<div class="form-group">
					<!--Format date-->
					<?php  
						$date = date_create($user->birth_date);
						$date =  date_format($date,"d/m/Y");
					?>
					<div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
						<label>Date Of Birth </label>
						<input type="text" class="form-control has-feedback-left" id="date" value="{{$date}}" name="date" aria-describedby="inputSuccess2Status">
						<span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true">
						</span>
						<span id="inputSuccess2Status" class="sr-only">(success)</span>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<label>Gender</label>
						<br>
						<div id="gender" class="btn-group" data-toggle="buttons">
							<label class="btn btn-default">
								<input class="radio-gender" type="radio" name="gender" value="1"@if( $user->gender== 1) {{"checked"}} @endif> &nbsp; Male &nbsp;
							</label>
							<label class="btn btn-default">
								<input type="radio" name="gender" value="0" @if($user->gender==0) {{"checked"}} @endif> Female
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
						<label>Email </label>
						<input type="text" class="form-control has-feedback-left" id="email" value="{{$user->email}}" placeholder="Email">
						<span class="fa fa-envelope form-control-feedback left" aria-hidden="true"></span>
					</div>
				</div>
				<div class="form-group" style="margin-top: 15px">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<label>Role </label>
						<select class="form-control">
							<option>Choose Role</option>
							@foreach($arrRole as $role)
							<option value="{{$role->role_value}}" 
								@if($role->role_value==$user->role_value) {{"selected"}} 
								@endif>
								{{$role->name}}
							</option>
							@endforeach
						</select>
					</div>
				</div>
				<div class="ln_solid"></div>
				<div class="form-group">
					<div class=>
						<button type="button" class="btn btn-primary">Cancel</button>
						<button class="btn btn-primary" type="reset">Reset</button>
						<button type="submit" class="btn btn-success">Submit</button>
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
				"format": "DD/MM/YYYY",
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
</script>
