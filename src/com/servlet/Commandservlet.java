package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Beans.Client;
import com.Beans.Command;
import com.DAO.CataloguelivreImpl;
import com.panier.LignePanier;
import com.panier.Panier;

/**
 * Servlet implementation class Commandservlet
 */
@WebServlet("/Commandservlet")
public class Commandservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Commandservlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
//		int id =Integer.parseInt(request.getParameter("id"));
//		String email =(String)request.getParameter("email");
//		System.out.println(id+" "+email);
//		Livre livre=new Livre();
//		livre=CataloguelivreImpl.afficher(id);
//		String nom=livre.getNom();
//		CataloguelivreImpl.command(id, email,nom);
//		request.setAttribute("id", id);
//		request.setAttribute("nom", nom);
//		request.setAttribute("email", email);
		
		
		HttpSession session = request.getSession(true);
		Panier panier =(Panier)session.getAttribute("panier");
		HttpSession sessio = request.getSession(true);
		Client client=(Client)sessio.getAttribute("connectedUser");
		
		Command c = new Command();
		c.setEmailclient(client.getEmail());
		for(LignePanier lp : panier.getLignesPanier()) {
			c.setNomlivre(lp.getLivre().getNom());
			c.setQ(lp.getQuantite());
			CataloguelivreImpl.command(c);
		}
		panier.vider();
		session.setAttribute("panier", null);
		
		this.getServletContext().getRequestDispatcher("/command.jsp").forward(request, response);
	
		}
		

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
