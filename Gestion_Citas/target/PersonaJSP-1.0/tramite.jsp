

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
    <a  <a href="index.jsp" class="active">Inicio</a>
    <a href="tramite.jsp">Tramite</a>
    <a href="turno.jsp">Turno</a>
    <a href="filtrado.jsp">Filtrado</a>

</nav>
</header>
    <section class="home" id="home">    
    <div class="home-content">
  <body style="background-color: #456;"> 
    
        <div class="container mt-4">
        <h1>Tramite</h1>
        <form action="TramiteSv" method="POST">
            
         <div class="form-group">
            <label for="tipoTreamite">Tipo Tramite:</label>
            <input  type="text" class="form-control" id="tipoTramite" name="tipoTramite" required="">
         </div>  
        
            <div class="form-group">
                 <label for="descripcion">Descripcion</label>
                <input type="text" class="form-control" id="descripcion" name="descripcion" required>
            </div> 
                   <button type="submit" class="btn btn-primary" style="font-size: 15px; padding: 15px 30px;">Enviar</button>
            </section
    </body>
</html>
<% } 
else {
    response.sendRedirect("login.jsp");
}
%>