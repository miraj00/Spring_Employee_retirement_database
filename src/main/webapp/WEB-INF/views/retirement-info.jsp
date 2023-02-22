<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Retirement-Info</title>
<style>
.b {
  border: 1px solid blue;
  background-color: lightblue;
  padding: 10px;
  margin-top : 80px;
  margin-left : 300px;
  width : 1000px;
}
</style>
</head>
<body>

<div class="b">
<h1>Retirement Info for <c:out value="${employee.firstName}"/></h1>
	
	<p>Your age: <c:out value="${employee.age}"/></p>

	<p><c:out value="${message}"/></p>
	
	<p><a href="/">Back to employee list</a></p>
 
</div>
</body>
</html>