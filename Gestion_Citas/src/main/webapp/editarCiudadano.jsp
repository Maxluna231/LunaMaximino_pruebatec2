<%@page import="com.hackaboss.logica.Ciudadano"%>
<%@page import="com.hackaboss.logica.Ciudadano"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Ciudadanos</title>
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
        <form action="EditarCiudadanoSv" method="GET" >
            <fieldset>
                <legend>Dni del ciudadano :</legend>
                <label for="dni">Dni :</label><br>
                <input type="text" id="dni" name="dni" placeholder="dni" required><br><br>
                <input type="submit" value="Ciudadano a editar">
            </fieldset>
        </form>
        <%} else {%>
        <form action="EditarCiudadanoSv" method="POST" >
            <fieldset>
                <legend>Modificar Ciudadano:</legend>

                <label for="nombre"><strong>Nombre:</strong></label>
                <input type="text" id="nombre" name="nombre" value="<%= ciudadano.getNombre() %>" required><br><br>


                <label for="dni"><strong>dni</strong></label>
                <input type="text" id="dni" name="dni" value="<%= ciudadano.getDni() %>" required><br><br>

                <input type="hidden" name="id" value="<%= ciudadano.getId() %>">
                <input  type="submit" value="Editar Ciudadano">
            </fieldset>
        </form>
                </section>
        <%}%>
        <%} else {
                response.sendRedirect("login.jsp?mens=Primero Inicia Sesion!");
            }%>
            
            
              <!-- Scripts de Bootstrap -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>