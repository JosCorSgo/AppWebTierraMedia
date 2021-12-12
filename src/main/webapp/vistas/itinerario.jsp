<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>itinerario</title>

<!-- font awesome cdn link -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom ccs file link -->
<style>
     <%@ include file="../css/itinerario.css"%>
</style>



</head>
<body>


<!-- comienza seccion header -->

<header>
    <div id="menu-bar" class="fas fa-bars"></div>

    <a href="#" class="logo"><span>I</span>tinerario</a>
    
<nav class="navbar">   
    <a class="nav-link" href="atracciones.jsp">Atracciones</a>  
     <a class="nav-link" href="promociones.jsp">Promociones</a>  
     <a class="nav-link" href="../comprar.do?id=${usr.idUsuario}">Comprar</a>  
     <a class="nav-link " aria-current="page" href="../itinerario.do?id=${usr.idUsuario}">Ver mi itinerario</a>

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


<!-- seccion home empieza -->
<section class="home" id="home">


</section>
<!-- seccion home termina -->

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
      
  
      <img src="../img/lecode footer.png" alt="">
      
      
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


	


<!-- custom js file link -->
<script src="../js/scriptatracciones.js"></script>



		

</body>
</html>