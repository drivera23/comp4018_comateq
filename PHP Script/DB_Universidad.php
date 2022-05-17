
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

<h1 style="text-align: center;"> Universidad Table </h1>

<div style= "text-align: center;"> 

    <h3 style="text-align: center;"> Inserta data! </h3>

    <form method="post" style="margin: auto; width: 220px;">
    ID Pais: <br><input type="text" name="idPais"><br>
    Nombre: <br><input type="text" name="name"><br>
    Pagina Web: <input type="text" name="webp"><br>
    Telefono: <br><input type="text" name="phone"><br>
    Calle: <br><input type="text" name="street"><br>
    Ciudad: <br><input type="text" name="city"><br>
    Region: <br><input type="text" name="region"><br>
    Codigo Postal: <br><input type="text" name="codigo"><br>
    <br><input type="submit" name = "Insert1">
    </form>

    <div>
    <?php
        if (isset($_POST["Insert1"])) {
            $uniName = $_POST["name"];
            $uniPais = $_POST["idPais"];
            $uniWeb = $_POST["webp"];
            $uniPhone = $_POST["phone"];
            $uniSt = $_POST["street"];
            $uniCity = $_POST["city"];
            $uniReg = $_POST["region"];
            $uniCP = $_POST["codigo"];

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

            $sub = "SELECT MAX(idUniversidad) AS ID FROM Universidad";
            $res = $conn->query($sub);
            $max = $res->fetch_assoc();
            $id = ((int)$max["ID"]) + 1;
            $sql = "INSERT INTO Universidad (idUniversidad,idPais,Nombre,PaginaWeb,Telefono,DireccionCalle,DireccionCiudad,DireccionRegion,DireccionCodigoPostal) 
            VALUES ('$id','$uniPais','$uniName','$uniWeb','$uniPhone','$uniSt','$uniCity','$uniReg','$uniCP')";

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

<!--  -->

<div style= "text-align: center;"> 
    <h3 style="text-align: center;"> Modifica data! </h3>

    <form method="post" style="margin: auto; width: 220px;">
    Nombre de la Universidad: <br><input type="text" name="colName"><br>
    Pagina Web de la Universidad: <input type="text" name="colWP"><br>
    Nombre Nuevo de la Universidad: <input type="text" name="colNameNew"><br>
    Pagina Web Nueva de la Universidad: <input type="text" name="colWPNew"><br>
    <br><input type="submit" name = "Insert2">
    </form>

    <div>
    <?php
        if (isset($_POST["Insert2"])) {
            $uniName = $_POST["colName"];
            $uniNewName = $_POST["colNameNew"];
            $uniWP = $_POST["colWP"];
            $uniNewWP = $_POST["colWPNew"];


            $servername = "*";
            $username = "*";
            $password = "*";
            $dbname = "*";
               
            $conn = new mysqli($servername, $username, $password, $dbname);
          
            if ($conn->connect_error) {
                die("Connection failed: " 
                    . $conn->connect_error);
            }

            $sql = "UPDATE Universidad
            SET Nombre = '$uniNewName', PaginaWeb = '$uniNewWP'
            WHERE Nombre = '$uniName' AND PaginaWeb = '$uniWP'";

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
    <input type="submit" name="Show" value ="Demuestra Universidades">
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
                
                $sql = "SELECT * FROM Universidad";
                $result = $conn->query($sql);
                
                if ($result->num_rows > 0) {
                    echo "<h4> Las universidades son: </h4>";
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                        echo "<br> Nombre: ". $row["Nombre"]. " | Pagina: ". $row["PaginaWeb"].  "<br>";
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

