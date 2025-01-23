
package com.hackaboss.servlets;

import com.hackaboss.logica.ControladoraLogica;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "TramiteSv", urlPatterns = {"/TramiteSv"})
public class TramiteSv extends HttpServlet {
    ControladoraLogica control = new ControladoraLogica();
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String tipoTramite = request.getParameter("tipoTramite");
        String descripcion = request.getParameter("descripcion");
      
        
        control.crearTramite(tipoTramite,descripcion);
       
        //cuando termine el alta, redirija de nuevo al index
        response.sendRedirect("index.jsp");
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
