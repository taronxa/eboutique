package fr.formation.dto;

public class CommercialDTO extends UserDTO {

	public CommercialDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CommercialDTO(String login, String pwd, String nom, String prenom, String role) {
		super(login, pwd, nom, prenom, role);
		// TODO Auto-generated constructor stub
	}
	

	public String getRole() {
		// TODO Auto-generated method stub
		return "Commerciaux";
	}

	
}
