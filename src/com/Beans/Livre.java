package com.Beans;

public class Livre {

	private String nom;
	private String nbrpage;
	private String langue;
	private String prix;
	private String autheur;
	private String annee;
	private String path;
	private String nomcatalogue;

	public Livre() {
		super();
	}

	public Livre(String nom, String nbrpage, String langue, String prix, String autheur, String annee, String path,
			String nomcatalogue) {
		super();
		this.nom = nom;
		this.nbrpage = nbrpage;
		this.langue = langue;
		this.prix = prix;
		this.autheur = autheur;
		this.annee = annee;
		this.path = path;
		this.nomcatalogue = nomcatalogue;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getNbrpage() {
		return nbrpage;
	}

	public void setNbrpage(String nbrpage) {
		this.nbrpage = nbrpage;
	}

	public String getLangue() {
		return langue;
	}

	public void setLangue(String langue) {
		this.langue = langue;
	}

	public String getPrix() {
		return prix;
	}

	public void setPrix(String prix) {
		this.prix = prix;
	}

	public String getAutheur() {
		return autheur;
	}

	public void setAutheur(String autheur) {
		this.autheur = autheur;
	}

	public String getAnnee() {
		return annee;
	}

	public void setAnnee(String annee) {
		this.annee = annee;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getNomcatalogue() {
		return nomcatalogue;
	}

	public void setNomcatalogue(String nomcatalogue) {
		this.nomcatalogue = nomcatalogue;
	}
	public String afficherlivre() {
		return "les information de ce livre sont: Nom:"+this.nom+" La langue:"+this.langue+""+this.autheur+""+this.prix+""+this.nomcatalogue+this.annee;
	}

}
