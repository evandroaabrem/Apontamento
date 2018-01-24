<!DOCTYPE html>
<html ng-app="myApp">

<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Apontamentos</title>
<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!--Import materialize.css-->

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/materialize/css/materialize.min.css">

<%-- <link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/project_style.css">
 --%>
<script data-require="angular.js@*" data-semver="1.2.13"
	src="http://code.angularjs.org/1.2.13/angular.js"></script>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/controller/app.js"></script>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<script>
	$(document).ready(
			function() {
				$(".button-collapse").sideNav();

				// Initialize
				$('select').material_select();

				$("button").click(
						function() {

							// Clear the content
							$("select").empty().html(' ');

							// And add a new value
							var value = "New value";
							$("select").append(
									$("<option></option>").attr("value", value)
											.text(value));

							// Update the content clearing the caret
							$("select").material_select('update');
							$("select").closest('.input-field').children(
									'span.caret').remove();
						});

				$('.collapsible').collapsible();
				$('.datepicker').pickadate(
						{
							selectMonths : true,//Creates a dropdown to control month
							selectYears : 15,//Creates a dropdown of 15 years to control year
							//The title label to use for the month nav buttons
							labelMonthNext : 'Next Month',
							labelMonthPrev : 'Last Month',
							//The title label to use for the dropdown selectors
							labelMonthSelect : 'Select Month',
							labelYearSelect : 'Select Year',
							//Months and weekdays
							monthsFull : [ 'January', 'February', 'March',
									'April', 'March', 'June', 'July', 'August',
									'September', 'October', 'November',
									'December' ],
							monthsShort : [ 'Jan', 'Feb', 'Mar', 'Apr', 'Mar',
									'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov',
									'Dec' ],
							weekdaysFull : [ 'Sunday', 'Monday', 'Tuesday',
									'Wednesday', 'Thursday', 'Friday',
									'Saturday' ],
							weekdaysShort : [ 'Sun', 'Mon', 'Tue', 'Wed',
									'Thu', 'Fri', 'Sat' ],
							//Materialize modified
							weekdaysLetter : [ 'S', 'M', 'T', 'W', 'T', 'F',
									'S' ],
							//Today and clear
							today : 'Today',
							clear : 'Clear',
							close : 'Close',
							//The format to show on the `input` element
							format : 'dd/mm/yyyy'
						});
			});
</script>


<style>
/* img {
	width: 100%;
	height: 113px;
}
 */
.header {
	width: 100%;
	height: 156px;
	margin-bottom: -1.4em;
	background-color: black;
}

.alignheader {
	text-align: center;
	color: white;
	padding: 15px 47px 0 137px;
	font-family: "Sans Serif";
}

.alignheadermobile {
	text-align: center;
	color: white;
	padding: 0px 47px 0 137px;
	font-family: "Sans Serif";
}

.logo {
	width: 50px;
	height: 113px;
}
</style>


</head>

<body ng-controller="MyCtrl" bgcolor="#DCDCDC">

	<%-- 		<div style="height: 113px;">
			<img src="<%=request.getContextPath()%>/resources/img/topo.png" />
		</div>
 --%>

	<div class="header">

		<div class="row">
			<br>
			<div class="col s4 white-text">
				<div class="logo">
					<img src="<%=request.getContextPath()%>/resources/img/logo.png" />
				</div>
			</div>
			<div class="alignheader" ng-show="mostraLabelTopo">
				<h5>CONSULTORIA ESPECIALIZADA EM SOLUÇÕES PARA MANUFATURA</h5>
			</div>
			<div class="alignheadermobile" ng-show="!mostraLabelTopo">
				CONSULTORIA ESPECIALIZADA EM SOLUÇÕES PARA MANUFATURA</div>
		</div>
	</div>

	<nav>
		<div class="nav-wrapper">
			<a href="#" data-activates="mobile-demo" class="button-collapse"><i
				class="material-icons">menu</i></a>
			<ul class="left hide-on-med-and-down">
				<li><a href="sass.html">Administrativo</a></li>
				<li><a href="badges.html">Qualidade</a></li>
			</ul>
			<ul class="side-nav" id="mobile-demo">
				<li><a href="sass.html">Administrativo</a></li>
				<li><a href="badges.html">Qualidade</a></li>
			</ul>
		</div>
	</nav>




	<div class="row">

		<div class="col s12 m4 l3" style="background-color: #F5FFFA">
			<!-- Note that "m4 l3" was added -->

			<fieldset>
				<legend>Filtros</legend>

				<div class="card blue-grey darken-1">

					<div class="card-content white-text">

						<label for="Estabelecimento">Estabelecimento: </label>
						<div class="input-field">

							<select>
								<option>Option 1</option>
								<option>Option 2</option>
								<option>Option 3</option>
							</select>

						</div>
						<form>
						<br> <label for="date">Data Inicial: </label> <input
							id="date1" type="date" class="datepicker" ng-model="dtinicial"> <label
							for="date">Data Final: </label> <input id="date2" type="date"
							class="datepicker" ng-model="dtfinal">
						</form>	

					</div>

				</div>
			</fieldset>

			<br> <br>
			<div style="text-align: right">
				<a class="btn-floating btn-large waves-effect waves-light red" ng-click="buscaFiltro()">
					<i class="material-icons">search</i>
				</a>
			</div>

			<br> <br> <br> <br> <br> <br>

		</div>

		<div class="col s12 m8 l9">
			<!-- Note that "m8 l9" was added -->
			<div class="container">
				<div class="row">
					<div class="s12 col">
						<br>
						<form class="forms forms-inline input-field ">
							<input type="text" class="input-big width-50" id="query"
								ng-model="q"> <label for="query">Pesquise Centro
								de Custo</label>
						</form>


						<ul class="collapsible popout" data-collapsible="accordion" watch>
							<li
								ng-repeat="apontamentos in data | filter:q | startFrom:currentPage*pageSize | limitTo:pageSize | orderBy : 'cc'">
								<div class="collapsible-header"
									ng-click="setClickedRow(apontamentos)">
									
									<div ng-show="mostraLabelTopo">                                           

									<i class="large material-icons">queue</i> <label> <span>CC:</span>
									</label> {{apontamentos.codigoCC}} <label style="margin-left: 2cm;">
										<span>Total de Horas Apontadas:</span>
									</label> {{apontamentos.totalApont}} <label style="margin-left: 2cm;">
										<span>Previsão de Horas:</span>
									</label> {{apontamentos.totalPrev}}
									</div>
									
									<div ng-show="!mostraLabelTopo">   
                                          <i class="large material-icons">queue</i>
                                          <label>
                                              <span>CC:</span>
                                          </label>
                                          {{apontamentos.codigoCC}} <br>
                                          <label style="margin-left: 3%;">
                                              <span> Apontadas:</span>                                                
                                          </label>    
                                               {{apontamentos.totalApont}}<br>

                                          <label style="margin-left: 6%;">
                                              <span>Previstas:</span>
                                          </label>                  
                                               {{apontamentos.totalPrev}}   
                                                
                                    </div>
									
									
								</div>


								<div class="collapsible-body">


									<table style="width: 100%;">
										<thead>
											<tr>
												<th data-field="id" bgcolor="white" style="width: 33%">Maquinas</th>
												<th data-field="name" bgcolor="white">Horas Apontadas</th>
											</tr>
										</thead>



										<tbody ng-repeat="maquinas in listamaquinas.maquinas">
											<tr
												onMouseOver="javascript:this.style.backgroundColor='#FFFACD'"
												onMouseOut="javascript:this.style.backgroundColor=''"
												ng-click="setClickedRowMaquinas(maquinas)">
												<td style="padding: 6px 5px;" bgcolor="white"><i
													class="large material-icons"
													style="font-size: 1.4rem; cursor: pointer;">play_for_work</i>{{maquinas.nomeMaquina}}</td>
												<td style="padding: 6px 5px; text-align: left;"
													bgcolor="white">{{maquinas.totalApont}}</td>
											</tr>

										</tbody>
									</table>


									<table style="width: 100%;" ng-show="showOperador">
										<thead>
											<tr>
												<th data-field="Operador" bgcolor="white" style="width: 33%">Operadores</th>
												<th data-field="Apontadas" bgcolor="white"></th>
											</tr>
										</thead>

										<tbody ng-repeat="operador in listaoperador.Operador">
											<td style="padding: 6px 5px; width: 193px" bgcolor="white">{{operador.nomeOperador}}</td>
											<td style="padding: 6px 5px; text-align: left;"
												bgcolor="white">{{operador.totalapont}}</td>
										</tbody>
									</table>
								</div>
							</li>
						</ul>
						<table style="width: 10%">
							<thead>
								<tr>
									<th>

										<div ng-show="currentPage == 0 && numberOfPages() > 1">
											<a
												class="btn-floating disabled btn-large waves-effect waves-light red">
												<i class="material-icons">skip_previous</i>
											</a>
										</div>

										<div ng-show="currentPage > 0 && numberOfPages() > 1">
											<a
												class="btn-floating btn-large waves-effect waves-light red"
												ng-disabled="currentPage == 0"
												ng-click="currentPage=currentPage-1"> <i
												class="material-icons">skip_previous</i></a>
										</div>

									</th>
									<th ng-show="numberOfPages() > 1">{{currentPage+1}}/{{numberOfPages()}}
									</th>
									<th><a
										ng-show="currentPage >= getData().length/pageSize - 1 && numberOfPages() > 1"
										class="btn-floating disabled btn-large waves-effect waves-light red">
											<i class="material-icons">skip_next</i>
									</a> <a
										ng-show="!currentPage >= getData().length/pageSize - 1 && numberOfPages() > 1"
										class="btn-floating btn-large waves-effect waves-light red"
										ng-disabled="currentPage >= getData().length/pageSize - 1"
										ng-click="currentPage=currentPage+1"> <i
											class="material-icons">skip_next</i>
									</a></th>
								</tr>
							</thead>

						</table>

					</div>
				</div>
			</div>
		</div>


	</div>


	<footer class="page-footer">
		<div style="background-color: #808080;">
			<div class="row">
				<div class="col l6 s12" ng-show="mostraLabelTopo">
					<h5 class="white-text">Contatos</h5>
					<p class="grey-text text-lighten-4">
					<div class="row">
						<div class="col s4 white-text">
							AV. JOSÉ PANCETTI, 914 <br>CAMPINAS - SÃO PAULO
						</div>
						<div class="col s4 white-text">
							19 98291.6738<br>19 98239.2201
						</div>
						<div class="col s4 white-text">
							contato@dbssystem.com.br<br>suporte@dbssystem.com.br
						</div>
					</div>

					</p>
				</div>
			  <div class="col l6 s12" ng-show="!mostraLabelTopo">
                <h5 class="white-text">Contatos</h5>
                <p class="grey-text text-lighten-4" >                    
                          <div class="white-text">AV. JOSÉ PANCETTI, 914 <br>CAMPINAS - SÃO PAULO</div><br>
                          <div class="white-text">19 98291.6738<br>19 98239.2201</div><br>
                          <div class="white-text">contato@dbssystem.com.br<br>suporte@dbssystem.com.br</div>
                        
                  
                </p>
              </div>
				
				
				<div class="col l4 offset-l2 s12">
					<ul>
						<li><a class="grey-text text-lighten-3"
							href="http://www.dbssystem.com.br">http://www.dbssystem.com.br</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="footer-copyright" ng-show="mostraLabelTopo">
			<div class="container">
				© 2016 Copyright <a class="grey-text text-lighten-4 right"
					href="http://www.dbssystem.com.br">http://www.dbssystem.com.br</a>
			</div>
		</div>
		
          <div class="footer-copyright" ng-show="!mostraLabelTopo">
            <div class="container">
            © 2016 Copyright <br>
            <a class="grey-text text-lighten-4 right" href="http://www.dbssystem.com.br">http://www.dbssystem.com.br</a>
            </div>
          </div>    
		
	</footer>


	<script
		src="<%=request.getContextPath()%>/resources/js/jquery-2.1.1.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/materialize/js/materialize.min.js"></script>


</body>
</html>