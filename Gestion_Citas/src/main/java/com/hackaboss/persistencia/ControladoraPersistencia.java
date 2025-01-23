package com.hackaboss.persistencia;

import com.hackaboss.logica.Ciudadano;

import com.hackaboss.logica.Tramite;
import com.hackaboss.logica.Turno;
import com.hackaboss.logica.Usuario;
import com.hackaboss.persistencia.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ControladoraPersistencia {
    
  
    UsuarioJpaController usuJpa = new UsuarioJpaController();
    CiudadanoJpaController ciudJpa = new CiudadanoJpaController();
    TramiteJpaController tramJpa = new TramiteJpaController();
    TurnoJpaController turJpa = new TurnoJpaController();
    
   
    
 public void crearCiudadano(Ciudadano ciu) {
       
        ciudJpa.create(ciu);
    }
        

    public List<Ciudadano> traerCiudadano() { 
        return ciudJpa.findCiudadanoEntities();
    }

    public List<Ciudadano> buscarPorNombre(String busquedaNombre) {
        return ciudJpa.findCiudadanoByNombre(busquedaNombre);
    }

    
    public void eliminarCiudadano(Long id) {
        try {
            ciudJpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

     public Ciudadano traerCiudadano(Long id) {
        return ciudJpa.findCiudadano(id);
    }

    public void editarCiudadano(Ciudadano ciu) {
        try {
            ciudJpa.edit(ciu);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Usuario buscarUsuario(String email) {
        return usuJpa.findUserByEmail(email);
    }

    public void crearTramite(Tramite tram) {
         tramJpa.create(tram);
    }

    public void crearTurno(Turno tur) {
        turJpa.create(tur);
    }

   

    
    
}
