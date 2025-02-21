package com.hackaboss.servlets;

import com.hackaboss.logica.Ciudadano;
import com.hackaboss.logica.ControladoraLogica;
import javax.persistence.PersistenceException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AltaCiudadanoSv", urlPatterns = {"/AltaCiudadanoSv"})
public class AgregarCiudadanoSv extends HttpServlet {

   ControladoraLogica control = new ControladoraLogica();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
        
      
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String dni = request.getParameter("dni");

        Ciudadano ciudadano = new Ciudadano(nombre, dni, null, true);

       
            control.crearCiudadano(ciudadano);
            response.sendRedirect("index.jsp?mens=Ciudadano Creado Exitosamente!"); 
        }
    

    @Override
    public String getServletInfo() {
        return "Servlet para dar de alta un nuevo Ciudadano";
    }
}
