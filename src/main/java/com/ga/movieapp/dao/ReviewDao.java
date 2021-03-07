package com.ga.movieapp.dao;

import org.springframework.data.repository.CrudRepository;

import com.ga.movieapp.model.Review;

public interface ReviewDao extends CrudRepository<Review, Integer> {
	public Review findById(int id);
	

}