package fr.formation.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
import java.util.*;

import fr.formation.dto.CatalogueDTO;
import fr.formation.dto.ComponentDTO;
import fr.formation.dto.ProductDTO;
import fr.formation.dto.ProductHasComponentDTO;
import fr.formation.jdbc.JDBCConnection;
import fr.formation.service.IProductManager;

public class IProductManagerImpl implements IProductManager {

	@Override
	public void createProduct(CatalogueDTO cat, String nom, double price) {
		// TODO Auto-generated method stub

		// JDBCConnection jdbc = new JDBCConnection();
		Connection connection = null;

		int id = 0;
		ProductDTO produit;

		try {

			connection = (Connection) JDBCConnection.getConnection();

			String sql = "INSERT INTO product (name, selling_price) VALUES (?,?)";

			PreparedStatement statement = (PreparedStatement) connection.prepareStatement(sql,
					Statement.RETURN_GENERATED_KEYS);
			statement.setString(1, nom); /* position 1 de ? */
			statement.setDouble(2, price); /* ou setDouble(2,3) */
			int nbLigne = statement
					.executeUpdate(); /*
										 * retourne le nombre de lignes traitees
										 */
			if (nbLigne != 0) {
				ResultSet rs = statement.getGeneratedKeys();
				while (rs.next()) {
					id = rs.getInt(1);
				}

			}
			connection.close();
			produit = new ProductDTO();

			produit.setName(nom);
			produit.setSellingPrice(price);
			produit.setId(id);

			List<ProductDTO> list = cat.getListProduct();
			list.add(produit);
			cat.setListProduct(list);

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		finally {
		}

	}

	@Override
	public void deleteProduct(int id, double price) {
		// TODO Auto-generated method stub

	}

	@Override
	public ProductDTO updateProduct(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductDTO> getProducts() {
		// TODO Auto-generated method stub
		Connection connection = null;
		ResultSet rs = null;
		List<ProductDTO> listProducts = new ArrayList<ProductDTO>();

		try {
			connection = (Connection) JDBCConnection.getConnection();

			String sql = "SELECT id, name, selling_price, description FROM product";

			PreparedStatement statement = (PreparedStatement) connection.prepareStatement(sql);
			rs = statement.executeQuery();
			while (rs.next()) {
				ProductDTO produit = new ProductDTO();
				produit.setId(rs.getInt(1));
				produit.setName(rs.getString(2));
				produit.setSellingPrice(rs.getDouble(3));
				produit.setDescription(rs.getString(4));
				listProducts.add(produit);
				// System.out.println(produit.getName());
			}

			connection.close();

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		finally {

		}

		return listProducts;
	}

	public ProductDTO getDetailsProduct(int id) {
		Connection connection = null;
		ResultSet rs = null;
		ProductDTO produit = new ProductDTO();
		List<ProductHasComponentDTO> liste = new ArrayList<ProductHasComponentDTO>();

		try {
			connection = (Connection) JDBCConnection.getConnection();
			String sql = "SELECT phc.product_id, phc.quantity, c.id, c.name component_name, c.supplier, p.name product_name, p.selling_price , p.description"
			+" FROM product_has_component phc, component c, product p WHERE phc.component_id=c.id AND p.id=phc.product_id AND p.id=?; ";
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, id);
			rs = statement.executeQuery();
			while (rs.next()) {
				ProductHasComponentDTO pHasComponent = new ProductHasComponentDTO();
				ComponentDTO component = new ComponentDTO();
				component.setName(rs.getString(4));
				component.setId(rs.getInt(3));
				component.setSupplier(rs.getString(5));
				pHasComponent.setComponent(component);
				pHasComponent.setQuantite(rs.getInt(2));
				liste.add(pHasComponent);
				produit.setpHasComponents(liste);
				produit.setName(rs.getString(6));
				produit.setSellingPrice(rs.getDouble(7));
				produit.setDescription(rs.getString(8));
				produit.setId(rs.getInt(1));
			}
			connection.close();
			return produit;

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {

		}
		return produit;

	}

}
