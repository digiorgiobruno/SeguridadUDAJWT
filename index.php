<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="uda" content="uda">
    <meta name="keywords" content="curso, notarial, mendoza">
    <meta name="author" content="Di Giorgio Bruno">
    <title>JWT</title>
    <link rel="shortcut icon" type="image/png" href="img/favicon.png" />
    <script src="https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js"></script>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/vitalets-bootstrap-datepicker-c7af15b/css/datepicker.css" rel="stylesheet">
    <link href="vendor/select2-4.0.11/dist/css/select2.min.css" rel="stylesheet">
    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="css/agency.css" rel="stylesheet">




</head>

<body id="page-top">
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">
            </a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav text-uppercase ml-auto">
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#portfolio">Inicio</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Header -->
    <header class="masthead vh-100">
        <div class="row">
            <div class="col-sm-12 col-lg-4 col-xl-4 p-0 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12">
                                <div class="container d-flex align-items-center justify-content-center " style="height: 204px;">
                                    <img class="w-100" src="img/logo.jfif" alt="logo">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-9 mx-auto">
                                <div class="form-group">
                                    <input class="form-control" id="email" type="email" placeholder="Correo" autocomplete="username" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control" id="pass" type="password" placeholder="Contraseña" autocomplete="current-password" />
                                </div>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-lg-12 col-sm-12 text-center">
                                <button id="login_button" class="btn btn-dark btn-xl text-uppercase mb-1" type="button"> Ingresar</button>
                            </div>
                            <div class="col-lg-12 col-sm-12 text-center">
                                <button type="button" class="btn btn-outline-secondary btn-xl text-uppercase mb-1" data-toggle="modal" data-target="#exampleModalCenter">
                                    Registrate!
                                </button>
                            </div>
                        </div>
                        <div class="row mt-0">
                            <div class="col-lg-12 text-center">
                                <a href="#resetModalCenter" data-toggle="modal" data-target="#resetModalCenter">
                                    ¿Olvidó su contraseña?
                                </a>
                            </div>
                        </div>

                        <label id="validate" class="help-block text-danger text-center" style="font-weight: bold;"></label>
                    </div>
                </div>
    </header>



    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy; UDA Seguridad</span>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li class="list-inline-item">
                            <a href="#">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#" target="_blank">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#" target="_blank">
                                <i class="fab fa-instagram"></i>
                            </a>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </footer>

    <!-- Register Modal -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header" id="registromodal">
                    <h3 class="modal-title" style="color:#383838;">Registro</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row mb-2">
                        <div class="col-6">
                            <input class="form-control" type="text" id="nameR" placeholder="Nombre">
                        </div>
                        <div class="col-6">
                            <input class="form-control" type="text" id="lastnameR" placeholder="Apellido">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-12">
                            <input class="form-control" type="text" id="dniR" placeholder="DNI">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-12">
                            <input class="form-control" type="email" id="emailR" placeholder="Email">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-12">
                            <select class="custom-select custom-select " id="input-select-reg" title="seleccionar categoría">
                                <option selected>Seleccionar...</option>
                                <option value="1">Estudiante</option>
                                <option value="2">Profesor</option>
                            </select>

                            <!--   <input class="form-control" type="text" id="legajoR" placeholder="Legajo">-->
                        </div>
                    </div>

                    <div class="row mb-2">
                        <div class="col-12">
                            <input class="form-control" type="password" id="passR" placeholder="Contraseña">
                        </div>
                    </div>

                    <div class="row mb-2">
                        <div class="col-12">
                            <input class="form-control" type="password" id="passRe" placeholder="Confirmar Contraseña">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-12">
                            <input type="text" class="form-control datepicker" value="" placeholder="Fecha Nacimiento" data-date-format="mm/dd/yyyy" id="dp2">
                        </div>
                    </div>
                    <div class="row mb-2 text-center">
                        <div class="col-12">
                            <span id="validate_register" class="help-block text-danger" style="font-weight: bold;"></span>
                        </div>
                    </div>

                    <div class="row text-xs-center">
                        <div id="recaptcha1" class="g-recaptcha"></div>
                    </div>


                </div>
                <div class="container d-flex justify-content-end mb-3 ">

                    <button id="register_button" type="button" class="btn btn-md p-1  btn-primary mr-2 col-xs-12 col-xl-2">Aceptar</button>
                    <button type="button" class="btn btn-outline-secondary mr-2 col-xs-12 col-xl-2" data-dismiss="modal">Cerrar</button>

                </div>
            </div>
        </div>
    </div>
 
    <!-- Reset Pass Modal-->
    <div class="modal fade" id="resetModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header" id="registromodal">
                    <h3 class="modal-title" style="color:#383838;">Recuperar contraseña</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row mb-2">
                        <div class="col-12">
                            <input class="form-control" type="email" id="emailR2" placeholder="Email">
                        </div>
                    </div>
                    <div class="row mb-2 text-center">
                        <div class="col-12">
                            <span id="validate_restore" class="help-block text-danger" style="font-weight: bold;"></span>
                        </div>
                    </div>
                    <div class="row text-xs-center">
                        <div id="recaptcha2" class="g-recaptcha"></div>
                    </div>
                </div>
                <div class="modal-footer">

                    <button id="pass_button" type="button" class="btn btn-primary">Aceptar</button>
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade bd-example-modal-lg" id="modalcartel" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="jumbotron jumbotron-fluid">
                    <div class="container">
                        <h1 class="display-4 text-center">Sitio en construccion</h1>
                        <p class="lead text-center">Estamos trabajando para poder brindarle un servicio
                            mejor,regresaremos pronto...</p>

                        <img class="w-100" src="img/" alt="logo">
                        <p class="lead text-center">Nuestras redes sociales:</p>
                        <ul class="list-inline social-buttons mt-4 pt-3 text-center">

                            <li class="list-inline-item">
                                <a href="#" target="_blank">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#" target="_blank">
                                    <i class="fab fa-instagram"></i>
                                </a>
                            </li>
                        </ul>




                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/vitalets-bootstrap-datepicker-c7af15b/js/bootstrap-datepicker.js"></script>
    <script src="vendor/vitalets-bootstrap-datepicker-c7af15b/js/locales/bootstrap-datepicker.es.js"></script>
    <!-- recaptcha v2 JavaScript -->
    <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer>
    </script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="vendor/select2-4.0.11/dist/js/select2.min.js"></script>
    <!-- Custom scripts for this template -->
    <script src="js/agency.js"></script>
    <script src="js/sweetalert2.js"></script>
    <script src="js/landing.js"></script>


</body>

</html>