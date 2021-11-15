<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<style type="text/css">

#container {
  width: 100px;
  height: 10px;
  position: absolute;
  top: 0%;
  left: 50%;
  margin-top: 0px;
  margin-left: 0px;
  background: white;

}
body
{
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	background: #031321;
	font-family: consolas; 
	 background-image: url("https://i.pinimg.com/736x/96/69/32/966932addf40da9dccfacad5d09b15da--pancake-recipes-space-wallpaper.jpg" );
	   background-size:     cover;                      
    background-repeat:   no-repeat;
    background-position: center center;  
}

a
{
	position: relative;
	display: inline-block;
	padding: 15px 30px;
	color: #2196f3;
	text-transform: uppercase;
	letter-spacing: 4px;
	text-decoration: none;
	font-size: 24px;
	overflow: hidden;
	transition: 0.2s;
}
a:hover
{
	color: #255784;
	background: #2196f3;
	box-shadow: 0 0 10px #2196f3,0 0 40px  #2196f3, 0 0 10px #2196f3;
	transition-delay: 1s;

}

a span
{
	position: absolute;
	display: block;
}
a span:nth-child(1)
{
	top: 0;
	left: -100%;
	width: 100%;
	height: 2px;
	background: linear-gradient(90deg,transparent,#2196f3);
}
a:hover span:nth-child(1)
{

	left: 100%;
	transition: 1s;
}
a span:nth-child(3)
{
	bottom: 0;
	right: -100%;
	width: 100%;
	height: 2px;
	background: linear-gradient(270deg,transparent,#2196f3);
}
a:hover span:nth-child(3)
{

	right: 100%;
	transition: 1s;
	transition-delay: 0.5s;
}

a span:nth-child(2)
{
	top: -100%; 
	right: 0;
	width: 2px;
	height: 100%;
	background: linear-gradient(180deg,transparent,#2196f3);

}
a:hover span:nth-child(2)
{
	top: 100%;
	transition: 1s;
	transition-delay: 0.25s;
}

a span:nth-child(4)
{
	bottom: -100%;
	left: 0;
	width: 2px;
	height: 100%;
	background:linear-gradient(360deg,transparent,#2196f3);

}
a:hover span:nth-child(4)
{
	bottom: 100%;
	transition: 1s;
	transition-delay: 0.75s;
}

</style>
<title>Menu Page</title>
</head>
<body>
<div id="container"><h2>WELCOME TO XYZ SHOP</h2></div>
<a href="./cosmetics" >
		<span></span>
		<span></span>
		<span></span>
		<span></span>
		<p>Cosmetics</p>
	</a><br>
	<a href="./books" >
		<span></span>
		<span></span>
		<span></span>
		<span></span>
		<p>Books</p>
	</a><br>
	<a href="./cd" >
		<span></span>
		<span></span>
		<span></span>
		<span></span>
		<p>CDs</p>
	</a>
	<footer><h1 style="position:absolute;bottom:0;">
	<a href="./checkout">Check Out</a>
	<a href="./showcart">Show Cart</a>
	<a href="./modify Cart">Modify Cart</a>
	<a href="./logout">Log Out</a>
	</h1></footer>	


</body>
</html>