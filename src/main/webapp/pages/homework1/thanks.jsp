<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Assignment 1</title>
    <link rel="icon" href="../../imgs/favicon/caticon.ico" sizes="16x16"/>
    <link rel="stylesheet" href="../../styles/homework1/main.css" type="text/css"/>   
    <link rel="stylesheet" href="../../styles/layout.css" type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
	<jsp:include page="../../includes/header.jsp"></jsp:include>
	
	<div class="assign">
		<h1>Thanks for joining our email list</h1>
	
	    <p>Here is the information that you entered:</p>
	
	    <label>Email:</label>
	    <span>${user.email}</span><br>
	    <label>First Name:</label>
	    <span>${user.firstName}</span><br>
	    <label>Last Name:</label>
	    <span>${user.lastName}</span><br>
	
	    <p>To enter another email address, click on the Back 
	    button in your browser or the Return button shown 
	    below.</p>
	
	    <form action="" method="post">
	        <input type="hidden" name="action" value="join">
	        <input type="submit" value="Return">
	    </form>
	</div>
	
	<jsp:include page="../../includes/footer.jsp"></jsp:include>
    

</body>
</html>