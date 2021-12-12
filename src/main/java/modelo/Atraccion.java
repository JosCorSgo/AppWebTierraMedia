package modelo;

import java.util.HashMap;
import java.util.Map;

public class Atraccion extends Producto {
	/*private long idAtraccion;
	private int cupo;
	private Posicion ubicacion;
	private boolean estaActiva;
	private String descripcion;	
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
	*/
	
	//nuevaAtraccion
	
	private long idAtraccion;
    private int cupo;
    private boolean estaActiva;
    private String img;
    private String descripcion;
    
    //agregue
    private Map<String, String> errors;
    
    public Atraccion(String nombre, TipoAtraccion tipo, int costo, double duracion, int cupo) {
        super(nombre, tipo, costo, duracion);
        this.cupo = cupo;
        this.atraccionesIncluidas.add(this);
    }
    
  //agregue
	public Atraccion(String nombre, TipoAtraccion tipo, int costo, double duracion, int cupo, String img, String descripcion) {
		super(nombre, tipo, costo, duracion);
		this.cupo = cupo;
		this.atraccionesIncluidas.add(this);
		this.img = img;
		this.setDescripcion(descripcion);
	}
    
    //agregue
    public Atraccion( long idAtraccion, String nombre, TipoAtraccion tipo, int costo, double duracion, int cupo, boolean estaActiva, String img, String descripcion) {
        super(nombre, tipo,costo, duracion);
        this.cupo = cupo;
        this.idAtraccion = idAtraccion;
        this.atraccionesIncluidas.add(this);
        this.estaActiva = estaActiva;
        this.img = img;
        this.setDescripcion(descripcion);
    }
    
    //agregue
        public Atraccion( long idAtraccion) {
        	 super("0",0, 0);
            this.idAtraccion = idAtraccion;
            this.atraccionesIncluidas.add(this);
        }
        
        
    //agregue
    public boolean isValid() {
        validate();
        return errors.isEmpty();
    }
    //agregue
    public void validate() {
        errors = new HashMap<String, String>();
        if (cupo <= 0) {
            errors.put("cupo", "Debe ser positivo");
        }
    }
    //agregue
    public Map<String, String> getErrors() {
        return errors;
    }
    @Override
    public int getCupo() {
        return this.cupo;
    }
    
    //agregue
    public void setCupo(int cupo) {
        this.cupo = cupo;
    }
    
    public void restarCupo() {
        this.cupo -= 1;
    }
    
    //agregue
    public boolean canHost(int i) {
        return cupo >= i;
    }
    //agregue
    public void host(int i) {
        this.cupo -= i;
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
    //agregue
    public boolean getEstaActiva() {
        return estaActiva;
    }
    //agregue
    public void setEstaActiva(boolean estaActiva) {
        this.estaActiva = estaActiva;
    }
    public String getImg() {
        return img;
    }
    public String getDescripcion() {
        return descripcion;
    }
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
	

