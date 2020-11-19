package com.generation.diario.services;

import java.util.List;
import java.util.Optional;

import com.generation.diario.entities.Evento;
import com.generation.diario.entities.Utente;


public interface IUtenteService {

	List<Utente> findAll();
	Utente findOne(int id);

	Optional<Utente> findOneByEvent(Evento e);
	
	
	Utente findOneByUser(String username);
	void addUtente(Utente u);
	
}
