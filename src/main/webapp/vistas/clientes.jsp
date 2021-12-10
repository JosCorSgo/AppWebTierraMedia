<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Principal</title>

<!-- font awesome cdn link -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom ccs file link -->
<link rel="stylesheet" href="../css/styleclientes.css">



</head>
<body>

<% String usuario = "Invitado"; %>
<% if (session.getAttribute("nombreUsuario") != null) {%>
<%     usuario = (String)session.getAttribute("nombreUsuario");} %>
<% pageContext.setAttribute("usuario", usuario);%>
<% pageContext.setAttribute("usr", session.getAttribute("usr"));%>

<!-- comienza seccion header -->

<header>
    <div id="menu-bar" class="fas fa-bars"></div>

    <a href="#" class="logo"><span>P</span>anel de Clientes</a>
    
    <nav class="navbar">   
    <a class="nav-link" href="atracciones.jsp">Atracciones</a>  
     <a class="nav-link" href="promociones.jsp">Promociones</a>  
     <a class="nav-link" href="../comprar.do">Comprar</a>  
     <a class="nav-link " aria-current="page" href="../itinerario.do">Ver mi itinerario</a>

</nav>

   <div class= "icons">
      <i class="fas fa-user" id="login-btn"></i>
   </div>

</header>

<!-- termina seccion header -->

<!-- login form container -->

<div class="login-form-container">

   <i class="fas fa-times" id="form-close"></i>

   <form action="">
   <h3>Usuario</h3>
   
	<c:choose>
		    <c:when test="${usuario == 'Invitado'}">
		          ${usuario}
		          <a class="btn" href="login.jsp">Iniciar sesion</a>
		          			
		         </c:when>
		         <c:otherwise>

		            <p>Nombre: ${usr.nombre}</p>
		             <p>Preferencia: ${usr.preferencia}</p>
		          	<p>Presupuesto: ${usr.presupuesto}</p>
		          	<p>Tiempo: ${usr.tiempoDisponible}</p>
		          	<a class="btn" href="../logout">Cerrar sesion</a>
		          </c:otherwise>
		          		  
		        </c:choose>
   

   </form>

</div>


	<h4>${usr}</h4>	


<!-- custom js file link -->
<script src="../js/scriptclientes.js"></script>

</body>
</html>