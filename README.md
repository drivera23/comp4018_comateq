# comp4018_comateq
Database Systems final project

Instrucciones e información:
- Normalmente los equipos están constituidos por tres estudiantes que a diciembre del año pasado no hayan cumplido 15 años. Cada equipo debe estar dirigido por un coordinador que debe pertenecer a una universidad oficial de un país participante. Los equipos deben tener un nombre asociado con la universidad que lo coordina, ejemplo: uprm1001_2022. También se debe dejar registro de su puntuación, año que participó, asociar nombres de los estudiantes participantes, universidad y coordinador.  
- Los estudiantes que forman un equipo pueden estar en escuelas diferentes. De ellos se debe tener registro de su nombre, edad, grado, escuela y estar asociado al coordinador y universidad que lo coordina. 
- El examen a realizarse normalmente es creado por problemas que proponen cada coordinador y consta de 8 problemas de selección múltiple y 4 de contestation libre pero simple (un sólo número o palabra). Se debe dejar registro de cual universidad/coordinador lo propuso. 
- Cada coordinador, del cual se guardarán datos como nombre, email, universidad asociada, debe tener registro de sus problemas propuestos y de los equipos que ha creado cada año. Normalmente un coordinador controla una olimpiada regional, si es así, es posible guardar también el nombre, logo y url de su sitio web. 
- Se define un grupo de administradores de competencia como aquellos encargados de elegir de los problemas propuestos y crear el examen. Estos tendrán acceso a todos los problemas propuestos por los coordinadores. Se debe guardar su nombre, email, universidad, posición dentro de la organización.
- El registro principal de la base de datos está basado por año o momento (puede que se piense hacer mas de una vez al año) que sea haga la competencia. Actualmente solo se realiza el primer sábado de marzo. 
- Cada vez que se realice la competencia las medallas de oro, plata y bronce serán para aquellos equipos con las tres puntuaciones más altas de mayor a menor respectivamente. También se compite por los equipos que participen en cada universidad otorgándoles primera, segunda y tercera posición a a los equipos que por universidad hayan tenido las tres puntuaciones mas altas de mayor a menor respectivamente. Alguien podría pensar en hacer también un ranking por país. 

Especificaciones:
- Montado en csmath.uprm.edu
- Usar el DBMS MySQL. En csmath está la implementación MariaDB y la aplicación web PHPMyAdmin. 
- La base de datos se debe llamar comateq***, donde *** será un número de tres dígitos asignado por el administrador del DBMS. 
- Almacenado en GitHub
- En parejas o individual
- Se debe crear una página sencilla para visualizar, insertar y modificar datos. 
- Presentación a toda la clase de la implementación en 15 minutos en la fecha del examen final marcada por el registrador. 
- En la presentación se deben mostrar al menos 3 consultas a la base de datos relacionados con la competencia. 
- La calificación será bajo rúbrica que tendrá en cuenta, diseño E/R, traducción al modelo relacional, descomposición (3NF, BCNF, etc.) e implementación. 

To-Do List:
- [x] Create To-Do List XD
- [x] E/R Design
- [x] Translation to Relational
- [ ] Decomposition / Normalization (LaTeX file)
- [x] Create DB
- [ ] *(Possibly not done due to server)* Visualization in HTML/JS 
