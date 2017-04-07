package fr.formation.dto;

import java.util.List;

public class ProductHasComponentDTO {
	private int quantite ;
	private ComponentDTO component;
	
	public ProductHasComponentDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProductHasComponentDTO(int quantite, ComponentDTO component) {
		super();
		this.quantite = quantite;
		this.component = component;
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	public ComponentDTO getComponent() {
		return component;
	}

	public void setComponent(ComponentDTO component) {
		this.component = component;
	}
	
	
	
	
	
	
}
