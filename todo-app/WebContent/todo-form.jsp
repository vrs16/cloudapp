<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<html>
<head>
<title>New Task</title>
<style>

button[type=submit] {
	cursor:pointer;
	background-color:#4CAF50;
	font-family:verdana;
	color:white; 
	font-size:80%;
}

body{
	background-color:Thistle;
	font-size: 100%;
	color:MidnightBlue; 
}
</style>
</head>

</head>
<body>
	<div class="container" widdth="40%">
		<table style="width:40%" align="center">
   	 <caption>
				<c:if test="${todo != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${todo == null}">
					<form action="insert" method="post">
				</c:if>	
						<c:if test="${todo != null}">
            		<h2>	Editing Task</h2>
            		</c:if>
						<c:if test="${todo == null}">
            		<h2>	New Task Details </h2>
            		</c:if>
					
				</caption>
</table>
				<c:if test="${todo != null}">
					<input type="hidden" name="id" value="<c:out value='${todo.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Title</label> <input type="text"
						value="<c:out value='${todo.title}' />" class="form-control"
						name="title" required="required" >
				</fieldset>
				<br>
				<fieldset class="form-group">
					<label>Description</label> <input type="text"
						value="<c:out value='${todo.description}' />" class="form-control"
						name="description" >
				</fieldset>
<br>
				<fieldset class="form-group">
					<label>Status</label> <select class="form-control"
						name="isDone">
						<option value="false">In Progress</option>
						<option value="true">Complete</option>
					</select>
				</fieldset>
<br>
				<fieldset class="form-group">
					<label>Target Date</label> <input type="date"
						value="<c:out value='${todo.targetDate}' />" class="form-control"
						name="targetDate" required="required">
				</fieldset>
				<br><br>
<div align="center">
				<button type="submit" class="btn btn-success">Save</button></div>
				</form>
			</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
