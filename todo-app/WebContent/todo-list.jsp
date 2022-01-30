<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<html>
<head>
<title>To-Dos</title>
<style>
body{
	background-color:Thistle;
	color:Beige;
}

.text-center{
	
	font-size: 200%;
	font-family: Lucida Handwriting;
}

.formTodo{
	font-size: 100%;
	font-family: Lucida Handwriting;
}

table {
	border: 1px solid HoneyDew;
	width:100%;
	border-collapse: collapse; 
}
th{
	
	text-align:center;
}
tr:hover{
	background-color:YellowGreen;
}
th{
	background-color:DarkSeaGreen;
}

tbody{
	background-color:MintCream;
	color:Navy;
}
</style>
</head>

</head>
<body>

	<div class="row" align="center">
				<div class="container">
			<h3 class="text-center">To-do s</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new"
					class="btn btn-success">Add Task</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Title</th>
						<th>Target Date</th>
						<th>Status</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody align="center">
					
					<c:forEach var="todo" items="${listTodo}">

						<tr>
							<td><c:out value="${todo.title}" /></td>
							<td><c:out value="${todo.targetDate}" /></td>
							<td><c:out value="${todo.status}" /></td>

							<td><a href="edit?id=<c:out value='${todo.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${todo.id}' />">Delete</a></td>

													</tr>
													<br>
					</c:forEach>
					
				</tbody>

			</table>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
