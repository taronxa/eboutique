package fr.formation.controleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.formation.dto.UserDTO;
import fr.formation.service.impl.IUserManagerImpl;

/**
 * Servlet implementation class CreateAuthenticateServlet
 */
// @WebServlet("/CreateAuthenticateServlet")
public class CreateAuthenticateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CreateAuthenticateServlet() {
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

		String login = request.getParameter("login");
		String pwd = request.getParameter("pwd");

		// TODO tester cas erreur

		IUserManagerImpl authent = new IUserManagerImpl();

		if (login == null) {
			boolean error = false;
			request.setAttribute("error", error);
			this.getServletContext().getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
			return;
		}

		UserDTO user = authent.authenticate(login, pwd);
		HttpSession session = request.getSession();

		if (user == null) {
			boolean error = true	;
			request.setAttribute("error", error);
			this.getServletContext().getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
		} else {
			session.setAttribute("user", user);
			request.setAttribute("nom", user.getNom());
			request.setAttribute("prenom", user.getPrenom());
			request.setAttribute("role", user.getRole());

			if ("Commerciaux".equals(user.getRole()))
				this.getServletContext().getRequestDispatcher("/WEB-INF/views/accueilCommerciaux.jsp").forward(request,
						response);
			else {
				response.sendRedirect(request.getContextPath()+"/AfficheCatalogServlet");
//				this.getServletContext().getRequestDispatcher("/WEB-INF/views/listeProduits.jsp").forward(request,response);
			}
			// doGet(request, response);}
		}

	}
}
