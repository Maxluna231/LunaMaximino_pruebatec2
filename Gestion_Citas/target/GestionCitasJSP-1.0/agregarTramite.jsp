<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta Tramites</title>
         <link rel="stylesheet" href="./css/principal.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        
                <header class="header">
        <%
            String usu = (String) request.getSession().getAttribute("email");
            if (usu != null) {
        %>
        
        <a href="login.jsp" class="logo">Bienvenido 
        <span><%=usu%></span>
    </a>
    
    <i class="bx bx-menu" id="menu-icon"></i>

<nav class="navbar">
    <a href="index.jsp" class="active">Inicio</a>
    <a href="agregarTramite.jsp">Tramite</a>
    <a href="agregarTurno.jsp">Turno</a>
    
</nav>
</header>
        
     <section class="home" id="home">    
    <div class="home-content">
  <body style="background-color: #456;">     
        
        <form action="AgregarTramiteSv" method="POST" >
            <fieldset>
                <legend> Nuevo Tramite</legend>

                 <div class="form-group">
                    <label for="tipo">Tipo de tramite:</label>
                    <input type="text" class="form-control" id="tipo" name="tipo" required>
                </div>  
                               
                
                <div class="form-group">
                    <label for="descripcion">Descripcion</label>
                    <input type="text" class="form-control" id="descripcion" name="descripcion" required>
                </div> 
                
                
             <input class="btn btn-primary" style="font-size: 15px; padding: 15px 30px;" type="submit" value="Guardar Tramite">
              

        
          </div>
    </section>
    
        
    <!-- Scripts de Bootstrap -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  </section>
    </body>
</html>

<%
    } else {
        response.sendRedirect("login.jsp");
    }
%>
