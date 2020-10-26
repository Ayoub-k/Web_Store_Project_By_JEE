package com.Beans;

import java.util.ArrayList;

public class Catalogue {

	private String nom;
	private String path;
	private ArrayList<Livre> livers;

	public Catalogue() {
		super();
	}

	public Catalogue(String nom, String path, ArrayList<Livre> livers) {
		super();
		this.nom = nom;
		this.path = path;
		this.livers = livers;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public ArrayList<Livre> getLivers() {
		return livers;
	}

	public void setLivers(ArrayList<Livre> livers) {
		this.livers = livers;
	}

}
