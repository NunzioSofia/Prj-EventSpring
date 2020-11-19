package com.generation.diario.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import com.generation.diario.entities.Evento;
import com.generation.diario.services.IEventoService;


@Controller
public class SiteController {

	@Autowired
	private IEventoService service;

	@RequestMapping("/")	
	public String home(ModelMap map) {
		List<Evento> eventi = service.findAll();
		map.addAttribute("eventi",eventi);
		return "index";
	}
	
	@RequestMapping("/chisiamo")
	public String chisiamo() {
		return "chisiamo";
	}

}