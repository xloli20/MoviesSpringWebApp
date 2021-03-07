<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>


<div class="w3-container" style="padding: 128px 16px" id="team">
	<h3 class="w3-center">ACTORS and ACTRESS</h3>
	<div class="w3-row-padding w3-grayscale" style="margin-top: 64px">

		<div class="w3-col l3 m6 w3-margin-bottom">
			<div class="w3-card">
				<img src="../images/actor2.jpg" alt="poster" style="width: 100%">
				<div class="w3-container">
					<h3>Denzel Washington</h3>
				</div>
			</div>
		</div>

		<div class="w3-col l3 m6 w3-margin-bottom">
			<div class="w3-card">
				<img src="../images/actorr3.jpg" alt="poster" style="width: 100%">
				<div class="w3-container">
					<h3>Dwayne Johnson</h3>
				</div>
			</div>
		</div>

		<div class="w3-col l3 m6 w3-margin-bottom">
			<div class="w3-card">
				<img src="../images/actor4.jpg" alt="poster" style="width: 100%">
				<div class="w3-container">
					<h3>Angelina Jolie</h3>
				</div>
			</div>
		</div>

		<div class="w3-col l3 m6 w3-margin-bottom">
			<div class="w3-card">
				<img src="../images/actor5.jpg" alt="poster" style="width: 100%">
				<div class="w3-container">
					<h3>jennifer aniston</h3>
				</div>
			</div>
		</div>
		
		<c:forEach items="${actors}" var="actor">

			<div class="w3-col l3 m6 w3-margin-bottom">
				<div class="w3-card">
					<img src="../images/cover.jpg" alt="poster" style="width: 100%">
					<div class="w3-container">
						<h3>${actor.name}</h3>
						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> <a
									href="${appName}actor/edit?id=${actor.id}">Edit</a>
							</button>
						</p>
						<security:authorize access="hasRole('ADMIN')">

							<p>
								<button class="w3-button w3-light-grey w3-block">
									<i class="fa fa-envelope"></i> <a
										href="${appName}actor/delete?id=${actor.id}">Delete</a>

								</button>
							</p>
						</security:authorize>

						<%-- 						<p>
							<button class="w3-button w3-light-grey w3-block">
								<i class="fa fa-envelope"></i> 
								
								<a  href="${appName}actor/detail?id=${actor.id}">see detail</a>
								
							</button>
						</p>
 --%>
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
<!-- end Footer -->
