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
		<h1>Downloads</h1>
		
		<h2>86 (the band) - True Life Songs and Pictures</h2>
		    
		<table>
		<tr>
		    <th>Song title</th>
		    <th>Audio Format</th>
		</tr>
		<tr>
		    <td>You Are a Star</td>
		    <td><a href="/musicStore/sound/${productCode}/bai.mp3">MP3</a></td>
		</tr>
		<tr>
		    <td>Don't Make No Difference</td>
		    <td><a href="/musicStore/sound/${productCode}/bai.mp3">MP3</a></td>
		</tr>
		</table>
		
		<p><a href="?action=viewAlbums">View list of albums</a></p>
		
		<p><a href="?action=viewCookies">View all cookies</a></p>
	</div>
	<jsp:include page="../../includes/footer.jsp"></jsp:include>
</body>


</html>