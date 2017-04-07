package fr.formation.dto;

public abstract class UserDTO {

	protected String login;
	protected String pwd;
	protected String nom;
	protected String prenom;
	protected String role;
	
	public UserDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserDTO(String login, String pwd, String nom, String prenom, String role) {
		super();
		this.login = login;
		this.pwd = pwd;
		this.nom = nom;
		this.prenom = prenom;
		this.role = role;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String s) {
		this.pwd = s;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}


	
}
