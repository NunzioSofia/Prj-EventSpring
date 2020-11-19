package com.generation.diario.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.generation.diario.dao.IEventoDAO;
import com.generation.diario.entities.Evento;

@Service
public class EventoService implements IEventoService {

	@Autowired
	private IEventoDAO dao;
	
	
	@Override
	public List<Evento> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public Evento findOne(int id) {
		// TODO Auto-generated method stub
		return dao.findById(id).get();
	}

	@Override
	public void addEvento(Evento ev) {
		
		dao.save(ev);
		
	}

	@Override
	public void deleteEvento(int id) {
		dao.deleteById(id);
		
	}

	@Override
	public void updateEventoById(int id) {
		
		Evento e = dao.findById(id).get();
		dao.save(e);
		
	}

	@Override
	public List<Evento> findAllbyId(int id) {
		
		return dao.findAllById(id);
	}

	

}
