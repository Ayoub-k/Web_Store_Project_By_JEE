package com.Beans;

public class Command {
	
	private int Id;
	private String Nomlivre;
	private String Emailclient;
	private String lien;
	private int Q;
	public Command(int id, String nomlivre, String emailclient, String lien, int q) {
		super();
		Id = id;
		Nomlivre = nomlivre;
		Emailclient = emailclient;
		this.lien = lien;
		Q = q;
	}
	
	
	public int getQ() {
		return Q;
	}


	public void setQ(int q) {
		Q = q;
	}


	public Command() {
		super();
	}
	
	public Command(int id, String nomlivre, String emailclient, String lien) {
		super();
		Id = id;
		Nomlivre = nomlivre;
		Emailclient = emailclient;
		this.lien = lien;
	}



	public String getLien() {
		return lien;
	}
	public void setLien(String lien) {
		this.lien = lien;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getNomlivre() {
		return Nomlivre;
	}
	public void setNomlivre(String nomlivre) {
		Nomlivre = nomlivre;
	}
	public String getEmailclient() {
		return Emailclient;
	}
	public void setEmailclient(String emailclient) {
		Emailclient = emailclient;
	}
	

}
