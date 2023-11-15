<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="../../styles/homework2/main.css" type="text/css" />
<link rel="icon" href="../../imgs/favicon/caticon.ico" sizes="16x16"/>
<title>Assignment 2</title>
<link rel="stylesheet" href="../../styles/layout.css" type="text/css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<jsp:include page="../../includes/header.jsp"></jsp:include>
	<div class="assign">
		<p>
			<i>${message}</i>
		</p>
		<form action="/api/c5/2" method="post">
			<img src="../../imgs/murach_logo.jpg" alt="logo" width="100" />
			<h1>Survey</h1>
			<p>If you have a moment, we'd appreciate it if you would fill out
				this survey.</p>
			
			<h2>Your information:</h2>
			<label>First Name</label> <input type="text" name="firstName" required
				value="${user.firstName}"><br> <label>Last Name</label>
			<input type="text" name="lastName" required value="${user.lastName}"><br>
			<label>Email</label> <input type="email" name="email" required
				value="${user.email}"><br> <label>Date of Birth</label>
			<input type="text" name="DoB"><br>
	
			<h2>How did you hear about us?</h2>
			<p>
				<input type=radio name="heardFrom" value="Social Media">Social
				Media <input type=radio name="heardFrom" value="Search Engine"
					checked>Search engine <input type=radio name="heardFrom"
					value="Friend">Word of mouth <input type=radio
					name="heardFrom" value="Other">Other
			</p>
	
			<h2>Would you like to receive announcements about new CDs and
				special offers?</h2>
			<p>
				<input type="checkbox" name="wantsUpdates">YES, I'd like
				that.
			</p>
			<p>
				<input type="checkbox" name="emailOk">YES, please send me
				email announcements.
			</p>
	
	
			<p>
				Please contact me by: <select name="contactVia">
					<option value="Both" selected>Email or postal mail</option>
					<option value="Email">Email only</option>
					<option value="Postal Mail">Postal mail only</option>
				</select>
			</p>
	
			<input type=submit value="Join Now">
		</form>
	</div>
	<jsp:include page="../../includes/footer.jsp"></jsp:include>
	
</body>
</html>