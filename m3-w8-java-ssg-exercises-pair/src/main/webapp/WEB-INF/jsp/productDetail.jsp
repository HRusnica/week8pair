<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@include file="common/header.jspf"%>
<section class="centeredPanel">
	<h2>Solar System Geek Gift Shop</h2>
	<div>
		<c:url var="productImageUrl" value="/img/${product.imageName}" />
		<img src="${productImageUrl}">
		
		<h2 class="name" id="listName"><c:out value="${product.name}"/></h2>
		
		<p class="price" id="listPrice"><Strong>$<c:out value="${product.price}" /></Strong></p>
		
		<p class="description" id="productDescription"> <c:out value="${product.description}"/>
		
		<c:url var="addToCartUrl" value="/shoppingCart/view" />
		<form method="POST" action="${addToCartUrl}">
		
			<input type="hidden" name="productId" value="${product.id}" /> <label
				for="QTYInput"> Quantity to buy</label> <input type="number"
				name="quantity" id="QTYInput" min="1" /> <input
				class="formSubmitButton" type="submit" value="Add To Cart" />
		</form>
	</div>
</section>

<%@include file="common/footer.jspf"%>