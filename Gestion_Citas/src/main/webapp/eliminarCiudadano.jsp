<%@page import="com.hackaboss.logica.Ciudadano"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Ciudadanos</title>
        
         <link rel="stylesheet" href="./css/principal.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        
        <header class="header">
            <%
                HttpSession miSesion = request.getSession(false);
                String usu = (miSesion != null) ? (String) miSesion.getAttribute("email") : null;
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
                <body style="background-color: #456;">  
       
            <% Ciudadano ciudadano = (Ciudadano) miSesion.getAttribute("ciudadano");
                if (ciudadano == null) {
            %>
            <form action="EliminarCiudadanoSv" method="POST" >
                <fieldset>
                    <legend> Ciudadano a Eliminar:</legend>
                    <label for="dni">Dni:</label><br>
                    <input type="text" id="dni" name="dni" placeholder="dni" required><br><br>
                    <input type="submit" value="Ciudadano a eliminar">
                </fieldset>
            </form>
            <%} else {%>
            <form action="EliminarCiudadanoSv" method="GET" autocomplete="off" >
                <fieldset>
                    <legend>Confirmar Ciudadano a Eliminar:</legend>
                    <p><strong>Nombre:</strong> <%= ciudadano.getNombre()%></p>
                    <p><strong>Dni:</strong> <%= ciudadano.getDni()%></p>
                    <input type="hidden" name="id" value="<%= ciudadano.getId()%>">                
                    <input type="submit" value="Eliminar Ciudadano">
                </fieldset>
            </form>
            <%}%>
            <%} else {
                    response.sendRedirect("login.jsp?mens=Primero Inicia Sesion!");
                }%>
            <br>
             <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>