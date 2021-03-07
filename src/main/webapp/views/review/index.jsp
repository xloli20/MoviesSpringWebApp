<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.clip-star {height: 10px; width: 10px;}
.clip-star-active { height: 10px; width: 10px;}
</style>

<div>
	<b>Movie Reviews</b>
</div>
<table>
	<c:forEach items="${reviews}" var="review">
		<c:if test="${review.movie.id == movie.id}">
			<input id="rate" type="hidden" value="${review.rating}"></input>
			<tr>
				<td>${review.user_review}</td>

				<td><c:if test="${review.rating == '1'  }">
						<div class="rating">
							<div id="star1" class="clip-star clip-star-active"></div>
							<div id="star2" class="clip-star"></div>
							<div id="star3" class="clip-star"></div>
							<div id="star4" class="clip-star"></div>
							<div id="star5" class="clip-star"></div>
						</div>
					</c:if> <c:if test="${review.rating == '2'  }">
						<div class="rating">
							<div id="star1" class="clip-star clip-star-active"></div>
							<div id="star2" class="clip-star clip-star-active"></div>
							<div id="star3" class="clip-star"></div>
							<div id="star4" class="clip-star"></div>
							<div id="star5" class="clip-star"></div>
						</div>
					</c:if> <c:if test="${review.rating == '3'  }">
						<div class="rating">
							<div id="star1" class="clip-star clip-star-active"></div>
							<div id="star2" class="clip-star clip-star-active"></div>
							<div id="star3" class="clip-star clip-star-active"></div>
							<div id="star4" class="clip-star"></div>
							<div id="star5" class="clip-star"></div>
						</div>
					</c:if> <c:if test="${review.rating == '4'  }">
						<div class="rating">
							<div id="star1" class="clip-star clip-star-active"></div>
							<div id="star2" class="clip-star clip-star-active"></div>
							<div id="star3" class="clip-star clip-star-active"></div>
							<div id="star4" class="clip-star clip-star-active"></div>
							<div id="star5" class="clip-star"></div>
						</div>
					</c:if> <c:if test="${review.rating == '5'  }">
						<div class="rating">
							<div id="star1" class="clip-star clip-star-active"></div>
							<div id="star2" class="clip-star clip-star-active"></div>
							<div id="star3" class="clip-star clip-star-active"></div>
							<div id="star4" class="clip-star clip-star-active"></div>
							<div id="star5" class="clip-star clip-star-active"></div>
						</div>
					</c:if></td>
				<security:authorize access="isAuthenticated()">
					<td><a href="${appName}review/delete?id=${review.review_Id}">Delete</a></td>
				</security:authorize>
			</tr>
		</c:if>
	</c:forEach>
</table>
