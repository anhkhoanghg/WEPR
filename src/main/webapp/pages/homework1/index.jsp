<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Assignment 1</title>

    <link rel="icon" href="../../imgs/favicon/caticon.ico" sizes="16x16"/>
    <link rel="stylesheet" href="../../styles/layout.css" type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link rel="stylesheet" href="../../styles/homework1/main.css" type="text/css"/>  

</head>
<body>
	<jsp:include page="../../includes/header.jsp"></jsp:include>
	
	<div class="assign">
		<img src="../../imgs/murach_logo.jpg" alt="logo" width="100" />
	    <h1>Join our email list</h1>
	    <p>To join our email list, enter your name and
	       email address below.</p>
	    <p><i>${message}</i></p>
	    
	    <form action="/api/c5/1" method="post">
	        <input type="hidden" name="action" value="add">        
	        <label class="pad_top">Email:</label>
	        <input type="email" name="email" value="${user.email}"><br>
	        <label class="pad_top">First Name:</label>
	        <input type="text" name="firstName" value="${user.firstName}"><br>
	        <label class="pad_top">Last Name:</label>
	        <input type="text" name="lastName" value="${user.lastName}"><br>        
	        <label>&nbsp;</label>
	        <input type="submit" value="Join Now" class="margin_left">
	    </form>
	    
	</div>
	<jsp:include page="../../includes/footer.jsp"></jsp:include>
</body>


</html>