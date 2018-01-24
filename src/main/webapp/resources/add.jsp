<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CRUD com Bootstrap 3</title>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="css/project_style.css">

</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Web Dev Academy</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Início</a></li>
					<li><a href="#">Opções</a></li>
					<li><a href="#">Perfil</a></li>
					<li><a href="#">Ajuda</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div id="main" class="container-fluid">
		<h3 class="page-header">Adicionar Item</h3>
	</div>
	<form action="index.html">
		<div class="row">
			<div class="form-group col-md-4">
				<label for="campo1">Campo Um</label> <input type="text"
					class="form-control" id="campo1">
			</div>

			<div class="form-group col-md-4">
				<label for="campo2">Campo Dois</label> <input type="text"
					class="form-control" id="campo3">
			</div>

			<div class="form-group col-md-4">
				<label for="campo3">Campo Três</label> <input type="text"
					class="form-control" id="campo3">
			</div>
		</div>
		
		<div class="row">
			<div class="form-group col-md-3">
				<label for="campo4">Campo Quatro</label> <input type="text"
					class="form-control" id="campo4">
			</div>

			<div class="form-group col-md-3">
				<label for="campo5">Campo cinco</label> <input type="text"
					class="form-control" id="campo5">
			</div>

			<div class="form-group col-md-3">
				<label for="campo6">Campo seis</label> <input type="text"
					class="form-control" id="campo6">
			</div>

			<div class="form-group col-md-3">
				<label for="campo7">Campo sete</label> <input type="text"
					class="form-control" id="campo7">
			</div>
		</div>

		<div class="row">
			<div class="form-group col-md-6">
				<label for="campo8">Campo Oito</label> <input type="text"
					class="form-control" id="campo8">
			</div>

			<div class="form-group col-md-6">
				<label for="campo9">Campo nove</label> <input type="text"
					class="form-control" id="campo9">
			</div>
		</div>


		<div class="row">
			<div class="form-group col-md-3">
				<label for="campo10">Campo dez</label> <input type="text"
					class="form-control" id="campo10">
			</div>

			<div class="form-group col-md-3">
				<label for="campo11">Campo onze</label> <input type="text"
					class="form-control" id="campo11">
			</div>

			<div class="form-group col-md-3">
				<label for="campo12">Campo doze</label> <input type="text"
					class="form-control" id="campo6">
			</div>

			<div class="form-group col-md-3">
				<label for="campo13">Campo treze</label> <input type="text"
					class="form-control" id="campo13">
			</div>
		</div>
		
		<div class="row">
			<div class="form-group col-md-6">
				<label for="campo14">Campo quartoze</label> <input type="text"
					class="form-control" id="campo14">
			</div>

			<div class="form-group col-md-6">
				<label for="campo15">Campo quinze</label> <input type="text"
					class="form-control" id="campo15">
			</div>
		</div>

		
		<hr />
		<div id="actions" class="row">
			<div class="col-md-12">
				<button type="submit" class="btn btn-primary">Salvar</button>
				<a href="index.html" class="btn btn-default">Cancelar</a>
			</div>
		</div>
	</form>

	<script src="js/jquery-2.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>