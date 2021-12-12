package modelo;

public class Atraccion extends Producto {
	private long idAtraccion;
	private int cupo;
	private boolean estaActiva;
	private String img;
	private String descripcion;

	public Atraccion(String nombre, TipoAtraccion tipo, int costo, double duracion, int cupo) {
		super(nombre, tipo, costo, duracion);
		this.cupo = cupo;
		this.atraccionesIncluidas.add(this);
	}

	public Atraccion(long idAtraccion, String nombre, TipoAtraccion tipo, double costo, double duracion, int cupo) {
		super(idAtraccion, nombre, tipo, costo, duracion);
		this.cupo = cupo;
		this.atraccionesIncluidas.add(this);
		this.idAtraccion = idAtraccion;
	}

	public Atraccion(long idAtraccion, String nombre, TipoAtraccion tipo, int costo, double duracion, int cupo,
			boolean estaActiva, String img, String descripcion) {
		
		super(nombre, tipo, costo, duracion);
		this.cupo = cupo;
		this.idAtraccion = idAtraccion;
		this.atraccionesIncluidas.add(this);
		this.estaActiva = estaActiva;
		this.img = img;
		this.setDescripcion(descripcion);
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

	protected boolean estaActiva() {
		return this.estaActiva;
	}

	protected void setEstaActiva(boolean estaActiva) {
		this.estaActiva = estaActiva;
	}

	protected String getImg() {
		return img;
	}

	protected void setImg(String img) {
		this.img = img;
	}

	protected String getDescripcion() {
		return descripcion;
	}

	protected void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	protected void setIdAtraccion(long idAtraccion) {
		this.idAtraccion = idAtraccion;
	}

}
