<%-- 
    Document   : Principal
    Created on : 18/08/2022, 5:08:24 p. m.
    Author     : juang
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Easy Parking</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-dark">
  <div class="container-fluid">
    
      <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
              <li class="nav-item">
                  <a style="margin-left:10px; border: none" class="btn btn-outline-warning btn-lg" href="Controlador?menu=Home" target="myFrame">Home</a>
              </li>
              <li class="nav-item">
                  <a style="margin-left:10px; border: none" class="btn btn-outline-warning btn-lg" href="#">Parking</a>
              </li>
              <li class="nav-item">
                  <a style="margin-left:10px; border: none" class="btn btn-outline-warning btn-lg" href="#">Dashboard</a>
              </li>
          </ul>
          
      
    </div>
      
      <div class="dropdown">
          <button style="border: none; " class="btn btn-outline-warning dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              ${usuario.getNombre()} 
          </button>

          <div  class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
              <a class="dropdown-item" href="#">
                  <img src="img/user.png" alt="User" widht="60" height="60"/>
              </a>
              <a class="dropdown-item" href="#">${usuario.getUser()}</a>
              <a class="dropdown-item" href="#">User</a>
              <div class="dropdown-divider"></div>
              <form action="Validar" method="POST">
                  <button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button>    
              </form>

          </div>
      </div>
    
  </div>
</nav>
              <div class="m-4" style="height:550px; ">                  
                  <iframe name="myFrame" style="height:100% ;width: 100%;border: none"></iframe>
              </div>
        
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>