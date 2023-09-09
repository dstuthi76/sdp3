package com.klu.demo;

import org.springframework.data.repository.CrudRepository;

import com.klu.demo.User;

public interface UserRepository extends CrudRepository<User,Long>{

	public User findByUserName(String userName);

}