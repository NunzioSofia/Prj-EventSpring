	package com.generation.diario.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.generation.diario.entities.Utente;
import com.generation.diario.services.IUtenteService;

	/**
	* Servlet implementation class CinemaController
	*/
	@Controller
	public class UtenteController {

		//Collego il service
		@Autowired
		IUtenteService servizio;
		
		@RequestMapping("/signupform")
		public String getFormUtente(ModelMap map) {
			
			List<Utente> utente = servizio.findAll();
			map.addAttribute("utente", utente);
			
			return "formRegistrazione";
		}
		
		@RequestMapping("/aggiungiUtente")
		public String addUtente(@ModelAttribute("utente") Utente u) {
			servizio.addUtente(u);
			return ("redirect:/signupform");
		}
			

	}
