<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@include file="common/header.jspf" %>

	<body>
		<section class= "centeredPanel">
			<h1 class= "centered">New Geek Post</h1>
			<c:url var="formAction" value="/forumPost" />
			<form method="POST" action="${formAction}">
		<div class = "formInputGroup">
			<div>
				<label for="username"><strong>Username: </strong></label>
				<input type="text" name="username" /><br>
			</div>
	
			<div>
				<label for="subject"><strong>Subject: </strong></label>
				<input type="text" name="subject" /><br>
			<div>
		
			</div>
				<label for="message"><strong>Message: </strong></label>
				<input type="text" name="message" />
			</div>
		</div>		
	<div id="submit-button">
	<input class="button" type="submit" value="Submit" />
	</div>
</form>	
		</section>
	

<%@include file="common/footer.jspf" %>