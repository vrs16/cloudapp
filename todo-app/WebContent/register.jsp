<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

button[type=submit] , input[type=submit] {
	cursor:pointer;
	background-color:#4CAF50;
	font-family:verdana;
	color:white; 
}
body{
	background-color:FireBrick;
	color:Beige;
	background-image: url("red.jpg");
	background-repeat: no-repeat;
	background-position: top center;

}

h1{
	color:Beige;
}

.container{
	font-size:100%;
}
</style>
</head>

</head>
<body>
	
	<div class="container" align="center">
	<div class="alert" role="alert">
                    <p>${NOTIFICATION}</p>
    </div>
	
	<h2>User Register Form</h2>
				<form action="<%=request.getContextPath()%>/register" method="post">

					<div class="form-group">
						<label for="uname">First Name:</label> <input type="text"
							class="form-control" id="uname" placeholder="First Name"
							name="firstName" required>
					</div>
						<br>
					<div class="form-group">
						<label for="uname">Last Name:</label> <input type="text"
							class="form-control" id="uname" placeholder="last Name"
							name="lastName" required>
					</div>
<br>
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

			<br><br>		<button type="submit" >SIGN UP</button>

				</form>
			</div>
		
		 <div align="center"><table><tr><td><p>Already have an account?</p></td>
 <td> <form action="login.jsp" method="post">
   <input type="submit" value="LOGIN" />
  </form>
  </td></tr>
  </table></div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>