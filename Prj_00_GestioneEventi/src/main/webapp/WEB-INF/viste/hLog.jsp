<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
 	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>    
    <style type="text/css">
     <%@include file="assets/css/style.css" %>
	</style>
    <title>CulturALL Eventi</title>
  </head>
  <body>

<!--Navbar-->
  
  <nav class="stroke fill navbar navbar-expand-lg navbar-light bg-light">
  	<a href="/"><img href="/" src="https://i.postimg.cc/d3tjJJz9/logo.png" width="190px" height="80px"></a>
    <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/">Home</a>
            </li>
            <c:if test="${utente.getTipo()=='a'}">
            <li class="nav-item">
                <a class="nav-link" href="/eventiamministrabili/">Pannello di controllo</a>
            </li>
            </c:if>
            <c:if test="${utente.getTipo()=='e'}">
            <li class="nav-item">
                <a class="nav-link" href="/eventiamministrabili/${utente.getId()}">Pannello di controllo</a>
            </li>
            </c:if>
            <c:if test="${utente.getTipo()!='b'}">
            <li class="nav-item">
                <a class="nav-link" href="/inserisci">Inserisci evento</a>
            </li>
            </c:if>
            <li class="nav-item">
                <a class="nav-link" href="/chisiamo">Chi siamo</a>
            </li>
        </ul>
    </div>
    
    
    <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
        <ol class="navbar-nav ml-auto">
            <li class="nav-item">
             <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true" style="margin-right: 15px">Benvenuto,<br> ${ userLog.getUsername() }</a>           
         </li>
         <li class="nav-item">
              <a class="btn btn-1" href="/logout" role="button">Log Out</a>
           </li>
        </ol>
       
    </div>
    </nav>
      
<!--Navbar-->