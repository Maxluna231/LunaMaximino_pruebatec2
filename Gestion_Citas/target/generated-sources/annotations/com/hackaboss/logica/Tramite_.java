package com.hackaboss.logica;

import com.hackaboss.logica.Turno;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2025-02-21T00:16:07")
@StaticMetamodel(Tramite.class)
public class Tramite_ { 

    public static volatile SingularAttribute<Tramite, String> descripcion;
    public static volatile SingularAttribute<Tramite, String> tipo;
    public static volatile ListAttribute<Tramite, Turno> turnos;
    public static volatile SingularAttribute<Tramite, Long> id;
    public static volatile SingularAttribute<Tramite, Boolean> disponible;

}