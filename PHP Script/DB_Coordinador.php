
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

<h1 style="text-align: center;"> Coordinador Table </h1>

<div style= "text-align: center;"> 

    <h3 style="text-align: center;"> Inserta data! </h3>

    <!-- Aqui se crea el FORM para recoger informacion a insertar -->
    <form method="post" style="margin: auto; width: 220px;">
    ID Universidad: <br><input type="text" name="uni"><br>
    Nombre: <br><input type="text" name="nameP"><br>
    Apellido Paterno: <input type="text" name="nameAP"><br>
    Apellido Materno: <input type="text" name="nameAM"><br>
    Telefono: <input type="text" name="Telefono"><br>
    E-mail: <br><input type="text" name="email"><br>
    Genero: <br><input type="text" name="Gender"><br>
    <br><input type="submit" name = "Insert1">
    </form>

    <div>
        <!-- Aqui PHP se encarga de entrar al servidor con los credenciales y accede los campos dados -->
    <?php
        if (isset($_POST["Insert1"])) {
            $adminName = $_POST["nameP"];
            $adminAP = $_POST["nameAP"];
            $adminAM = $_POST["nameAM"];
            $adminEmail = $_POST["email"];
            $adminIDUNI = $_POST["uni"];
            $adminTel = $_POST["Telefono"];
            $adminGen = $_POST["Gender"];

            // -------------------- //
            // Se establece la conexion
            $servername = "*";
            $username = "*";
            $password = "*";
            $dbname = "*";
                
            $conn = new mysqli($servername, $username, $password, $dbname);
          
            if ($conn->connect_error) {
                die("Connection failed: " 
                    . $conn->connect_error);
            }

            // Se realiza las subconsultas con su ID para no tener duplicidades.
            $sub = "SELECT MAX(idCoordinador) AS ID FROM Coordinador";
            $res = $conn->query($sub);
            $max = $res->fetch_assoc();
            $id = ((int)$max["ID"]) + 1;
            // se inserta
            $sql = "INSERT INTO Coordinador (idCoordinador,idUniversidad,NombreP,ApellidoP,ApellidoM,Telefono,Email,Género) VALUES ('$id','$adminIDUNI','$adminName','$adminAP','$adminAM','$adminTel','$adminEmail','$adminGen')";

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
    Nombre: <br><input type="text" name="nameP"><br>
    Nombre Nuevo: <br><input type="text" name="namePnew"><br>
    E-mail: <br><input type="text" name="email"><br>
    E-mail Nuevo: <br><input type="text" name="emailNew"><br>
    Telefono: <input type="text" name="Pos"><br>
    Telefono Nuevo: <br><input type="text" name="PosNew"><br>
    <br><input type="submit" name = "Insert2">
    </form>

    <div>
        <!-- Aqui PHP se encarga de entrar al servidor con los credenciales y accede los campos dados -->
    <?php
        if (isset($_POST["Insert2"])) {
            $adminName = $_POST["nameP"];
            $adminNewName = $_POST["namePnew"];
            $adminEmailNew = $_POST["emailNew"];
            $adminEmail = $_POST["email"];
            $adminTel = $_POST["Pos"];
            $adminTelNew = $_POST["PosNew"];

            // --------------------//
            // Se establece la conexion
            $servername = "*";
            $username = "*";
            $password = "*";
            $dbname = "*";

            $conn = new mysqli($servername, $username, $password, $dbname);
           
            if ($conn->connect_error) {
                die("Connection failed: " 
                    . $conn->connect_error);
            }

            // Se modifica dado las entradas.
            $sql = "UPDATE Coordinador
            SET NombreP = '$adminNewName', Email = '$adminEmailNew', Telefono = '$adminTelNew' 
            WHERE NombreP = '$adminName' AND Email = '$adminEmail' AND Telefono = '$adminTel' ";

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

    <!-- Aqui se crea el FORM para desplieugar informacion -->
    <form method="post">
    <input type="submit" name="Show" value ="Demuestra Coordinadores">
    </form>

    <div>
        <!-- Aqui PHP se encarga de entrar al servidor con los credenciales y accede los campos dados -->
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
                
                $sql = "SELECT * FROM Coordinador";
                $result = $conn->query($sql);
                
                // se desplieuga
                if ($result->num_rows > 0) {
                    echo "<h4> Los Coordinadores son: </h4>";
                    
                    while($row = $result->fetch_assoc()) {
                        echo "<br> ". $row["ApellidoP"]. " ". $row["ApellidoM"]. ", ". $row["NombreP"]. " | ". $row["Telefono"]. " : ". $row["Email"].  "<br>";
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

