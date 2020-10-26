<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="static/css/mystyle.css" />
<!-- <link rel="stylesheet" href="static/css/bootstrap-grid.min.css" /> -->
</head>
<body>



	<!-- le muni welcome -->

	<nav class="navbar">
		<header>
			<ul class="ulheader">
				<li><a href="#welcomme">  Welcome </a></li>
				<li><a href="#books">     Books </a></li>
				<li><a href="buy.jsp">    Buy </a></li>
				<li><a href="#contact">   Contact </a></li>
			</ul>
		</header>
	</nav>
	<div class="exact" id="welcomme"></div>
	<div>
		<img src="static/images/background/6.jpg" alt="" id="slide"
			style="width: 100%; height: 550px; border-radius: 10px; background-position: center center; background-size: cover; position: static;">
	</div>
	<script>
		var imgs = ["static/images/background/1.jpg",
				"static/images/background/2.jpg",
				"static/images/background/3.jpg",
				"static/images/background/4.jpg",
				"static/images/background/5.jpg",
				"static/images/background/6.jpg"]
		var k = 0
		function slides() {
			document.getElementById("slide").src = imgs[k];
			k++;
			if (k > 5)
				k = 0
		}
		setInterval(slides, 3000)
	</script>
	<div class="exact" id="books"></div>
	<div
		style="background-color: DarkCyan; width: 92%; margin-left: 60px; border-radius: 40px;">
		<p style="text-align: center; font-size: 30px;">Categorie</p>
	</div>
	<div class="book">
		<div class="shapebook">
			<div>
				<a href="les_livres.jsp?idcatalogue=Science"> <img src="static/images/science.jpg"
					alt="" class="images">
				</a> <br>
				<p style="text-align: center; color: rgb(231, 108, 129);">Science</p>
			</div>
			<div>
				<a href="les_livres.jsp?idcatalogue=History"> <img src="static/images/History.jpg"
					alt="" class="images">
				</a> <br>
				<p style="text-align: center; color: rgb(231, 108, 129);">History</p>
			</div>
			<div>
				<a href="les_livres.jsp?idcatalogue=Programming"> <img
					src="static/images/programming.jpg" alt="" class="images">
				</a> <br>
				<p style="text-align: center; color: rgb(231, 108, 129);">Programming</p>
			</div>
		</div>
		<div class="shapebook">
			<div>
				<a href="les_livres.jsp?idcatalogue=art"> <img src="static/images/art1.png"
					alt="" class="images">
				</a> <br>
				<p style="text-align: center; color: rgb(231, 108, 129);">Art</p>
			</div>
			<div>
				<a href="les_livres.jsp?idcatalogue=Anime"> <img src="static/images/anime.jpg"
					alt="" class="images">
				</a> <br>
				<p style="text-align: center; color: rgb(231, 108, 129);">Anime</p>
			</div>
			<div>
				<a href="les_livres.jsp?idcatalogue=Programming"> <img src="static/images/romans.jpg"
					alt="" class="images">
				</a> <br>
				<p style="text-align: center; color: rgb(231, 108, 129);">novels</p>
			</div>
		</div>
		<div class="shapebook">
			<div>
				<a href="les_livres.jsp?idcatalogue=Programming"> <img src="static/images/bitc.png"
					alt="" class="images">
				</a> <br>
				<p style="text-align: center; color: rgb(231, 108, 129);">Economie</p>
			</div>
			<div>
				<a href="les_livres.jsp?idcatalogue=Programming"> <img src="static/images/various.jpg"
					alt="" class="images">
				</a> <br>
				<p style="text-align: center; color: rgb(231, 108, 129);">Various</p>
			</div>
			<div>
				<a href="les_livres.jsp?idcatalogue=Religion"> <img src="static/images/religion.jpg"
					alt="" class="images">
				</a> <br>
				<p style="text-align: center; color: rgb(231, 108, 129);">Religion</p>
			</div>
		</div>
	</div>
	

	<div class="exact" id="contact"></div>

	<div
		style="background-color: DarkCyan; width: 92%; margin-left: 60px; border-radius: 40px;">
		<p style="text-align: center; font-size: 30px;">Contact</p>
	</div>
	<div style="margin-left: 12cm;">
		<form action="">
			<input type="text" name="nom" placeholder="First_Name"><br>
			<input type="text" name="prenom" placeholder="Last_name"><br>
			<input type="text" name="nombre" placeholder="Phone"><br> <input
				type="email" name="emai" placeholder="Email"><br>
			<textarea id="subject" name="subject" placeholder="Write something.."
				style="height: 60px; padding-right: 6.2cm;"></textarea>
			<br> <input type="submit" name="send" value="send"><br>
		</form>
	</div>


	<footer>
		<div class="foter">
			<p style="color: white;">Posted by: Elkhaddouri Ayoub</p>
			<p style="color: white;">Copyright © 2019</p>
			<p style="color: white;">
				Contact information: <a href="ELKHADDOURI@outlook.fr"
					style="color: aqua">ELKHADDOURI@outlook.fr</a>
			</p>
		</div>
	</footer>
</body>
</html>


