<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<style>

input[type=submit] {
	cursor:pointer;
	background-color:Teal;
	font-family:verdana;
	color:Beige; 
}

body{

	background-color:FireBrick;
	background-image: url("welcome.jpg");
	background-repeat: no-repeat;
	background-position: top center;
}
h1{
	color:white;
}

div{
	background-color:GhostWhite;
}

</style>
</head>
<body background="welcome.jpg">
<div align="right">
<hr>
<table><tr><td><form action="login.jsp" method="post">
   <input type="submit" value="LOGIN" />
  </form></td>
 <td> <form action="register.jsp" method="post">
   <input type="submit" value="SIGNUP" />
  </form>
  </td></tr>
  </table>
  <hr>
  </div>
  <br>
  <center>
<h1> CLOUD APPLICATION </h1><br><br><br>
 </center>
</body>
</html>