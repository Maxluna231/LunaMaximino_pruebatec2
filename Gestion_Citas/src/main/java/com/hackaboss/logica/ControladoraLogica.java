package com.hackaboss.logica;

import com.hackaboss.persistencia.CiudadanoJpaController;
import com.hackaboss.persistencia.ControladoraPersistencia;
import com.hackaboss.persistencia.TramiteJpaController;
import com.hackaboss.persistencia.UsuarioJpaController;
import java.util.ArrayList;
import java.util.List;

public class ControladoraLogica {

    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    public void crearCiudadano(String nombre, String dni) {
        Ciudadano ciud = new Ciudadano (nombre,dni); 
        controlPersis.crearCiudadano(ciud);
    }
    
    
    public List<Tramite> obtenerTramites() {
    TramiteJpaController tramiteController = new TramiteJpaController();
    return tramiteController.findTramiteEntities();  // o el método que recupere trámites desde la base de datos
}

public List<Ciudadano> obtenerCiudadanos() {
    CiudadanoJpaController ciudadanoController = new CiudadanoJpaController();
    return ciudadanoController.findCiudadanoEntities();  // o el método que recupere ciudadanos desde la base de datos
}
    
   public List<Usuario> obtenerUsuarios() {
    // Suponiendo que tienes una clase UsuarioJpaController que maneja la persistencia
    UsuarioJpaController usuarioController = new UsuarioJpaController();
    return usuarioController.findUsuarioEntities();  // o el método que retorne los usuarios
}

    public List<Ciudadano> buscarPorNombre(String busquedaNombre) { 
        
        List<Ciudadano> ciudadanosCoincidentes = new ArrayList<>();
       
       
      ciudadanosCoincidentes = controlPersis.buscarPorNombre(busquedaNombre);
        
        return ciudadanosCoincidentes;
    }

   

    public Ciudadano buscarCiudadano(Long id) {
            return controlPersis.traerCiudadano(id);
    }

    public void editarCiudadano(Ciudadano ciud) {
        controlPersis.editarCiudadano(ciud);
    }

    public boolean validarAcceso(String email, String password) {
        
        Usuario usu = controlPersis.buscarUsuario(email);

        if (usu != null) {
            if (usu.getEmail().equals(email)) {
                if (usu.getPassword().equals(password)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void crearTramite(String tipoTramite, String descripcion) {
        Tramite tram = new Tramite (tipoTramite,descripcion); 
        controlPersis.crearTramite(tram);
    }

    

   

    
    
}
