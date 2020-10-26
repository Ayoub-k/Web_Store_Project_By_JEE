
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.Beans.Livre" %>
<%@ page import="com.Beans.Client" %>

<% 
Livre livre=(Livre)request.getAttribute("Livre");
request.setAttribute("Livre", livre);


%>

<%
	Client client=(Client)session.getAttribute("connectedUser");
    request.setAttribute("client", client);
    String id=request.getParameter("id");
    request.setAttribute("id",id);
%>


<!DOCTYPE html>
<html>
    <head>
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
       <!-- <link rel="stylesheet" type="text/css" href="static/css/mystyle.css"/> -->
        <!--  <link rel="stylesheet" href="static/css/bootstrap-grid.min.css" /> -->
        <style>
            input{
            padding-bottom: 0.9cm;
            padding-right: 4cm;
            margin-bottom: 0.5cm;
        }
            div a:hover {background-color: black;}
            /* a:visited {color:gray ;} */
            div a:active {background-color:red;
            text-decoration: none;}
            /* html{
                background-color:wheat;
            } */
        td{
            padding-left: 2cm;
            padding-bottom: 1.3cm;
        }
        tr td{
            color: lime;
        }
        /* span{
            color: white;
            padding-top: 3px;
        } */
        .ulheader{
	    text-align: center;
        padding-top: 3px;
        color: white;
        }
        .foter{
	background-color:  #282828;
	background-position: center center;
	text-shadow: rgb(31, 23, 22) 20px 35px 50px;
	height: 150px;

}

        
        </style>
    </head>
    <body>
        <!-- le muni welcomme -->
       
        <nav class="navbar">
            <header style="	border: 1px solid rgba(8, 8, 8, 0.493);
            background-color:#282828;
            position: fixed;
            border-radius: 15px;
            height: 60px;
            margin-bottom: 20px;
            top: 0;
            box-shadow: 2px 2px 2px rgb(27, 26, 26);
            width: 100%;">
                <span class="ulheader"></span>
            </header>
        </nav>

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

        <div style="background-color: DarkCyan; width: 92%;margin-left: 60px; border-radius: 40px;margin-top: 0.5cm;"  >
            <p style="text-align: center; font-size: 30px;">Livre</p>
        </div>

        <div style="	margin-top: 40px;
        display: flex;
        padding-left:80px ;
        ">
            <div>
                <img src="static/images/science/${Livre.path}" style="width:100% ;
                height: 100%;
                border-radius: 10px;
                position: static;"/>
            </div>
            <div style="padding-right: 10%; padding-top: 0.7cm;padding-left: 15%;">

                <table>
                    <tr>
                        <td>Nom              :</td>
                        <td>${Livre.nom}</td>
                    </tr>
                    <tr>
                        <td>Nbrpage          :</td>
                        <td>${Livre.nbrpage}</td>
                    </tr>
                    <tr>
                        <td>La langue        :</td>
                        <td>${Livre.langue}</td>
                    </tr>
                    <tr>
                        <td>Prix             :</td>
                        <td>${Livre.prix}</td>
                    </tr>
                    <tr>
                        <td>Auteur           :</td>
                        <td>${Livre.autheur}</td>
                    </tr>
                    <tr>
                        <td>Date d'edition   :</td>
                        <td>${Livre.annee}</td>
                    </tr>
                    <tr>
                        <td>Categorie</td>
                        <td>${Livre.nomcatalogue}</td>
                    </tr>
                </table>
                
            </div>
        </div>

        <div style="background-color: DarkCyan; width: 92%;margin-left: 60px; border-radius: 40px;"  >
           <a href="/Finallyproject/AddAuPanier?id=${id}&email=${client.email}&op=plus2"> <p style="text-align: center; font-size: 30px;">AddPanier</p></a>
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
        
 

