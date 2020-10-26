package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.Beans.Client;
import com.Beans.Command;
import com.Beans.Livre;

public class CataloguelivreImpl {

	public static Connection getconnection() {
		try {
			Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/Books", "root", "");
			System.out.println("connection");
			return con;
		} catch (Exception e) {
			return null;
		}
	}

	public static void ajouter(Livre l) {

		Connection con = CataloguelivreImpl.getconnection();
		try {

			String query = "INSERT INTO Livre(nom,nbrpage,langue,prix,autheur,annee,path,nomcatalogue)values(?,?,?,?,?,?,?,?)";
			PreparedStatement pr = (PreparedStatement) con.prepareStatement(query);
			if (l != null) {
				pr.setString(1, l.getNom());
				pr.setString(2, l.getNbrpage());
				pr.setString(3, l.getLangue());
				pr.setString(4, l.getPrix());
				pr.setString(5, l.getAutheur());
				pr.setString(6, l.getAnnee());
				pr.setString(7, l.getPath());
				pr.setString(8, l.getNomcatalogue());
				pr.execute();
				con.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getClass().getName());
		}
	}

	public static Livre afficher(int id) {
		Livre l = new Livre();
		Connection con = CataloguelivreImpl.getconnection();
		try {
			String query = "select * from Livre where id=?";
			PreparedStatement pr = (PreparedStatement) con.prepareStatement(query);
			pr.setInt(1, id);
			ResultSet rs = pr.executeQuery();
			if (rs.next()) {
				l.setNom(rs.getString("nom"));
				l.setNbrpage(rs.getString("nbrpage"));
				l.setLangue(rs.getString("langue"));
				l.setPrix(rs.getString("prix"));
				l.setAutheur(rs.getString("autheur"));
				l.setAnnee(rs.getString("annee"));
				l.setPath(rs.getString("path"));
				l.setNomcatalogue(rs.getString("nomcatalogue"));
			}
			pr.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getClass().getName());
		}
		return l;
	}
	
	public static Livre afficherparnom(String nom) {
		Livre l = new Livre();
	
		Connection con = CataloguelivreImpl.getconnection();
		try {
			String query = "select * from Livre where nom=?";
			PreparedStatement pr = (PreparedStatement) con.prepareStatement(query);
			pr.setString(1, nom);
			ResultSet rs = pr.executeQuery();
			if (rs.next()) {
				l.setNom(rs.getString("nom"));
				l.setNbrpage(rs.getString("nbrpage"));
				l.setLangue(rs.getString("langue"));
				l.setPrix(rs.getString("prix"));
				l.setAutheur(rs.getString("autheur"));
				l.setAnnee(rs.getString("annee"));
				l.setPath(rs.getString("path"));
				l.setNomcatalogue(rs.getString("nomcatalogue"));
			}
			pr.close();
			return l;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getClass().getName());
		}
		return null;
	}

	public static void ajouter(Client c) {
		Connection con = CataloguelivreImpl.getconnection();
		try {

			String query = "INSERT INTO client(first_name,last_name,phone,email,password) values(?,?,?,?,?)";
			PreparedStatement pr = (PreparedStatement) con.prepareStatement(query);
			pr.setString(1, c.getNom());
			pr.setString(2, c.getPrenom());
			pr.setString(3, c.getPhone());
			pr.setString(4, c.getEmail());
			pr.setString(5, c.getPassword());
			pr.execute();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public static Client isValidLogin(String email, String password) {
		try (Connection connection = DriverManager.getConnection("jdbc:mariadb://localhost:3306/Books",  "root", "")) {
			String strSql = "SELECT * FROM client WHERE email=? AND password=?";
			try (PreparedStatement statement = connection.prepareStatement(strSql)) {
				statement.setString(1, email);
				statement.setString(2, password);
				try (ResultSet resultSet = statement.executeQuery()) {
					if (resultSet.next()) {
						return new Client(resultSet.getString("first_name"), resultSet.getString("last_name"),
								resultSet.getString("phone"), resultSet.getString("email"),
								resultSet.getString("password"));
					} else {
						return null;
					}
				}
			}
		} catch (Exception exception) {
			throw new RuntimeException(exception);
		}

	}

	public static void command(Command c) {
		Connection con = CataloguelivreImpl.getconnection();
		String query = " INSERT INTO command(email,nomlivre,Q) values(?,?,?)";
		try (PreparedStatement pr = con.prepareStatement(query)) {
			
			pr.setString(1, c.getEmailclient());
			pr.setString(2, c.getNomlivre());
			pr.setInt(3, c.getQ());
			pr.execute();
			System.out.println("correct");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("null")
	public static ArrayList<String> afficherimage1(String categorie) {
		ArrayList<String> path = null;
		String aide;
		Connection con=CataloguelivreImpl.getconnection();
		try {
			String query="select path from Livre where nomcatalogue=?";
			PreparedStatement pr=con.prepareStatement(query);
			pr.setString(1, categorie);
			ResultSet re=pr.executeQuery();
			while(re.next()) {
				aide=(String)re.getString("path");
				path.add(aide);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return path;
	}
	public static String afficherimage(String categorie) {
		String path = null;
		Connection con = CataloguelivreImpl.getconnection();
		try {
			String query = "select path from Livre where nomcatalogue=?";
			PreparedStatement pr = con.prepareStatement(query);
			pr.setString(1, categorie);
			ResultSet re = pr.executeQuery();
			if (re.next())
				path =re.getString("path");

		} catch (Exception e) {
		e.printStackTrace();
		}
		return path;
		
	}
}
