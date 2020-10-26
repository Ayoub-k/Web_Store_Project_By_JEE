package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Beans.Livre;
import com.DAO.CataloguelivreImpl;

@WebServlet("/aficherlivre")
public class Aficherlivre extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Aficherlivre() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(true);

//		request.getParameter("client");
		if(session.getAttribute("connectedUser")!=null) {
			Livre livre1 = new Livre();
			int id = Integer.parseInt((String) request.getParameter("id"));
			livre1 = CataloguelivreImpl.afficher(id);

			request.setAttribute("Livre", livre1);
			String nom=livre1.getNom();
			String nbrpage=livre1.getNbrpage();
			String langue=livre1.getLangue();
			String prix=livre1.getPrix();
			String autheur=livre1.getAutheur();
			String annee=livre1.getAnnee();
			String path=livre1.getPath();
			String nomcatalogue=livre1.getNomcatalogue();
			request.setAttribute("nom", nom);
			request.setAttribute("nbrpage", nbrpage);
			request.setAttribute("langue", langue);
			request.setAttribute("prix", prix);
			request.setAttribute("autheur", autheur);
			request.setAttribute("annee", annee);
			request.setAttribute("path", path);
			request.setAttribute("nomcatalogue", nomcatalogue);

			System.out.println(id);
			System.out.println(livre1.afficherlivre());
			this.getServletContext().getRequestDispatcher("/achterlivre.jsp").forward(request, response);
		}else {
			this.getServletContext().getRequestDispatcher("/buy.jsp").forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Livre livre1 = new Livre();
		int id = Integer.parseInt((String) request.getParameter("id"));
		livre1 = CataloguelivreImpl.afficher(id);

		request.setAttribute("Livre", livre1);

//		/FirstProject/WebContent/WEB-INF/Admin.jsp
		System.out.println(id);
		System.out.println(livre1.afficherlivre());
		this.getServletContext().getRequestDispatcher("/achterlivre.jsp").forward(request, response);
	}

}
