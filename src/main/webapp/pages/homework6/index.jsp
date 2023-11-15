<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Assignment 6</title>
    <link rel="stylesheet" href="../../styles/homework6/main.css" type="text/css"/>
    <link rel="stylesheet" href="../../styles/layout.css" type="text/css"/>
    <link rel="icon" href="../../imgs/favicon/caticon.ico" sizes="16x16"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<jsp:include page="../../includes/header.jsp"></jsp:include>
	<div class = "assign">
		<h1>Join our email list</h1>
	    <p>To join our email list, enter your name and
	       email address below.</p>
	    <jsp:useBean id="user" scope="session" class="com.jvm.models.User"/>    
	    <form action="/api/c8" method="post">
	        <input type="hidden" name="action" value="add">        
	        <label class="pad_top">Email:</label>
	        <input type="email" name="email" 
	               value="<jsp:getProperty name="user" property="email"/>"><br>
	        <label class="pad_top">First Name:</label>
	        <input type="text" name="firstName" 
	               value="<jsp:getProperty name="user" property="firstName"/>"><br>
	        <label class="pad_top">Last Name:</label>
	        <input type="text" name="lastName" 
	               value="<jsp:getProperty name="user" property="lastName"/>"><br>        
	        <label>&nbsp;</label>
	        <input type="submit" value="Join Now" class="margin_left">
	    </form>
	</div>
	<jsp:include page="../../includes/footer.jsp"></jsp:include>
</body>


</html>