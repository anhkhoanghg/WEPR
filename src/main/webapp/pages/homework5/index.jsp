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
		<h1>List of albums</h1>
		<%-- <p>User Email: ${cookie.userEmail.value}</p> --%>
		<% 
        Cookie[] cookies = request.getCookies();
        String userEmail = null;

        
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("emailCookie".equals(cookie.getName())) {
                    userEmail = cookie.getValue();
                    break;
                }
            }
        }
        
        if (userEmail != null) { 
        %>
            <p>User Email: <%= userEmail %></p>
        <% } %> 
		
		<p>
		<a href="/api/download?action=checkUser&amp;productCode=s1">
		    86 (the band) - True Life Songs and Pictures
		</a><br>
		
		<a href="/api/download?action=checkUser&amp;productCode=s2">
		    Paddlefoot - The First CD
		</a><br>
		
		<a href="/api/download?action=checkUser&amp;productCode=s3">
		    Paddlefoot - The Second CD
		</a><br>
		
		<a href="/api/download?action=checkUser&amp;productCode=s4">
		    Joe Rut - Genuine Wood Grained Finish
		</a>
		</p>
	</div>
	<jsp:include page="../../includes/footer.jsp"></jsp:include>
</body>


</html>