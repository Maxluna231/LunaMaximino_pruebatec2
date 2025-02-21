
<%@page import="com.hackaboss.logica.Turno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Turnos</title>
        <link rel="stylesheet" href="./css/principal.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        
        <header class="header">
        <%
            HttpSession miSesion = request.getSession(false);
            String login;
            if (miSesion.getAttribute("email") != null) {
                login = (String) miSesion.getAttribute("email");
                String mensaje = request.getParameter("mens");
                
       String usu = (String) request.getSession().getAttribute("email");
            if (usu != null)   
        %>
       <a href="login.jsp" class="logo">Bienvenido 
        <span><%=usu%></span>    
    </a>

     
        </header>
    
      <section class="home" id="home">    
    <div class="home-content">
      <body style="background-color: #456;">     
        
      <h1 style="size: 50px"  style="color: #ff0000;"  >Listar Turnos  </h1>
    
        <%
            List<Turno> listaTurnos = (List<Turno>) session.getAttribute("listaTurnos");
            if (listaTurnos != null && !listaTurnos.isEmpty()) {
        %>
       <table class="table table-dark table-striped" style="font-family: Arial, sans-serif; font-size: 14px;">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Ciudadano</th>
                    <th>Trámite - Descripción</th>
                    <th>Fecha</th>
                    <th>Estado</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <% for (Turno turno : listaTurnos) {%>
                <tr>
                    <td><%= turno.getId()%></td>
                    <td><%= turno.getElCiudadano().getNombre()%></td>
                    <td><%= turno.getElTramite().getTipo()+ " - " + turno.getElTramite().getDescripcion()%></td>
                    <td><%= turno.getFecha()%></td>
                    <td><%= turno.getEstado()%></td>
                    <td>
                       <button 
        class="btn btn-warning" 
        style="font-size: 14px; padding: 10px 20px; margin-right: 10px;" 
        onclick="window.location.href='EditarTurnoSv?id=<%= turno.getId()%>'">
        Editar
    </button>
                        <button 
        class="btn btn-danger" 
        style="font-size: 14px; padding: 10px 20px;" 
        onclick="window.location.href='GestorTurnosSv?action=baja&id=<%= turno.getId()%>'">
        Eliminar
                        </button>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <% } else { %>
        <p>No hay turnos disponibles.</p>
        <% } %>


        <% } else {
                response.sendRedirect("login.jsp?mens=Primero Inicia Sesion!");
            }
        %>
        <br>
    
        
    <!-- Scripts de Bootstrap -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    </body>
</html>
