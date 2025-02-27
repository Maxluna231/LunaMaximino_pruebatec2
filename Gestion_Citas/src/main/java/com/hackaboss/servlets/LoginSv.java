
package com.hackaboss.servlets;

import com.hackaboss.logica.ControladoraLogica;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "LoginSv", urlPatterns = {"/LoginSv"})
public class LoginSv extends HttpServlet {

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
            String email = request.getParameter("email");
        String password = request.getParameter("password");
        String animacion = request.getParameter("animacion");

        boolean autorizado = control.validarAcceso(email, password);

        if (autorizado) {
            HttpSession miSesion = request.getSession();
            miSesion.setAttribute("email", email);

            String cssFile = "si".equals(animacion) ? "styles.css" : "stylesLight.css";
            miSesion.setAttribute("css", cssFile);

            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("login.jsp?mens=Credenciales invalidas!");
        }
    }
   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
