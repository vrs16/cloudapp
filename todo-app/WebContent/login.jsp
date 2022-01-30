<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Login Page</title>
<style>

button[type=submit], input[type=submit] {
	cursor:pointer;
	background-color:#4CAF50;
	font-family:verdana;
	color:white; 
	font-size:80%;
}

body{
	background-color:FireBrick;
	color:Beige;
	background-image: url("red.jpg");
	background-repeat: no-repeat;
	background-position: top center;
}
.bod{
	font-size:100%;	
}

</style>
</head>
<body>

	
	<div class="bod"  align="center">
		<h2>Login Form</h2>
		<form action="<%=request.getContextPath()%>/login" method="post">

			<div class="form-group">
				<label for="uname">User Name:</label> <input type="text"
					class="form-control" id="username" placeholder="User Name"
					name="username" required>
			</div>
<br>
			<div class="form-group">
				<label for="uname">Password:</label> <input type="password"
					class="form-control" id="password" placeholder="Password"
					name="password" required>
			</div>
<br><br>

			<button type="submit" class="btn btn-primary">LOGIN</button>
		</form>
	</div>
	<div align="center">
	<table><tr><td><p>Don't have an account?</p></td>
 <td> <form action="register.jsp" method="post">
   <input type="submit" value="SIGNUP" />
  </form>
  </td></tr>
  </table>
  </div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>