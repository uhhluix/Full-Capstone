package com.invent.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.invent.app.AddressBook;

public interface AddressRepository extends JpaRepository<AddressBook, Long> {
	AddressBook findByEmail(String email);
}
