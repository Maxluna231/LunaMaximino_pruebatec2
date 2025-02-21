
package com.hackaboss.servlets;

import com.hackaboss.logica.ControladoraLogica;
import com.hackaboss.logica.Tramite;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "BuscarTramiteSv", urlPatterns = {"/BuscarTramiteSv"})
public class BuscarTramiteSv extends HttpServlet {

   ControladoraLogica control = new ControladoraLogica();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String tipo = request.getParameter("tipo");
       Tramite tramite = control.buscaTramite(tipo);
        HttpSession miSesion = request.getSession();
        if (tramite != null) {
            miSesion.setAttribute("tramite", tramite);
            response.sendRedirect("buscarTramite.jsp?mens=Tramite encontrado!");
            miSesion.removeAttribute("ocultar");
        } else {
            response.sendRedirect("buscarTramite.jsp?mens=Tramite no encontrado!");
            miSesion.removeAttribute("ocultar");
        }
    }

    @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        List<Tramite> tramites = control.traerTodosLosTramites();
        HttpSession miSesion = request.getSession();
        miSesion.setAttribute("listaTramites", tramites);
        miSesion.setAttribute("mens", "Lista de todos los Tramites");
        miSesion.setAttribute("ocultar", "ocultar");
        response.sendRedirect("buscarTramite.jsp?mens=Lista de todos los Tramites");
    
}
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
