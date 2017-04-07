package fr.formation.controleur;

import java.io.IOException;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;


/**
 * Servlet implementation class ValidationShoppingCartServlet
 */
/*@WebServlet("/ValidationShoppingCartServlet")*/
public class ValidationShoppingCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidationShoppingCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		/*response.getWriter().println("Coucou");
		System.out.println("coucou");*/
		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		System.out.println(request.getParameter("panier"));
		try {

			JSONObject jObj = new JSONObject(request.getParameter("panier"));

			Iterator<?> it = jObj.keys(); //gets all the keys

			while(it.hasNext())
			{
			    Object key = it.next(); // get key
			    JSONObject o = (JSONObject) jObj.get(key.toString()); // get value
			    System.out.println(key.toString() + " : " +  o.toString()); // print the key and value
			    System.out.println(o.get("prix")); // print the key and value
			    
			}	
			response.getWriter().write("OK");
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	}


