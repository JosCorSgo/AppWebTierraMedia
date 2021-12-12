package modelo;

public class Atraccion extends Producto {
	private long idAtraccion;
	private int cupo;
	private Posicion ubicacion;
	private boolean estaActiva;
	private String descripcion = "";	
	private String imagenUrl;

	public Atraccion(String nombre, TipoAtraccion tipo, int costo, double duracion, int cupo) {
		super(nombre, tipo, costo, duracion);
		this.cupo = cupo;
		this.atraccionesIncluidas.add(this);
	}
	
	public Atraccion(long idAtraccion, String nombre, TipoAtraccion tipo, double costo, double duracion, int cupo, Posicion ubicacion ) {
		super(idAtraccion, nombre, tipo, costo, duracion);
		this.cupo = cupo;
		this.atraccionesIncluidas.add(this);
		this.idAtraccion = idAtraccion;
		this.ubicacion = ubicacion;
	}



	@Override
	public int getCupo() {
		return this.cupo;
	}
	public void restarCupo() {
		this.cupo -= 1;
	}

	@Override
	public String imprimirEnArchivo() {
		return this.getNombre() + "," + this.getTipo() + "," + this.getCosto() + "," + this.getDuracion() + ","
				+ this.cupo;
	}

	@Override
	public void mostrarPorPantalla() {
		System.out.printf("%-22s%-14s%-8d%-10.1f%-7d", getNombre(), getTipo(), this.getCosto(), getDuracion(),
				getCupo());
		System.out.println("[-]");

	}
	
	public long getIdAtraccion() {
		return this.idAtraccion;
	}
	
	public double getPosX() {
		return this.ubicacion.getX();
	}
	
	public double getPosY() {
		return this.ubicacion.getY();
	}
	
	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getImagenUrl() {
		return this.imagenUrl;
	}

	public void setImagenUrl(String imagenUrl) {
		this.imagenUrl = imagenUrl;
	}

	public boolean estaActiva() {
		return this.estaActiva;
	}	
	
}
