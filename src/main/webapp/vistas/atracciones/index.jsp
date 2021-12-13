
<%@ page language="java" contentType="text/html; charset=Utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Atracciones</title>

<!-- font awesome cdn link -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom ccs file link -->
	<style>
     <%@ include file="../../css/atraccionesAdmin.css"%>
</style>










</head>

<body>


<header>
    <div id="menu-bar" class="fas fa-bars"></div>

    <a href="#" class="logo"><span>P</span>anel Administrador</a>
    <nav class="navbar">  
     <a class="nav-link " href="../listarusuarios.do">Usuarios</a>
     <a class="nav-link" href="atracciones.jsp">Atracciones</a>
     <a class="nav-link" href="promociones.jsp">Promociones</a>
     <a class="nav-link" href="../listarTipos.do">Tipos de Atracciones</a>

</nav>

   <div class= "logout">
      <a class="btn" href="../logout">Cerrar sesion</a>
   </div>

</header>

	<!--  ACA VA EL PARTIALS DE LA NAV BAR DE ADMIN  -->






    	<!-- seccion home empieza -->
        <section class="home" id="home"> 
	<main class="container">


			<h1>Atracciones de la Tierra Media</h1>



		<div class="mb-3">
			<a href="/AppWebTierraMedia/atracciones/create.do"
				class="btn btn-primary" role="button"> <i class="bi bi-plus-lg"></i>
				Agregar Atracción
			</a> 
		</div>


		<table class="content-table">
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
								class="btn-e" role="button">DAR
									DE ALTA</a></td>
						</c:if>
						<c:if test="${atraccion.estaActiva}">
							<td><span>Activo</span></td>
							<td><a  href="/AppWebTierraMedia/atracciones/delete.do?id=${atraccion.getIdAtraccion()}"
									class="btn-a" role="button"><i
									class="fas fa-times-circle"></i></a></td>
						</c:if>
						
						
								 <td> <a href="/AppWebTierraMedia/atracciones/edit.do?id=${atraccion.idAtraccion}"
									class="btn-g" role="button"><i
									class="fas fa-pencil-alt"></i></a></td>
								<!--<a  href="/AppWebTierraMedia/atracciones/delete.do?id=${atraccion.getIdAtraccion()}"
									class="btn btn-danger rounded" role="button"><i
									class="bi bi-x-circle-fill"></i></a>--> 
							
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</main>
	</section>
	
	
	<!-- footer section starts -->

<section class="footer">
   <div class="box-container">
      
      
       <div class="box">
         <h3>hipervinculos github</h3>
         <a href="https://github.com/ErCanaro" target="_blank" rel="noopener noreferrer">Enzo</a>
         <a href="https://github.com/JosCorSgo" target="_blank" rel="noopener noreferrer">Jose</a>
         <a href="https://github.com/PaulaSuescun" target="_blank" rel="noopener noreferrer">Paula</a>
         <a href="https://github.com/AlanBarani" target="_blank" rel="noopener noreferrer">Alan Barani</a>
         <a href="#" target="_blank" rel="noopener noreferrer">mauro</a>
         <a href="#" target="_blank" rel="noopener noreferrer">Ema</a>
         
      </div>
      
      <div class="box">
      
  
      <img src="../img/lecodefooter.png" />
      
      
      </div>
      
       <div class="box">
         <h3>linkedin</h3>
         <a href="https://www.linkedin.com/in/alan-jes%C3%BAs-barani-9a021a227" target="_blank" rel="noopener noreferrer">Alan Barani</a>
         <a href="#">instagram</a>
         <a href="#">twitter</a>
         <a href="#">linkedin</a>
      </div>
       
   </div>
   
   <h1 class="credit">creado por <span>Le Code</span></h1>

</section>


<!-- footer section ends -->
	
</body>
</html>