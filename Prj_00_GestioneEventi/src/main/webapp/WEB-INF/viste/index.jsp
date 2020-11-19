<%@page import="com.generation.diario.entities.Evento"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:if test="${utente==null}">
<%@include file="header.jsp" %>
</c:if>
<c:if test="${utente!=null}">
<%@include file="header2.jsp" %>
</c:if>


<!-- Carousel -->
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel" >
            <ol class="carousel-indicators">
            <li data-target="#carousel" data-slide-to="0" class="active"></li>
            <li data-target="#carousel" data-slide-to="1"></li>
            <li data-target="#carousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
            
            <div class="carousel-item active text-center">
                <img src="https://images.unsplash.com/photo-1485568839169-4d3c0ce7f50f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                <h1>Benvenuto su <img src="/img/logobianco.png" width="250px" height="90px"></h1>
                <h3>Scorri per vedere gli eventi.</h3>
                <br><br><br><br><br><br><br><br>
                
                </div>
            </div>
            
            
             <c:forEach items="${eventi}" var="evento">   
            	<div class="carousel-item">

                <img src="/img/${evento.getImmagine()}" class="d-block w-100" alt="...">
               <div class="carousel-caption d-none d-md-block">
                <h1>${evento.getTitolo()}</h1><br>
                <h4>Data: ${evento.getDataInizioString()}</h4>
                 <h4>Ora inizio: ${evento.getOraInizio()}</h4>
                 <h4>Luogo: ${evento.getLuogo()}, ${evento.getCitta()}</h4><br>
               	<h5> ${evento.getDescrizione()}</h5>
               	  
                </div>            
                </div>
              </c:forEach>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
            </a>
        </div>
      </div>
      
  
<div class="bg-contact2">
    <div class="container-contact2">
        <div class="wrap-contact2">   
        
       		 
         <span class="contact2-form-title">
                   Eventi attivi:                                    
                </span>
              
        <div class="row">
        	
        	  <c:forEach items="${eventi}" var="evento">         	  
        	  <c:if test="${evento.attivo()}">
        	  
        	  <div class="col-6 h-100 sm-2">
            	<div class="card mb-4"  style="height:500px;">
        				<img src="/img/${evento.getImmagine()}" class="card-img-top" alt="..." style="height: 150px;">	            			
	           				<div class="card-body">	
	           					<h6 class="card-subtitle mb-2 text-muted">${evento.getDataInizioString()}</h6>
		                		<h6 class="card-subtitle mb-2 text-muted">${evento.getCitta()}, ${evento.getLuogo()} </h6>	
	           					<h4 class="card-title">${evento.getTitolo()}</h4>	           		
		              			<p class="card-text" >${evento.getDescrizione().substring(0,130)}[...]</p>		      
	            			</div>
	            			<div class="card-footer border-0 bg-white" >
		              			<a href="dettaglio/${evento.getId()}" class="btn btn-1" id="dettaglio">Dettagli evento</a>
		              		</div>	 
       				</div>       
        		</div>
        		</c:if>
    			</c:forEach>
    		
                
                
                </div>
                <br>
                <br>
                <hr>
               <span class="contact2-form-title">
                   Eventi scaduti:
                </span>
                <div class="row">
        	        	  
        	  <c:forEach items="${eventi}" var="evento">         	  
        	  <c:if test="${!evento.attivo()}">
        	  
        	  <div class="col-6 h-100 sm-2">
            	<div class="card mb-4"  style="height:500px;">
        				<img src="/img/${evento.getImmagine()}" class="card-img-top" alt="..." style="height: 150px;">
	           				<div class="card-body">
	           					<h6 class="card-subtitle mb-2 text-muted">${evento.getDataInizioString()}</h6>
		                		<h6 class="card-subtitle mb-2 text-muted">${evento.getCitta()}, ${evento.getLuogo()} </h6>
		                		<h4 class="card-title">${evento.getTitolo()}</h4>
		              			<p class="card-text">${evento.getDescrizione().substring(0,130)}[...]</p>
		              		</div>
		              			<div class="card-footer border-0 bg-white" >
		              				<a href="dettaglio/${evento.getId()}" class="btn btn-1" id="dettaglio">Dettagli evento</a>
		              			</div>
       				</div>       
        		</div>
        		</c:if>
    			</c:forEach>
    		
                
                
                </div>
                <br>
                <br>
                <hr>
            </div>
            
        </div>  
        
  	</div>
  
	
  
  

<%@include file="footer.jsp" %>