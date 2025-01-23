## Aplicación de Gestión de Turnos/Citas

## Descripción

**La aplicación cuenta con un sistema de login con validaciones de correo y contraseña. Como menú de inicio, se solicita crear un ciudadano. En la parte superior, se encuentran las siguientes opciones: agregar trámites para cada ciudadano registrado, registrar un turno, y listar turnos con opciones para filtrarlos. La aplicación tiene relaciones entre las siguientes entidades: usuario, ciudadano, turno y trámite.**

## Requisitos

- Java Development Kit (JDK) 17 o superior
- Base de datos MySQL
- XAMPP
- Apache Tomcat 9.0.98
- IDE NetBeans 17

## Configuración
- Clonar repositorio-
 git clone https://github.com/Maxluna231/LunaMaximino_pruebatec2.git
- Abrir el IDE NetBeans.
- Seleccionar "Importar proyecto".
- En el apartado services crear un base de datos llamada turnero
- Dentro del mismo apartado buscar servers y crear uno con tomcat

## Configurar la base datos
- Actualizar el archivo persistence.xml con la configuracion adecuada
- Persistence Unit Name CitasPU
- Base datos: Turnero
- Desde el navegador
- Encender XAMPP y, en el navegador, abrir localhost/3006. Esto debería cargar la página de phpMyAdmin.
- Crear una base de datos con el nombre turnero.

## Ejecucion del proyecto
- Ejecutar desde cualquier archivo JSP dentro de la carpeta WEB Pages del proyecto, o desde la carpeta principal. Hacer clic derecho sobre el archivo y seleccionar la opción Run.


## Supuestos

**Integridad de Datos**

- La tabla de Turno debe tener ciudadano_id, usuario_id, tramite_id para asi poder relacionarlar y poder visualizar y selecionar un nombre de ciudadano
  y el correo del usuario que le esta otorgando un turno y por ultimo la descripcion del tramite.

- En cada las interfaces JSP se le agrego a los input de los formularios el atributo required para no mandar datos vacios hacia la base de datos


