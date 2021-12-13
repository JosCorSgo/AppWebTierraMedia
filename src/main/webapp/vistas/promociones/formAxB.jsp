<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



	<div class="row g-3 modal-body">
			
			<div class="col-md-6">
				<label for="formGroupExampleInput" class="form-label">Nombre</label>
				<input required type="text" name="nombre" id="nombre" class="form-control" 
					placeholder="Nombre" value="${promocion.nombre}">
			</div>
		
			<div class="col-md-6">
				<label  class="form-label">Atraccion 1</label> 
				<select required class="form-select" id="atr1" name="atraccion1" aria-label="Atraccion1">
					<option value="${promocion.atraccionesIncluidas.get(0).idAtraccion}" selected>
					<c:out	value="${promocion.atraccionesIncluidas.get(0).nombre}"></c:out></option>

					<c:forEach items="${listaAtracciones}" var="atraccion" varStatus="myIndex">
						<c:if test="${atraccion.tipo.equals(promocion.tipo)}">
						<option value="${myIndex.count}"><c:out
						value="${myIndex.count}- ${atraccion.nombre} (${atraccion.tipo})"></c:out></option>
					</c:if>
					</c:forEach>
				</select>
			</div>

			<div class="col-md-6">
				<label  class="form-label">Atraccion 2</label> 
				<select required class="form-select" id="atr2" name="atraccion2" >
					<option value="${promocion.atraccionesIncluidas.get(1).idAtraccion}" selected>
					<c:out	value="${promocion.atraccionesIncluidas.get(1).nombre}"></c:out></option>
					<c:forEach items="${listaAtracciones}" var="atraccion" varStatus="myIndex">
						<c:if test="${atraccion.tipo.equals(promocion.tipo)}">
						<option value="${myIndex.count}"><c:out
						value="${myIndex.count}- ${atraccion.nombre} (${atraccion.tipo})"></c:out></option>
					</c:if>
					</c:forEach>
				</select>
			</div>

			<div class="col-md-6">
				<label  class="form-label">Atraccion 3</label> 
				<select required class="form-select" id="atr3" name="atraccion3" >
					<option value="${promocion.atraccionesIncluidas.get(2).idAtraccion}" selected>
					<c:out	value="${promocion.atraccionesIncluidas.get(2).nombre}"></c:out></option>
					<c:forEach items="${listaAtracciones}" var="atraccion" varStatus="myIndex">
						<c:if test="${atraccion.tipo.equals(promocion.tipo)}">
						<option value="${myIndex.count}"><c:out
						value="${myIndex.count}- ${atraccion.nombre} (${atraccion.tipo})"></c:out></option>
					</c:if>
					</c:forEach>
				</select>
			</div>
		
		
			<div>
				<button type="submit" class="btn btn-primary">Guardar</button>
				<a onclick="window.history.back();" class="btn btn-secondary"
				role="button">Cancelar</a>
			</div>
		
	</div>

</body>
</html>