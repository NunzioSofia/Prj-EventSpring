<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:if test="${utente==null}">
<%@include file="header.jsp" %>
</c:if>
<c:if test="${utente!=null}">
<%@include file="header2.jsp" %>
</c:if>

<div class="login-form">
    <form action="" method="post">
        <h2 class="text-center">Autentificazione</h2>       
        <div class="form-group">
        <div class="shadow p-6 mb-7 bg-white rounded">
            <input type="text" class="form-control" placeholder="UserID" required="required">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" placeholder="Password" required="required">
        </div>
        <div class="form-group" align="center">
            <button type="submit" class="btn btn-1">LOG IN</button>
        </div>
        
        <div class="form-group" align="center">
            <button type="submit" class="btn btn-1">REGISTRATI</button>
        </div>
        <div class="clearfix">
        </div>   
    </div>     
    </form>
</div>

<%@include file="footer.jsp" %>