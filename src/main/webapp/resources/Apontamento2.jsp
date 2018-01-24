<!DOCTYPE html>
<html lang="en" ng-app="angularTable">

<head>
<meta charset="utf-8">
<title>AngularJS Task Manager</title>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="css/project_style.css">

<script data-require="angular.js@*" data-semver="1.2.13"
	src="http://code.angularjs.org/1.2.13/angular.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/controller/app2.js"></script>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>


</head>

<body>

	<div role="main" class="container theme-showcase">
		<div class="" style="margin-top: 90px;">
			<div class="col-lg-8">
				<div class="page-header">
					<h2 id="tables">Search ייייי Sort and Pagination in Angular js</h2>
				</div>
				<div class="bs-component" ng-controller="listdata">
					<form class="form-inline">
						<div class="form-group">
							<label>Search</label> <input type="text" ng-model="search"
								class="form-control" placeholder="Search">
						</div>
					</form>
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th ng-click="sort('id')">Id <span
									class="glyphicon sort-icon" ng-show="sortKey=='id'"
									ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
								</th>
								<th ng-click="sort('first_name')">First Name <span
									class="glyphicon sort-icon" ng-show="sortKey=='first_name'"
									ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
								</th>
								<th ng-click="sort('last_name')">Last Name <span
									class="glyphicon sort-icon" ng-show="sortKey=='last_name'"
									ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
								</th>
								<th ng-click="sort('hobby')">Hobby <span
									class="glyphicon sort-icon" ng-show="sortKey=='hobby'"
									ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
								</th>
							</tr>
						</thead>
						<tbody>
							<tr
								dir-paginate="user in users|orderBy:sortKey:reverse|filter:search|itemsPerPage:10">
								<td>{{user.id}}</td>
								<td>{{user.first_name}}</td>
								<td>{{user.last_name}}</td>
								<td>{{user.hobby}}</td>
							</tr>
						</tbody>
					</table>
					<dir-pagination-controls max-size="5" direction-links="true"
						boundary-links="true"> </dir-pagination-controls>
				</div>
			</div>
			<div>
				Link to <a
					href="http://code.ciphertrick.com/2015/05/31/search-sort-and-pagination-ngrepeat-angularjs/ ">tutorial</a>.
			</div>
		</div>
	</div>



	<script src="js/jquery-2.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/dirPagination.js"></script>



</body>
</html>