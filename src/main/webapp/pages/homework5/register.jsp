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
		<h1>Download registration</h1>
		
		<p>To register for our downloads, enter your name and email
		   address below. Then, click on the Submit button.</p>
		
		<form action="/api/download" method="post">
		    <input type="hidden" name="action" value="registerUser">        
		    <label class="pad_top">Email:</label>
		    <input type="email" name="email" value="${user.email}"><br>
		    <label class="pad_top">First Name:</label>
		    <input type="text" name="firstName" value="${user.firstName}"><br>
		    <label class="pad_top">Last Name:</label>
		    <input type="text" name="lastName" value="${user.lastName}"><br>        
		    <label>&nbsp;</label>
		    <input type="submit" value="Register" class="margin_left">
		</form>
	</div>
	<jsp:include page="../../includes/footer.jsp"></jsp:include>
</body>


</html>