package persistencia.genericos;

import modelo.Atraccion;

public interface AtraccionDAO extends GenericDAO<Atraccion>{

	public abstract Atraccion buscarPorIdAtraccion(Long IdAtraccion);
	public abstract int actualizarCupo(Atraccion atraccion);
	public abstract int borrarLogico(Atraccion atraccion);
}
