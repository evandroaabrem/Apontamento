var app = angular.module('mainModule', ['angularUtils.directives.dirPagination']);

app.controller('mainController', function($scope, $http) {

	$scope.showApontamento = true;
	$scope.showMaquinas = false;
	$scope.showOperador = false;

	$scope.listamaquinas = null;
	$scope.listaoperador = null;
	
	$scope.selectedEstabelec = null;
	
	$scope.centrocusto;
	$scope.ccapont;
	
	$scope.maquinas;
	$scope.maquinaspont;
	
	//var findJson = contexPath+"/"+"/apontamento.htm/"+teste.htm";
	
	
	
	/*$http.get(findJson).success(function(data) {*/
	$http.get("/Apontamento/resources/js/controller/apontamentos.json").success(function(data) {
		$scope.lista = data;
	})
	
	$scope.sort = function(keyname){
		$scope.sortKey = keyname;   //set the sortKey to the param passed
		$scope.reverse = !$scope.reverse; //if true make it false and vice versa
	}


	$scope.setClickedRow = function(item, index) {
		$scope.listamaquinas = item;
/*		$scope.showApontamento = false;
		$scope.showOperador = false;*/
		$scope.showMaquinas = true;
		$scope.centrocusto = $scope.listamaquinas.cc;
		$scope.ccapont =  $scope.listamaquinas.totalapont;
		

	}

	$scope.setClickedRowMaquinas = function(item, index) {
		$scope.listaoperador = item;
		$scope.showMaquinas = false;
		$scope.showOperador = true;
		$scope.maquinas =  $scope.listaoperador.nomeMaquina;
		$scope.maquinaspont = $scope.listaoperador.totalapont;
	}

	$scope.setVoltar = function(index) {

		if (index == 0) {
			$scope.showApontamento = true;
			$scope.showMaquinas = false;
			$scope.showOperador = false;

		}

		
		if (index == 1) {
			$scope.showApontamento = true;
			$scope.showMaquinas = false;
			$http.get("/Apontamento/resources/js/controller/apontamentos.json").success(function(data) {
				$scope.lista = data;
			})
		}

		
		if (index == 2) {
			$scope.showMaquinas = true;
			$scope.showOperador = false;
		}

	}
	
	
	$scope.setEstabelec = function(index) {
			
	}
	
	
	$scope.setFechar = function() {
		$http.get("/Apontamento/resources/js/controller/apontamentos.json").success(function(data) {
			$scope.lista = data;
		})	
		$scope.showMaquinas = false;
		$scope.showOperador = false;
	}

});