<%@page import="com.hackaboss.logica.Tramite"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Tramites</title>
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

                    <h1 class="mt-5">Buscar Tramite</h1>
                    <form action="BuscarTramiteSv" method="POST" class="form-group">
                        <fieldset>
                            <legend>Clave de Identificación del Tramite a Buscar:</legend>
                            <input type="text" id="tipo" name="tipo" placeholder="Tipo de Tramite" class="form-control" required>
                            <button type="submit" class="btn btn-success mt-3">Buscar Tramite</button>
                        </fieldset>
                    </form>

                    <%
                        Tramite tramite = (Tramite) miSesion.getAttribute("tramite");
                        if (tramite != null) {
                    %>
                    <div class="mt-5">
                        <h2>Datos del Tramite Encontrado</h2>
                        <fieldset>
                            <legend>Datos de <%= tramite.getTipo() %></legend>
                            <p><strong>Tipo:</strong> <%= tramite.getTipo() %></p>
                            <p><strong>Descripcion:</strong> <%= tramite.getDescripcion() %></p>
                        </fieldset>
                    </div>
                    <% } %>

                    <h1 class="mt-5">Mostrar Todos los Tramites</h1>
                    <form action="BuscarTramiteSv" method="GET" class="form-group">
                        <button type="submit" class="btn btn-info">Mostrar Todos</button>
                    </form>
                    <%
                        List<Tramite> listaTramites = (List<Tramite>) miSesion.getAttribute("listaTramites");
                        if (listaTramites != null && !listaTramites.isEmpty()) {
                    %>
                    <table class="table table-dark table-striped">
                        <thead>
                            <tr>
                                <th>Tipo</th>
                                <th>Descripcion</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (Tramite trami : listaTramites) { %>
                            <tr>
                                <td><%= trami.getTipo() %></td>
                                <td><%= trami.getDescripcion() %></td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                    <% } %>

                </section>

        <% } else { %>
        <script>
            window.location.href = "login.jsp?mens=Primero Inicia Sesion.";
        </script>
        <% } %>

        <!-- Scripts de Bootstrap -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
