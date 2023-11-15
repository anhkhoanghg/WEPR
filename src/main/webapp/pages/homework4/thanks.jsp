<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Assignment 4</title>
    <link rel="stylesheet" href="../../styles/homework4/main.css" type="text/css"/>
    <link rel="stylesheet" href="../../styles/layout.css" type="text/css"/>
    <link rel="icon" href="../../imgs/favicon/caticon.ico" sizes="16x16"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<jsp:include page="../../includes/header.jsp"></jsp:include>
	<div class="assign">
		<h1>Thanks for taking our survey!</h1>
	
	    <p>Here is the information that you entered:</p>
	
	    <label>Email:</label>
	    <span>${user.email}</span><br>
	    <label>First Name:</label>
	    <span>${user.firstName}</span><br>
	    <label>Last Name:</label>
	    <span>${user.lastName}</span><br>
	    <label>Heard From:</label>
	    <span>${user.heardFrom}</span><br>
	    <label>Updates:</label>
	    <span>${user.wantsUpdates}</span><br>
	
	    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	    <c:if test="${user.wantsUpdates == 'Yes'}">
	        <label>Contact Via:</label>
	        <span>${user.contactVia}</span>
	    </c:if>  
	
	</div>
	<jsp:include page="../../includes/footer.jsp"></jsp:include>
</body>


</html>