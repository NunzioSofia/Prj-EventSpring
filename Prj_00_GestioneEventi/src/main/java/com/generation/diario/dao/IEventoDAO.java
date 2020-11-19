package com.generation.diario.dao;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.generation.diario.entities.Evento;


public interface IEventoDAO extends JpaRepository<Evento, Integer> {
	
	@Query("UPDATE Evento SET utenteId=:utenteId WHERE id= :id")
	void editUtenteId(@Param("id") int id, @Param("utenteId") int utenteId);

	@Query("FROM Evento WHERE utenteId= :id")
	List<Evento> findAllById(@Param("id") int id);
	
	

	
	
	
	

}
