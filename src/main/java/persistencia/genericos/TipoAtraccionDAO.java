package persistencia.genericos;

import java.util.ArrayList;

import modelo.TipoAtraccion;

public interface TipoAtraccionDAO extends GenericDAO<TipoAtraccion>{

	ArrayList<TipoAtraccion> buscarActivos();

}

