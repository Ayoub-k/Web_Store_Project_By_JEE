package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.Beans.Livre;
import com.DAO.CataloguelivreImpl;

@WebServlet("/catalouelivre")
public class Catalouelivre extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	public Catalouelivre() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//
//		Livre livre1        = new Livre();
//		
//		int id=Integer.parseInt((String) request.getParameter("id"));
//		livre1              = CataloguelivreImpl.afficher(id);
//		request.setAttribute("Livre", livre1);
//		
//		System.out.println(id);
		this.getServletContext().getRequestDispatcher("/Admin.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nom          = (String) request.getParameter("nom");
		String nbrpage      = (String) request.getParameter("nbrpage");
		String langue       = (String) request.getParameter("langue");
		String prix         = (String) request.getParameter("prix");
		String autheur	    = (String) request.getParameter("autheur");
		String annee 	    = (String) request.getParameter("annee");
		String path         = (String) request.getParameter("path");
		String nomcatalogue = (String) request.getParameter("Choixcatalogue");
		System.out.println(nom + nbrpage + langue + prix + autheur + annee + path + nomcatalogue);
		if(nom!="" && nbrpage!="" && langue!="" && prix!="" && autheur!="" && annee!="" && path!="" && nomcatalogue!="") {
			Livre livre         = new Livre(nom, nbrpage, langue, prix, autheur, annee, path, nomcatalogue);
	    	CataloguelivreImpl.ajouter(livre);	
		}
		
//    	Livre livre1        = new Livre();
//		int id=Integer.parseInt((String) request.getParameter("id"));
//		livre1              = CataloguelivreImpl.afficher(id);
//		
//		request.setAttribute("Livre", livre1);
//		System.out.println(id);
//		System.out.println(livre1);
		this.getServletContext().getRequestDispatcher("/Admin.jsp").forward(request, response);

	}

}





