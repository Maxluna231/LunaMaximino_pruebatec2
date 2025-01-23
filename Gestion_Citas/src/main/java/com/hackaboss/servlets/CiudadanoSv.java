package com.hackaboss.servlets;

import com.hackaboss.logica.Ciudadano;
import com.hackaboss.logica.ControladoraLogica;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "CiudadanoSv", urlPatterns = {"/CiudadanoSv"})
public class CiudadanoSv extends HttpServlet {

    ControladoraLogica control = new ControladoraLogica();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         String busquedaNombre = request.getParameter("busquedaNombre");
        
        // Buscar ciudadanos según el nombre
        List<Ciudadano> listaCiudadanos = control.buscarPorNombre(busquedaNombre);
        
        // Guardar la lista en la sesión
        HttpSession miSesion = request.getSession();
        miSesion.setAttribute("listaCiudadano", listaCiudadanos);
        
        // Redirigir de nuevo a la página index.jsp
        response.sendRedirect("index.jsp");
   
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String dni = request.getParameter("dni");
      
        
        control.crearCiudadano(nombre,dni);
       
        //cuando termine el alta, redirija de nuevo al index
        response.sendRedirect("index.jsp");
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
