<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>comprar</title>


<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />



<!-- font awesome cdn link -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom ccs file link -->
	<style>
     <%@ include file="../css/comprar.css"%>
</style>





</head>
<body>


<!-- comienza seccion header -->

<header>
    <div id="menu-bar" class="fas fa-bars"></div>

    <a href="#" class="logo"><span>C</span>omprar</a>
    

    <nav class="navbar">   
    <a class="nav-link" href="../atracciones/cliente.do">Atracciones</a>  

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


	<h2>Pagina de compras de atracciones y promociones</h2>
	<div class="container">
	
	
	
	<!-- services section starts -->

<section class="services" id="services">
   <h1 class="heading">
   <span>s</span>
   <span>e</span>
   <span>r</span>
   <span>v</span>
   <span>i</span>
   <span>c</span>
   <span>i</span>
   <span>o</span>
   <span>s</span>
</h1>

  <div class="box-container">
      
      <div class="box">
         <i class="fas fa-money-bill-wave"></i>
         <h3>Presupuesto disponible</h3>
       <h1 class="card-text">${usuario.presupuesto }</h1>
		<a href="#" class="btn btn-primary">Comprar monedas</a>
      </div>

      
      <div class="box">
         <i class="fas fa-clock"></i>
         <h3>Tiempo disponible</h3>
       <h1 class="card-text">${usuario.tiempoDisponible }</h1>
		<a href="#" class="btn btn-primary">Modificar tiempo</a>
      </div>
      
      <div class="box">
         <i class="fas fa-star"></i>
         <h3>Atracciones preferidas</h3>
       <h1 class="card-text">${usuario.preferencia }</h1>
		<a href="#" class="btn btn-primary">Modificar preferencia</a>
      </div>
   </div>
  
</section>

<!-- services section ends -->
	
		
<!-- seccion slider comienza -->

<section class="gallery" id="gallery">

 <h1 class="heading">
   <span>g</span>
   <span>a</span>
   <span>l</span>
   <span>e</span>
   <span>r</span>
   <span>i</span>
   <span>a</span>
  </h1>
  
  
    <div class="swiper review-slider">
  
      <div class="swiper-wrapper">
      
         <div class="swiper-slide">
         
            <div class="box">
              <img src="img/bosque.jpg" alt="">
              <h3>Deslice el carrusel para comprar o hagalo desde la lista de abajo</h3>

            </div>
         
         </div>
      
      
      
      
      <c:forEach items="${listaProductos}" var="producto">
          <div class="swiper-slide">
         
            <div class="box">
              <img src="https://drive.google.com/uc?export=download&id=${producto.img}" alt="${producto.nombre}">
              <h3>${producto.nombre}</h3>
              <p>${producto.descripcion}<p>
              <p><h3><span>${producto.costo}</span> monedas  y <span>${producto.duracion}</span> horas de duracion</h3>
								<p><a href="confirmarcompra.do?idp=${producto.idAtraccion }&idu=${usuario.idUsuario }"
										class="btn btn-primary"> Comprar </a>
              </div>
              
             
            </div>
  </c:forEach>
         
         </div>
         </div>
       
          
</section>
      

 
  





<!-- seccion slider termina  -->
		
		
		
<section class="home" id="home">

	<main class="container">
			<table class="content-table">
				<thead>
					<tr>
						<th>Producto</th>
						<th>esPromo</th>
						<th>Descripcion</th>
						<th>Costo</th>
						<th>Duracion</th>
						<th>Accion</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listaProductos}" var="producto">
						<tr>
							<td><c:out value="${producto.nombre}"></c:out></td>
							<td><c:out value="{producto.esPromo}"></c:out></td>
							<td><c:out value="{producto.descripcion}"></c:out></td>
							<td><c:out value="${producto.costo}"></c:out></td>
							<td><c:out value="${producto.duracion}"></c:out></td>
							<td><a href="confirmarcompra.do?idp=${producto.idAtraccion }&idu=${usuario.idUsuario } " 
								class="btn btn-light rounded-0" role="button"><i class="bi bi-pencil-fill">Comprar</i></a></td>
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
         <h3>github</h3>
         <a href="https://github.com/ErCanaro" target="_blank" rel="noopener noreferrer">Enzo Bulacio</a>
         <a href="https://github.com/JosCorSgo" target="_blank" rel="noopener noreferrer">Jose Cordoba</a>
         <a href="https://github.com/PaulaSuescun" target="_blank" rel="noopener noreferrer">Paula Suescun</a>
         <a href="https://github.com/AlanBarani" target="_blank" rel="noopener noreferrer">Alan Barani</a>
         <a href="https://github.com/Mauricio12Sanchez" target="_blank" rel="noopener noreferrer">Mauro Sanchez</a>
         <a href="https://github.com/AvalosEmanuel" target="_blank" rel="noopener noreferrer">Ema Avalos</a>
         
      </div>
      
      <div class="box">
      
  
      
      <img src="<c:url value='img/lecodefooter.png'/>" alt=.../>
      
      </div>
      
       <div class="box">
         <h3>linkedin</h3>
         <a href="https://www.linkedin.com/in/alan-jes%C3%BAs-barani-9a021a227" target="_blank" rel="noopener noreferrer">Alan Barani</a>
         <a href="https://www.linkedin.com/in/alan-jes%C3%BAs-barani-9a021a227" target="_blank" rel="noopener noreferrer">Ema Avalos</a>
         <a href="#">Paula Suescun</a>
         <a href="#">Enzo Bulacio</a>
         <a href="#">Jose Cordoba</a>
         <a href="#">Mauro Sanchez</a>
      </div>
      
   </div>
   
   <h1 class="credit">creado por <span>Le Code</span></h1>

</section>


<!-- footer section ends -->


	
	
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	
	<!-- custom js file link -->

 <script src="js/comprar2.js"></script>

</body>
</html>