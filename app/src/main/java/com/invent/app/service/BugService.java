package com.invent.app.service;

import java.util.List;
import java.util.Optional;

import com.invent.app.Bugs;
import com.invent.app.Users;

public interface BugService {

	
	Optional <Bugs >findById(Long id);
	List<Bugs> findByName(String name);
	List<Bugs> findAll();
	void delete(Long id);
	void updateStatus(String status, Long id);
	void updateSeverity(String severity, Long id);
	
	void save(Bugs bug);
	void updateBug(Bugs bugs);
	
}
