package com.invent.app.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.invent.app.Users;

public interface UserRepository extends JpaRepository<Users, Long> {

	
	Optional<Users> findByEmail(String email);
	
	@Query("FROM Users WHERE email=?1 and password=?2")
	Optional<Users> login(String email, String password);
	
	@Query("FROM Users WHere lname=?1")
	List<Users>findByName(String name); 
	 
	
	
}
