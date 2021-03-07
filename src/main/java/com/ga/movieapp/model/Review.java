package com.ga.movieapp.model;

import java.time.LocalDateTime;
import javax.persistence.*;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

@Entity 
@Table(name="Review")
public class Review {

	@Id
	@GeneratedValue
	private int review_Id;
	private String user_review;
	private String rating;
	
	@ManyToOne
	@JoinColumn(name = "fk_movieId")
	private Movie movie;
	
	@ManyToOne
	@JoinColumn(name = "fk_userId")
	private User user;
	
	@Column(name="createdAt", nullable = false, updatable = false)
	@CreationTimestamp
	private LocalDateTime createAt;
	@Column(name="updatedat", nullable = false, updatable = true)
	@UpdateTimestamp
	private LocalDateTime updateAt;
	
	
	
	public Movie getMovie() {
		return movie;
	}
	public void setMovie(Movie movie) {
		this.movie = movie;
	}

	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public int getReview_Id() {
		return review_Id;
	}
	public void setReview_Id(int review_Id) {
		this.review_Id = review_Id;
	}

	public String getUser_review() {
		return user_review;
	}
	public void setUser_review(String user_review) {
		this.user_review = user_review;
	}
	public LocalDateTime getCreateAt() {
		return createAt;
	}
	public void setCreateAt(LocalDateTime createAt) {
		this.createAt = createAt;
	}
	public LocalDateTime getUpdateAt() {
		return updateAt;
	}
	public void setUpdateAt(LocalDateTime updateAt) {
		this.updateAt = updateAt;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	
	
}

