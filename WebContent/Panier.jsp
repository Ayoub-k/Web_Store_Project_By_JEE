	<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@page import="javax.swing.ImageIcon" %>
	<%@page import="com.panier.*"%>
	<%@page import="java.io.*" %>
	<%@page import="java.util.*" %>
	<%@page import="com.Beans.*" %>
	<%
	Panier pan= (Panier)request.getSession().getAttribute("panier");
	Client client=(Client)session.getAttribute("connectedUser");
    request.setAttribute("client", client);
    String id=request.getParameter("id");
    request.setAttribute("id",id);
    Livre livre=(Livre)request.getAttribute("Livre");
    request.setAttribute("Livre", livre);
    %>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>Accueil</title>
	<link rel='stylesheet' type='text/css' href='FichierCss/panie.css'>
	<style type="text/css">
	a{
	text-decoration:none;
	}
	.foter{
	background-color:  #282828;
	background-position: center center;
	text-shadow: rgb(31, 23, 22) 20px 35px 50px;
	height: 150px;
    }
    div ul{
    	display: inline-block;
    }
	</style>
	<script src="scripts/javascript.js"></script>
	</head>
	<body>
	   <div>
            <img src="static/images/background/6.jpg" alt="" id="slide"  style="width:100% ;
            height: 550px;
            border-radius: 10px;
            background-position: center center ;
            background-size: cover;
            position: static;">
        </div>
            <script>        
                var imgs=["static/images/background/1.jpg","static/images/background/2.jpg","static/images/background/3.jpg","static/images/background/4.jpg","static/images/background/5.jpg","static/images/background/6.jpg"]        
                var k=0
                function slides(){           
                    document.getElementById("slide").src=imgs[k];
                    k++;
                    if (k>5)
                    k=0	
                }      
                setInterval(slides,2000)           
            </script>	
	    <div class="ligneP">	    
	    <%if(pan!=null){%>
	   <%
	   Double prixT=0.0;
	   for(LignePanier lp : pan.getLignesPanier()){
		  // System.out.println(lp.getBook().getPath());
	    %>
	    <div>
	    <ul>
	       <li><img src="static/images/science/<%=lp.getLivre().getPath()%>" alt="None"></li>
	       <li><%=lp.getLivre().getNom() %></li>
	       <li><%=lp.getLivre().getPrix() %> Dhs</li>
	       <li>unité: <%=lp.getQuantite() %></li>
	       <li><a href="Addpanier?op=plus&idnom=<%=lp.getLivre().getNom()%>">+</a> | <a href="Addpanier?op=sous&idnom=<%=lp.getLivre().getNom()%>">-</a> | <a href="Addpanier?op=elim&idnom=<%=lp.getLivre().getNom()%>">x</a></li>
	    </ul>
	    </div>
	    <hr>
	    <%	    
	    prixT +=lp.getQuantite()*Float.parseFloat(lp.getLivre().getPrix());
	    }	    
	    %> 
	    <ul class="trP2">
	    <li class="nomP">Prix Total</li>
	    <li class="prix"><b><%=prixT %> Dhs</b></li>
	    </ul>
	 <div class="divbtn">
			<form method='get' action="Commandservlet" >				
				 <input type="submit" name="btne" value="Ajeter au panier" class="btn" />				  
			</form>
	 </div> 
	 <%} else{ %>
	 	<h1>Votre Panier est vide </h1>
	 <%} %>
	 </div>
	 <footer>
            <div class="foter">
              <p style="color: white; padding-top: 0.3cm;">User: ${client.nom} ${client.prenom}</p>
              <p style="color: white;">Email: ${client.email}</p>
              <p style="color: white;">Panier: <a href="/Finallyproject/Panier.jsp" style="color:aqua">Panier</a></p>
              <p style="color: white;">Deconnection: <a href="/Finallyproject/Deconnexion" style="color:aqua">Deconnecxion</a></p>
            </div>
    </footer>
	</body>
	</html>