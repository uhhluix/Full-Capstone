package com.invent.app.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.invent.app.Bugs;

public interface BugsRepository extends JpaRepository<Bugs, Long>{
	@Query("FROM Bugs WHere name=?1")
	List<Bugs> findByName(String name);


}
