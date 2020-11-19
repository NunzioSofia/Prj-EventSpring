package com.generation.diario.integration;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.generation.diario.entities.Evento;
import com.generation.diario.services.IEventoService;

@RestController
@RequestMapping("/evento")
public class EventoRestController {

	@Autowired
	private IEventoService servizio;
	
	@CrossOrigin(origins = "http://localhost:9000")
	@RequestMapping("/tutti")
	public @ResponseBody List<Evento> findaAll(HttpServletRequest request, HttpServletResponse response){
		
		response.addHeader("Access-Control-Allow-Origin", "*");
	    response.addHeader("Access-Control-Allow-Methods", "GET,PUT,POST,DELETE");
	    response.addHeader("Access-Control-Allow-Headers", "Content-Type");
		
		return servizio.findAll();
	}
	
	@GetMapping("/{id}")
	public Evento findOne(@PathVariable("id") int identificativo) {
		return servizio.findOne(identificativo);
	}

}
