<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Panel de administradores</title>

<!-- font awesome cdn link -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom ccs file link -->
	<style>
     <%@ include file="../css/administradores.css"%>
</style>


</head>
<body>

<header>
    <div id="menu-bar" class="fas fa-bars"></div>

    <a href="#" class="logo"><span>P</span>anel Administrador</a>
    <nav class="navbar">  
     <a class="nav-link " href="../listarusuarios.do">Usuarios</a>
     <a class="nav-link" href="../atracciones/index.do">Atracciones</a>
     <a class="nav-link" href="promociones.jsp">Promociones</a>
     <a class="nav-link" href="../listarTipos.do">Tipos de Atracciones</a>

</nav>

   <div class= "logout">
      <a class="btn" href="../logout">Cerrar sesion</a>
   </div>

</header>


<!-- seccion home empieza -->
<section class="home" id="home">


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




<!-- termina seccion header -->

<!-- custom js file link -->
<script src="../js/scriptadministradores.js"></script>

</body>
</html>