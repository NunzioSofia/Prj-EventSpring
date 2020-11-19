<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:if test="${utente==null}">
<%@include file="header.jsp" %>
</c:if>
<c:if test="${utente!=null}">
<%@include file="header2.jsp" %>
</c:if>


	<div class="bg-contact2">
    <div class="container-contact2">
        <div class="wrap-contact2">
  
        	<div Align="center"><img href="" src="https://i.postimg.cc/d3tjJJz9/logo.png" width="220px" height="100px"></div><br>
			<div style="text-align:center;"><h2>L'Agenzia</h2>	
	
        	Nata nel 2018, CulturALL Eventi è un'agenzia di 
        	comunicazione e creazione di eventi culturali. 
        	Un marchio e un nome che racchiudono un'idea nuova del comunicare: quella di <strong>creare "contesto" creativo</strong> in cui un libro o una manifestazione possano crescere e farsi conoscere.
        	In un mondo sempre più basato sull'apparenza e che vive essenzialmente di immagine, "fare" e "non comunicare" equivale spesso a non aver fatto.
        	CulturALL Eventi, con sede a Torino, concentra oggi la sua attività nell'ambito della comunicazione, dell'ufficio stampa e della progettazione e organizzazione di eventi culturali e legati al sociale e, in questo settore, può vantare un curriculum che è garanzia di <strong>professionalità e competenza</strong>.
		
			<br><br>
			<h2>Eventi</h2>	
			<img src="/img/eventi.png" style="width:100%;height:350px;"><br>
			<p>Progettazione e coordinamento di <strong>convegni, conferenze, presentazioni, festival, esposizioni, fiere, mostre, rassegne, concerti e proiezioni</strong> attraverso tutte le fasi di sviluppo: ideazione, gestione della logistica, organizzazione ecc.
			<h2>Comunicazione</h2>	
			<p>Ufficio stampa per manifestazioni, realtà culturali, artistiche, editorali e legate al sociale.
			Creazione di mailing-list mirate alla gestione dei rapporti con i media, stesura di comunicati stampa, programmazione di interviste,organizzazione di conferenze stampa, preparazione di rassegne stampa, press-kit e cartelle stampa.</p>
			 </div>
			</div>
      </div>
   </div>
<%@include file="footer.jsp" %>