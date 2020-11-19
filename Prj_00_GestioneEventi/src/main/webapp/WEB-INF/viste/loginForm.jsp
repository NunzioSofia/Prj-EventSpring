<%@include file="header.jsp" %>

<div class="login-form">
    <form action="/login" method="post">
        <h2 class="text-center">Autentificazione</h2>       
        <div class="form-group">
            <input type="text" class="form-control" name="username" placeholder="Username" required="required">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Password" required="required">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-1 btn-block">LOG IN</button>
        </div>
        <div class="clearfix">
        </div>   
    </div>     
    </form>
</div>
  

<%@include file="footer.jsp" %>                            		
