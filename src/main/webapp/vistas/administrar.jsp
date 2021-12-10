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
<link rel="stylesheet" href="../css/administradores.css">


</head>
<body>

<header>
    <div id="menu-bar" class="fas fa-bars"></div>

    <a href="#" class="logo"><span>P</span>anel de Administrador</a>
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



<!-- termina seccion header -->

<!-- custom js file link -->
<script src="../js/scriptadministradores.js"></script>

</body>
</html>