@push("css")
<style type="text/css">
	/*Css Pagination */
	.pagination>li>a{
		padding  : 8px 12px;
		font-size: 16px;
	}
	.pagination>.active>a{
		font-weight: bold;
	}
	.table-user input{
		width : 20px;
		height: 20px;
	}
	.jconfirm-title{
		margin-top: 10px;
	}
</style>
@endpush
@extends("layouts.backend")
@section("content")
<!--Title-->
<div class="page-title">
	<div class="title_left">
		<h2 class="text-primary">User <small>List</small></h2>
	</div>
</div>
<!--Table-->
<div class="col-md-12 col-sm-12 col-xs-12" style="margin-top: 20px;">
    <div class="x_panel">
        <div class="x_title">
        	<button class="btn btn-primary" id="add"><i class="fa fa-plus"></i></button>
            <button class="btn btn-danger" id="delete_all">Delete All</button>
            <ul class="nav navbar-right panel_toolbox">
                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                </li>
                <li><a class="close-link"><i class="fa fa-close"></i></a>
                </li>
            </ul>
            <div class="clearfix"></div>
        </div>
        <!--Content-->

        <div class="x_content">
            <div class="table-responsive">
                <table class="table table-striped jambo_table table-hover table-user">
                    <thead>
                    <tr class="headings">
                        <th style="text-align: center">
                            <input type="checkbox" id="check-all" class="flat">
                        </th>
                        <th class="column-title">Id </th>
                        <th class="column-title">Name </th>
                        <th class="column-title">Email </th>
                        <th class="column-title">Role </th>
                        <th class="column-title">Active </th>
                        <th class="column-title">Edit </th>
                        <th class="column-title">Delete </th>
                    </tr>
                    </thead>
                    <!--Tbody-->
                    <tbody id="tbody">
                    </tbody>
                </table>
            </div>
        </div>
        <ul id="pagination-demo" class="pagination-lg pull-right"></ul>
    </div>
</div>
@include("backend.users.templateUser")
@endsection
@push("js")
<script type="text/javascript">
	getList();
	//function getList
	function getList(){
		$(document).ready(function(){
			$.get("{{route('paginate')}}",function(data){
				console.log(data.data);
				buildList(data.data);
				paginate(data.data.last_page);
			});
		});
	}
	//Delete User
	$("body").on("click",".delete",function(e){
		var id = $(this).data("id");
		var tr = $(this).parent().parent();
		$.confirm({
			title         : '<p class="text-warning">Warning</p>',
			icon          : 'fa fa-exclamation-circle',
			boxWidth      : '30%',
			useBootstrap  : false,
			type          :"orange",
			closeIcon     : true,
			closeIconClass: 'fa fa-close',
			content       : "Are You Sure? This User Will Be Deleted!",
			buttons       : {
				Save: {
					text    : 'OK',
					btnClass: 'btn btn-primary',
					action  : function (){
						$.get("{{route('delete')}}",{id:id},function(data){
							$.alert({
								title: 'Successful!',
								type          :"green",
								content: 'User Have Been Delted',
							});
							$('#pagination-demo').twbsPagination('destroy');
							getList();
						});
					}
				},
				cancel: {
					text    : ' Cancel',
					btnClass: 'btn btn-default',
					action  : function () {
					}
				}
			}
		});
	});
	//check all
	$('body').on("change","#check-all",function(e){
	    var checkboxes = $(this).closest('table').find(':checkbox');
	    checkboxes.prop('checked', $(this).is(':checked'));
	});
	//delete-all
	$("body").on("click","#delete_all",function(e){
		var checked = $("input:checked").length;
		if(checked===0){
			$.alert({
				title: '<p class="text-warning">Notice!</p>',
				icon          : 'fa fa-exclamation-circle',
				type          :"orange",
				boxWidth: '20%',
				content: '<span style="font-size: 16px">Nothing To Delete</span>'
			});
		}else{
			$.confirm({
			title         : '<p class="text-warning">Warning</p>',
			icon          : 'fa fa-exclamation-circle',
			boxWidth      : '30%',
			useBootstrap  : false,
			type          :"orange",
			closeIcon     : true,
			closeIconClass: 'fa fa-close',
			content       : "Are You Sure? Users Will Be Deleted!",
			buttons       : {
				Save: {
					text    : 'OK',
					btnClass: 'btn btn-primary',
					action  : function (){
						var arrUser = [];
						$(".check-delete input:checked").each(function(){
							arrUser.push($(this).val());
						});
						$.get("{{route('deleteAll')}}",{arrUser:arrUser},function(data){
								$("#check-all").prop('checked',false);//set check-all = false
								$.alert({
									title: 'Successful!',
									type          :"green",
									content: 'Users Have Been Delted',
								});
						$('#pagination-demo').twbsPagination('destroy');
						getList();
						});
					}
				},
				cancel: {
					text    : ' Cancel',
					btnClass: 'btn btn-default',
					action  : function () {
					}
				}
			}
			});
		}
	});
	//function builList
	function buildList(data)
	{
		var tbody = $("#tbody");
		$(tbody).empty();
		data.data.forEach(function(obj) {
			var row = $("#tr-customer").contents().clone();
			$(row).find('.check').val(obj.id);
			$(row).find('.id').html(obj.id);
		 	$(row).find('.name').html(obj.name);
		 	$(row).find('.email').html(obj.email);
		 	$(row).find('.role').html(obj.role);
		 	if(obj.is_active===1){
		 		$(row).find('.active').html("Có");
		 	}else{
		 		$(row).find('.active').html("Không");
		 	}
		 	//edit
		 	$(row).find('.edit').data("id",obj.id);
		 	//delete
		 	$(row).find('.delete').data("id",obj.id);
		 	$(tbody).append($(row));
		});
	}
	//function paginate-Phan trang
	function paginate(totalPages){
		$('#pagination-demo').twbsPagination({
			totalPages            : totalPages,
			visiblePages          : 5,
			hideOnlyOnePage       :true,	
			initiateStartPageClick:false,
			onPageClick:function(event,page){
				$("#check-all").prop('checked',false);//set check-all = false
				$.get("{{route('paginate')}}",{page:page},function(data){
				buildList(data.data);
				});
			}
		});
	}
</script>
@endpush
