
package com.hackaboss.logica;

import com.hackaboss.persistencia.ControladoraPersistencia;

public class ControladoraLogica {
    
 ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    public boolean validarAcceso(String email, String password) {
       
        Usuario usuario =  controlPersis.buscarUsuario(email);
        
        if(usuario != null) {
          if(usuario.getEmail().equals(email)) {
              if(usuario.getPassword().equals(password)){
                return true;
              }
          
          }
        }
        return false;
    }
    
}
