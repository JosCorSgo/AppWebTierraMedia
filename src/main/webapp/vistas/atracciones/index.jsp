<%@ page language="java" contentType="text/html; charset=Utf-8"
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
<jsp:include page="/partials/head.jsp"></jsp:include>

<title>Atracciones</title>
</head>

<body>
	<main class="container">

		<div class="bg-light p-4 mb-3 rounded">
			<h1>Atracciones de la Tierra Media</h1>
		</div>


		<div class="mb-3">
			<a href="/AppWebTierraMedia/atracciones/create.do"
				class="btn btn-primary" role="button"> <i class="bi bi-plus-lg"></i>
				Agregar Atracción
			</a> 
		</div>


		<table class="table table-stripped table-hover">
			<thead>
				<tr>
					<th>Atracci&oacute;nes</th>
					<th>idAtraccion</th>
					<th>Costo</th>
					<th>Duraci&oacute;n</th>
					<th>Cupo</th>
					<th>EstaActiva</th>
					<th>Acci&oacute;n</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${atracciones}" var="atraccion">
					<tr>
						<td><strong><c:out value="${atraccion.nombre}"></c:out></strong>
							<p>${atraccion.descripcion}</p></td>
						<td><c:out value="${atraccion.idAtraccion}"></c:out></td>
						<td><c:out value="${atraccion.costo}"></c:out></td>
						<td><c:out value="${atraccion.duracion}"></c:out></td>
						<td><c:out value="${atraccion.cupo}"></c:out></td>
						<!--  <td><c:out value="${atraccion.estaActiva}"></c:out></td>--> 
						
					   
						
						
						<c:if test="${!atraccion.estaActiva}">
							<td><span>Inactivo</span></td>
							<td><a href="/AppWebTierraMedia/atracciones/activarAtraccion.do?id=${atraccion.idAtraccion}"
								class="btn btn-outline-success rounded btn-sm" role="button">DAR
									DE ALTA</a></td>
						</c:if>
						<c:if test="${atraccion.estaActiva}">
							<td><span>Activo</span></td>
							<td><a  href="/AppWebTierraMedia/atracciones/delete.do?id=${atraccion.getIdAtraccion()}"
									class="btn btn-danger rounded" role="button"><i
									class="bi bi-x-circle-fill"></i></a></td>
						</c:if>
						
						
								 <td> <a href="/AppWebTierraMedia/atracciones/edit.do?id=${atraccion.idAtraccion}"
									class="btn btn-light rounded-0" role="button"><i
									class="bi bi-pencil-fill"></i></a></td>
								<!--<a  href="/AppWebTierraMedia/atracciones/delete.do?id=${atraccion.getIdAtraccion()}"
									class="btn btn-danger rounded" role="button"><i
									class="bi bi-x-circle-fill"></i></a>--> 
							
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</main>
</body>
</html>