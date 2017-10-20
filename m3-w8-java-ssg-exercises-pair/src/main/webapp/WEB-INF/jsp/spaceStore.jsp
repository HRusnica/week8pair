<%@ include file ="common/header.jspf" %>
    <section id="main-content" class= "centeredPanel">
    <h1 class ="noPad">Solar System Geek Gift Shop</h1>
    <p class="noPad">click on image for more details</p>
    
	<c:forEach items= "${allProducts}" var="product">
		<div class="productList">
		<c:url var="shoppingCartUrl" value="/shoppingCart/detail/?id=${product.id}"/>
		<c:url var="productImageUrl" value="/img/${product.imageName}"/>
		<a href="${shoppingCartUrl}"><img src="${productImageUrl}"></a>
		<h2 class="name" id="listName"><c:out value="${product.name}"/></h2>
		<p class="price" id="listPrice"><Strong>$<c:out value="${product.price}" /></Strong></p>
		</div>
		<hr>
		</c:forEach>
	</section>	
<%@include file="common/footer.jspf" %>


<%-- <c:url var="mercuryImgSrc" value="/img/mercury.jpg" />
            <img src="${mercuryImgSrc}" alt="Mercury"> --%>
            <%-- <a href="${shoppingCartUrl}"><img src="${productImageUrl}" class="productImage" id="listImage"/></a> --%>