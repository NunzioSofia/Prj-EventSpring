package com.generation.diario.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="archivioutenti")
public class Utente {

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private int id;
	@Column (name="Password")
	private String pass;
	private String Username;
	private String Tipo;
	private String Nome;
	private String Cognome;
	private String Nascita;
	private String Email;

	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		this.Username = username;
	}
	public String getTipo() {
		return Tipo;
	}
	public void setTipo(String tipo) {
		this.Tipo = tipo;
	}
	public String getNome() {
		return Nome;
	}
	public void setNome(String Nome) {
		this.Nome = Nome;
	}
	public String getCognome() {
		return Cognome;
	}
	public void setCognome(String cognome) {
		this.Cognome = cognome;
	}
	public String getNascita() {
		return Nascita;
	}
	public void setNascita(String Nascita) {
		this.Nascita = Nascita;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String Email) {
		this.Email = Email;
	}
	
	
	@Override
	public String toString() {
		return 	"{\"Id\":" + id + ", \"pass\": \"" + pass + "\", \"username\":\"" + Username + "\", \"tipo\":\"" + Tipo   
				+ "\", \"nome\":" + Nome + "\", \"Nascita\":\"" + Nascita +"\", \"Email\":\"" + Email + "}";
	}
}


