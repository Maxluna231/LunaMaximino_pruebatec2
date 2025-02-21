
<%@page import="com.hackaboss.logica.Tramite"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Tramites</title>
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
        
     
        <% Tramite tramite = (Tramite) miSesion.getAttribute("tramite");
            if (tramite == null) {
        %>
        <form action="EditarTramiteSv" method="GET" >
            <fieldset>
                <legend>Tipo del tramite a Editar:</legend>
                <label for="tipo">Tipo tramite:</label><br>
                <input type="text" id="tipo" name="tipo" placeholder="Nombre del tramite" required><br><br>
                <input type="submit" value="Tramite a editar">
            </fieldset>
        </form>
        <%} else {%>
        <form action="EditarTramiteSv" method="POST"  >
            <fieldset>
                <legend>Modificar Tramite:</legend>

                <label for="tipo"><strong>TipoTramite:</strong></label>
                <input type="text" id="tipo" name="tipo" value="<%= tramite.getTipo()%>" required><br><br>

                <label for="descripcion"><strong>Descripcion:</strong></label>
                <textarea id="descripcion" name="descripcion" rows="4" cols="50" required><%= tramite.getDescripcion()%></textarea><br><br>


                <input type="hidden" name="id" value="<%= tramite.getId()%>">
                <input class="btn btn-primary" style="font-size: 15px; padding: 15px 30px;" type="submit" value="Editar Tramite">
            </fieldset>
        </form>
                
                </section>
        <%}%>
        <%} else {
                response.sendRedirect("login.jsp?mens=Primero Inicia Sesion!");
            }%>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>