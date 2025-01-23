## Aplicación de gestión de turnos/citas

## Descripción

**La aplicación Cuenta con un login con validaciones de correo y contraseña, como menu de inicio se pide crear un ciudadano en la parte superior tiene las siguiente opciones de agregar tramites para cada 
cada ciudadano registrado, Continuamente otra opción para registrar un turno, Por ultimo hay una menu para ListarTurno y Filtrarlos, Tiene relaciones entre si las cuales son usuario,ciudadano,turno,tramite.**

## Requisitos

Java Development Kit (JDK) 17 o superior

Base de datos MySQL

XAMMP

TOOMCAT

IDE Netbeans 17

## Configuracion

- 1.clonar repositorio-
 git clone https://github.com/usuario/repo-gestion-empleados.git
- 2.Importar el proyecto en el IDE:
- Abrir el IDE.

- Seleccionar "Importar proyecto".

## Configurar la base datos
- Actualizar el archivo persistence.xml con la configuracion adecuada
- Persistence Unit Name CitasPU
- Base datos: Turnero


## Ejecucion del proyecto
- Ejecutar desde algun JSP dentro del proyecto WEB Pages o desde la carpeta Principal hacer click sobre el archivo y seleccionar Run


## Supuestos

**Integridad de Datos**

- La tabla de Turno debe tener ciudadano_id, usuario_id, tramite_id para asi poder relacionarlar y poder visualizar y selecionar un nombre de ciudadano
- y el correo del usuario que le esta otorgando un turno y por ultimo la descripcion del tramite.

- En cada las interfaces JSP se le agrego a los input de los formularios el atributo required para no mandar datos vacios hacia la base de datos

- Base de Datos Inicializada:

- La base de datos debe estar previamente creada y configurada.

