package com.ga.movieapp.dao;

import org.springframework.data.repository.CrudRepository;

import com.ga.movieapp.model.Actor;

public interface ActorDao extends CrudRepository<Actor, Integer> {
	public Actor findById(int id);
}