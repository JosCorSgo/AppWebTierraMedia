package servicios;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import modelo.Atraccion;
import modelo.Producto;
import modelo.Usuario;
import persistencia.genericos.AtraccionDAO;
import persistencia.genericos.DAOFactory;
import persistencia.genericos.PromocionDAO;

public class ProductoService {
	ArrayList<Atraccion> atraccionesDB = new ArrayList<Atraccion>();
	ArrayList<Producto> promocionesDB = new ArrayList<Producto>();
	ArrayList<Producto> productosDB = new ArrayList<Producto>();	
	
	

	public ArrayList<Producto> listar() {
		AtraccionDAO atraccionDAO = DAOFactory.getAtraccionDAO();
		PromocionDAO promocionDAO = DAOFactory.getPromocionDAO();
		atraccionesDB = atraccionDAO.buscarTodos();   
		promocionesDB = promocionDAO.buscarTodos(); 
		productosDB.addAll(atraccionesDB);
		productosDB.addAll(promocionesDB);
		generarDescripcionesDeProductos();
		return productosDB;
	}
	
	
	private void generarDescripcionesDeProductos() {
		for (Producto producto : productosDB) {
			producto.generarDescripcion();
		}
		
	}


	public ArrayList<Producto> listarOrdenados(Usuario usuario) {
		listar();
		return ordenarSugerencia(usuario);
	}
	
	
	
	
	
	private ArrayList<Producto> ordenarSugerencia(Usuario usuario ) {
		ArrayList<Producto> sugerencia = new ArrayList<Producto>();
		ArrayList<Producto> noPreferidas = new ArrayList<Producto>();
		
		
		for (Producto prod : productosDB) {
			int aux = 0;
			for (Atraccion atr : prod.getAtraccionesIncluidas()) {
				if (usuario.getHistorialDeAtracciones().contains(atr)) {
					aux++;
				}
			}

			if (prod.getCosto() <= usuario.getPresupuesto() && prod.getDuracion() <= usuario.getTiempoDisponible()
					&& prod.getCupo() > 0 && aux == 0) {
				if (prod.getTipo() == usuario.getPreferencia()) {
					sugerencia.add(prod);
				} else {
					noPreferidas.add(prod);
				}
			}
		}
		
		Comparator<Producto> ordenarSugerencia = Comparator.comparing(Producto::esPromo)
				.thenComparing(Producto::getCosto).thenComparing(Producto::getDuracion)
				.thenComparing(Producto::getNombre);
		Collections.sort(sugerencia, ordenarSugerencia.reversed());
		Collections.sort(noPreferidas, ordenarSugerencia.reversed());

		sugerencia.addAll(noPreferidas);
		
		return sugerencia;
	}
	
	
	
	

}
