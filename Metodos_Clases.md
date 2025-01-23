# ControladoraLogica

**ControladoraPersistencia controlPersis = new ControladoraPersistencia();**
 
- Se crea una instancia para llamar ControladoraPersistencia la cual nos sirve para menejar las operaciones por ejemplo crear,buscar y validarel acceso



# ControladoraPersistencia

-  UsuarioJpaController usuJpa = new UsuarioJpaController();
-  CiudadanoJpaController ciudJpa = new CiudadanoJpaController();
-  TramiteJpaController tramJpa = new TramiteJpaController();
- TurnoJpaController turJpa = new TurnoJpaController();

- Se crean las intancias de las clases que se crean en la parte de logica esto nos sirve para comunicarnos entre las clases y la base datos y crear metodos 
# Ejemplo

#    public List<Ciudadano> traerCiudadano() {  return ciudJpa.findCiudadanoEntities();}


## Servlets

- Se crean por defecto los metodos doGet y doPost

# doGet

- Este método se ejecuta cuando se recibe una solicitud HTTP GET .

# doPost 

-  Este método se ejecuta cuando se recibe una solicitud HTTP POST. En este caso, se utiliza para agregar registros .

- Guarda los cambios en la base de datos.


