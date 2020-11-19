package com.generation.diario.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.generation.diario.entities.Utente;
import com.generation.diario.services.IUtenteService;

	@Controller
	public class LogInController  {
		
		@Autowired
		private IUtenteService service;
		@Autowired
		private HttpSession httpsession;
	
		private Utente u;
		
		@RequestMapping("/login")
		public String login(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
			
			String username= request.getParameter("username");
			String password= request.getParameter("password");
			
			try {
				if(password.equals(service.findOneByUser(username).getPass())){
					u = (Utente) httpsession.getAttribute("utente");
					
					map.addAttribute("utente", u);

					return ("redirect:/");								
				} else {
					return ("errore");	
				}
			} catch (NullPointerException e) {
				System.out.println(e.getMessage());
				return "errore";
			}	
		}
		
		@RequestMapping("/loginform")
		public String loginForm() {
			return "loginForm";
		}
		
		@RequestMapping("/logout")
		public String logout(HttpServletRequest request, HttpServletResponse response) {
			httpsession.removeAttribute("utente");
			return ("redirect:/");	
		}
		
	}