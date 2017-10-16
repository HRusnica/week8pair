<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@include file="common/header.jsp" %>

<section class= "centeredPanel">
	<c:url var="planetImageUrl" value="/img/${calculator.planet}.jpg" />
	<img src="${planetImageUrl}"/>
	<h2>If you are <c:out value="${calculator.age}"/> years old on planet Earth, 
	then you are<c:out value="${calculator.alienAge}"/> <span class="title-case"></span><c:out value="${calculator.planet}" /> years old</h2>
</section>


<%@include file="common/footer.jsp" %>



