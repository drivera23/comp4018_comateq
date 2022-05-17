
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

<h1 style="text-align: center;">Diego and Alejandro's Webpage for COMP4018 </h1>

<div style= "text-align: center;"> 

    <h2 style="margin-bottom 5%;"> Click on the buttons to interact with the other tables! </h2>
    
    <!-- Aqui aparece los botones con todas las tablas disponsibles para poder interactuar. -->

    <div class="btn-group-vertical" style="margin-top 10%;">
            <a href="DB_Pais.php"><button id="btnSearch" class="btn btn-primary btn-md center-block" Style="width: 120px; margin-bottom: 4%;" OnClick="displayProblems()" >Pais</button> </a>
            <a href="DB_Administrador.php"><button id="btnClear" class="btn btn-primary btn-md center-block" Style="width: 120px;margin-bottom: 4%;" > Administrador </button></a>
            <a href="DB_Coordinador.php"><button id="btnClear" class="btn btn-primary btn-md center-block" Style="width: 120px;margin-bottom: 4%;" > Coordinador </button></a>
            <a href="DB_Estudiante.php"><button id="btnClear" class="btn btn-primary btn-md center-block" Style="width: 120px;margin-bottom: 4%;" > Estudiante </button></a>
            <a href="DB_Equipo.php"><button id="btnClear" class="btn btn-primary btn-md center-block" Style="width: 120px;margin-bottom: 4%;" > Equipo </button></a>
            <a href="DB_Examen.php"><button id="btnClear" class="btn btn-primary btn-md center-block" Style="width: 120px;margin-bottom: 4%;" > Examen </button></a>
            <a href="DB_Universidad.php"><button id="btnClear" class="btn btn-primary btn-md center-block" Style="width: 120px;margin-bottom: 4%;" > Universidad </button></a>
            <!-- <button id="btnClear" class="btn btn-danger btn-md center-block" Style="width: 100px;" OnClick="GMM()" >PHP!</button> -->
    </div>

</div>

</body>
</html>

