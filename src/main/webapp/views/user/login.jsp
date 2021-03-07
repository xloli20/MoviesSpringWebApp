<jsp:include page="../shared/_layout.jsp" />

<b>${message}</b>
<br>

<div class="w3-container w3-light-grey" style="padding: 100px 500px"
	id="contact">
	<h3 class="w3-center"><b>SIGN UP</b></h3>
	<p class="w3-center w3-large">You already have account? sign in to our website:</p>
	<div style="margin-top: 48px">

		<form action="${appName}login" method="post">
			<p>
				<input class="w3-input w3-border" type="email"
					placeholder="Email Address" required="" name="username">
			</p>

			<p>
				<input class="w3-input w3-border" type="password"
					placeholder="Password" required="" name="password">
			</p>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

			<p>
				<button class="w3-button w3-black" type="submit">
					<i class="fa fa-paper-plane"></i> SIGN IN
				</button>
			</p>

		</form>

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