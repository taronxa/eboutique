package fr.formation.dto;

import java.util.*;

public class ComponentDTO {

	private int id;
	private String name;
	private String supplier;
	List<ProductDTO> produits = new ArrayList<ProductDTO>();

	public ComponentDTO(int id, String name, String supplier, List<ProductDTO> produits) {
		super();
		this.id = id;
		this.name = name;
		this.supplier = supplier;
		this.produits = produits;
	}

	public ComponentDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSupplier() {
		return supplier;
	}

	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}

	public List<ProductDTO> getProduits() {
		return produits;
	}

	public void setProduits(List<ProductDTO> produits) {
		this.produits = produits;
	}

}
