<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
			
			
<div class="w3-container" style="padding: 128px 16px" id="team">
	<h3 class="w3-center">MOVIES</h3>
	<p class="w3-center w3-large">Dive With us Into The Movies World ^^ </p>
	<div class="w3-row-padding w3-grayscale" style="margin-top: 64px">

			<div class="w3-col l3 m6 w3-margin-bottom">
				<div class="w3-card">
					<img src="../images/movie1.jpg" alt="poster" style="width: 100%">
					<div class="w3-container">
						<h3>Enola Holmes</h3>
						<p class="w3-opacity">2020-01-01</p>
						<p>While searching fir her missung mother, tntrepid teen Enola Holmes uses her sleuthing skills to outsmart big brother Sherlock and help a runawar losd.</p>

					</div>
				</div>
			</div>
		
					<div class="w3-col l3 m6 w3-margin-bottom">
				<div class="w3-card">
					<img src="../images/movie2.png" alt="poster" style="width: 100%">
					<div class="w3-container">
						<h3>BIRD BOX</h3>
						<p class="w3-opacity">2020-01-01</p>
						<p>While searching fir her missung mother, tntrepid teen Enola Holmes uses her sleuthing skills to outsmart big brother Sherlock and help a runawar losd.</p>

					</div>
				</div>
			</div>
			
						<div class="w3-col l3 m6 w3-margin-bottom">
				<div class="w3-card">
					<img src="../images/movie3.jpg" alt="poster" style="width: 100%">
					<div class="w3-container">
						<h3>The Marksman</h3>
						<p class="w3-opacity">2020-01-01</p>
						<p>While searching fir her missung mother, tntrepid teen Enola Holmes uses her sleuthing skills to outsmart big brother Sherlock and help a runawar losd.</p>

					</div>
				</div>
			</div>
			
						<div class="w3-col l3 m6 w3-margin-bottom">
				<div class="w3-card">
					<img src="../images/movie4.jpg" alt="poster" style="width: 100%">
					<div class="w3-container">
						<h3>Earwing ang the witch</h3>
						<p class="w3-opacity">2020-01-01</p>
						<p>While searching fir her missung mother, tntrepid teen Enola Holmes uses her sleuthing skills to outsmart big brother Sherlock and help a runawar losd.</p>

					</div>
				</div>
			</div>
			
		<c:forEach items="${movies}" var="movie">

			<div class="w3-col l3 m6 w3-margin-bottom">
				<div class="w3-card">
					<img src="../images/cover.jpg" alt="poster" style="width: 100%">
					<div class="w3-container">
						<h3>${movie.name}</h3>
						<p class="w3-opacity">${movie.movieDate}</p>
						<p>${movie.description}</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> <a
									href="${appName}movie/edit?id=${movie.id}">Edit</a>
							</button>
						</p>
						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> <a
									href="${appName}movie/detail?id=${movie.id}">See detail</a>
							</button>
						</p>
					<security:authorize access="hasRole('ADMIN')">

						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> <a
									href="${appName}movie/delete?id=${movie.id}">Delete</a>
							</button>
						</p>
					</security:authorize>

					</div>
				</div>
			</div>
		</c:forEach>

	</div>
</div>

<!-- Footer -->
<div id="footer">
	<footer class="w3-center w3-black w3-padding-64">
		<div class="w3-xlarge w3-section">
			<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
				class="fa fa-twitter w3-hover-opacity"></i> <i
				class="fa fa-linkedin w3-hover-opacity"></i>
		</div>
		<p>&copy; 2021 Movie World, LLC. All Rights Reserved. Designed by
			EARTH GROUP</p>
	</footer>
</div>