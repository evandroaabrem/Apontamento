<!DOCTYPE html>
<html ng-app="mainModule">

<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Apontamentos</title>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/project_style.css">

<script data-require="angular.js@*" data-semver="1.2.13"
	src="http://code.angularjs.org/1.2.13/angular.js"></script>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/controller/app.js"></script>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<script>
	$(document).ready(function() {

		(function($) {

			$('#filter').keyup(function() {

				var rex = new RegExp($(this).val(), 'i');
				$('.searchable tr').hide();
				$('.searchable tr').filter(function() {
					return rex.test($(this).text());
				}).show();

			})

		}(jQuery));

	});
</script>


</head>

<body>


	<div ng-controller="mainController">
		<div class="post-content">
			<img src="<%=request.getContextPath()%>/resources/img/topo1.png" />
		</div>
		<!-- 		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">DBS System</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#" ng-click="setVoltar(0)">Home</a></li>
					</ul>
				</div>
			</div>
		</nav> -->

		<!--		<div id="main" class="container-fluid">
			<h3 class="page-header">Apontamentos</h3>

 			<div class="form-group">
				<label ng-show="showApontamento">Estabelecimento </label> 
				<select ng-model="selectedEstabelec" class="input-large form-control"
					ng-show="showApontamento" ng-change="setEstabelec(selectedEstabelec)">
					<option value="">Selecione o Estabelecimento</option>
					<option value="5" selected="selected">5</option>
					<option value="15">15</option>
				</select>
			</div>

			<br>
			<div class="input-group" ng-show="showApontamento">
				<span class="input-group-addon">Filtro</span> <input id="filter"
					type="text" class="form-control"
					placeholder="Digite a pesquisa desejada...">
			</div>
 			<table class="table table-striped" ng-show="showApontamento">
				<thead>
					<tr>
						<th>Centro Custo<br></th>
						<th>Qtde Horas<br> Apontadas
						</th>
						<th>Qtde Horas <br> Previstas
						</th>
					</tr>
				</thead>
				<tbody class="searchable" ng-repeat="apontamentos in lista">
					<tr onMouseOver="javascript:this.style.backgroundColor='#FFFACD'"
						onMouseOut="javascript:this.style.backgroundColor=''"
						ng-click="setClickedRow(apontamentos,$index)">
						<td>{{apontamentos.cc}}</td>
						<td>{{apontamentos.totalapont}}</td>
						<td>{{apontamentos.totalprev}}</td>
					</tr>
				</tbody>
			</table> 

			<button type="button" class="btn btn-primary" ng-click="setVoltar(1)"
				ng-show="showMaquinas">Voltar</button>
			<table class="table table-striped" ng-show="showMaquinas">
				<thead>
					<tr>
						<th>Nome da Maquina<br></th>
						<th>Qtde Horas<br> Apontadas
						</th>
					</tr>
				</thead>
				<tbody class="searchable"
					ng-repeat="maquinas in listamaquinas.Maquinas">
					<tr onMouseOver="javascript:this.style.backgroundColor='#FFFACD'"
						onMouseOut="javascript:this.style.backgroundColor=''"
						ng-click="setClickedRowMaquinas(maquinas,$index)">
						<td>{{maquinas.nomeMaquina}}</td>
						<td>{{maquinas.totalapont}}</td>
					</tr>
				</tbody>
			</table>

			<button type="button" class="btn btn-primary" ng-click="setVoltar(2)"
				ng-show="showOperador">Voltar</button>

			<table class="table table-striped table-hover" ng-show="showOperador">
				<thead>
					<tr>
						<th>Operador<br></th>
						<th>Qtde Horas<br> Apontadas
						</th>
					</tr>
				</thead>
				<tbody class="searchable"
					ng-repeat="operador in listaoperador.Operador">
					<tr onMouseOver="javascript:this.style.backgroundColor='#FFFACD'"
						onMouseOut="javascript:this.style.backgroundColor=''">
						<td>{{operador.nome}}</td>
						<td>{{operador.totalapont}}</td>
					</tr>
				</tbody>

			</table>
 
		</div>-->



		<!-- novo grid  -->

		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"></a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<!--         <li class="active"><a href="#">Home</a></li> -->
						<!--         <li class="dropdown">
							          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
							          <ul class="dropdown-menu">
							            <li><a href="#">Page 1-1</a></li>
							            <li><a href="#">Page 1-2</a></li>
							            <li><a href="#">Page 1-3</a></li>
							          </ul>
							        </li>
							 -->
						<li><a
							href="#">Centro de Custo</a></li>
						<li><a href="#">Administrativo</a></li>
						<li><a href="#">Qualidade</a></li>
						<li><a href="#">Engenharia</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#"><span class="glyphicon glyphicon-user"></span>
								Sign Up</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
								Login</a></li>
					</ul>
				</div>
			</div>
		</nav>

<!-- 		<div class="container" ng-show="showMaquinas || showOperador">
			<div class="panel-group">
				<div class="panel panel-default">
					<div class="panel-heading">

						<h4>
							Centro de custo: {{centrocusto}} <br> Horas Apontadas:
							{{ccapont}}
						</h4>

						<div ng-show="showOperador">
							<h4>
								Maquinas: {{maquinas}} <br> Horas Apontadas:
								{{maquinaspont}}
							</h4>
							<br>
						</div>

					</div>
				</div>
			</div>
		</div>
 -->

		<div role="main" class="container theme-showcase">
			<div class="">
				<div class="col-lg-12" ng-show="showApontamento">
					<div class="bs-component">
						<div class="form-group" ng-show="showApontamento">
							<label>Estabelecimento </label> <select style="width: 254px"
								ng-model="selectedEstabelec" class="input-large form-control"
								ng-change="setEstabelec(selectedEstabelec)">
								<option value="5">5</option>
								<option value="15">15</option>
							</select>
						</div>

						<form class="form-inline" ng-show="showApontamento">
							<div class="input-group">
								<span class="input-group-addon">Filtro</span> <input id="filter"
									type="text" class="form-control" ng-model="search"
									placeholder="Digite a pesquisa desejada...">
							</div>
						</form>


						<table class="table table-striped table-hover"
							ng-show="showApontamento">
							<thead>
								<tr>
									<th bgcolor="#428bca"><font color="white"><center>Centro
												Custo</center></font></th>
									<th bgcolor="#428bca"><font color="white"><center>Total
												Apontamento</center> </font></th>
									<th bgcolor="#428bca"><font color="white"><center>Total
												Previsto</center> </font></th>

								</tr>
							</thead>
							<!--  -->
							<tbody>
								<tr
									dir-paginate="apontamentos in lista|orderBy:sortKey:reverse|filter:search|itemsPerPage:10"
									ng-click="setClickedRow(apontamentos,$index)"
									data-toggle="modal" data-target="#delete-modal"
									onMouseOver="javascript:this.style.backgroundColor='#FFFACD'"
									onMouseOut="javascript:this.style.backgroundColor=''">

									<td><font style='font-weight: bold;'><center>{{apontamentos.cc}}</center></font></td>
									<td><font style='font-weight: bold;'><center>{{apontamentos.totalapont}}</center></font></td>
									<td><font style='font-weight: bold;'><center>{{apontamentos.totalprev}}</center></font></td>


								</tr>
							</tbody>
						</table>
						<div ng-show="showApontamento">
							<dir-pagination-controls max-size="10" direction-links="true"
								boundary-links="true"> </dir-pagination-controls>
						</div>

					</div>
				</div>
				<!-- Maquinas  -->
				<!-- 				<div class="col-lg-6" ng-show="showMaquinas">
					<div class="bs-component">

						<table class="table table-striped table-hover col-lg-6"
							ng-show="showMaquinas">
							<thead>
								<tr>
									<th ng-click="sort('cc.Maquinas.nomeMaquina')"><center>Nome
											da Maquina</center> <span class="glyphicon sort-icon"
										ng-show="sortKey=='cc'"
										ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
									</th>
									<th ng-click="sort('totalapont')"><center>Total
											Apontamento</center> <span class="glyphicon sort-icon"
										ng-show="sortKey=='totalapont'"
										ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
									</th>
								</tr>
							</thead>
							<tbody>
								<tr
									dir-paginate="maquinas in listamaquinas.Maquinas|orderBy:sortKey:reverse|filter:search|itemsPerPage:10"
									ng-click="setClickedRowMaquinas(maquinas,$index)"
									onMouseOver="javascript:this.style.backgroundColor='#FFFACD'"
									onMouseOut="javascript:this.style.backgroundColor=''">

									<td><center>{{maquinas.nomeMaquina}}</center></td>
									<td><center>{{maquinas.totalapont}}</center></td>

								</tr>
							</tbody>
						</table>
						<button type="button" class="btn btn-primary"
							ng-click="setVoltar(1)" ng-show="showMaquinas">Voltar</button>
						<br>


					</div>
				</div>
 -->
				<!-- Maquinas  -->

				<!-- Operador -->
<!-- 				<div class="col-lg-6" ng-show="showOperador">
					<div class="bs-component">

						<table class="table table-striped table-hover col-lg-6"
							ng-show="showOperador">
							<thead>
								<tr>
									<th ng-click="sort('cc.Maquinas.nomeMaquina')"><center>Operador</center>
										<span class="glyphicon sort-icon" ng-show="sortKey=='cc'"
										ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
									</th>
									<th ng-click="sort('totalapont')"><center>Total
											Apontamento</center> <span class="glyphicon sort-icon"
										ng-show="sortKey=='totalapont'"
										ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
									</th>
								</tr>
							</thead>
							<tbody>
								<tr
									dir-paginate="operador in listaoperador.Operador|orderBy:sortKey:reverse|filter:search|itemsPerPage:10"
									onMouseOver="javascript:this.style.backgroundColor='#FFFACD'"
									onMouseOut="javascript:this.style.backgroundColor=''">

									<td><center>{{operador.nome}}</center></td>
									<td><center>{{operador.totalapont}}</center></td>

								</tr>
							</tbody>
						</table>

						<button type="button" class="btn btn-primary"
							ng-click="setVoltar(2)" ng-show="showOperador">Voltar</button>

					</div>
				</div>
 -->

				<!-- Operador  -->

			</div>


			<!-- Modal -->
			<div class="modal fade" id="delete-modal" tabindex="-1" role="dialog"
				aria-labelledby="modalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<!-- <button type="button" class="close" data-dismiss="modal"
								aria-label="Fechar">
								<span aria-hidden="true">&times;</span>
							</button> -->
							<h4 class="modal-title" id="modalLabel">
								Centro de custo: {{centrocusto}} <br> Horas Apontadas:
								{{ccapont}}

							</h4>
							<div ng-show="showOperador">
								<h4>
									Maquinas: {{maquinas}} <br> Horas Apontadas:
									{{maquinaspont}}
								</h4>
								<br>
							</div>

						</div>
						<div>
							<table class="table table-striped table-hover col-lg-6"
								style="margin-left: 2px; width: 99%" ng-show="showMaquinas">
								<thead>
									<tr>
										<th bgcolor="#428bca"><font color="white"><center>Nome
													da Maquina</font>
										</center></th>
										<th bgcolor="#428bca"><font color="white"><center>Total
													Apontamento</font>
										</center></th>
									</tr>
								</thead>

								<tbody>
									<tr
										dir-paginate="maquinas in listamaquinas.Maquinas|orderBy:sortKey:reverse|filter:search|itemsPerPage:10"
										ng-click="setClickedRowMaquinas(maquinas,$index)"
										onMouseOver="javascript:this.style.backgroundColor='#FFFACD'"
										onMouseOut="javascript:this.style.backgroundColor=''">

										<td><font style='font-weight: bold;'><center>{{maquinas.nomeMaquina}}</font>
										</center></td>
										<td><font style='font-weight: bold;'><center>{{maquinas.totalapont}}</font>
										</center></td>

									</tr>
								</tbody>
							</table>

						</div>
						<div class="modal-footer" ng-show="showMaquinas">
							<button type="button" class="btn btn-default"
								data-dismiss="modal" ng-click="setFechar()">Fechar</button>
							<!-- 							<button type="button" class="btn btn-default"
								data-dismiss="modal">N&atilde;o</button>
 -->
						</div>

						<table class="table table-striped table-hover col-lg-6"
							style="margin-left: 2px; width: 99%" ng-show="showOperador">
							<thead>
								<tr>
									<th  bgcolor="#428bca"><font color="white"><center>Operador</center></font></th>
									<th  bgcolor="#428bca"><font color="white"><center>Total Apontamento</center></font></th>
								</tr>
							</thead>
							<tbody>
								<tr
									dir-paginate="operador in listaoperador.Operador|orderBy:sortKey:reverse|filter:search|itemsPerPage:10"
									onMouseOver="javascript:this.style.backgroundColor='#FFFACD'"
									onMouseOut="javascript:this.style.backgroundColor=''">

									<td><font style='font-weight: bold;'><center>{{operador.nome}}</center></font></td>
									<td><font style='font-weight: bold;'><center>{{operador.totalapont}}</center></font></td>

								</tr>
							</tbody>
						</table>

						<!-- 						<button type="button" class="btn btn-primary"
							ng-click="setVoltar(2)">Voltar</button>  -->

						<div class="modal-footer" ng-show="showOperador">
							<button type="button" class="btn btn-primary"
								ng-click="setVoltar(2)">Voltar</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal" ng-click="setFechar()">Fechar</button>
						</div>


					</div>
				</div>
			</div>

		</div>






	</div>

	<div id="footer">
		<div id="footer-left">
			<div id="link" style="text-align: center;"></div>
		</div>
	</div>


	<script
		src="<%=request.getContextPath()%>/resources/js/jquery-2.1.1.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/dirPagination.js"></script>




</body>
</html>