package fr.formation.controleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.formation.dto.ProductDTO;
import fr.formation.service.impl.IProductManagerImpl;

/**
 * Servlet implementation class ShowDetailsServlet
 */
//@WebServlet("/ShowDetailsServlet")
public class ShowDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowDetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		int id=Integer.parseInt(request.getParameter("id"));
		IProductManagerImpl manager = new IProductManagerImpl();
		ProductDTO product= manager.getDetailsProduct(id);
		request.setAttribute("produit", product);	
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/productDetails.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
