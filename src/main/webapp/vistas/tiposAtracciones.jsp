<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tipo de atracciones</title>

<!-- font awesome cdn link -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom ccs file link -->
	<style>
     <%@ include file="../css/tiposAtracciones.css"%>
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


			<h1>Listado de tipos de atracciones</h1>

		
		
		<table class="content-table">

			<thead>
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
								class="btn-e" role="button">DAR
									DE ALTA</a></td>
						</c:if>
						<c:if test="${tipoAtraccion.estaActivo()}">
							<td><span>Activo</span></td>
							<td><a href="borrarTipo.do?tipo=${tipoAtraccion.name()}"
								class="btn-a" role="button">DAR
									DE BAJA</a></td>
						</c:if>

					</tr>
				</c:forEach>
			</tbody>
		</table>

	</main>
	</section>
<!-- seccion home termina -->

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
      
  
      <img src="<c:url value='img/lecodefooter.png'/>" alt=.../>
      
      
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