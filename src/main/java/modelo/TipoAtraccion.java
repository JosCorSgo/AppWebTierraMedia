package modelo;

public enum TipoAtraccion {

	AVENTURA(1, true), PAISAJES(2, true), DEGUSTACION(3, true);

	private int id;

	private boolean estaActivo;

	TipoAtraccion(int id, boolean estaActivo) {
		this.id = id;
		this.estaActivo = estaActivo;
	}

	public int getID() {
		return this.id;
	}

	public boolean estaActivo() {
		return estaActivo;
	}

	public void setEstado(boolean estaActivo) {
		this.estaActivo = estaActivo;
	}
}
