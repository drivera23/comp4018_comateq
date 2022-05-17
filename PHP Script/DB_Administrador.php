
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

<h1 style="text-align: center;"> Administrador Table </h1>

<div style= "text-align: center;"> 

    <h3 style="text-align: center;"> Inserta data! </h3>

    <form method="post" style="margin: auto; width: 220px;">
    Nombre: <br><input type="text" name="nameP"><br>
    Apellido Paterno: <input type="text" name="nameAP"><br>
    Apellido Materno: <input type="text" name="nameAM"><br>
    E-mail: <br><input type="text" name="email"><br>
    Posición: <input type="text" name="Pos"><br>
    Genero: <br><input type="text" name="Gender"><br>
    <br><input type="submit" name = "Insert1">
    </form>

    <div>
    <?php
        if (isset($_POST["Insert1"])) {
            $adminName = $_POST["nameP"];
            $adminAP = $_POST["nameAP"];
            $adminAM = $_POST["nameAM"];
            $adminEmail = $_POST["email"];
            $adminPos = $_POST["Pos"];
            $adminGen = $_POST["Gender"];

            // -------------------- //
            $servername = "*";
            $username = "*";
            $password = "*";
            $dbname = "*";
               
            $conn = new mysqli($servername, $username, $password, $dbname);
           
            if ($conn->connect_error) {
                die("Connection failed: " 
                    . $conn->connect_error);
            }

            $sub = "SELECT MAX(idAdministrador) AS ID FROM Administrador";
            $res = $conn->query($sub);
            $max = $res->fetch_assoc();
            $id = ((int)$max["ID"]) + 1;
            $sql = "INSERT INTO Administrador (idAdministrador,NombreP,ApellidoP,ApellidoM,Email,Posición,Género) VALUES ('$id','$adminName','$adminAP','$adminAM','$adminEmail','$adminPos','$adminGen')";

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

    <form method="post" style="margin: auto; width: 220px;">
    Nombre: <br><input type="text" name="nameP"><br>
    Nombre Nuevo: <br><input type="text" name="namePnew"><br>
    E-mail: <br><input type="text" name="email"><br>
    E-mail Nuevo: <br><input type="text" name="emailNew"><br>
    Posición: <input type="text" name="Pos"><br>
    Posición Nueva: <br><input type="text" name="PosNew"><br>
    <br><input type="submit" name = "Insert2">
    </form>

    <div>
    <?php
        if (isset($_POST["Insert2"])) {
            $adminName = $_POST["nameP"];
            $adminNewName = $_POST["namePnew"];
            $adminEmailNew = $_POST["emailNew"];
            $adminEmail = $_POST["email"];
            $adminPos = $_POST["Pos"];
            $adminPosNew = $_POST["PosNew"];

            // --------------------//
            $servername = "*";
            $username = "*";
            $password = "*";
            $dbname = "*";

            $conn = new mysqli($servername, $username, $password, $dbname);
    
            if ($conn->connect_error) {
                die("Connection failed: " 
                    . $conn->connect_error);
            }

            $sql = "UPDATE Administrador 
            SET NombreP = '$adminNewName', Email = '$adminEmailNew', Posición = '$adminPosNew' 
            WHERE NombreP = '$adminName' AND Email = '$adminEmail' AND Posición = '$adminPos' ";

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

<div style= "text-align: center; margin-top: 2%;"> 

    <h3 style="text-align: center;"> Observe la data! </h3>

    <form method="post">
    <input type="submit" name="Show" value ="Demuestra Admins">
    </form>

    <div>
        <?php
            if (isset($_POST["Show"])) {

                $servername = "*";
                $username = "*";
                $password = "*";
                $dbname = "*";
            
                $conn = new mysqli($servername, $username, $password, $dbname);
  
                if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
                }
                
                $sql = "SELECT * FROM Administrador";
                $result = $conn->query($sql);
                
                if ($result->num_rows > 0) {
                    echo "<h4> Los Administradores son: </h4>";
                    
                    while($row = $result->fetch_assoc()) {
                        echo "<br> ". $row["ApellidoP"]. " ". $row["ApellidoM"]. ", ". $row["NombreP"]. " | ". $row["Posición"]. " : ". $row["Email"].  "<br>";
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

