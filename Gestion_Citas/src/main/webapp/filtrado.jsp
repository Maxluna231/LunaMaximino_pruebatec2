

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./css/principal.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        
    </head>
    <body>
         <header class="header">
        <%
            String usu = (String) request.getSession().getAttribute("email");
            if (usu != null) {

        %>
    
    <i class="bx bx-menu" id="menu-icon"></i>

<nav class="navbar">
     <a href="index.jsp" class="active">Inicio</a>
    <a href="tramite.jsp">Tramite</a>
    <a href="turno.jsp">Turno</a>
    <a href="filtrado.jsp">Filtrado</a>

</nav>
</header>
        
        <h2>Filtrar Turnos</h2>
<form action="FiltrarTurnosServlet" method="GET">
    <label for="estado">Estado:</label>
    <select id="estado" name="estado">
        <option value="En espera">En espera</option>
        <option value="Ya atendido">Ya atendido</option>
    </select>

    <button type="submit">Filtrar</button>
</form>

<table border="1">
    <thead>
        <tr>
            <th>Número</th>
            <th>Fecha</th>
            <th>Hora</th>
            <th>Estado</th>
            <th>Ciudadano</th>
            <th>Trámite</th>
        </tr>
    </thead>
    <tbody>
        <!-- Datos dinámicos cargados desde el backend -->
    </tbody>
</table>
        
    </body>
</html>
<% } 
else {
    response.sendRedirect("login.jsp");
}
%>