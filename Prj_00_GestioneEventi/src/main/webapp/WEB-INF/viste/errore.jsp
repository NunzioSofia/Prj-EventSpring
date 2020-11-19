<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:if test="${utente==null}">
<%@include file="header.jsp" %>
</c:if>
<c:if test="${utente!=null}">
<%@include file="header2.jsp" %>
</c:if>

<div id="notfound">
		<div class="notfound">
			<div class="notfound-404">
				<h1>Oops!</h1>
				<h2>Non disponi di diritti sufficienti alla modifica del diario degli eventi.</h2>
			</div>
			<a class="btn btn-1" href="/">Log out</a>
		</div>
	</div>

<%@include file="footer.jsp" %>