<%@page import="java.util.List"%>
<%@page import="com.hackaboss.logica.Turno"%>
<%@page import="com.hackaboss.logica.Tramite"%>
<%@page import="com.hackaboss.logica.Ciudadano"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Turno</title>
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
        
      

        <%
            Turno turno = (Turno) miSesion.getAttribute("turno");
            List<Ciudadano> listaCiudadanos = (List<Ciudadano>) miSesion.getAttribute("listaCiudadanos");
            List<Tramite> listaTramites = (List<Tramite>) miSesion.getAttribute("listaTramites");
            if (turno == null) {
        %>

        <form action="EditarTurnoSv" method="GET" autocomplete="off">
            <fieldset>
                <legend>Turno a Editar:</legend>
                <label for="id">ID del Turno:</label><br>
                <input type="text" id="id" name="id" placeholder="ID del turno" required><br><br>
                <input type="submit" value="Buscar Turno">
            </fieldset>
        </form>
        <% } else { %>
       <form action="EditarTurnoSv" method="POST" autocomplete="off">
    <fieldset>
        <legend>Modificar Turno:</legend>

        <div class="form-group">
            <label for="ciudadano"><strong>Ciudadano:</strong></label>
            <select id="ciudadano" name="ciudadano" class="form-control" required>
                <% 
                    for (Ciudadano ciudadano : listaCiudadanos) {
                        String selected = ciudadano.getDni()
                        .equals(turno.getElCiudadano().getDni())
                        ? "selected" : "";
                        out.println("<option value=\"" +
                        ciudadano.getDni()+ "\" " + selected + ">" 
                        + ciudadano.getNombre() +  "</option>");
                    }
                %>
            </select>
        </div>

        <div class="form-group">
            <label for="tramite"><strong>Trámite:</strong></label>
            <select id="tramite" name="tramite" class="form-control" required>
                <% 
                    for (Tramite tramite : listaTramites) {
                        String selected = tramite.getId() ==
                        turno.getElTramite().getId() ? "selected" : "";
                        out.println("<option value=\"" + tramite.getId() + "\" " + selected + ">"
                        + tramite.getTipo()+ "</option>");
                    }
                %>
            </select>
        </div>

        <div class="form-group">
            <label for="fecha"><strong>Fecha:</strong></label>
            <input type="date" id="fecha" name="fecha" class="form-control" value="<%= turno.getFecha() %>" required>
        </div>

        <div class="form-group">
            <label for="estado"><strong>Estado:</strong></label>
            <select id="estado" name="estado" class="form-control" required>
                <option value="EN_ESPERA" <%= "EN_ESPERA".equals(turno.getEstado().name()) ? "selected" : "" %>>En espera</option>
                <option value="YA_ATENDIDO" <%= "YA_ATENDIDO".equals(turno.getEstado().name()) ? "selected" : "" %>>Atendido</option>
            </select>
        </div>

        <input type="hidden" name="id" value="<%= turno.getId() %>">
        <input type="submit" value="Guardar Cambios" class="btn btn-primary">
    </fieldset>
</form>
        <% } %>
        <% } else {
                response.sendRedirect("login.jsp?mens=Primero Inicia Sesion!");
            } %>

       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>