<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link href="/style.css" rel="stylesheet" /> 

<style>
table, th, td {
  border: 1px solid;
  text-align: center;
  margin-top: 60px;
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
		
		<h3> To check retirement benefits, please insert Employee ID below : </h3>
		
		<form action="/retirement-info" method="POST">
	    
	    	  <br>	  
			  <label for="id"> Enter Employee ID : </label>
		 	  <input type="number" id="num" name="id">
			  <br> <br>
			  
	    	  <input type="submit" value="Submit">
	  		  &nbsp; &nbsp;   
	  		  
		</form>
	
</div>


</body>
</html>