package com.hackaboss.servlets;

import com.hackaboss.logica.Ciudadano;
import com.hackaboss.logica.ControladoraLogica;
import com.hackaboss.logica.Tramite;
import com.hackaboss.logica.Turno;
import com.hackaboss.logica.Usuario;
import java.io.IOException;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "AgregarTurnoSv", urlPatterns = {"/AgregarTurnoSv"})
public class AgregarTurnoSv extends HttpServlet {

     ControladoraLogica control = new ControladoraLogica();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
        
      
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession miSesion = request.getSession(false);

        String usuarioEmail = (String) miSesion.getAttribute("email");
        String dni = request.getParameter("ciudadano");
        Long tramiteId = Long.parseLong(request.getParameter("tramite"));
        LocalDate fecha = LocalDate.parse(request.getParameter("fecha"));

        Usuario usuario = control.buscaUsuario(usuarioEmail);
        Ciudadano ciudadano = control.buscarCiudadano(dni);
        Tramite tramite = control.buscarTramitePorId(tramiteId);
        
         Turno turno = new Turno(fecha, "Turno creado", usuario, tramite, ciudadano, Turno.EstadoTurno.EN_ESPERA);
          control.crearTurno(turno);
          response.sendRedirect("index.jsp?mens=Turno creado exitosamente!");
       
    }

    @Override
    public String getServletInfo() {
      return "Short description";
    }// </editor-fold>

}
