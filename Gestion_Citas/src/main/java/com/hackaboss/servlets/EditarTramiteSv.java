
package com.hackaboss.servlets;

import com.hackaboss.logica.ControladoraLogica;
import com.hackaboss.logica.Tramite;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "EditarTramiteSv", urlPatterns = {"/EditarTramiteSv"})
public class EditarTramiteSv extends HttpServlet {

     private final ControladoraLogica control = new ControladoraLogica();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String tipo = request.getParameter("tipo");
        Tramite tramite = control.buscaTramite(tipo);
        HttpSession miSesion = request.getSession();
        if (tramite != null) {
            miSesion.setAttribute("tramite", tramite);
            response.sendRedirect("editarTramite.jsp?mens=Tramite encontrado!");
        } else {
            response.sendRedirect("editarTramite.jsp?mens=Tramite no encontrado!");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String tipo = request.getParameter("tipo");
        String descripcion = request.getParameter("descripcion");
        
        String id = request.getParameter("id");
        
        Tramite tramite = new Tramite();
        tramite.setId(Long.parseLong(id));
        tramite.setTipo(tipo);
        tramite.setDescripcion(descripcion);
        
        try {
            control.modificarTramite(tramite);
        } catch (Exception ex) {
            Logger.getLogger(EditarTramiteSv.class.getName()).log(Level.SEVERE, null, ex);
        }
        HttpSession miSesion = request.getSession(false);
        miSesion.removeAttribute("tramite");
        response.sendRedirect("index.jsp?mens=Tramite Modificado Exitosamente!");

    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
