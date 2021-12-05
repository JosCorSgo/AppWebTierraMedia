package persistencia.genericos;

import modelo.Producto;

public interface PromocionDAO extends GenericDAO <Producto>{
	
	public abstract Producto buscarPorIdPromocion(Long id);

}
