<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">

function addedSuccess() {
	  document.getElementById("demo").innerHTML = "Item added successfully in Cart";
	  setTimeout(function() {
	    $('#demo').html('');
	  }, 3000);
	}



</script>
	<style type="text/css">
	#ddlProducts *
{
 border-radius: 15px;
 background-color: orange;
}
	 select {
        width: 150px;
        margin: 50px;
    }
    select:focus {
        min-width: 150px;
        width: auto;
    }
		body,.but
{
	margin: 0;
	padding:0;
	backgroung:#000;
	background-color: black;
}
a,.but
{
	position: absolute;
	top: 90%;
	left: 50%;
	transform: translate(-50%,-50%);
	width: 200px;
	height: 60px;
	text-align: center;
	line-height: 60px;
	color: #fff;
	font-size: 24px;
	text-transform: uppercase;
	text-decoration: none;
	font-family: sans-serif;
	box-sizing: border-box;
	background: linear-gradient(90deg,#03a9f4,#f441a5,#ffeb3b,#03a9f4);
	background-size: 400%;
	border-radius: 30px;
	z-index: 1;

}
a:before,.but:before
{
	content: '';
	position: absolute;
	top: -5px;
	left: -5px;
	
	right: -5px;
	bottom: -5px
	z-index: -1;
	background: linear-gradient(90deg,#03a9f4,#f441a5,#ffeb3b,#03a9f4);
	background-size: 400%;
	border-radius: 40px;
	opacity: 0;
	transition: 0.5s;


}
a:hover,.but:hover
{
	animation: animate 8s linear infinite;

}
@keyframes animate 
{
	0%
	{
		background-position: 0%;
		
	}
	100%
	{
		background-position: 400%;
		
	opacity :1;
	animation: animate 8s linear infinite;
		
		

	}

}

a:hover:before,.but:hover:before
{
	filter:blur(10px);
	opacity :1;
	animation: animate 8s linear infinite;
}
	</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<c:set var="myList" value="${itemList }" scope="session"></c:set>
<form action="./addtocart" type="submit" id="sb">
<nav class="navbar navbar-light bg-light" style="align-items: center;  id="nave">
  <span class="navbar-brand mb-0 h1" ><h1 style="margin-left: 500px">List Of ${itemType }</h1><br></span>
</nav>
<br>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Item No</th>
      <th scope="col">Item Name</th>
      <th scope="col">Price</th>
      <th scope="col">Quantity In Stock</th>
      <th scope="col">
      <label for="cars">Choose Item No:</label>
<!-- Adding Items in the list -->
<select name="cart" id="cars" id="ddlProducts" name="ddProducts">
<c:forEach items="${myList}" var="i">
  <option  value="${i.itemId }">${i.itemId }</option>
 </c:forEach>
</select>

      </th>
      <th scope="col">Enter Quantity:<input type="text" name="quantity" placeholder="Quantity in number"></th>
    </tr>
  </thead>
<c:forEach items="${myList}" var="item">

  <tbody>
    <tr>
      <th scope="row">${item.itemId }</th>
      <td>${item.itemName }</td>
      <td>${item.price }</td>
      <td>${item.quantity }</td>
    </tr>
  
  </tbody>
  </c:forEach>
</table>
<br><br>
<input type="text" name="itype"value="${itemType }" style="visibility: hidden">

	<a href="#" onclick="myFunction()">Add To Cart</a>
	
</form>
<form action="./welcome">
<input type="text" name="emailAddress"value="${emailAddress }" style="visibility: hidden">
<input type="text" name="password"value="${password }" style="visibility: hidden">
<input type="submit" value="GO BACK">
</form>
<script>
            function myFunction() {
                document.getElementById("sb").submit();
            }
        </script>
</body>
</html>