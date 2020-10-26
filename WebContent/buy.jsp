<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="static/css/mystylebuy.css"/>
    </head>
    <body>
            <div class="exact" id="buy">
            
                </div>

                <nav class="navbar">
                        <header>
                            <ul class="ulheader">
                                <li> <a href="accueil.jsp">    Welcomme      </a></li>
                                <li> <a href="accueil.jsp">    Books         </a></li>
                                <li> <a href="buy.jsp">        Buy           </a></li>
                                <li> <a href="accueil.jsp">    Contact       </a></li>
                            </ul>
                        </header>
                </nav>
                    <div>
            <img src="static/images/background/6.jpg" alt="" id="slide"  style="width:100% ;
            height: 530px;
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
                setInterval(slides,3000)
            </script>
                <div style="background-color: DarkCyan; width: 92%;margin-left: 60px; border-radius: 40px;" >
                    <p style="text-align: center; font-size: 30px;">Buy</p>
                </div>
                <div class="shapebook1" style="margin-left: 160px;">
                    <div>
                        <p style="text-align: center; color: royalblue;">
                            Create New Account
                        </p>
                        <form action="servletclient" method="get">
                            <input type="text" name="nom"placeholder="First_Name" ><br>
                            <input type="text" name="prenom" placeholder="Last_name"><br>
                            <input type="text" name="nombre" placeholder="Phone" pattern="[0-9]{10}"><br>
                            <input type="text" name="email" placeholder="Email"><br>
                            <input type="password" name="password" placeholder="Password"><br>
                            <input type="submit" name="send" value="send"><br>
            
                        </form>
                    </div>
                    <div style="margin-left: 150px;">
                        <p style="text-align: center; color: royalblue;">
                                Log In
                        </p>
                        <form action="servletclient" method="post">
                            <input type="email" name="textemail" placeholder="Email"><br>
                            <input type="password" name="textpassword" placeholder="Password"><br>
                            <input type="submit" name="send" value="send"><br>
                        </form>
                    </div>
                </div>

                <footer>
                        <div class="foter">
                          <p style="color: white;">Posted by: Elkhaddouri Ayoub </p>
                          <p style="color: white;">Copyright © 2019</p>
                          <p style="color: white;">Contact information: <a href="ELKADDOURI@outlook.fr" style="color:aqua">ELKADDOURI@outlook.fr</a></p>
                        </div>
                </footer>        
    </body>
</html>