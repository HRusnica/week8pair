<%@ include file ="common/header.jspf" %>
    <section id="main-content" class= "centeredPanel">
    <h1 class ="noPad">Solar System Geek Gift Shop</h1>
	<table>
		<th>&nbsp;</th>
		<th>Name</th>
		<th>Price</th>
		<th>Qty</th>
		<th>Total</th>
    
	<c:forEach items= "${product}" var="product">
		
			<tr>
				<td>
					<a href="<c:url value="/shoppingCart/index" />"><img src="img/${productList.get.productId}" class="productImage" id="cartImage"/></a>
				</td>
				<td>
					<h2 class="name" id="cartName"><c:out value="${productList.get.name}"/></h2>
				</td>
				<td>
					<p class="price" id="cartPrice"><Strong>$<c:out value="${productList.get.price}" /></Strong></p>
				</td>
				<td>
					<c:out class="qty" id="cartQty" value="S{productList.get.qty}" />
				</td>
				<td>
					<c:out class="total" id="cartTotal" value="S{productList.get.price * productList.get.qty}" />
				</td>
			</tr>
		</c:forEach>
		</table>
	</section>	
<%@include file="common/footer.jspf" %>