<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script defer
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script defer
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>

<title>Tipos de atracciones</title>
</head>
<body>

	<!--  ACA VA EL PARTIALS DE LA NAV BAR DE ADMIN  -->

	<main class="container">

		<div class="bg-light p-4 mb-3 rounded">
			<h1>Listado de tipos de atracciones</h1>
		</div>
		<table class="table table-striped table-bordered table-hover">

			<thead class="table-light">
				<tr>
					<th>Nombre</th>
					<th>ID</th>
					<th>Estado</th>
					<th>Modificar</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${tiposAtraccion}" var="tipoAtraccion">
					<tr>
						<td><strong><c:out value="${tipoAtraccion.name()}"></c:out></strong></td>
						<td><c:out value="${tipoAtraccion.getID() }"></c:out></td>
						<c:if test="${!tipoAtraccion.estaActivo()}">
							<td><span>Inactivo</span></td>
							<td><a href="activarTipo.do?tipo=${tipoAtraccion.name()}"
								class="btn btn-outline-success rounded btn-sm" role="button">DAR
									DE ALTA</a></td>
						</c:if>
						<c:if test="${tipoAtraccion.estaActivo()}">
							<td><span>Activo</span></td>
							<td><a href="borrarTipo.do?tipo=${tipoAtraccion.name()}"
								class="btn btn-outline-danger rounded btn-sm" role="button">DAR
									DE BAJA</a></td>
						</c:if>

					</tr>
				</c:forEach>
			</tbody>
		</table>

	</main>


</body>
</html>