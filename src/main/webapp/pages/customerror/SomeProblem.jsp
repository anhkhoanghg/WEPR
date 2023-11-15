<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Problems Error</title>
<link rel="shortcut icon" href="../../favicon.ico"/>
<link rel="stylesheet" href="../../styles/problem.css">
</head>
<body>
	<div class="text"><p>500</p></div>
	<div style="margin:20px">
		<p>Type: ${pageContext.exception["class"]}</p>
		<p>Message: ${pageContext.exception.message}</p>
	</div>
	
<div class="container">
  <!-- caveman left -->
  <div class="caveman">
    <div class="leg">
      <div class="foot"><div class="fingers"></div></div>      
    </div>
    <div class="leg">
      <div class="foot"><div class="fingers"></div></div>      
    </div>
    <div class="shape">
      <div class="circle"></div>
      <div class="circle"></div>
    </div>
    <div class="head">
      <div class="eye"><div class="nose"></div></div>
      <div class="mouth"></div>
    </div>
    <div class="arm-right"><div class="club"></div></div>    
  </div>
  <!-- caveman right -->
  <div class="caveman">
    <div class="leg">
      <div class="foot"><div class="fingers"></div></div>      
    </div>
    <div class="leg">
      <div class="foot"><div class="fingers"></div></div>      
    </div>
    <div class="shape">
      <div class="circle"></div>
      <div class="circle"></div>
    </div>
    <div class="head">
      <div class="eye"><div class="nose"></div></div>
      <div class="mouth"></div>
    </div>
    <div class="arm-right"><div class="club"></div></div>    
  </div>
</div>
<button onClick="openHomepage()" class="button-77 " role="button">Back to Homepage.</button>


<script>
	function openHomepage(){
		window.location.href="../../"
	}
</script>




</body>
</html>