package com.hackaboss.logica;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.*;

@Entity
public class Tramite implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(nullable = false, unique = true)
    private String tipo;

    @Column(nullable = false, length = 500)
    private String descripcion;

    @OneToMany(mappedBy = "elTramite", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Turno> turnos = new ArrayList<>();

    @Column(nullable = false)
    private boolean disponible;

    public Tramite() {
    }

    public Tramite(long id, String tipo, String descripcion, List<Turno> turnos, boolean disponible) {
        this.id = id;
        this.tipo = tipo;
        this.descripcion = descripcion;
        this.turnos = turnos != null ? turnos : new ArrayList<>();
        this.disponible = disponible;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

   

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public List<Turno> getTurnos() {
        return turnos;
    }

    public void setTurnos(List<Turno> turnos) {
        this.turnos = turnos != null ? turnos : new ArrayList<>();
    }

    public boolean isDisponible() {
        return disponible;
    }

    public void setDisponible(boolean disponible) {
        this.disponible = disponible;
    }

  
}
