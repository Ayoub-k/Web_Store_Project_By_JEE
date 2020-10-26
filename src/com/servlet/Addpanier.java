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
import com.panier.Panier;

/**
 * Servlet implementation class Addpanier
 */
@WebServlet("/Addpanier")
public class Addpanier extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Addpanier() {
        super();   
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		
		String idnom =request.getParameter("idnom");
		
		Livre livre1=  CataloguelivreImpl.afficherparnom(idnom);
	
		System.out.println(livre1.afficherlivre() +"le livre"+ livre1);
		
		HttpSession s = request.getSession();
		
		String op =(String) request.getParameter("op");
		System.out.println(op);
//		if (request.getSession().getAttribute("panier") == null)
//			request.getSession().setAttribute("panier", new Panier());
		Panier pan = (Panier) request.getSession().getAttribute("panier");		
		if (op.equals("plus") ) {		
			pan.addLivre(livre1);				
			System.out.println(pan.toString());
			request.getSession().setAttribute("panier", pan);
			if(op.contentEquals("plus"))
			    request.getRequestDispatcher("/Panier.jsp").forward(request, response);
			else
				request.getRequestDispatcher("/les_livres.jsp?idcatalogue="+s.getAttribute("typecategorie")+"").forward(request, response);				
		}
		else if (op.equals("sous")) {		
			pan.sousLivre(livre1);
			request.getSession().setAttribute("panier", pan);
			request.getRequestDispatcher("/Panier.jsp").forward(request, response);
		}
		else if (op.equals("elim")) {
			pan.removeLivre(livre1);
			request.getSession().setAttribute("panier", pan);
			request.getRequestDispatcher("/Panier.jsp").forward(request, response);	
	}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
