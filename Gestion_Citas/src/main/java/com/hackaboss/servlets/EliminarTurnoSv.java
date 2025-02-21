
package com.hackaboss.servlets;

import com.hackaboss.logica.ControladoraLogica;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "EliminarTurnoSv", urlPatterns = {"/EliminarTurnoSv"})
public class EliminarTurnoSv extends HttpServlet {
ControladoraLogica control = new ControladoraLogica();


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        
          String turnoIdParam = request.getParameter("turno");

        try {
            long turnoId = Long.parseLong(turnoIdParam);
            control.eliminarTurno(turnoId);
            response.sendRedirect("GestorTurnosSv?action=baja&mens=Turno eliminado exitosamente!");
        } catch (NumberFormatException e) {
            response.sendRedirect("GestorTurnosSv?action=baja&mens=Error: ID de turno invalido.");
        }
    
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
