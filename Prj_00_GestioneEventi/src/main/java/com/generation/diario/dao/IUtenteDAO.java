package com.generation.diario.dao;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.generation.diario.entities.Utente;


public interface IUtenteDAO extends JpaRepository<Utente, Integer>{
	
	@Query("FROM Utente WHERE Username=:Username")
	Utente findByUser(@Param("Username") String Username);

}
