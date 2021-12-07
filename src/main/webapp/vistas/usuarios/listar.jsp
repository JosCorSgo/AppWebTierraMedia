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
				<a href="/turismo/attractions/create.do" class="btn btn-primary"
					role="button"> <i class="bi bi-plus-lg"></i>Agregar usuario
				</a>
			</div>
		</c:if>
		<table class="table table-stripped table-hover">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nombre</th>
					<th>Dinero</th>
					<th>Tiempo</th>
					<th>Preferencia</th>
					<th>Estado</th>
					<th>Rol</th>
					<th>Accion</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listaUsuarios}" var="usuario">
					<tr>
						<td><c:out value="${usuario.idUsuario}"></c:out></td>
						<td><strong><c:out value="${usuario.nombre}"></c:out></strong></td>
						<td><c:out value="${usuario.presupuesto}"></c:out></td>
						<td><c:out value="${usuario.tiempoDisponible}"></c:out></td>
						<td><c:out value="${usuario.preferencia}"></c:out></td>
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
								<a href="editarusuario.do?id=${usuario.idUsuario}" 	class="btn btn-light rounded-0" role="button"><i class="bi bi-pencil-fill">Editar</i></a>
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