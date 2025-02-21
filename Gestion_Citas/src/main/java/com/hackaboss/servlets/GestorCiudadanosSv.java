package com.hackaboss.servlets;


import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "GestorCiudadanosSv", urlPatterns = {"/GestorCiudadanosSv"})
public class GestorCiudadanosSv extends HttpServlet {
    

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
        String action = request.getParameter("action");

        switch (action) {
            case "alta":
                response.sendRedirect("agregarCiudadano.jsp");
                break;
            case "editar":
                response.sendRedirect("editarCiudadano.jsp");
                break;
            case "buscar":
                response.sendRedirect("buscarCiudadano.jsp");
                break;
            case "borrar":
                response.sendRedirect("eliminarCiudadano.jsp");
                break;
            default:
              
                break;
        }
    }
    


   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
