<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:if test="${userLog==null}">
<%@include file="header.jsp" %>
</c:if>
<c:if test="${userLog!=null}">
<%@include file="hLog.jsp" %>
</c:if>

   
<div class="bg-contact2">
    <div class="container-contact2">
        <div class="wrap-contact2">
        	<div style="text-align:center">
        		<img src="/img/${evento.getImmagine()}" class="img-fluid mb-3" alt="Responsive image">
      			<h1>${ evento.titolo }</h1>
		        <p> ${ evento.descrizione }</p>
		        <hr>
		        <h5>Data inizio: <strong>${ evento.getDataInizioString() }</strong></h5>
		   		<h5>Ora inizio: <strong>${ evento.getOraInizio() }</strong></h5> 
				<h5>Fine:<strong> ${ evento.getDataFineString() }</strong></h5>
		        <h5>Città: <strong>${ evento.citta }</strong></h5>
		        <h5>Luogo:<strong> ${ evento.luogo }</strong></h5>
		        <h5>Inserito da: <strong>${ utente.getNome() }</strong></h5>
		        <br>
		            <a class="btn btn-1" href="/locandine/${evento.getLocandina() }" role="button">Locandina</a>  
		        </div>   
    	</div>
   	 </div>
  </div>
<%@include file="footer.jsp" %>