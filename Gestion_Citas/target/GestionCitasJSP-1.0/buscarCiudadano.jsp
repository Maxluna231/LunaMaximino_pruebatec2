<%@page import="com.hackaboss.logica.Ciudadano"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Ciudadanos</title>
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
        
        
            <h1 class="mt-5">Buscar Ciudadano</h1>
            <form action="BuscarCiudadanoSv" method="POST" class="form-group">
                <fieldset>
                    <legend>Clave de Identificación del Ciudadano a Buscar:</legend>
                    <input type="text" id="dni" name="dni" placeholder="1234567890" class="form-control" required>
                    <button type="submit" class="btn btn-success mt-3">Buscar Ciudadano</button>
                </fieldset>
            </form>

            <%
                Ciudadano ciudadano = (Ciudadano) miSesion.getAttribute("ciudadano");
                if (ciudadano != null) {
            %>
            <div class="mt-5">
                <h2>Ciudadano Encontrado</h2>
                <fieldset>
                    <legend>Datos de <%= ciudadano.getDni() %></legend>
                    <p><strong>Nombre:</strong> <%= ciudadano.getNombre() %></p>
                    <p><strong>Clave de Identificación:</strong> <%= ciudadano.getDni() %></p>
                </fieldset>
            </div>
            <% } %>

            <h1 class="mt-5">Mostrar Todos los Ciudadanos</h1>
            <form action="BuscarCiudadanoSv" method="GET" class="form-group">
                <button type="submit" class="btn btn-info">Mostrar Todos</button>
            </form>
            <%
                List<Ciudadano> listaCiudadanos = (List<Ciudadano>) miSesion.getAttribute("listaCiudadanos");
                if (listaCiudadanos != null && !listaCiudadanos.isEmpty()) {
            %>
            <table class="table table-dark table-striped">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Clave de Identificación</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Ciudadano ciudadanos : listaCiudadanos) { %>
                    <tr>
                        <td><%= ciudadanos.getNombre() %></td>
                        <td><%= ciudadanos.getDni() %></td>
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
          </section>
    </body>
</html>