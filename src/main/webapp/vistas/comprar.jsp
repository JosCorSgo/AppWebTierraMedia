<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script defer src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<title>Comprar</title>
</head>
<body>

	<h2>Pagina de compras de atracciones y promociones</h2>
	<div class="container">
	
		<div class="row"> <!-- ----   PRIMERA FILA -------- -->
			<div class="col m-3 p-3">
				<div class="card" style="width: 18rem;">
					<img src="img/signopesos.png" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Presupuesto disponible</h5>
						<h1 class="card-text">${usuario.presupuesto }</h1>
						<a href="#" class="btn btn-primary">Comprar monedas</a>
					</div>
				</div>
			</div>
			
			<div class="col m-3 p-3">
				<div class="card" style="width: 18rem;">
					<img src="img/tiempo.png" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Tiempo disponible</h5>
						<h1 class="card-text">${usuario.tiempoDisponible }</h1>
						<a href="#" class="btn btn-primary">Modificar tiempo</a>
					</div>
				</div>
			</div>
			
			<div class="col m-3 p-3">
				<div class="card" style="width: 18rem;">
					<img src="img/preferencia.png" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Atracciones preferidas</h5>
						<h1 class="card-text">${usuario.preferencia }</h1>
						<a href="#" class="btn btn-primary">Modificar preferencia</a>
					</div>
				</div>
			</div>
		</div> <!-- ----  FIN DE LA PRIMERA FILA -------- -->
		
		<div class="row"> <!-- ----  HISTORIAL -------- -->
			<p><h1>Historial de atracciones compradas</h1><p>
			<table class="table table-stripped table-hover">
				<thead>
					<tr>
						<th>Producto</th>
						<th>Tipo</th>
						<th>Descripcion</th>
						<th>Costo</th>
						<th>Duracion</th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${usuario.getItinerario()}" var="item">
						<tr>
							<td><c:out value="${item.nombre}"></c:out></td>
							<c:if test="${item.esPromo() == true }">
								<td>Promoci&oacute;n</td>
							</c:if>
							<c:if test="${item.esPromo() == false }">
								<td>Atracci&oacute;n</td>
							</c:if>
							<c:if test="${item.esPromo() == true }">
								<td>Promoci&oacute;n</td>  
								<td><c:out value="${item.generarDescripcion()}"></c:out></td>
							</c:if>
							<c:if test="${item.esPromo() == false }">
								<td>Atracci&oacute;n</td>
								<td><c:out value="${item.descripcion}"></c:out></td>
							</c:if>
							<td><c:out value="${item.costo}"></c:out></td>
							<td><c:out value="${item.duracion}"></c:out></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div> <!-- ----  FIN HISTORIAL-------- -->
		
		
		<div class="row"> <!-- ----   SEGUNDA FILA CARRUSEL -------- -->
		
			<div id="carouselExampleCaptions" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
							<img src="img/helm-slider-ofertador.jpg" class="d-block w-100"
								alt="bosque">
							<div class="carousel-caption d-none d-md-block">
								<h1>Deslice el carrusel para comprar o hagalo desde la lista de abajo</h1>
							</div>
					</div>
					<c:forEach items="${listaProductos}" var="producto">
						<div class="carousel-item ">
							<img src="https://drive.google.com/uc?export=download&id=${producto.imgURL}" alt="${producto.nombre}" style="object-fit: cover">
							<div class="carousel-caption d-none d-md-block">
								<h1>${producto.nombre}</h1>
								<p><h5>${producto.descripcion}</h5><p>
								<p><h3><span>${producto.costo}</span> monedas  y <span>${producto.duracion}</span> horas de duracion</h3>
								<p><a href="confirmarcompra.do?idp=${producto.idProducto }&idu=${usuario.idUsuario}&esp=${producto.esPromo()}"
										class="btn btn-primary"> Comprar </a>
							</div>
						</div>
					</c:forEach>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>  <!-- ---- FIN DE LA SEGUNDA FILA CARRUSEL -------- -->
		
	
		<div class="row"> <!-- ----   TERCERA  FILA LISTADO-------- -->
			<p><h5>${listaProductos.size()} productos listados</h5><p>
			
			<table class="table table-stripped table-hover">
				<thead>
					<tr>
						<th>Producto</th>
						<th>Tipo</th>
						<th>Descripcion</th>
						<th>Costo</th>
						<th>Duracion</th>
						<th>Accion</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listaProductos}" var="producto">
						<tr>
							<td><c:out value="${producto.nombre}"></c:out></td>
							<c:if test="${producto.esPromo() == true }">
								<td>Promoci&oacute;n</td>  
								<td><c:out value="${producto.generarDescripcion()}"></c:out></td>
							</c:if>
							<c:if test="${producto.esPromo() == false }">
								<td>Atracci&oacute;n</td>
								<td><c:out value="${producto.descripcion}"></c:out></td>
							</c:if>
							<td><c:out value="${producto.costo}"></c:out></td>
							<td><c:out value="${producto.duracion}"></c:out></td>
							<td><a href="confirmarcompra.do?idp=${producto.idProducto }&idu=${usuario.idUsuario}&esp=${producto.esPromo()} " 
								class="btn btn-light rounded-0" role="button"><i class="bi bi-pencil-fill">Comprar</i></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div> <!-- ----  FIN DE LA TERCERA FILA LISTADO -------- -->

	</div> <!-- -----------FIN DE CONTAINER PRINCIPAL-------- -->

</body>
</html>