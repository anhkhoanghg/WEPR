<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Assignment 5</title>
    <link rel="stylesheet" href="../../styles/homework5/main.css" type="text/css"/>
    <link rel="stylesheet" href="../../styles/layout.css" type="text/css"/>
    <link rel="icon" href="../../imgs/favicon/caticon.ico" sizes="16x16"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<jsp:include page="../../includes/header.jsp"></jsp:include>
	<div class="assign">
		<h1>Cookies</h1>
		
		<p>Here's a table with all of the cookies that this 
		browser is sending to the current server.</p>
		
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<table>
		  <tr>
		    <th>Name</th>
		    <th>Value</th>
		  </tr>
		  <c:forEach var="c" items="${cookie}">      
		  <tr>
		    <td>${c.value.name}</td>
		    <td>${c.value.value}</td>
		  </tr>
		  </c:forEach>  
		</table>
		
		<p><a href="/api/download?action=viewAlbums">View list of albums</a></p>
		
		<p><a href="/api/download?action=deleteCookies">Delete all persistent cookies</a></p>
	</div>
	<jsp:include page="../../includes/footer.jsp"></jsp:include>
</body>


</html>