package com.ga.movieapp.dao;

import org.springframework.data.repository.CrudRepository;

import com.ga.movieapp.model.Movie;

public interface MovieDao extends CrudRepository<Movie, Integer> {
	public Movie findById(int id);
}