<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="common/header.jspf"%>

<section class="centeredPanel">
	<h2>Alien Weight Calculator</h2>
	<c:url var="alienWeightUrl" value="/alienWeightResults" />
	<form method="GET" action="${alienWeightUrl }">
		<p>Choose a planet</p>
		<div>
			<label for="planet">Choose a planet</label> <select name="planet"
				id="planetWeight">
				<option value="Mercury">Mercury</option>
				<option value="Venus">Venus</option>
				<option value="Mars">Mars</option>
				<option value="Jupiter">Jupiter</option>
				<option value="Saturn">Saturn</option>
				<option value="Uranus">Uranus</option>
				<option value="Neptune">Neptune</option>
			</select>
		</div>
		<div>
			<label for="weight"> Enter your Earth weight</label> <input
				type="number" name="weight" id="weight"
				placeholder="your weight in lbs" />
		</div>
		<div>
			<label></label> <input type="submit" value="CalculateWeight" />
		</div>
	</form>
</section>


<%@ include file="common/footer.jspf"%>