package com.hackaboss.logica;

import com.hackaboss.logica.Ciudadano;
import com.hackaboss.logica.Tramite;
import com.hackaboss.logica.Usuario;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2025-01-23T06:20:19")
@StaticMetamodel(Turno.class)
public class Turno_ { 

    public static volatile SingularAttribute<Turno, String> fecha;
    public static volatile SingularAttribute<Turno, String> estado;
    public static volatile SingularAttribute<Turno, String> numero;
    public static volatile SingularAttribute<Turno, Tramite> tramite;
    public static volatile SingularAttribute<Turno, Usuario> usuario;
    public static volatile SingularAttribute<Turno, Long> id;
    public static volatile SingularAttribute<Turno, Ciudadano> ciudadano;

}