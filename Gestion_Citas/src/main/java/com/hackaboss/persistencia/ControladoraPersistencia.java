
package com.hackaboss.persistencia;

import com.hackaboss.logica.Usuario;


public class ControladoraPersistencia {
    
    UsuarioJpaController usuJpa = new UsuarioJpaController();
    
    
    public Usuario buscarUsuario(String email){
    return usuJpa.findUserByEmail(email);
    
    }
}
