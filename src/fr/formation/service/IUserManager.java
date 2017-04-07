package fr.formation.service;

import fr.formation.dto.UserDTO;

public interface IUserManager {

	UserDTO authenticate(String login, String pwd);
}
