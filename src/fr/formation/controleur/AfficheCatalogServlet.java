package fr.formation.controleur;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.formation.dto.ProductDTO;
import fr.formation.service.impl.IProductManagerImpl;

/**
 * Servlet implementation class CreateCatalogServlet
 */
//@WebServlet("/CreateCatalogServlet")
public class AfficheCatalogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AfficheCatalogServlet() {
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
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		IProductManagerImpl manager= new IProductManagerImpl();
		List<ProductDTO> listProduits = manager.getProducts();
		
		request.setAttribute("listeProduits",listProduits);
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/listeProduits.jsp").forward(request, response); 
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		/*ProductManagerImpl manager= new ProductManagerImpl();
		List<ProductDTO> listProduits = manager.getProducts();
		
		request.setAttribute("listeProduits",listProduits);
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/catalogue.jsp").forward(request, response);*/ 
		
		/*String nextJSP = "/WEB-INF/views/catalogue.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextJSP);
		dispatcher.forward(request, response);*/
	}

}
