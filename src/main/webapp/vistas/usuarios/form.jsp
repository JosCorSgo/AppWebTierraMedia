<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="modal-body">
	<div class="mb-3">
		<label for="nombre" class="col-form-label">Nombre:</label> <input
			type="text" class="form-control" id="name" name="name"
			required value="${usuario.nombre}">
	</div>
	<div class="mb-3">
		<label for="presupuesto" class="col-form-label">Nombre:</label> <input
			type="text" class="form-control" id="name" name="name"
			required value="${usuario.presupuesto}">
	</div>
	<div class="mb-3">
		<label for="tiempo" class="col-form-label">Nombre:</label> <input
			type="text" class="form-control" id="name" name="name"
			required value="${usuario.tiempoDisponible}">
	</div>
	<div class="mb-3">
		<label for="preferencia" class="col-form-label">Nombre:</label> <input
			type="text" class="form-control" id="name" name="name"
			required value="${usuario.preferencia}">
	</div>
	<div class="mb-3">
		<label for="password" class="col-form-label">Nombre:</label> <input
			type="text" class="form-control" id="name" name="name"
			required value="${usuario.password}">
	</div>
	
	<div class="mb-3">
		<div class="form-check">
			<input class="form-check-input" type="radio" name="estaActivo"
				id="estaActivo1" checked> <label
				class="form-check-label" for="estaActivo1">Activo</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="estaActivo"
				id="estaActivo2"> <label class="form-check-label"
				for="estaActivo2">Inactivo</label>
		</div>
	</div>
	
	<div class="mb-3">
		<div class="form-check">
			<input class="form-check-input" type="radio" name="esAdmin"
				id="esAdmin1" checked> <label
				class="form-check-label" for="esAdmin1">Es administrador</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="esAdmin"
				id="esAdmin2"> <label class="form-check-label"
				for="esAdmin2">No es administrador</label>
		</div>
	</div>
	
<div>
	<button type="submit" class="btn btn-primary">Guardar</button>
	<a onclick="window.history.back();" class="btn btn-secondary"
		role="button">Cancelar</a>
</div>


<!-- 	private Long IdUsuario;
		private String nombre;
		private int presupuesto;
		private double tiempoDisponible;
		private TipoAtraccion preferencia;
		private Posicion posicion;
		private String email;
		private String password;
		private boolean estaActivo;
		private boolean esAdmin;	

 -->	
