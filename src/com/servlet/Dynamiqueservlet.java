package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Dynamiqueservlet")
public class Dynamiqueservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Dynamiqueservlet() {
        super();
    }

	
	@SuppressWarnings("null")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		/Projectbook/WebContent/partiedynamique.jsp
//		String table=CataloguelivreImpl.afficherimage("programming");
//		
//		ArrayList<String> table1=CataloguelivreImpl.afficherimage1("programming");
//		
//			System.out.println(table1.size());
//		
//		request.setAttribute("table", table);
//		request.setAttribute("table1", table1);
		ArrayList<String> path = null;
		String aide;
		
//		Connection con=CataloguelivreImpl.getconnection();
		try {
			Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/Books", "olphena","olphena");
			String query="select path from Livre where nomcatalogue='programming'";
			Statement pr=con.createStatement();
			ResultSet re=pr.executeQuery( query );
			while(re.next()) {
				aide=(String)re.getString("path");
				path.add(aide);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("table", path);
		this.getServletContext().getRequestDispatcher("/partiedynamique.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
