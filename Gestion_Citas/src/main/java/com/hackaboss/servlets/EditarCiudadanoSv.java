
package com.hackaboss.servlets;

import com.hackaboss.logica.Ciudadano;
import com.hackaboss.logica.ControladoraLogica;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "EditarCiudadanoSv", urlPatterns = {"/EditarCiudadanoSv"})
public class EditarCiudadanoSv extends HttpServlet {

   private final ControladoraLogica control = new ControladoraLogica();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String dni = request.getParameter("dni");
        Ciudadano ciudadano = control.buscarCiudadano(dni);
        HttpSession miSesion = request.getSession();
        if (ciudadano != null) {
            miSesion.setAttribute("ciudadano", ciudadano);
            response.sendRedirect("editarCiudadano.jsp?mens=Ciudadano encontrado!");
        } else {
            response.sendRedirect("editarCiudadano.jsp?mens=Ciudadano no encontrado!");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String dni = request.getParameter("dni");
        String id = request.getParameter("id");
        Ciudadano ciudadano = new Ciudadano();
        
        ciudadano.setId(Long.parseLong(id));
        ciudadano.setNombre(nombre);
        ciudadano.setDni(dni);
        
        control.modificarCiudadano(ciudadano);
        HttpSession miSesion = request.getSession(false);
        miSesion.removeAttribute("ciudadano");
        response.sendRedirect("index.jsp?mens=Ciudadano Modificado Exitosamente!");
    }

    @Override
    public String getServletInfo() {
         return "Short description";
    }// </editor-fold>

}