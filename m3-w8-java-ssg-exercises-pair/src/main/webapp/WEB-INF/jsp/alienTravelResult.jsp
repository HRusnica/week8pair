<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@include file="common/header.jsp" %>

<section class= "centeredPanel">
	<c:url var="planetImageUrl" value="/img/${calculator.planet}.jpg" />
	<img src="${planetImageUrl}"/>
	<h2>Traveling by <c:out value="${calculator.transportationMode}"/> you will reach 
	<c:out value="${calculator.planet}"/> in <c:out value="${calculator.travelTime}" /> years 
	You will be <c:out value="${calculator.spaceAge}"/> years old</h2>
</section>


<%@include file="common/footer.jsp" %>