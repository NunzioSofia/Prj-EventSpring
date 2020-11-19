package com.generation.diario.services;

import java.util.List;

import com.generation.diario.entities.Evento;


public interface IEventoService {

	List<Evento> findAll();
	Evento findOne(int id);
	void addEvento(Evento ev);
	void deleteEvento(int id);
	void updateEventoById(int id);
	List<Evento> findAllbyId(int id);
}
