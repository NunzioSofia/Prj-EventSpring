package com.generation.diario.controller;

	import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.generation.diario.entities.Evento;
import com.generation.diario.entities.Utente;
import com.generation.diario.services.IEventoService;
import com.generation.diario.services.IUtenteService;


	@Controller
	public class EventoController {

		@Autowired
		private IEventoService service;
		
		@Autowired
		private IUtenteService uService;
		
		@Autowired 
		private HttpSession httpsession;
		
		@RequestMapping("/elenco")
		public String findAll(ModelMap map) {
			List<Evento> eventi = service.findAll();
			map.addAttribute("eventi",eventi);
			return "elenco";
		}
		
		@RequestMapping("/dettaglio/{id}")
		public String findOne(@PathVariable("id") int id, ModelMap map) {

			Evento evento = service.findOne(id);
			Utente utente = uService.findOneByEvent(evento).get();
			Utente userLog = (Utente) httpsession.getAttribute("utente");
			
			map.addAttribute("userLog" , userLog);
			map.addAttribute(evento);
			map.addAttribute(utente);

			return "dettaglio";	
		}
		
		
		
		@RequestMapping("/inserisci")
		public String getForm(ModelMap map) {
			Utente u = (Utente) httpsession.getAttribute("utente");
			
			if(u.getTipo()!="b") {
			List<Evento> evento = service.findAll();
			map.addAttribute("evento", evento);
			return "inserisci";
			}
			
			return "errore";
		}
		
		@RequestMapping("eventiamministrabili")
		public String tabellaEventi(ModelMap map) {	
			List<Evento> eventi = service.findAll();
			map.addAttribute("eventi",eventi);
			return "view";
		}
		
		@RequestMapping("eventiamministrabili/{id}")
		public String tabellaEventiE(@PathVariable("id") int id, ModelMap map) {
			List<Evento> eventi = service.findAllbyId(id);
			map.addAttribute("eventi",eventi);
			return "view";
		}
		
		@RequestMapping("addEvento")
		public String addEvento(@ModelAttribute("evento") Evento ev) {
			Utente u = (Utente) httpsession.getAttribute("utente");
			ev.setUtenteId(u.getId());
			service.addEvento(ev);
			return("redirect:/inserisci");
		}
		
		@RequestMapping("eliminaEvento/{id}")
		public String deleteEvento(@PathVariable("id") int id) {
						
			service.deleteEvento(id);
			return ("redirect:/eventiamministrabili");
			
		}
		
		@RequestMapping("modificaEvento/{id}")
		public String editEvento(@PathVariable("id") int id, ModelMap map ) {
			Evento e = service.findOne(id);
			Utente u = (Utente) httpsession.getAttribute("utente");
			if(e.getUtenteId()==u.getId()||u.getTipo()=="a") {
				map.addAttribute("evento", e);
				return ("modifica");
			}
			
			return "errore";	
		}
		
		@RequestMapping("editEvento")
		public String updateEvento(@ModelAttribute("evento") Evento ev) {
			Utente u = (Utente) httpsession.getAttribute("utente");
			
			ev.setUtenteId(u.getId());
			service.addEvento(ev);
			System.out.println(u.getId()==ev.getUtenteId());

			return ("redirect:/eventiamministrabili");
		}
		
	}
