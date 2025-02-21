/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.hackaboss.servlets;

import com.hackaboss.logica.ControladoraLogica;
import com.hackaboss.logica.Tramite;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author lunad
 */
@WebServlet(name = "EliminarTramiteSv", urlPatterns = {"/EliminarTramiteSv"})
public class EliminarTramiteSv extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
        private final ControladoraLogica control = new ControladoraLogica();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String tipo = request.getParameter("tipo");
        Tramite tramite = control.buscaTramite(tipo);
        HttpSession miSesion = request.getSession();
        if (tramite != null) {
            miSesion.setAttribute("tramite", tramite);
            response.sendRedirect("eliminarTramite.jsp?mens=Tramite encontrado!"); 
        } else {
            response.sendRedirect("eliminarTramite.jsp?mens=Tramite no encontrado!");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

            String idString = request.getParameter("id");
            long id = Long.parseLong(idString);
            control.eliminaTramite(id);            
            response.sendRedirect("index.jsp?mens=Tramite eliminado con Exito!");
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
