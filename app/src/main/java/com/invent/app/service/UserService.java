package com.invent.app.service;

import java.util.List;
import java.util.Optional;

import com.invent.app.Users;

public interface UserService {

	
	Optional<Users> findById(Long id);
	Optional<Users> findByEmail(String email);
	Optional<Users> login(String email, String password);
	List<Users> findByName(String name);
	List<Users> findAll();
	void delete(Long id);
	void updateUser(Users user);
	void updateRole(String role, Long id);
	void resetpassword(String password, Long id);
	void save(Users user);
	

}

