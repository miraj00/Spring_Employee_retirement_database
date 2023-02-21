<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<style>
table, th, td {
  border: 1px solid;
  text-align: center;
  margin-left: 30px;
}
</style>
</head>

<body>

<div class="container">

<table class="table">
			<thead>
				<tr>
					<th>id</th><th>name</th><th>age</th><th>salary</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach var="employeelist" items="${employee}">
				<tr>
					<td>${employeelist.id}</td>				
					<td>${employeelist.firstName}</td>
					<td>${employeelist.age}</td>
					<td>${employeelist.salary}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		
		
		
		
		
		<br> <br>
		<a href="/grades/add" class="btn btn-secondary">Add a Grade</a>

</div>


</body>
</html>