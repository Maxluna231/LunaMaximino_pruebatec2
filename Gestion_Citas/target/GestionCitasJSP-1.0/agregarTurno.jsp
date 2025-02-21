<%@page import="com.hackaboss.logica.Ciudadano"%>
<%@page import="com.hackaboss.logica.Tramite"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Turno</title>
        <link rel="stylesheet" href="./css/principal.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
           <header class="header">
        <%
            HttpSession miSesion = request.getSession(false);
           
            List<Ciudadano> listaCiudadanos = (List<Ciudadano>) miSesion.getAttribute("listaCiudadanos");
            List<Tramite> listaTramites = (List<Tramite>) miSesion.getAttribute("listaTramites");
            String usu = (String) request.getSession().getAttribute("email");
            if (usu != null) {  
        %>
         <a href="login.jsp" class="logo">Bienvenido 
        <span><%=usu%></span>
        
    </a>
        
 <i class="bx bx-menu" id="menu-icon"></i>

</header>
       
   <section class="home" id="home">    
    <div class="home-content">
  <body style="background-color: #456;"> 
      
    <div class="container mt-4">
        <h1>Registrar Turno</h1>
       <form action="AgregarTurnoSv" method="POST">
  <div class="form-group">
    <label for="ciudadano" class="form-label">Ciudadano:</label>
    <select class="form-select" id="ciudadano" name="ciudadano" required style="font-size: 20px; padding: 10px; width: 100%;">
      <% 
        if (listaCiudadanos != null) {
          for (Ciudadano ciudadano : listaCiudadanos) {
            out.println("<option value=\"" + ciudadano.getDni() + 
            "\">" + ciudadano.getNombre() 
            + "</option>");
          }
        }
      %>
    </select>
  </div>

  <div class="form-group">
    <label for="tramite">Trámite:</label><br>
    <select id="tramite" name="tramite" required style="font-size: 20px; padding: 10px; width: 100%;">
      <% 
        if (listaTramites != null) {
          for (Tramite tramite : listaTramites) {
            out.println("<option value=\"" + tramite.getId()
            + "\">" + tramite.getTipo() 
            + "</option>");
          }
        }
      %>
    </select>
  </div>

  <div class="form-group">
    <label for="fecha">Fecha:</label><br>
    <input type="date" id="fecha" name="fecha" required style="font-size: 20px; padding: 10px; width: 100%;"><br><br>
  </div>

  <input class="btn btn-primary" style="font-size: 15px; padding: 15px 30px;" type="submit" value="Crear Turno">
</form>

    
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
