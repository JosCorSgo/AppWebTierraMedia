package modelo;

public enum TipoAtraccion {

	// IMPORTANTE. Debe respetarse este orden en la BD.
	AVENTURA, PAISAJES, DEGUSTACION;

	/**
	 * Opcion para evitar errores si se llegara a cambiar el orden: agregar un
	 * metodo que devuelva para cada tipo el ID utilizando ese método en lugar del
	 * ordinal + 1 en el DAO, o atributo con getter
	 **/
}
