package modelo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

public abstract class Producto {
	/*private long IdProducto;
	private String nombre;
	private TipoAtraccion tipo;
	private int costo;
	private double duracion;
	protected boolean esPromo = false;
	private String descripcion = "";
	private String urlImagen="";
	protected ArrayList<Atraccion> atraccionesIncluidas = new ArrayList<Atraccion>();

	public Producto(String nombre, TipoAtraccion tipo, int costo, double duracion) {
		this.nombre = nombre;
		this.tipo = tipo;
		this.costo = costo;
		this.duracion = duracion;
	}


	public Producto(long id, String nombre, TipoAtraccion tipo, double costo, double duracion) {
		this.nombre = nombre;
		this.tipo = tipo;
		this.costo = (int)costo;
		this.duracion = duracion;
		this.IdProducto = id;
	}


	public long getIdProducto() {
		return IdProducto;
	}

	public ArrayList<Atraccion> getAtraccionesIncluidas() {
		return atraccionesIncluidas;
	}

	public String getNombre() {
		return nombre;
	}

	public TipoAtraccion getTipo() {
		return tipo;
	}

	public int getCosto() {
		return costo;
	}

	public void setCosto(int costo) {
		this.costo = costo;
	}

	public double getDuracion() {
		return duracion;
	}

	public void setDuracion(double duracion) {
		this.duracion = duracion;
	}

	public int getCupo() {
		int cupo1 = Integer.MAX_VALUE;
		for (Atraccion atr : atraccionesIncluidas) {
			if (atr.getCupo() < cupo1) {
				cupo1 = atr.getCupo();
			}
		}
		return cupo1;
	}

	public boolean esPromo() {
		return esPromo;
	}

	public void setPromo(boolean isPromo) {
		this.esPromo = isPromo;
	}

	public String imprimirEnArchivo() {
		return this.nombre + "," + this.tipo + "," + this.costo + "," + this.duracion;
	}

	public abstract void mostrarPorPantalla();

	@Override
	public int hashCode() {
		return Objects.hash(nombre);
	}

	@Override
	public String toString() {
		return "Producto [IdProducto=" + IdProducto + ", nombre=" + nombre + ", tipo=" + tipo + ", costo=" + costo
				+ ", duracion=" + duracion + ", esPromo=" + esPromo + ", descripcion=" + descripcion + "]";
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Producto other = (Producto) obj;
		return Objects.equals(nombre, other.nombre);
	}
	
	public String generarDescripcion() {
		String cadena="";
		if (this.esPromo) {
			for (Atraccion atraccion : atraccionesIncluidas) {
				cadena = cadena + atraccion.getNombre()+ ". ";
			}
			return "Esta promocion incluye: " + cadena;
		}
		for (Atraccion atraccion : atraccionesIncluidas) {
			cadena = cadena + atraccion.getNombre()+ ": "+ atraccion.getDescripcion();
		}
		return cadena;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	public String getDescripcion() {
		return this.descripcion;
	}
	
	

}*/
	
	//nuevoProducto
	
	private long IdProducto;
	private String nombre;
	private TipoAtraccion tipo;
	private int costo;
	private double duracion;
	protected boolean esPromo;
	protected ArrayList<Atraccion> atraccionesIncluidas = new ArrayList<Atraccion>();
	//agregue
	
	private Map<String, String> errors;

	public Producto(String nombre, TipoAtraccion tipo, int costo, double duracion) {
		this.nombre = nombre;
		this.tipo = tipo;
		this.costo = costo;
		this.duracion = duracion;
	}


	public Producto(long id, String nombre, TipoAtraccion tipo, double costo, double duracion) {
		this.nombre = nombre;
		this.tipo = tipo;
		this.costo = (int)costo;
		this.duracion = duracion;
		this.IdProducto = id;
	}
	//agregue
	public Producto(String nombre,int costo, double duracion) {
		this.nombre = nombre;
		this.costo = costo;
		this.duracion = duracion;
	}

	//agregue
	public boolean isValid() {
		validate();
		return errors.isEmpty();
	}
	//agregue
	public void validate() {
		errors = new HashMap<String, String>();

		if (costo <= 0) {
			errors.put("costo", "Debe ser positivo");
		}
		if (duracion <= 0) {
			errors.put("duracion", "Debe ser positivo");
		}
	}
	//agregue
	public Map<String, String> getErrors() {
		return errors;
	}


	public long getIdProducto() {
		return IdProducto;
	}

	public ArrayList<Atraccion> getAtraccionesIncluidas() {
		return atraccionesIncluidas;
	}

	public String getNombre() {
		return nombre;
	}

	public TipoAtraccion getTipo() {
		return tipo;
	}

	public int getCosto() {
		return costo;
	}
	//agregue
	public void setCosto(double costo) {
		this.costo = (int)costo;
	}

	public double getDuracion() {
		return duracion;
	}
	//agregue
	public void setDuracion(double duracion) {
		this.duracion = duracion;
	}
	//agregue
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	

	public int getCupo() {
		int cupo1 = Integer.MAX_VALUE;
		for (Atraccion atr : atraccionesIncluidas) {
			if (atr.getCupo() < cupo1) {
				cupo1 = atr.getCupo();
			}
		}
		return cupo1;
	}

	public boolean esPromo() {
		return esPromo;
	}

	public void setPromo(boolean isPromo) {
		this.esPromo = isPromo;
	}

	public String imprimirEnArchivo() {
		return this.nombre + "," + this.tipo + "," + this.costo + "," + this.duracion;
	}

	public abstract void mostrarPorPantalla();

	@Override
	public String toString() {
		return "-->Nombre: " + nombre + ", Tipo: " + tipo + ", Costo: " + costo + ", Duracion: " + duracion;
	}

	@Override
	public int hashCode() {
		return Objects.hash(nombre);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Producto other = (Producto) obj;
		return Objects.equals(nombre, other.nombre);
	}
	
	public String generarDescripcion() {
		String cadena="";
		if (this.esPromo) {
			for (Atraccion atraccion : atraccionesIncluidas) {
				cadena = cadena + atraccion.getNombre()+ ". ";
			}
			return "Esta promocion incluye: " + cadena;
		}
		for (Atraccion atraccion : atraccionesIncluidas) {
			cadena = cadena + atraccion.getNombre()+ ": "+ atraccion.getDescripcion();
		}
		return cadena;
	}

}
	
