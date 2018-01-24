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
		<h3 class="page-header">Visualizar Item #0001</h3>


		<div class="row">
			<!-- “col-md-4”. Isso nos permite ter 3 colunas de campos (12 / 4 = 3). -->
			<div class="col-md-4">
				<p>
					<strong>Nome do Campo</strong>
				</p>
				<p>{Valor do Campo}</p>
			</div>
			<div class="col-md-4">
				<p>
					<strong>Nome do Campo</strong>
				</p>
				<p>{Valor do Campo}</p>
			</div>
			<div class="col-md-4">
				<p>
					<strong>Nome do Campo</strong>
				</p>
				<p>{Valor do Campo}</p>
			</div>
		</div>

		<hr />
		<div id="actions" class="row">
			<div class="col-md-12">
				<a href="edit.jsp" class="btn btn-primary">Editar</a> <a
					href="index.jsp" class="btn btn-default">Fechar</a>
			</div>
		</div>
	</div>


	<script src="js/jquery-2.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>