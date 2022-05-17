
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

<h1 style="text-align: center;"> Equipo Table </h1>

<div style= "text-align: center;"> 

    <h3 style="text-align: center;"> Inserta data! </h3>

    <form method="post" style="margin: auto; width: 220px;">
    ID Equipo: <br><input type="text" name="teamName"><br>
    Año: <br><input type="text" name="year"><br>
    ID Estudiante 1: <input type="text" name="ides1"><br>
    ID Estudiante 2: <br><input type="text" name="ides2"><br>
    ID Estudiante 3: <input type="text" name="ides3"><br>
    ID Coordinador: <br><input type="text" name="idcoor"><br>
    <br><input type="submit" name = "Insert1">
    </form>

    <div>
    <?php
        if (isset($_POST["Insert1"])) {
            $teamName = $_POST["teamName"];
            $teamYear = $_POST["year"];
            $teamID1 = $_POST["ides1"];
            $teamID2 = $_POST["ides2"];
            $teamID3 = $_POST["ides3"];
            $teamIDC = $_POST["idcoor"];

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

            $sub = "SELECT MAX(ID) AS ID FROM Equipo";
            $res = $conn->query($sub);
            $max = $res->fetch_assoc();
            $id = ((int)$max["ID"]) + 1;
            $sql = "INSERT INTO Equipo (ID,idEquipo,Año,idEstudiante1,idEstudiante2,idEstudiante3,idCoordinador) VALUES ('$id','$teamName','$teamYear','$teamID1','$teamID2','$teamID3','$teamIDC')";

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
    Nombre del Equipo: <br><input type="text" name="name"><br>
    Año de participación del Equipo: <br><input type="text" name="year"><br>
    Nuevo Año de participación del Equipo: <br><input type="text" name="yearNew"><br>
    <br><input type="submit" name = "Insert2">
    </form>

    <div>
    <?php
        if (isset($_POST["Insert2"])) {
            $par = $_POST["name"];
            $year = $_POST["year"];
            $yearNew = $_POST["yearNew"];
            $servername = "*";
            $username = "*";
            $password = "*";
            $dbname = "*";
               
            $conn = new mysqli($servername, $username, $password, $dbname);
            
            if ($conn->connect_error) {
                die("Connection failed: " 
                    . $conn->connect_error);
            }

            $sql = "UPDATE Equipo
             SET Año = '$yearNew'
            WHERE idEquipo = '$par' AND Año = '$year'";

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

    <form method="post">
    <input type="submit" name="Show" value ="Demuestra Equipos">
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
                
                $sql = "SELECT * FROM Equipo";
                $result = $conn->query($sql);
                
                if ($result->num_rows > 0) {
                    echo "<h4> Los equipos son: </h4>";
                    
                    while($row = $result->fetch_assoc()) {
                        echo "<br> Equipo: ". $row["idEquipo"]. " | Año: ". $row["Año"]. "<br>";
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

