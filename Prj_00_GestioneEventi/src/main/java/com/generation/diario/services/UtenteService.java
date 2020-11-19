package com.generation.diario.services;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.generation.diario.dao.IUtenteDAO;
import com.generation.diario.entities.Evento;
import com.generation.diario.entities.Utente;

@Service
public class UtenteService implements IUtenteService {
	@Autowired
	private IUtenteDAO repo;
	@Autowired
	private HttpSession httpSession;
	
	@Override
	public List<Utente> findAll() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public Utente findOne(int id) {
		// TODO Auto-generated method stub
		return repo.findById(id).get();
	}

	@Override
	public Optional<Utente> findOneByEvent(Evento e) {
		
		return repo.findById(e.getUtenteId());
	}

	
	@Override
	public Utente findOneByUser(String username) {
		
		Utente utente = repo.findByUser(username);
		httpSession.setAttribute("utente", utente);
		
		return utente;
	}

	@Override
	public void addUtente(Utente u) {
		repo.save(u);		
	}

}
