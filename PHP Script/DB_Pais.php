
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

<h1 style="text-align: center;"> Pais Table </h1>

<div style= "text-align: center;"> 

    <h3 style="text-align: center;"> Inserta data! </h3>

    <form method="post" style="margin: auto; width: 220px;">
    Nombre Pais: <br><input type="text" name="name"><br>
    <br><input type="submit" name = "Insert1">
    </form>

    <div>
    <?php
        if (isset($_POST["Insert1"])) {
            $par = $_POST["name"];
            $servername = "*";
            $username = "*";
            $password = "*";
            $dbname = "*";
                
            $conn = new mysqli($servername, $username, $password, $dbname);
            
            if ($conn->connect_error) {
                die("Connection failed: " 
                    . $conn->connect_error);
            }

            $sub = "SELECT MAX(idPais) AS ID FROM Pais";
            $res = $conn->query($sub);
            $max = $res->fetch_assoc();
            $id = ((int)$max["ID"]) + 1;
            $sql = "INSERT INTO Pais (idPais,Nombre) VALUES ('$id','$par')";

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
    Nombre Pais: <br><input type="text" name="name"><br>
    Nombre Nuevo para Pais: <br><input type="text" name="nameNew"><br>
    <br><input type="submit" name = "Insert2">
    </form>

    <div>
    <?php
        if (isset($_POST["Insert2"])) {
            $par = $_POST["name"];
            $newPar = $_POST["nameNew"];
            $servername = "*";
            $username = "*";
            $password = "*";
            $dbname = "*";
                
            $conn = new mysqli($servername, $username, $password, $dbname);
            
            if ($conn->connect_error) {
                die("Connection failed: " 
                    . $conn->connect_error);
            }

            $sql = "UPDATE Pais SET Nombre = '$newPar' WHERE Nombre = '$par'";

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
    <input type="submit" name="Show" value ="Demuestra paises">
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
                
                $sql = "SELECT Nombre FROM Pais";
                $result = $conn->query($sql);
                
                if ($result->num_rows > 0) {
                    echo "<h4> Los Paises son: </h4>";
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                        echo "<br> ". $row["Nombre"]. "<br>";
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

