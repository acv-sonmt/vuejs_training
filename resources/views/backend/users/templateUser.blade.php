<!--template table-->
<div class="#template" style="display: none;">
	<table >
		<tbody id="tr-customer">
			<tr>
				<td align="center" class="check-delete">
					<input class="check" type="checkbox" name="xoa[]">
				</td>
				<td class="id"></td>
				<td class="name"></td>
				<td class="email"></td>
				<td class="role"></td>
				<td class="active"></td>
				<td>
					<button type="button" class="btn btn-primary edit round" data-toggle="modal" data-target="#myModal">
					  <i class="fa fa-pencil-square-o"></i>
					</button>
				</td>
				<td>
					<a class="btn btn-danger round delete">
						<i class="fa fa-trash-o"></i>
					</a>
				</td>
			</tr>
		</tbody>	
	</table>
</div>