
<%@page import="com.hackaboss.logica.Ciudadano"%>
<%@page import="com.hackaboss.logica.Usuario"%>
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

<nav class="navbar">
    <a href="index.jsp" class="active">Inicio</a>
    <a href="tramite.jsp">Tramite</a>
    <a href="turno.jsp">Turno</a>
    <a href="Filtrado.jsp">Filtrado</a>
<a href="index_1.jsp">Personas</a>
</nav>
</header>
       <section class="home" id="home">    
    <div class="home-content">
  <body style="background-color: #456;"> 
    
        <div class="container mt-4">
        <h1>Agendar Cita</h1>
        <form action="CiudadanoSv" method="POST">
            
        <div class="form-group">
            <label for="nombre">Nombre:</label>
                <input  type="text" class="form-control" id="nombre" name="nombre" required>
         </div>  
        
            <div class="form-group">
                 <label for="dni">Dni (Documento Nacional de Identidad) </label>
                 <input type="text" class="form-control" id="dni" name="dni" required="">
            </div> 
                  
            
        <button type="submit" class="btn btn-primary" style="font-size: 15px; padding: 15px 30px;">Enviar</button>
        
        </form>
        
        
                  </tbody>  
             </table> 
         </div>
             
             
        </div>
  
<!-- Scripts de Bootstrap -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    </section>
    </body>
</html>
<% } 
else {
    response.sendRedirect("login.jsp");
}
%>