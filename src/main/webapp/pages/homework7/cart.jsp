<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Assignment 7</title>
<link rel="stylesheet" href="../../styles/homework7/main.css" type="text/css" />
<link rel="stylesheet" href="../../styles/layout.css" type="text/css" />
<link rel="icon" href="../../imgs/favicon/caticon.ico" sizes="16x16" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<jsp:include page="../../includes/header.jsp"></jsp:include>
	<div class="assign">
		<h1>Which ones you want to pay</h1>

		<table>
			<tr>
				<th>Quantity</th>
				<th>Description</th>
				<th>Price</th>
				<th>Amount</th>
				<th></th>
			</tr>

			<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
			<c:forEach var="item" items="${cart.items}">
				<tr>
					<td>
						<form action="/api/cart" method="post">
							<input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
							<input type=text name="quantity" value="<c:out value='${item.quantity}'/>" id="quantity">
							<input type="submit" value="Update">
						</form>
					</td>
					<td>
						<c:out value='${item.product.description}' />
					</td>
					<td>${item.product.priceCurrencyFormat}</td>
					<td>${item.totalCurrencyFormat}</td>
					<td>
						<form action="/api/cart" method="post">
							<input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
							<input type="hidden" name="quantity" value="0">
							<input type="submit" value="Remove Item">
						</form>
					</td>
				</tr>
			</c:forEach>
		</table>

		<p>
			<b>To change the quantity</b>
			, enter the new quantity and click on the Update button.
		</p>

		<form action="" method="post">
			<input type="hidden" name="action" value="shop">
			<input type="submit" value="Continue Shopping">
		</form>

		<form action="" method="post">
			<input type="hidden" name="action" value="checkout">
			<input type="submit" value="Checkout">
		</form>

	</div>
	<jsp:include page="../../includes/footer.jsp"></jsp:include>
</body>


</html>