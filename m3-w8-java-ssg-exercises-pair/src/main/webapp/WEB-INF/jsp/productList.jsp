<%@ include file ="common/header.jspf" %>
    <section id="main-content">
    <h1 class ="noPad">Solar System Geek Gift Shop</h1>
    <p class="noPad">click on image for more details</p>
    
	<c:forEach items= "${products}" var="product">
		<div class="productList">
		<a href="productDetail?productId=${product.productId }"><img src="img/${product.imageName}" class="productImage" id="listImage"/></a>
		<h1 class="name" id="listName"><c:out value="${product.name}"/><span class="top"> <c:out value="${product.topSeller? 'BEST SELLER!' : '' }" /></span></h1>
		<p class="price" id="listPrice"><Strong>$<c:out value="${product.price}" /></Strong></p>
		</div>
		<hr>
		</c:forEach>
		
<%@include file="common/footer.jspf" %>