<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="wrap-content container" id="container">

	<!-- start: PAGE TITLE -->
	<section id="page-title" class="padding-top-10 padding-bottom-10">
		<div class="row">
			<div class="col-sm-8">
				<h1 class="mainTitle">Manage User</h1>
			</div>
		</div>
	</section>
</div>
<div class="container-fluid container-fullw bg-white">
		<div class="row">
			<div class="col-md-12 space20">
				<button class="btn btn-green add-row" data-toggle="modal" onclick="myFunction()"
					data-target="#userModal" id="createNewButton"> Add New <i class="fa fa-plus"></i>
				</button>
			</div>

			<div class="col-md-12">
				<table class="table table-striped table-bordered table-hover table-full-width" id="data_table_sales">
					<thead>
						<tr>
							<th class="center">#</th>
							<th>Date & Time</th>
							<th>Sales Code</th>
							<th data-orderable="false" class="center">Action</th>
						</tr>
					</thead>
					<tbody>
					
					<c:forEach items="${entityList}" var="entity" varStatus="tr">
						<tr class="row_no_${tr.count}">
							<td class="center" title="Show Point">${tr.count}</td>
							<td class="">${entity.salesDate}</td>
							<td class="">${entity.salesCode}</td>
							<td class="text-center">
								<a href="user/edit/${entity.id}" onclick="editUser(event,${entity.id}, 'edit')">
									<i class="fa fa-pencil-square-o" aria-hidden="true" title="Edit" data-modal="true"></i>
								</a> 
								<%-- <a href="user/delete/${entity.id}" id="deleteUser" onclick="deleteUser(event,${entity.id})">
									 <i class="fa fa-trash" aria-hidden="true" title="Delete" style="color: red;"></i>
								</a> --%>
							</td> 
						</tr>
					</c:forEach>

					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- end: BASIC EXAMPLE -->
<style>
	.main-content > .container {
    	padding-bottom: 0px !important;
	}
</style>
