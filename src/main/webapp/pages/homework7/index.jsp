<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Assignment 7</title>
<link rel="stylesheet" href="../../styles/homework7/main.css" type="text/css"/>
<link rel="stylesheet" href="../../styles/layout.css" type="text/css" />
<link rel="icon" href="../../imgs/favicon/caticon.ico" sizes="16x16" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<jsp:include page="../../includes/header.jsp"></jsp:include>
	<div class="assign">
		<h1>CD list</h1>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<table>
			<tr>
				<th>Description</th>
				<th class="right">Price</th>
				<th>&nbsp;</th>
			</tr>
			<c:forEach var="product" items="${products}">
				<tr>
					<td>
						<c:out value='${product.description}' />
					</td>
					<td class="right">${product.priceCurrencyFormat}</td>
					<td>
						<form action="/api/cart" method="post">
							<input type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
							<input type="submit" value="Add To Cart">
						</form>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<jsp:include page="../../includes/footer.jsp"></jsp:include>
</body>


</html>