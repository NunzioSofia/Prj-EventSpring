package com.generation.diario.integration;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.generation.diario.entities.Evento;
import com.generation.diario.entities.Utente;
import com.generation.diario.services.IEventoService;
import com.generation.diario.services.IUtenteService;

@RestController
@RequestMapping ("/utente")
public class UtenteRestController {

	@Autowired
	private IUtenteService service;
	
	@Autowired
	private IEventoService evento;
	
	@GetMapping("/")
	public List<Utente> getAll(){
		return service.findAll();
	}
	
	@GetMapping("/{id}")
	public Utente findOne(@PathVariable("id") int id) {
		return service.findOne(id);
	}
	
	@GetMapping("/evento")
	public List<Evento> getAllEvento(){
		return evento.findAll();
	}
}
