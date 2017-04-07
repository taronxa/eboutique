package fr.formation.dto;

public class InternauteDTO extends UserDTO {

	public InternauteDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public InternauteDTO(String login, String pwd, String nom, String prenom, String role) {
		super(login, pwd, nom, prenom, role);
		// TODO Auto-generated constructor stub
	}

	public String getRole(){
		return "Internautes";
	}
	
}
