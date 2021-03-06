<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@include file="common/header.jspf" %>

<section class= "centeredPanel">
	<c:url var="planetImageUrl" value="/img/${calculator.planet.toLowerCase()}.jpg" />
	<img class="planets" src="${planetImageUrl}"/>
	<h2>If you are <c:out value="${calculator.weight}"/> lbs on planet Earth, 
	then you are <c:out value="${calculator.alienWeight}"/> <span class="title-case"></span><c:out value="${calculator.planet}" /> lbs</h2>
</section>


<%@include file="common/footer.jspf" %>
