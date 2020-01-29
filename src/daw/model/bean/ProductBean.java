package daw.model.bean;

public class ProductBean {
	private int id;
	private String denumire;
	private int pret;
	private int cantitate;
	public boolean valid;
	
	public int getId_Product() {
		return id;
	}

	public void setId_Product(int id_Product) {
		this.id = id_Product;
	}

	public String getDenumire() {
		return denumire;
	}

	public void setDenumire(String denumire) {
		this.denumire = denumire;
	}

	public int getPret() {
		return pret;
	}

	public void setPret(int pret) {
		this.pret = pret;
	}

	public int getCantitate() {
		return cantitate;
	}

	public void setCantitate(int cantitate) {
		this.cantitate = cantitate;
	}
	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean valid) {
		this.valid = valid;
	}
}
