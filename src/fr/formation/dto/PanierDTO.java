package fr.formation.dto;

import java.util.List;

public class PanierDTO {

	private int id;
	private String userLogin;
	private List<PanierHasLineDTO> lines ;
	
	

	public PanierDTO(int id, String userLogin, List<PanierHasLineDTO> lines) {
		super();
		this.id = id;
		this.userLogin = userLogin;
		this.lines = lines;
	}

	public PanierDTO() {
		super(); 
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public String getUserLogin() {
		return userLogin;
	}

	public void setUserLogin(String userLogin) {
		this.userLogin = userLogin;
	}

	public List<PanierHasLineDTO> getLines() {
		return lines;
	}

	public void setLines(List<PanierHasLineDTO> lines) {
		this.lines = lines;
	}

	public void setId(int id) {
		this.id = id;
	}

	
}
