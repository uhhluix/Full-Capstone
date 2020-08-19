package com.invent.app.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.invent.app.Bugs;
import com.invent.app.repository.BugsRepository;
@Service
@Transactional
public class BugsServiceImpl implements BugService {

	private BugsRepository bugRepository;
	
	@Autowired
	public BugsServiceImpl(BugsRepository bugRepository) {
		super();
		this.bugRepository =bugRepository;
	}
	
	@Override
    public void updateBug(Bugs bugs) {
        bugRepository.findById(bugs.getId()).ifPresent(a->{
            a.setSeverity(bugs.getSeverity());
            a.setStatus(bugs.getStatus());
            bugRepository.save(a);
        });
    }
	
	@Override
	public Optional<Bugs> findById(Long id) {
		return bugRepository.findById(id);

	}

	@Override
	public List<Bugs> findByName(String name) {
		return bugRepository.findByName(name);

	}

	@Override
	public List<Bugs> findAll() {
		return bugRepository.findAll();
	}

	@Override
	public void delete(Long id) {
		bugRepository.deleteById(id);
		
	}

	@Override
	public void updateStatus(String status, Long id) {
		bugRepository.findById(id).ifPresent(a->{
			a.setStatus(status);			
		});		
	}

	@Override
	public void updateSeverity(String severity, Long id) {
		bugRepository.findById(id).ifPresent(a->{
			a.setSeverity(severity);			
		});		
		
	}

	@Override
	public void save(Bugs bug) {
		bugRepository.save(bug);
		
	}

}
