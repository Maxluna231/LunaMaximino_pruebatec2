package com.hackaboss.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "GestorTramitesSv", urlPatterns = {"/GestorTramitesSv"})
public class GestorTramitesSv extends HttpServlet {
    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        switch (action) {
            case "alta":
                response.sendRedirect("agregarTramite.jsp");
                break;
            case "editar":
                response.sendRedirect("editarTramite.jsp");
                break;
            case "buscar":
                response.sendRedirect("buscarTramite.jsp");
                break;
            case "borrar":
                response.sendRedirect("eliminarTramite.jsp");
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
