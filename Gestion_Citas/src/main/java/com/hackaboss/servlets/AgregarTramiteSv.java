package com.hackaboss.servlets;

import com.hackaboss.logica.ControladoraLogica;
import com.hackaboss.logica.Tramite;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AgregarTramiteSv", urlPatterns = {"/AgregarTramiteSv"})
public class AgregarTramiteSv extends HttpServlet {

     ControladoraLogica control = new ControladoraLogica();

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
        
      
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String tipo = request.getParameter("tipo");
        String descripcion = request.getParameter("descripcion");

        Tramite tramite = new Tramite();
        tramite.setTipo(tipo);
        tramite.setDescripcion(descripcion);

        
            control.crearTramite(tramite);
            response.sendRedirect("index.jsp?mens=Tramite creado exitosamente!");
    }

    @Override
    public String getServletInfo() {
        return "Servlet para alta de tramites";
    }
}
