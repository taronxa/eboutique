package fr.formation.dto;

public class UserDTOFactory {

	private static final String INTERNAUTES = "Internautes";
	private static final String COMMERCIAUX = "Commerciaux";
	

	public static UserDTO getUser(String role) {

		switch (role) {
		case INTERNAUTES:
			return new InternauteDTO();
		case COMMERCIAUX:
			return new CommercialDTO();
		default : return null;
		}
	}

}
