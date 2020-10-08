<?php
include("./php/directorio.php");
if (session_status() == PHP_SESSION_NONE) {
  session_start();

  $nombre = $_SESSION['nombre'];
  $sesion = $_SESSION['rol'];
  $userid = $_SESSION['id'];

  if (isset($_POST['back_url'])) {
    $_POST  = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

    header("Location: " . $_POST['back_url']); /* Redirección del navegador */
  }
}


if (!isset($_SESSION['id'])) {
  header("Location: http://" . $directorio); /* Redirección del navegador */
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Gestión de credenciales</title>
  <!-- Custom styles for this template -->
  <link href="css/agency.css" rel="stylesheet">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/vitalets-bootstrap-datepicker-c7af15b/css/datepicker.css" rel="stylesheet">
  <link href="css/home.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <link rel="shortcut icon" type="image/png" href="img/favicon.png" />
  <link rel="stylesheet" href="https://unpkg.com/placeholder-loading/dist/css/placeholder-loading.min.css">
  <link href="css/dropdown.css" rel="stylesheet">
  <!--datables CSS básico-->
  <link rel="stylesheet" type="text/css" href="vendor/DataTables/datatables.min.css" />
  <!--datables estilo bootstrap 4 CSS-->
  <link rel="stylesheet" type="text/css" href="vendor/DataTables/DataTables-1.10.21/css/dataTables.bootstrap4.min.css">
  <!-- Deshabilitamos cache -->
  <meta http-equiv="expires" content="0">

  <meta http-equiv="Cache-Control" content="no-cache">

  <meta http-equiv="Pragma" CONTENT="no-cache">
  <script src="https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js"></script>


</head>

<body>
  <input type="hidden" id="role" name="" value="<?php echo $sesion ?>">
  <div class="navbar navbar-expand-md navbar-dark bg-dark mb-4 fixed-top" role="navigation" style="background: #4e4e50 !important">
    <a class="navbar-brand" href="#"><img src="img/logo.jfif" width="230" alt="logo"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav mr-auto">
        <!--Item Inicio-->
        <li class="nav-item active">
        
          <a id="credenciales" class="nav-link nav-element" href="#">Credenciales de pago <span class="sr-only">(current)</span></a>
        </li>

        <!--Item Salir-->
        <li class="nav-item active">
          <a class="nav-link" href="php/cerrar_sesion.php">Salir</a>
        </li>

      </ul>

      <span class="navbar-text text-white">
        Contacto:
        <a href="mailto:soporte@uda.com.ar">soporte@uda.com.ar</a>
      </span>
    </div>
  </div>

  <div class="d-flex" id="wrapper">
    <!--INICIO DE CONTENIDO DE PAGINA -->

    <div id="page-content-wrapper" style="background: rgb(250,250,250);">



      <div class="jumbotron p-1" id="jumbotron">
        <div class="container text-right">
          <h1 class="">¡Hola <?php echo $nombre; ?>!
          </h1>
          <?php
          if ($sesion == 0) {
          ?>
            <h3 id="registradosTotales">
            </h3>
          <?php
          }
          ?>
        </div>
      </div>


      <!-- Modal -->

      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">

        <div class="modal-dialog" role="document">

          <div class="modal-content">

            <div class="modal-header">

              <h5 class="modal-title" id="exampleModalLabel">Comprar Curso</h5>

              <button type="button" class="close" data-dismiss="modal" aria-label="Close">

                <span aria-hidden="true">&times;</span>

              </button>

            </div>

            <div id='pago' class="modal-body">



            </div>

            <!-- <div class="modal-footer">

                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                                <button type="button" class="btn btn-primary">Save changes</button>

                            </div>-->

          </div>

        </div>

      </div>

      <div class="container-fluid">


        <!-- RENDER COURSES BY JQUERY -->

        <div id="contenedor_home" class="mb-4">


        </div>

      </div>



    </div>

    <!--INICIO DE CONTENIDO DE PAGINA -->

  </div>




  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="js/fontawesome-all.min.js"></script>
  <script src="js/home.js"></script>
  <script src="js/sweetalert2.js"></script>

</body>

</html>