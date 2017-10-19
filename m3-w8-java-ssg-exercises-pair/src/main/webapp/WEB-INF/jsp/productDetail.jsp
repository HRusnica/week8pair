<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@include file="common/header.jspf" %>

<h2>Solar System Geek Gift Shop</h2>
	<div>
		<c:url var="addToCartUrl" value="/shoppingCart/addToCart" />
		<form method="POST" action="${addToCartUrl}">
			<input type="hidden" name="productId" value="${product.id}" /> <label
				for="QTYInput"> Quantity to buy</label> <input type="number"
				name="quantity" id="QTYInput" min="1" /> <input type="submit"
				value="Add to Cart" />
		</form>
	</div>


<%@include file="common/footer.jspf" %>