<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario de </title>
        <link rel="stylesheet" href="./css/principal.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
       
    </head>
    <body> 
        
    <header class="header">
        <%
            String usu = (String) request.getSession().getAttribute("email");
            if (usu != null) {

        %>

    <a href="login.jsp" class="logo">Bienvenido 
        <span><%=usu%></span>
        
    </a>
    
    <i class="bx bx-menu" id="menu-icon"></i>

</header>
        
       <section class="home" id="home">    
    <div class="home-content">
  <body style="background-color: #456;">     
        
      <h1 style="size: 50px"  style="color: #ff0000;"  >SISTEMA DE REGISTRO DE CITAS  </h1>
   

     <div id="menu">
    <form action="GestorTurnosSv" method="POST" >
     
            <button class="btn btn-info" style="font-size: 15px; padding: 15px 30px; margin-bottom: 15px;" type="submit" name="action" value="alta" class="botonazul">Agrega Turno</button>
            <button class="btn btn-info" style="font-size: 15px; padding: 15px 30px; margin-bottom: 15px;" type="submit" name="action" value="listarTodos">Gestion de Turnos</button>
            <button class="btn btn-info" style="font-size: 15px; padding: 15px 30px; margin-bottom: 15px;" type="submit" name="action" value="listarEspera">Turnos Esperando</button>
            <button class="btn btn-info" style="font-size: 15px; padding: 15px 30px;" type="submit" name="action" value="listarAtendidos">Turnos Atendidos</button>
        
    </form>
    <br>
    <form action="GestorCiudadanosSv" method="POST"">
       
            <button class="btn btn-info" style="font-size: 15px; padding: 15px 30px; margin-bottom: 15px;" type="submit" name="action" value="alta">Agrega Ciudadano</button>
            <button class="btn btn-info" style="font-size: 15px; padding: 15px 30px; margin-bottom: 15px;" type="submit" name="action" value="buscar">Buscar Ciudadano</button>
            <button class="btn btn-info" style="font-size: 15px; padding: 15px 30px; margin-bottom: 15px;" type="submit" name="action" value="editar">Editar Ciudadano</button>
            <button class="btn btn-info" style="font-size: 15px; padding: 15px 30px; margin-bottom: 15px;" type="submit" name="action" value="borrar">Borrar Ciudadano</button>
        
    </form>
    <br>
    <form action="GestorTramitesSv" method="POST"">
           
            <button class="btn btn-info" style="font-size: 15px; padding: 15px 30px; margin-bottom: 15px;" type="submit" name="action" value="alta">Agrega Tramite</button>
            <button class="btn btn-info" style="font-size: 15px; padding: 15px 30px; margin-bottom: 15px;" type="submit" name="action" value="buscar">Buscar Tramite</button>
            <button class="btn btn-info" style="font-size: 15px; padding: 15px 30px; margin-bottom: 15px;" type="submit" name="action" value="editar">Editar Tramite</button>
            <button class="btn btn-info" style="font-size: 15px; padding: 15px 30px; margin-bottom: 15px;" type="submit" name="action" value="borrar">Borrar Tramite</button>
       
    </form>
    <br>
</div>

    </section>
    
        
    <!-- Scripts de Bootstrap -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  </section>
    </body>
</html>

<%
    } else {
        response.sendRedirect("login.jsp");
    }
%>
