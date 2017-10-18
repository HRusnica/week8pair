<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@include file="common/header.jsp" %>

<section class= "centeredPanel">
<h2 class="centered">Solar System Geek Forum</h2>
<c:url var="spaceForumPostUrl"  value="/newForumPost"/>
<a class="centered" href="${spaceForumPostUrl }">Post to forum</a><br>

<div id="post-container">

	<c:forEach var="post" items="${allPosts}">
			<div>
			<h3><strong><c:out value="${post.subject }"/></strong></h3>
			by: <c:out value="${post.username }"/> at <c:out value="${post.datePosted }"/>
			<p><c:out value="${post.message }"/></p>
			</div>
	</c:forEach>

</div>
</section>
