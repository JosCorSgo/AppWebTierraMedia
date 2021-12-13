<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/partials/head.jsp"></jsp:include>
</head>
<body>

	<jsp:include page="/partials/nav.jsp"></jsp:include>

	<main class="container">

		<c:if test="${flash != null}">
			<div class="alert alert-danger">
				<p>
					<c:out value="${flash}" />
					<c:if test="${errors != null}">
						<ul>
							<c:forEach items="${errors}" var="entry">
								<li><c:out value="${entry.getValue()}"></c:out></li>
							</c:forEach>
						</ul>
					</c:if>
				</p>
			</div>
		</c:if>

		<div class="bg-light p-4 mb-3 rounded">
			<h1>Listado de usuarios de la Tierra Media</h1>
		</div>

		<c:if test="${usr.esAdmin == true}">
			<div class="mb-3">
				<a href="/AppWebTierraMedia/promociones/crear.do" class="btn btn-primary"
					role="button"> <i class="bi bi-plus-lg"></i>Agregar Promocion
				</a>
			</div>
		</c:if>
		<table class="table table-stripped table-hover">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nombre</th>
					<th>Precio</th>
					<th>Duracion</th>
					<th>Tipo</th>
					<th>EstaActiva</th>
					<th>Accion</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${promociones}" var="promociones">
					<tr>
						<td><c:out value="${promociones.idProducto}"></c:out></td>
						<td><strong><c:out value="${promociones.nombre}"></c:out></strong></td>
						<td><c:out value="${promociones.costo}"></c:out></td>
						<td><c:out value="${promociones.duracion}"></c:out></td>
						<td><c:out value="${promociones.tipo}"></c:out></td>
						<c:if test="${usuario.estaActivo == true }">
							<td><span class="bg-greee" >Activo</span></td>
						</c:if>
						<c:if test="${usuario.estaActivo == false }">
							<td><span class="bg-red" >Inactivo</span></td>
						</c:if>
						<c:if test="${usuario.esAdmin == true }">
							<td><span class="bg-greee" >Administrador</span></td>
						</c:if>
						<c:if test="${usuario.esAdmin == false }">
							<td><span class="bg-red" >Cliente</span></td>
						</c:if>

						<td><c:if test="${usr.esAdmin == true}">
						 
						<c:choose>
						<c:when test="${promociones.getClass().name.equals('modelo.PromocionAxB')}">
							<c:set var="href" value="/AppWebTierraMedia/promociones/editarAxB.do?id=${promociones.idProducto}"></c:set>
						</c:when>
						<c:when test="${promociones.getClass().name.equals('modelo.PromocionAbsoluta')}">
							<c:set var="href" value="/AppWebTierraMedia/promociones/editarAbsol.do?id=${promociones.idProducto}"></c:set>
						</c:when>
						<c:when test="${promociones.getClass().name.equals('modelo.PromoPorcentual')}">
							<c:set var="href" value="/AppWebTierraMedia/promociones/editarPorcent.do?id=${promociones.idProducto}"></c:set>
						</c:when>
						</c:choose>
								<a href="${href}" 	class="btn btn-light rounded-0" role="button"><i class="bi bi-pencil-fill">Editar</i></a>
								<a href="desactivarusuario.do?id=${usuario.idUsuario}" class="btn btn-danger rounded" role="button"><i class="bi bi-x-circle-fill">Desactivar</i></a>
							</c:if>

						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</main>

</body>
</html>