package fr.formation.controleur;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.formation.dto.CatalogueDTO;
import fr.formation.dto.ProductDTO;
import fr.formation.service.IProductManager;
import fr.formation.service.impl.IProductManagerImpl;

/**
 * Servlet implementation class CreateProduct
 */
public class CreateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IProductManager manager= new IProductManagerImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CreateProductServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String nom = request.getParameter("nom");
		double price = Double.parseDouble(request.getParameter("price"));

		CatalogueDTO cat = new CatalogueDTO();

		manager.createProduct(cat, nom, price);
		
		List<ProductDTO> listProduits = manager.getProducts();
		
		request.setAttribute("listeProduits",listProduits);
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/catalogue.jsp").forward(request, response);

		
	}

}
