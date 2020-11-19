package com.generation.diario.entities;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="evento")
public class Evento {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String titolo;
	private String descrizione;
	private String citta;
	private String luogo; 
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date dataInizio;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date dataFine;
	private String oraInizio;
	private int utenteId;
	private String immagine;
	private String locandina;
	private String paginaWeb;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitolo() {
		return titolo;
	}
	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	public String getCitta() {
		return citta;
	}
	public void setCitta(String citta) {
		this.citta = citta;
	}
	public String getLuogo() {
		return luogo;
	}
	public void setLuogo(String luogo) {
		this.luogo = luogo;
	}
	
	public void setOraInizio(String oraInizio) {
		this.oraInizio = oraInizio;
	}
	public String getDataFineString() {
		
		SimpleDateFormat DateFor = new SimpleDateFormat("dd/MM/yyyy");
		String dataF= DateFor.format(dataInizio);
		
		return dataF;
	}
	public Date getDataFine() {
		return dataFine;
	}
	public void setDataFine(Date dataFine) {
		this.dataFine = dataFine;
	}
	public int getUtenteId() {
		return utenteId;
	}
	public void setUtenteId(int utenteId) {
		this.utenteId = utenteId;
	}
	public String getOraInizio() {
		return oraInizio;
	}
	public void setDataInizio(Date dataInizio) {
		this.dataInizio = dataInizio;
	}
	
	public String getDataInizioString() {
		
		SimpleDateFormat DateFor = new SimpleDateFormat("dd/MM/yyyy");
		String dataI= DateFor.format(dataInizio);
		
		return dataI;
	}
	
	public Date getDataInizio() {
		return dataInizio;
	}
	
	
	public String getImmagine() {
		return immagine;
	}
	public void setImmagine(String immagine) {
		this.immagine = immagine;
	}
	public boolean attivo() {
		Date oggi = Calendar.getInstance().getTime();
		if( (dataInizio.compareTo(oggi)) >= 0 || (dataFine.compareTo(oggi)) >= 0 ) {
			
			return true;
		}
			
		
		return false;	
	}

	public String getLocandina() {
		return locandina;
	}
	public void setLocandina(String locandina) {
		this.locandina = locandina;
	}
	public String getPaginaWeb() {
		return paginaWeb;
	}
	public void setPaginaWeb(String paginaWeb) {
		this.paginaWeb = paginaWeb;
	}


	@Override
	public String toString() {
		return "{\"id\":" + id + ", \"titolo\": \"" + titolo + ", \"descrizione\": \"" + descrizione + "\", \"citta\":\"" + citta + "\", \"luogo\":\""
				+ luogo + "\", \"dataInizio\":" + dataInizio + "\", \"dataFine\":\"" + dataFine + "}";
	}

}