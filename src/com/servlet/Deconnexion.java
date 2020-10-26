package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Deconnexion")
public class Deconnexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Deconnexion() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		if(session.getAttribute("connectedUser")!=null) {
			session.invalidate();
		}else {
			this.getServletContext().getRequestDispatcher("/accueil.jsp").forward(request, response);
		}
		if(session.getAttribute("typecategorie")!=null) {
			session.invalidate();
		}else {
			this.getServletContext().getRequestDispatcher("/accueil.jsp").forward(request, response);
		}
		if(session.getAttribute("panier")!=null) {
			session.invalidate();
		}else {
			this.getServletContext().getRequestDispatcher("/accueil.jsp").forward(request, response);
		}
		this.getServletContext().getRequestDispatcher("/accueil.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
