package fr.formation.dto;

import java.util.ArrayList;
import java.util.List;

public class CatalogueDTO {

	private List<ProductDTO> listProduct = new ArrayList<ProductDTO>();

	public CatalogueDTO(List<ProductDTO> listProduct) {
		super();
		this.listProduct = listProduct;
	}

	public CatalogueDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public List<ProductDTO> getListProduct() {
		return listProduct;
	}

	public void setListProduct(List<ProductDTO> listProduct) {
		this.listProduct = listProduct;
	}
	
	
}
