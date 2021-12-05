<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script defer src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

<title>Principal</title>
</head>
<body>
<% String usuario = "Invitado"; %>
<% if (session.getAttribute("nombreUsuario") != null) {%>
<%     usuario = (String)session.getAttribute("nombreUsuario");} %>
<% pageContext.setAttribute("usuario", usuario);%>
<% pageContext.setAttribute("usr", session.getAttribute("usr"));%>



		<!--   nab bar  -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
		  <div class="container-fluid">
		    <a class="navbar-brand" href="#">Navbar</a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarSupportedContent">
		      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
		        <li class="nav-item">
		          <a class="nav-link" href="atracciones.jsp">Atracciones</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="promociones.jsp">Promociones</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="comprar.do">Comprar</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link " aria-current="page" href="itinerario.do">Ver mi itinerario</a>
		        </li>
		      </ul>
		      
		      	<div><h2>Panel de clientes</h2></div>
		      	
		        <div class="nav-item dropdown  text-center" >
		          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            <img src="person-circle.svg" alt="30" width="30"/>
		          </a>
		          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">


		          	<c:choose>
		          		<c:when test="${usuario == 'Invitado'}">
		          			<li>${usuario}</li>
		          			<li><a class="dropdown-item" href="login.jsp">Iniciar sesion</a></li>
		          			
		          		</c:when>
		          		<c:otherwise>

		          			<li>Nombre: ${usr.nombre}</li>
		          			<li>Preferencia: ${usr.preferencia}</li>
		          			<li>Presupuesto: ${usr.presupuesto}</li>
		          			<li>Tiempo: ${usr.tiempoDisponible}</li>
		          			<li><a class="dropdown-item" href="logout">Cerrar sesion</a></li>
		          		</c:otherwise>
		          		  
		          	</c:choose>


		          </ul>
		        </div>
		        
		    </div>
		  </div>
		</nav>


		<!--   nab bar  -->
	<h4>${usr}</h4>	

</body>
</html>