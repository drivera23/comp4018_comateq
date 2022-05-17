
<!--Documento principal del proyecto, contiene el framework bonito de Bootstrap
y los dos botones que guian el flujo del programa -->

<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!-- from local -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.8.1/html2pdf.bundle.min.js"
     integrity= "sha512-vDKWohFHe2vkVWXHp3tKvIxxXg0pJxeid5eo+UjdjME3DBFBn2F8yWOE0XmiFcFbXxrEOR1JriWEno5Ckpn15A=="
     crossorigin="anonymous"> </script>

<!--Titulo y estilismo basico -->
<head>
  <title>DB Systems</title>
</head>

<body style="background-color: #DFCFBE;">

<h1 style="text-align: center;"> Estudiante Table </h1>

<div style= "text-align: center;"> 

    <h3 style="text-align: center;"> Inserta data! </h3>

    <!-- Aqui se crea el FORM para recoger informacion a insertar -->
    <form method="post" style="margin: auto; width: 220px;">
    Nombre: <br><input type="text" name="nameP"><br>
    Apellido Paterno: <input type="text" name="nameAP"><br>
    Apellido Materno: <input type="text" name="nameAM"><br>
    Fecha nacimiento (YYYY-MM-DD): <input type="text" name="DOB"><br>
    Escuela: <br><input type="text" name="school"><br>
    Grado: <br><input type="text" name="grade"><br>
    Genero: <br><input type="text" name="Gender"><br>
    Edad: <br><input type="text" name="age"><br>
    <br><input type="submit" name = "Insert1">
    </form>

    <div>
        <!-- Aqui PHP se encarga de entrar al servidor con los credenciales y accede los campos dados -->
    <?php
        if (isset($_POST["Insert1"])) {
            $esName = $_POST["nameP"];
            $esAP = $_POST["nameAP"];
            $esAM = $_POST["nameAM"];
            $esDOB = $_POST["DOB"];
            $esGrado = $_POST["grade"];
            $esAge = $_POST["age"];
            $esGen = $_POST["Gender"];
            $esSchool = $_POST["school"];

            // -------------------- //
            $servername = "*";
            $username = "*";
            $password = "*";
            $dbname = "*";
                
            // Se establece la conexion
            $conn = new mysqli($servername, $username, $password, $dbname);
            
            if ($conn->connect_error) {
                die("Connection failed: " 
                    . $conn->connect_error);
            }

            // Se realiza las subconsultas con su ID para no tener duplicidades.
            $sub = "SELECT MAX(idEstudiante) AS ID FROM Estudiante";
            $res = $conn->query($sub);
            $max = $res->fetch_assoc();
            $id = ((int)$max["ID"]) + 1;
            // se inserta
            $sql = "INSERT INTO Estudiante (idEstudiante,NombreP,ApellidoP,ApellidoM,DOB,Escuela,Grado,Género,Edad) VALUES ('$id','$esName','$esAP','$esAM','$esDOB','$esSchool','$esGrado','$esGen','$esAge')";

            if ($conn->query($sql) === TRUE) {
                echo "record inserted successfully!";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        }
    ?>
    </div>
</div>

<!--  -->

<div style= "text-align: center;"> 
    <h3 style="text-align: center;"> Modifica data! </h3>

    <!-- Aqui se crea el FORM para recoger informacion a modificar -->
    <form method="post" style="margin: auto; width: 220px;">
    Nombre del Estudiante: <br><input type="text" name="nameP"><br>
    Apellido Paterno del Estudiante: <input type="text" name="nameAP"><br>
    Apellido Materno del Estudiante: <input type="text" name="nameAM"><br>
    Fecha nacimiento (YYYY-MM-DD): <input type="text" name="DOB"><br>
    Nueva Escuela: <br><input type="text" name="newschool"><br>
    Nuevo Grado: <br><input type="text" name="newgrade"><br>
    <br><input type="submit" name = "Insert2">
    </form>

    <div>
        <!-- Aqui PHP se encarga de entrar al servidor con los credenciales y accede los campos dados -->
    <?php
        if (isset($_POST["Insert2"])) {
            $esName = $_POST["nameP"];
            $esAP = $_POST["nameAP"];
            $esAM = $_POST["nameAM"];
            $esDOB = $_POST["DOB"];
            $esGrado = $_POST["newgrade"];
            $esSchool = $_POST["newschool"];


            $servername = "*";
            $username = "*";
            $password = "*";
            $dbname = "*";
            // Se establece la conexion
            $conn = new mysqli($servername, $username, $password, $dbname);
            
            if ($conn->connect_error) {
                die("Connection failed: " 
                    . $conn->connect_error);
            }

            // se modifica
            $sql = "UPDATE Estudiante 
            SET Escuela = '$esSchool', Grado = '$esGrado'
            WHERE NombreP = '$esName' AND ApellidoP = '$esAP' AND ApellidoM = '$esAM' AND DOB='$esDOB'";

            if ($conn->query($sql) === TRUE) {
                echo "record inserted successfully!";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        }
    ?>
    </div>
</div>

<!--  -->

<div style= "text-align: center; margin-top: 5%;"> 

    <h3 style="text-align: center;"> Observe la data! </h3>

    <!-- Aqui se crea el FORM para despliegar -->
    <input type="submit" name="Show" value ="Demuestra Estudiantes">
    </form>

    <!-- Aqui PHP se encarga de entrar al servidor con los credenciales y accede los campos dados -->
    <div>
        <?php
            if (isset($_POST["Show"])) {

                $servername = "*";
                $username = "*";
                $password = "*";
                $dbname = "*";

                // Se establece la conexion
                $conn = new mysqli($servername, $username, $password, $dbname);
                
                if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
                }
                
                $sql = "SELECT * FROM Estudiante";
                $result = $conn->query($sql);
                
                // se despliege
                if ($result->num_rows > 0) {
                    echo "<h4> Los Estudiantes son: </h4>";
                    
                    while($row = $result->fetch_assoc()) {
                        echo "<br> ". $row["ApellidoP"]. " ". $row["ApellidoM"]. ", ". $row["NombreP"]. " | Age:". $row["Edad"]. ", ". $row["Escuela"].  "<br>";
                    }
                    echo "<br><br>";
                } else {
                    echo "0 results";
                }
                
                $conn->close();
            }
        ?>
    </div>

</div>


</body>
</html>

