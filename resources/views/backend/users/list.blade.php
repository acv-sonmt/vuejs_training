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
</style>
@endpush
@extends("layouts.backend")
@section("content")
<div class="col-md-12 col-sm-12 col-xs-12" style="margin-top: 20px;">
    <div class="x_panel">
        <div class="x_title">
            <h2>Users <small>List</small></h2>
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
                <table class="table table-striped jambo_table table-hover ">
                    <thead>
                    <tr class="headings">
                        <th style="text-align: center">
                            <input type="checkbox" id="check-all" class="flat">
                        </th>
                        <th class="column-title">Id </th>
                        <th class="column-title">Name </th>
                        <th class="column-title">Email </th>
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
	$(document).ready(function(){
		$.get("{{route('paginate')}}",function(data){
			console.log(data.data);
			buildList(data.data);
			paginate(data.data.last_page);
		});
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
		 	$(row).find('.address').html(obj.address);
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
			totalPages: totalPages,
			visiblePages: 5,	
			initiateStartPageClick:false,
			onPageClick:function(event,page){
				console.log(page);
				$.get("{{route('paginate')}}",{page:page},function(data){
				buildList(data.data);
				});
			}
		});
	}
</script>
@endpush
