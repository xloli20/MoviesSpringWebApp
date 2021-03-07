<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<div class="w3-container w3-light-grey" style="padding: 100px 500px"
	id="contact">
	<h3 class="w3-center">
		<b>Add Review</b>
	</h3>
	<p class="w3-center w3-large">What do you think about this movie?</p>
	<div style="margin-top: 48px">

		<form action="${appName}review/add" method="post">
			<p>
				<input class="w3-input w3-border" type="text"
					placeholder="user review" required="" name="user_review">

			</p>

			<input id="ratingNum" name="rating" type="hidden">
			<div class="rating">
				<div id="star1" class="clip-star"></div>
				<div id="star2" class="clip-star"></div>
				<div id="star3" class="clip-star"></div>
				<div id="star4" class="clip-star"></div>
				<div id="star5" class="clip-star"></div>
			</div>

			<input name="movie" type="hidden" value="${movie.id}"> <input
				type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

			<p>
				<button class="w3-button w3-black" type="submit">
					<i class="fa fa-paper-plane"></i> submit
				</button>
			</p>
		</form>
	</div>
</div>

<script type="text/javascript">
	var x = 0;
	document.getElementById('star1').addEventListener('click', function(event) {
		document.getElementById('star5').setAttribute('class', 'clip-star');
		document.getElementById('star4').setAttribute('class', 'clip-star');
		document.getElementById('star3').setAttribute('class', 'clip-star');
		document.getElementById('star2').setAttribute('class', 'clip-star');
		document.getElementById('star1').classList.add('clip-star-active');
		x = 1;
		var e = document.getElementById("ratingNum");
		e.setAttribute("value", x);
	});

	document.getElementById('star2').addEventListener('click', function(event) {
		document.getElementById('star5').setAttribute('class', 'clip-star');
		document.getElementById('star4').setAttribute('class', 'clip-star');
		document.getElementById('star3').setAttribute('class', 'clip-star');
		document.getElementById('star2').classList.add('clip-star-active');
		document.getElementById('star1').classList.add('clip-star-active');
		x = 2;
		var e = document.getElementById("ratingNum");
		e.setAttribute("value", x);

	});

	document.getElementById('star3').addEventListener('click', function(event) {
		document.getElementById('star5').setAttribute('class', 'clip-star');
		document.getElementById('star4').setAttribute('class', 'clip-star');
		document.getElementById('star3').classList.add('clip-star-active');
		document.getElementById('star2').classList.add('clip-star-active');
		document.getElementById('star1').classList.add('clip-star-active');
		x = 3;
		var e = document.getElementById("ratingNum");
		e.setAttribute("value", x);
	});

	document.getElementById('star4').addEventListener('click', function(event) {
		document.getElementById('star5').setAttribute('class', 'clip-star');
		document.getElementById('star4').classList.add('clip-star-active');
		document.getElementById('star3').classList.add('clip-star-active');
		document.getElementById('star2').classList.add('clip-star-active');
		document.getElementById('star1').classList.add('clip-star-active');
		x = 4;
		var e = document.getElementById("ratingNum");
		e.setAttribute("value", x);
	});

	document.getElementById('star5').addEventListener('click', function(event) {
		document.getElementById('star5').classList.add('clip-star-active');
		document.getElementById('star4').classList.add('clip-star-active');
		document.getElementById('star3').classList.add('clip-star-active');
		document.getElementById('star2').classList.add('clip-star-active');
		document.getElementById('star1').classList.add('clip-star-active');
		x = 5;
		var e = document.getElementById("ratingNum");
		e.setAttribute("value", x);
	});
	console.log("rating value" + x)
</script>