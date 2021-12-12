<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script defer src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Confirmar compra</title>
</head>
<body>
	<div class="container ">
		<div class="row">
			<div class="carousel-item active">
				<img src="img/bosque-slider-ofertador.jpg" class="d-block w-100"
					alt="bosque">
				<div class="carousel-caption d-none d-md-block">
					<h1>${producto.nombre}</h1>
					<div>
						<img src="img/cincoestrellas.png" width="150rem" height="30rem"
							alt="5 estrellas">
					</div>
				</div>
			</div>
		</div><!-- ------------------------------------------------------------------------------- -->

		<div class="row"> <!-- ----------------------------------------------------------------- -->
			<table class="table table-stripped table-hover">
				<thead>
					<tr>
						<th>Producto</th>
						<th>esPromo</th>
						<th>Descripcion</th>
						<th>Costo</th>
						<th>Duracion</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${producto.nombre}</td>
						<td>{producto.esPromo}</td>
						<td>{producto.descripcion}</td>
						<td>${producto.costo}</td>
						<td>${producto.duracion}</td>
					</tr>
				</tbody>
			</table>

		</div> <!-- --------------------------------------------------------------------------- -->
		
		<div class="row"><!-- --------------------------------------------------------------------------- -->
			<div class="col-2">
				<form action="confirmarcompra.do" method="post">
					<input type="hidden" name="idusuario" value="${usuario.idUsuario}">
					<input type="hidden" name="idproducto" value="${producto.idProducto}">
					<button type="submit" class="btn btn-primary">Confirmar
						compra</button>
				</form>
			</div>
			<div class="col-2">
				<a onclick="window.history.back();" class="btn btn-secondary"
					role="button">Cancelar</a>
			</div>
		</div><!-- --------------------------------------------------------------------------- -->


		<div class="row"> <!-- ---------------------------------------------------------------- -->
			<h5>Descripcion</h5>
			<p>Lorem Ipsum is simply dummy text of the printing and
				typesetting industry. Lorem Ipsum has been the industry's standard
				dummy text ever since the 1500s, when an unknown printer took a
				galley of type and scrambled it to make a type specimen book. It has
				survived not only five centuries, but also the leap into electronic
				typesetting, remaining essentially unchanged. It was popularised in
				the 1960s with the release of Letraset sheets containing Lorem Ipsum
				passages, and more recently with desktop publishing software like
				Aldus PageMaker including versions of Lorem Ipsum.</p>
		</div>
		

	</div>
</body>
</html>