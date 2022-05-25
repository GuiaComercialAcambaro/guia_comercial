<?php
session_start();
//header('Location: offline.php');
?>
<!DOCTYPE html>
<html lang="es-MX">
<head>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-NSY7H1BK2G"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'G-NSY7H1BK2G');
    </script>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Author Meta -->
    <meta name="author" content="MiAcambaro">
    <!-- Meta Keyword -->
    <meta name="keywords" content="MiAcambaro, Todo lo que buscas, encuentras, negocios, Acámbaro">
    <!-- Meta Description -->
    <meta name="description" content="Entra y descubre lugares en Acámbaro de una manera rápida y sencilla. En miacambaro.mx ¡Todo lo que buscas lo encuentras y lo que no también! Esta aplicación ha sido creada con el objetivo de apoyar a los negocios, profesionistas y personas que tienen algún oficio a darse a conocer por medio de la publicación de sus productos y servicios.">
    <!-- Page Title -->
    <title> Inicio | MiAcámbaro</title>
    <!--Icon-->
    <link rel="shortcut icon" href="images/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet">
    <!-- Simple line Icon -->
    <link rel="stylesheet" href="css/simple-line-icons.css">
    <!-- Themify Icon -->
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- Hover Effects -->
    <link rel="stylesheet" href="css/set1.css">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Main CSS -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/whats.css">
   

</head>

<body>



    <div class="d-none d-md-block social-body">
        <ul>
            <li class="facebook"><a href="https://www.facebook.com/miacambaro.app.7" target="_blank"><i class="fa fa-facebook"></i></a></li>
            <li class="twitter"><a href="https://api.whatsapp.com/send?phone=524171063400&text=%C2%A1Hola!%20me%20gustar%C3%ADa%20obtener%20informaci%C3%B3n%20para%20registrar%20mi%20negocio%20en%20miacambaro.mx" target="_blank"><i class="fa fa-whatsapp"></i></a></li>

            <!-- <li class="instagram"><a href="#" target="_blank"><i class="fa fa-instagram"></i></a></li> -->
            <!-- <li class="pinterest"><a href="#" target="_blank"><i class="fa fa-pinterest"></i></a></li> -->
        </ul>
    </div>




    <!--============================= HEADER =============================-->
    <div class="nav-menu">
        <div class="bg transition">
            <div class="container-fluid fixed">
                <div class="row">
                    <div class="col-md-12">
                        <nav class="navbar navbar-expand-lg navbar-light">
                        <img src="images/favicon.png" width="30" height="30" class="d-inline-block align-top" alt=""> &nbsp;
                            <a class="navbar-brand" style="text-shadow: black 0.1em 0.1em 0.2em; " href="index.php">
                            
                                MiAcámbaro     
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="icon-menu"></span>
                            </button>
                            <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                                <ul class="navbar-nav" style="text-shadow: black 0.1em 0.1em 0.2em; ">
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Inicio</a>
                                    </li>
                                    <!-- <li class="nav-item">
                                        <a class="nav-link" href="registro.php">Registra tu negocio</a>
                                    </li>  -->

                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Mi Municipio
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <a class="dropdown-item" href="#">Cultura</a>
                                                <a class="dropdown-item" href="#">Tradiciones</a>
                                                <a class="dropdown-item" href="#">Monumentos</a>
                                                <a class="dropdown-item" href="#">Recorridos Turísticos</a>
                                                <a class="dropdown-item" href="#">Gastronomía</a>
                                                <a class="dropdown-item" href="#">Tradiciones</a>
                                               
                                        </div>
                                    </li>
                                                                    
                                    <li class="nav-item d-none d-md-block">
                                        <a class="nav-link" href="" data-toggle="modal" data-target="#ModalApp">Descarga la app</a>
                                    </li>
                                  
                                    <li class="nav-item">
                                        <a class="nav-link" href="contacto.php">Contacto</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="aviso-privacidad.php">Aviso de privacidad</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- SLIDER -->
    <section class="slider d-flex align-items-center">

        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-12">
                    <div class="slider-title_box">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="slider-content_wrap contenedor-texto">
                                    <h1 class="tam" style="font-size: calc(1em + 1vw);">Buscador Comercial Acámbaro </h1>
                                    <h1 style="font-size: calc(1.4em + 1vw); margin-bottom:8px;"><span class="typed"></span></h1>
                                    <!-- <h5><span class="typed"></span></h5> -->
                                </div>
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-md-10">
                            <div hidden id="errores"></div>
                                <form action="search.php" method="POST" class="form-wrap mt-4" id="formulario">
                                    <div class="btn-group" role="group" aria-label="Basic example">

                                        <input type="text" name="busqueda" id="busqueda" class="text1 btn-group1">


                                        <button  type="submit" class="btn-form"><span class="icon-magnifier search-icon"></span>BUSCAR<i class="pe-7s-angle-right"></i></button>
                                    </div>
                                </form>

                                <br>

                                <a href="registro.php">
                                    <p style="font-size: 20px; color: #fff; text-shadow: black 0.1em 0.1em 0.2em; ">Registrate en | miacambaro.mx</p>
                                    
                                </a>
                             


                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
    <!--// SLIDER -->
    <!--//END HEADER -->

    <!--============================= Lugares Destacados =============================-->
    <section class="main-block light-bg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="styled-heading">
                        <h3>Comercios Destacados</h3>
                    </div>
                </div>
            </div>
            <?php
            include_once 'admin/class/Anuncio.php';
            $anuncio = Anuncio::getRandom(3);

            if (count($anuncio) > 0) :
            ?>




                <div class="row">
                    <?php foreach ($anuncio as $item) : ?>
                        <div class="col-lg-4 col-md-6 col-12 featured-responsive ">

                            <div class="featured-place-wrap shadow-lg  rounded">


                                <a href="#">
                                    <img src="./admin/modules/posts/<?php echo $item['url_imagen']; ?>" class="img-fluid" alt="#">


                                    <div class="featured-title-box">
                                        <div style="height: 50px; ">
                                            <h4><?php echo $item['titulo']; ?></h4>
                                        </div>

                                </a>

                                <div class="closed-now">ABIERTO AHORA</div><br>

                                <ul class="list-unstyled list-inline rating mb-0">
                                    <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"> </i></li>
                                    <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                                    <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                                    <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                                    <li class="list-inline-item"><i class="fas fa-star amber-text"></i></li>
                                    <li class="list-inline-item">
                                        <p class="text-muted">5.0 (333)</p>
                                    </li>
                                </ul>




                                <div>
                                    <p> &#x26ab;&#xfe0e; &nbsp;<?php echo $item['municipio']; ?>,</p> &nbsp;&nbsp;
                                    <p><span><?php echo $item['nombre']; ?></span> </p>
                                </div>

                                <hr class="my-4">
                                <h6> Información </h6>

                                <ul>
                                    <li><span class="ti-home"></span>
                                        <p><?php echo $item['calle']; ?>, <?php echo $item['colonia']; ?></p>
                                    </li>
                                    <li><span class=" ti-write"></span>
                                        <p><?php echo $item['cp']; ?></p>
                                    </li>

                                    <a href="#">
                                        <li><span class="fa fa-whatsapp"></span>
                                            <p class="tele"><?php $tel= $item['telefono']; 
                                            
                                                        $posiUno = substr($tel, 0, 3);
                                                        $posiDos = substr($tel, 3, 3);
                                                        $posiTres = substr($tel, 6, 4);
                                                        echo $posiUno . "-" . $posiDos . "-" . $posiTres;
                                                      
                                                     
                                            
                                            ?></p>
                                        </li>
                                    </a>

                                    <!-- <a href="#">
                                        <li><span class="ti-world"></span>
                                            <p></p>
                                        </li>
                                    </a> -->
                                    <li><span class="icon-clock"></span>
                                        <p><?php echo $item['entrada']; ?> - <?php echo $item['cierre']; ?></p>
                                    </li>

                                </ul>
                                <hr class="my-4">
                                <div class="text-center">
                                    <?php if(!empty($item['facebook'])):?>
                                        <a href="<?php  echo $item['facebook'] ?>" target="_blank"><img src="images/face.png" width="50px" height="50px"></a>     
                                    <?php endif; ?>

                                    <?php if(!empty($item['telefono'])):?>
                                        <a href="https://api.whatsapp.com/send?phone=52<?php echo $item['telefono'] ?>" target="_blank"><img src="images/what.png" width="50px" height="50px"></a>
                                    <?php endif; ?>

                                    <?php if(!empty($item['instagram'])):?>
                                        <a href="<?php echo $item['instagram'] ?>" target="_blank"><img src="images/insta.png" width="50px" height="50px"></a>
                                    <?php endif; ?>

                                    
                                    <!-- <a href="#"><img src="images/youtu.png" width="50px" height="50px"></a> -->
                                </div>




                            </div>



                        </div>

                </div>
            <?php endforeach; ?>

        </div>

    <?php else : ?>
        <p class="alert alert-info"> No hay lugares destacados agregados </p>
    <?php endif; ?>




    <div class="row justify-content-center">
        <div class="col">
            <?php 
            include_once 'template/partials/msj_modal_descarga_app.php';
            ?>
        </div>
    </div>
    </div>
    </section>
    <!--//END FEATURED PLACES -->
   

    <!--============================= FOOTER =============================-->
    <footer class="main-block dark-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <p>Copyright &copy; 2020. Todos los derechos reservados |<a href="test.php"> miacambaro.mx </a></p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <ul>
                            <li><a href="https://www.facebook.com/miacambaro.app.7" target="_blank"><span class="ti-facebook"></span></a></li>
                            <li><a href="https://api.whatsapp.com/send?phone=524171063400&text=%C2%A1Hola!%20me%20gustar%C3%ADa%20obtener%20informaci%C3%B3n%20para%20registrar%20mi%20negocio%20en%20miacambaro.mx" target="_blank"><span class="fa fa-whatsapp" style="font-size:28px"></span></a></li>
                            <!-- <li><a href="#"><span class="ti-instagram"></span></a></li> -->
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--//END FOOTER -->


<!-- Modal -->
<!-- <div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <img src="images/publicidad_predial1.jpg" style="width: 100%; height: auto;">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        
      </div>
    </div>
  </div>
</div> -->

    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src='http://cdn.mejorcodigo.net/mejor-push/mejor-push.js'></script>
  <script src='http://cdn.mejorcodigo.net/mejor-push/mejor-push-helper.js'></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.11"></script>
    <script src="./js/main.js"></script>
    <script src="js/superplaceholder.min.js"></script>
    <script src="js/script.js"></script>
    <!-- <script>
    $( document ).ready(function() {
    $('#exampleModalCenter1').modal('toggle')
});
    </script> -->


  <script>
    document.addEventListener("DOMContentLoaded", function(){
      initPush("db5f9a61-7285-405a-9c27-644938cc9d5b");
    });
  </script>

    <script>
        $(window).scroll(function() {
            // 100 = The point you would like to fade the nav in.

            if ($(window).scrollTop() > 100) {

                $('.fixed').addClass('is-sticky');

            } else {

                $('.fixed').removeClass('is-sticky');

            };
        });
    </script>

    <script>
   $(document).ready(function() {
				$.validator.addMethod("formAlphanumeric", function(value, element) {
					var pattern1 = /^[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1]+$/;
					return this.optional(element) || pattern1.test(value);
				}, "El campo debe tener un valor alfanumérico");


				$("#formulario").validate({

					rules: {

						busqueda: {
							required: true,
							formAlphanumeric: true,
							maxlength: 30,

						}

					},

					messages: {

						busqueda: {
							required: "Por favor introduzca una palabra",
							formAlphanumeric: "La busqueda solo puede contener letras",
							maxlength: "Solo se admite un máximo de 30 caracteres"

						},

					},

					errorLabelContainer: "#errores"


				});

			});
    </script>
</body>

</html>