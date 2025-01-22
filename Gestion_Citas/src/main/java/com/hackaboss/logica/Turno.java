
package com.hackaboss.logica;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class Turno implements Serializable {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String numero;
    private String fecha;
    private String estado;
    
     @ManyToOne
     @JoinColumn(name = "usuario_id") // Foreign key en la tabla Turno
     private Usuario usuario;

    @ManyToOne
    @JoinColumn(name = "tramite_id") // Relación con Tramite
    private Tramite tramite;

     
    public Turno() {
    }

    public Turno(String numero, String fecha, String estado, Usuario usuario) {
        this.numero = numero;
        this.fecha = fecha;
        this.estado = estado;
        this.usuario = usuario;
    }

    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFeche(String fecha) {
        this.fecha = fecha;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

  

   

    
}
