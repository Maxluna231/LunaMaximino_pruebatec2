

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Registrar Turno</title>
      <link rel="stylesheet" href="./css/principal.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
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
    <section class="home" id="home">    
    <div class="home-content">
  <body style="background-color: #456;"> 
      
    <div class="container mt-4">
        <h1>Registrar Turno</h1>
        <form action="TurnoSv" method="POST">
            
             <div class="form-group">
            <label for="numero">NumeroTurno:</label>
            <input type="text" class="form-control" id="numero" name="numero" required="">
         </div>  
        
            <div class="form-group">
                 <label for="fecha">Fecha</label>
                 <input height="50px" type="date" class="form-control" id="fecha" name="fecha" required>
            </div> 
            
                  <div class="form-group">
                <label for="estado" class="form-label">Estado:</label>
                <select class="form-select" id="estado" name="estado">
                    <option value="En espera">En espera</option>
                    <option value="Ya atendido">Ya atendido</option>
                </select>
            </div>
            
            <div class="form-group">
                <label for="usuario" class="form-label">Usuario:</label>
                <select class="form-select" id="usuario" name="usuario">
                    <c:forEach var="usuario" items="${usuarios}">
                        <option value="${usuario.id}">${usuario.email}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label for="tramite" class="form-label">Trámite:</label>
                <select class="form-select" id="tramite" name="tramite">
                    <c:forEach var="tramite" items="${tramites}">
                        <option value="${tramite.id}">${tramite.descripcion}</option>
                    </c:forEach>
                </select>
            </div>
            
            <div class="form-group">
                <label for="ciudadano" class="form-label">Ciudadano:</label>
                <select class="form-select" id="ciudadano" name="ciudadano" required>
                    <!-- Generar dinámicamente las opciones -->
                    <c:forEach var="ciudadano" items="${ciudadanos}">
                        <option value="${ciudadano_id}">${ciudadano.nombre}</option>
                    </c:forEach>
                </select>
            </div>
            <button type="submit" class="btn btn-primary" style="font-size: 15px; padding: 15px 30px;">Enviar</button>
        </form>
    </div>                
        </section>            
</body>
</html>
<% } 
else {
    response.sendRedirect("login.jsp");
}
%>