package fr.formation.service;

import java.util.List;

import fr.formation.dto.CatalogueDTO;
import fr.formation.dto.ProductDTO;

public interface IProductManager {
	
	
	 /**
	  * creation produit et ajout au catalogue
	  * @param cat : catalogue
	  * @param nom nom du produit
	  * @param price : prix du produit
	  */
	 public void createProduct(CatalogueDTO cat, String nom, double price);
	
	
	/**
	 * suppression du produit et suppression du produit dans le catalogue
	 * @param id : identifiant du produit
	 * @param price : prix à modifier
	 */
	public abstract void deleteProduct(int id, double price);
	
	
	/**
	 * Mise à jour du produit : recupere le produit, modifie son prix et l'insere en BDD
	 * @param id : identifiant produit
	 * @return : produit
	 */
	
	public abstract ProductDTO updateProduct(int id);
	
	/**
	 * Creer la liste des produits de la base
	 * @return liste de produits
	 */
	public abstract List<ProductDTO> getProducts();
	
	

}
