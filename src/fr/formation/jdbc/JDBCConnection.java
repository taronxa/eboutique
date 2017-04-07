package fr.formation.jdbc;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


public class JDBCConnection {

		static Connection connection = null;
	    static DataSource ds;
		
		public static Connection getConnection() throws ClassNotFoundException, SQLException{
			
			/*Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/eBoutique", "root", "root");*/
			
		    Context ctx;
			try {
				ctx = new InitialContext();
				ds=(DataSource) ctx.lookup("java:comp/env/jdbc/eBoutiqueDB");
				connection = (Connection) ds.getConnection();
			} catch (NamingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
		return connection;
		}

	}
