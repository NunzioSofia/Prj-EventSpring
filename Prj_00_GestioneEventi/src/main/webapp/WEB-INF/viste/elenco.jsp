<%@include file="header.jsp" %>
<div class="container">
				
                 <c:forEach items="${eventi}" var="evento">   
                    <div class="card" >
                        <img src="https://www.mandlpaints.com/wp-content/uploads/2018/09/Lead-Gray-600x600.jpg" class="card-img-top" alt="..." style="height: 150px;">
                        <div class="card-body">
                            <h6 class="card-subtitle mb-2 text-muted">${evento.getCitta()}, ${evento.getLuogo()} ${evento.getDataInizio()}</h6>
                            <h4 class="card-title">${evento.getTitolo()}</h4>
                          <p class="card-text">${evento.getCitta()}</p>
                          <a href="dettaglio/${evento.getId()}" class="btn btn-1">Dettagli evento</a>
                        </div>
                    </div>           
                    <hr>
                </c:forEach>
</div>
<%@include file="footer.jsp" %>