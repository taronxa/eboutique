package fr.formation.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import fr.formation.dto.UserDTO;
import fr.formation.dto.UserDTOFactory;
import fr.formation.jdbc.JDBCConnection;
import fr.formation.service.IUserManager;

public class IUserManagerImpl implements IUserManager {

	@Override
	public UserDTO authenticate(String login, String pwd) {
		// TODO Auto-generated method stub

		Connection connection = null;
		ResultSet rs = null;
		UserDTO user = null;

		try {
			connection = (Connection) JDBCConnection.getConnection();

			String sql = "SELECT u.login, password, group_id, lastname, firstname FROM emarket_user u, user_has_group g  WHERE u.login = g.login and u.login=? and u.password=?";

			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, login);
			statement.setString(2, pwd);

			rs = statement.executeQuery();
			while (rs.next()) {
				user = UserDTOFactory.getUser(rs.getString(3));
				//user.setLogin(rs.getString(1));
				//user.setPwd(rs.getString(2));
				//user.setRole(rs.getString(3));
				user.setNom(rs.getString(4));
				user.setPrenom(rs.getString(5));
			}

			connection.close();
			return user;

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		finally {

		}
		return user;
	}

}
