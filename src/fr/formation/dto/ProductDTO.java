package fr.formation.dto;

import java.util.*;

public class ProductDTO {

	private int id;
	private String name;
	private String description;
	private double sellingPrice;
	private List<ProductHasComponentDTO> pHasComponents = new ArrayList<ProductHasComponentDTO>();
	
	
	public ProductDTO() {
		super();
		// TODO Auto-generated constructor stub
	}


	public ProductDTO(int id, String name, String description, double sellingPrice,
			List<ProductHasComponentDTO> pHasComponents) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.sellingPrice = sellingPrice;
		this.pHasComponents = pHasComponents;
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


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public double getSellingPrice() {
		return sellingPrice;
	}


	public void setSellingPrice(double sellingPrice) {
		this.sellingPrice = sellingPrice;
	}


	public List<ProductHasComponentDTO> getpHasComponents() {
		return pHasComponents;
	}


	public void setpHasComponents(List<ProductHasComponentDTO> pHasComponents) {
		this.pHasComponents = pHasComponents;
	}
	
	
	
	

}