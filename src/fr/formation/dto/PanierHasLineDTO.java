package fr.formation.dto;

public class PanierHasLineDTO {

	private int idProduct;
	private int quantite;

	public PanierHasLineDTO(int idProduct, int quantite) {
		super();
		this.idProduct = idProduct;
		this.quantite = quantite;
	}

	public PanierHasLineDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getIdProduct() {
		return idProduct;
	}

	public void setIdProduct(int idProduct) {
		this.idProduct = idProduct;
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

}
