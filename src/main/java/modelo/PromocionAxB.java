package modelo;

import java.util.ArrayList;

public class PromocionAxB extends Producto {
	private long idPromocion;
	
	public PromocionAxB(String nombre, TipoAtraccion tipo, Atraccion a1, Atraccion a2, Atraccion a3) {
		super(nombre, tipo, 0, 0);
		super.setCosto(a1.getCosto() + a2.getCosto());
		super.setDuracion(a1.getDuracion() + a2.getDuracion() + a3.getDuracion());
		super.setPromo(true);
		this.atraccionesIncluidas.add(a1);
		this.atraccionesIncluidas.add(a2);
		this.atraccionesIncluidas.add(a3);
	}

    // se usa en toProducto en Promocion DAOImpl
	public PromocionAxB(long idPromocion, String nombre, TipoAtraccion tipoAtraccion, ArrayList<Atraccion> atraccionesIncluidas , int costo, double duracion) {
		super(idPromocion, nombre, tipoAtraccion, costo, duracion);
		//super.setCosto(atraccionesIncluidas.get(0).getCosto() + atraccionesIncluidas.get(1).getCosto());
		//super.setDuracion(atraccionesIncluidas.get(0).getDuracion() + atraccionesIncluidas.get(1).getDuracion() + atraccionesIncluidas.get(1).getDuracion());
		super.setPromo(true);
		this.atraccionesIncluidas= atraccionesIncluidas;
		this.idPromocion = idPromocion;
		
	}



	@Override
	public String toString() {
		return "PromocionAxB [idPromocion=" + idPromocion + ", esPromo=" + esPromo + ", atraccionesIncluidas="
				+ atraccionesIncluidas + "]";
	}


	@Override
	public void mostrarPorPantalla() {
		System.out.printf("%-22s%-14s%-8d%-10.1f%-7s", getNombre(), getTipo(), this.getCosto(), getDuracion(), getCupo());
		System.out.println(
				"[" + getAtraccionesIncluidas().get(0).getNombre() + ", " + getAtraccionesIncluidas().get(1).getNombre()
						+ ", " + getAtraccionesIncluidas().get(2).getNombre() + "]");
	}

}
