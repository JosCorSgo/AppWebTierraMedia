package persistencia.genericos;

import java.util.ArrayList;

import modelo.Producto;
import modelo.Usuario;

public interface ItinerarioDAO extends GenericDAO<Producto> {
	
	//public abstract Producto buscarItemItinerarioPorIdProducto(long IdProducto);
	//public abstract int agregarItemItinerario(long  IdUsuario, Producto producto);
	//public ArrayList<Atraccion> recuperarHistorialDelUsuario(ArrayList<Producto> itinerario);
	//public abstract long obtenerIdItinerarioPorIdUsuario(long IdUsuario);
	public abstract int insertarItemItinerario(long  IdUsuario, long IdProducto, long tipo);
	public abstract ArrayList<Producto> itinerarioDelUsuarioPorId(Long idUsuario);
	public abstract Usuario itinerarioeHistorialDelUsuario(Usuario usuario);
	
	
}
