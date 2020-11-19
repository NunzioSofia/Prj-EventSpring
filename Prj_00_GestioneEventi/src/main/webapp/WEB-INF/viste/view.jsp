<%@include file="header2.jsp" %>

  <div class="bg-contact2">
    <div class="container-contact2">
        <div class="wrap-contact2">
            <span class="contact2-form-title"> 
                Elenco degli eventi amministrabili: 
            </span>
         
            <table class="table table-striped">
   
                 		<thead>
                            <tr>
                            <th scope="col">EventoID</th>
                            <th scope="col">Titolo</th>
                            <th scope="col">Descrizione</th>
                            <th scope="col">Luogo</th>
                            <th scope="col">Città</th>
                            <th scope="col">OPERAZIONI</th>
                            </tr>
                          <thead>
                        <c:forEach items="${eventi}" var="evento">	
             
                         
                         <tbody>
                            <tr>
                            <th>${evento.getId()}</td>
                            <th  scope="row"><a href="/dettaglio/${evento.getId()}">${evento.getTitolo()}</a></td>
                            <td>${evento.getDescrizione()}</td>
                            <td>${evento.getLuogo()}</td>
                            <td>${evento.getCitta()}</td> 
                            <td>
                            
                            	<form action="/eliminaEvento/${evento.getId()}">
	                 				 <input type="submit"  class="button-delete"  value="Cancella evento" style="margin-bottom:10px;"></form>
	           					<form action="/modificaEvento/${evento.getId()}">
	                 				<input type="submit" class="button-edit" value="Modifica evento"></form>
              			    </td>
              			    
                            </tr>
                          <tbody>
                        </c:forEach>
                </div>
            </table>
         </div>
   
      </div>
    </div>
 </div>

<%@include file="footer.jsp" %>