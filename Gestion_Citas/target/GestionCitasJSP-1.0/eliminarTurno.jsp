<%@page import="com.hackaboss.logica.Turno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Eliminar Turno</title>
         <link rel="stylesheet" href="./css/principal.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        
       <header class="header">
            <%
                HttpSession miSesion = request.getSession(false);
                String usu = (miSesion != null) ? (String) miSesion.getAttribute("email") : null;
                List<Turno> listaTurnos = (List<Turno>) miSesion.getAttribute("listaTurnos");
                if (usu != null) {
                
            %>
            <a href="login.jsp" class="logo">Bienvenido, <span><%= usu %></span></a>
            <i class="bx bx-menu" id="menu-icon"></i>
            <%
                String mensaje = request.getParameter("mens");
                if (mensaje != null) {
            %>
            <div class="alert alert-info mt-3"><%= mensaje %></div>
            <% } %>
        </header>
        
         <section class="home" id="home">    
            <div class="home-content">

        <form action="EliminarTurnoSv" method="POST"  >
            <fieldset>
                <legend>Borrar Turno</legend>

                <label for="turno">Turno:</label><br>
                <select id="turno" name="turno" required>
                    <% 
                        if (listaTurnos != null && !listaTurnos.isEmpty()) {
                            for (Turno turno : listaTurnos) {
                                out.println("<option value=\"" + turno.getId() + "\">" 
                                + " Dni: " + turno.getElCiudadano().getDni()+ " / Tramite: " 
                                + turno.getElTramite().getTipo()+" / Fecha: " + turno.getFecha() + "</option>");
                            }
                        } else {
                    %>
                    <option value="" disabled>No hay turnos disponibles</option>
                    <% } %>
                </select><br><br>

                <input type="submit" value="Eliminar Turno">
            </fieldset>
        </form>
        <% } else {
                response.sendRedirect("login.jsp?mens=Primero Inicia Sesion!");
            } %>

        <br>

    </body>
</html>