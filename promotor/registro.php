<?php
//header('Location: offline.php');
  include_once '../admin/class/Anuncio.php';
  require_once '../admin/class/Categoria.php';

  $categoria = Categoria::recuperarTodos();
  
    $idAnuncio = (isset($_REQUEST['idAnuncio'])) ? $_REQUEST['idAnuncio'] : null;
        
      if($idAnuncio){        
          $anuncio = Anuncio::buscarPorId($idAnuncio);   
      }else{
          $anuncio = new Anuncio(); 
      }
  
     
      if($_SERVER['REQUEST_METHOD'] == 'POST'){
  
        $idCategoria = 1;
        $titulo = (isset($_POST['titulo'])) ? $_POST['titulo'] : null;
        $municipio = (isset($_POST['municipio'])) ? $_POST['municipio'] : null;
        $estado = (isset($_POST['estado'])) ? $_POST['estado'] : null;
        $calle = (isset($_POST['calle'])) ? $_POST['calle'] : null;
        $colonia = (isset($_POST['colonia'])) ? $_POST['colonia'] : null;
        $cp = (isset($_POST['cp'])) ? $_POST['cp'] : null;
        $tel = (isset($_POST['tel'])) ? $_POST['tel'] : null;
        $whatsapp = (isset($_POST['whatsapp'])) ? $_POST['whatsapp'] : null;
        $facebook = (isset($_POST['facebook'])) ? $_POST['facebook'] : null;
        $instagram = (isset($_POST['instagram'])) ? $_POST['instagram'] : null;
        $youtube = (isset($_POST['youtube'])) ? $_POST['youtube'] : null;
        $sitio = (isset($_POST['sitio'])) ? $_POST['sitio'] : null;
        $google_maps = (isset($_POST['google_maps'])) ? $_POST['google_maps'] : null;
        $descripcion = (isset($_POST['descripcion'])) ? $_POST['descripcion'] : null;
        $primer_dia_sem = (isset($_POST['primer_dia_sem'])) ? $_POST['primer_dia_sem'] : null;
        $ultimo_dia_sem = (isset($_POST['ultimo_dia_sem'])) ? $_POST['ultimo_dia_sem'] : null;
        $entrada = (isset($_POST['entrada'])) ? $_POST['entrada'] : null;
        $cierre = (isset($_POST['cierre'])) ? $_POST['cierre'] : null;
        $url = (isset($_REQUEST['url'])) ? $_REQUEST['url'] : null;
        $estatus_anuncio = "Borrador";
        $destacado = "No";
        $keywords = $titulo;
  
          if($_POST['fecha_publicacion']==""){
        $fecha_publicacion = date('Y-m-d');
          }else{
            $fecha_publicacion = (isset($_REQUEST['fecha_publicacion'])) ? $_REQUEST['fecha_publicacion'] : null;
          }
        
      
              //Procesamiento Anuncio
                $anuncio->setIdCategoria($idCategoria);
                $anuncio->setTitulo($titulo);
                $anuncio->setMunicipio($municipio);
                $anuncio->setEstado($estado);
                $anuncio->setCalle($calle);
                $anuncio->setColonia($colonia);
                $anuncio->setCp($cp);
                $anuncio->setTelefono($tel);
                $anuncio->setWhatsapp($whatsapp);
                $anuncio->setFacebook($facebook);
                $anuncio->setInstagram($instagram);
                $anuncio->setYoutube($youtube);
                $anuncio->setSitio($sitio);
                $anuncio->setGoogleMaps($google_maps);
                $anuncio->setDescripcion($descripcion);
                $anuncio->setPrimerDiaSem($primer_dia_sem);
                $anuncio->setUltimoDiaSem($ultimo_dia_sem);
                $anuncio->setEntrada($entrada);
                $anuncio->setCierre($cierre);
                $anuncio->setEstatusAnuncio($estatus_anuncio);
                $anuncio->setKeywords($keywords);
                $anuncio->setFechaPublicacion($fecha_publicacion);
                $anuncio->setDestacado($destacado);
                
                
          
   
  
              if ($_FILES['image-post']['name']!=null) {
  
                if($_FILES['image-post']['type'] ==  'image/jpg' ||  $_FILES['image-post']['type']  == 'image/jpeg' 
                  ||  $_FILES['image-post']['type']  == 'image/png'){ 
                    
                      $rutaServidor = 'uploads/images';
                      $rutaTemporal = $_FILES['image-post']['tmp_name'];
                      $nombreImagen = $_FILES['image-post']['name'];
      
                      $rutaDestino = $rutaServidor.'/'.$nombreImagen;
                      move_uploaded_file($rutaTemporal, '../admin/modules/posts/'.$rutaDestino);
                      $anuncio->setUrlImagen($rutaDestino); 
                     
              
                }else{
                      echo '<script>
                            alert("Solo se admiten archivos con extensiones jpeg, jpg, png");
                            
                            window.location.href="save.php";
                            </script>';
                } 
  
  
              }else{
                $anuncio->setUrlImagen($url);  
              } 
                $anuncio->guardar();
                 
              
                header('Location: registro.php?message="OK"');
              
      }
        
      include_once '../template/template1/header.php';
  ?>
  
  
  <!-- Main content -->
      <div class="content" id="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col">
            <?php
              if(isset($_GET['message'])){
                ?>
                <div class="alert alert-success alert-dismissible fade show" role="alert">
   Negocio registrado correctamente.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
                
              <?php
              }
              ?>
            
            <?php 
            if (isset($_REQUEST['idAnuncio'])){
  
              $title = 'Editar';
            }else{
              $title = 'Registrar nuevo';
            }
            ?>
  
  
            <div  style="width:80%; margin-left:10%; background-color: white; padding:20px; border-radius:10px;">
  
            <h4 class="text-center"><?php echo $title ?> negocio</h4> <br>
        
  
              <form action="registro.php" method="post" enctype="multipart/form-data">
  
              <div class="form-group">
              <input class="form-control" type="hidden" name="idAnuncio" id="idAnuncio" value="<?php echo $anuncio->getIdAnuncio(); ?>">
              </div>
  
              <div class="form-group">
              <input class="form-control" type="hidden" name="url" id="url" value="<?php echo $anuncio->getUrlImagen(); ?>">
              </div>
  
              <div class="form-group">
              <input class="form-control" type="hidden" name="idSolicitud" id="idSolicitud" value="<?php echo $anuncio->getIdSolicitud();?>">
              </div>
  
              <div class="form-group">
              <input class="form-control" type="hidden" name="fecha_publicacion" id="fecha_publicacion" value="<?php echo $anuncio->getFechaPublicacion();?>">
              </div>
             
              <div class="form-group">
              <label for="titulo">Nombre del Negocio <span class="text text-danger">*</span></label>
              <input class="form-control" type="text" name="titulo" id="titulo" value="<?php echo $anuncio->getTitulo(); ?>" required>
              </div>
  
              <div class="form-group">
              <label for="image-post">Imagen </label>
              <?php    if(isset($_REQUEST['idAnuncio'])): ?>
                </br>
              <img src="<?= $anuncio->getUrlImagen(); ?>" style="width:100px" />
              </br></br>
              <?php endif; ?>
              <input type="file" class="form-control-file" name="image-post" id="image-post">
              </div>
  
              <div class="form-group">
              <label for="municipio">Municipio/Localidad <span class="text text-danger">*</span></label>
              <input type="text" class="form-control" name="municipio" id="municipio" value="Acámbaro" readonly>
                 
              </div>
  
              <div class="form-group">
              <label for="estado">Estado <span class="text text-danger">*</span></label>
              <input class="form-control" type="text" name="estado" id="estado" value="Guanajuato" readonly>
              </div>
  
              <div class="form-group">
              <label for="calle">Calle <span class="text text-danger">*</span></label>
              <input class="form-control" type="text" name="calle" id="calle" value="<?php echo $anuncio->getCalle(); ?>" required>
              </div>
  
              <div class="form-group">
              <label for="colonia">Colonia <span class="text text-danger">*</span></label>
              <input class="form-control" type="text" name="colonia" id="colonia" value="<?php echo $anuncio->getColonia(); ?>" required>
              </div>
  
              <div class="form-group">
              <label for="cp">Código Postal <span class="text text-danger">*</span></label>
              <input class="form-control" type="text" name="cp" id="cp" value="<?php echo $anuncio->getCp(); ?>" required>
              </div>
  
              <div class="form-group">
              <label for="tel">Teléfono Comercial <span class="text text-danger">*</span></label>
              <input class="form-control" type="text" name="tel" id="tel" value="<?php echo $anuncio->getTelefono(); ?>" required>
              </div>
  
              <div class="form-group">
              <label for="whatsapp">Whatsapp <small>(Opcional)</small></label>
              <input class="form-control" type="text" name="whatsapp" id="whatsapp" value="<?php echo $anuncio->getWhatsapp(); ?>">
              </div>
  
              <div class="form-group">
              <label for="facebook">Facebook <small>(Opcional)</small></label>
              <input class="form-control" type="text" name="facebook" id="facebook" placeholder="Ingresa enlace de la cuenta de facebook" value="<?php echo $anuncio->getFacebook(); ?>">
              </div>
  
              <div class="form-group">
              <label for="instagram">Instagram <small>(Opcional)</small></label>
              <input class="form-control" type="text" name="instagram" id="instagram" placeholder="Ingresa enlace de la cuenta de Instagram" value="<?php echo $anuncio->getFacebook(); ?>">
              </div>
  
              <div class="form-group">
              <label for="youtube">Youtube <small>(Opcional)</small></label>
              <input class="form-control" type="text" name="youtube" id="youtube" placeholder="Ingresa enlace de la cuenta de Instagram" value="<?php echo $anuncio->getYoutube(); ?>">
              </div>
  
              <div class="form-group">
              <label for="nombre">Sitio Web <small>(Opcional)</small></label>
              <input class="form-control" type="text" name="sitio" id="sitio" value="<?php echo $anuncio->getSitio(); ?>" placeholder="Ingresa el enlace a tu sitio web">
              </div>
  
              <div class="form-group">
              <label for="google_maps">Google Maps <small>(Opcional)</small></label>
              <input class="form-control" type="text" name="google_maps" id="google_maps" placeholder="Ingresa enlace del negocio en Google Maps" value="<?php echo $anuncio->getGoogleMaps(); ?>">
              </div>
  
  
              <div class="form-group">
              <label for="descripcion">Descripción <span class="text text-danger">*</span></label>
             <textarea class="form-control" name="descripcion" id="descripcion" rows="5" required ><?php echo $anuncio->getDescripcion(); ?></textarea>
              </div>  
  
             
         
              <div class="form-group">
              <label>Horario <small>(Opcional)</small></label> <br><br>
  
                <label for="primer_dia_sem">De:</label>
                 
                <select name="primer_dia_sem" id="primer_dia_sem" class="form-control" style="width: 60%;">
                <option value="">Selecciona una opción</option>
                <option value="Lunes" <?php if($anuncio->getPrimerDiaSem()=='Lunes'){ echo 'Selected';}?>>Lunes</option>
                <option value="Martes" <?php if($anuncio->getPrimerDiaSem()=='Martes'){ echo 'Selected';}?>>Martes</option>
                <option value="Miércoles" <?php if($anuncio->getPrimerDiaSem()=='Miércoles'){ echo 'Selected';}?>>Miércoles</option>
                <option value="Jueves" <?php if($anuncio->getPrimerDiaSem()=='Jueves'){ echo 'Selected';}?>>Jueves</option>
                <option value="Viernes" <?php if($anuncio->getPrimerDiaSem()=='Viernes'){ echo 'Selected';}?>>Viernes</option>
                <option value="Sábado" <?php if($anuncio->getPrimerDiaSem()=='Sábado'){ echo 'Selected';}?>>Sábado</option>
                <option value="Domingo" <?php if($anuncio->getPrimerDiaSem()=='Domingo'){ echo 'Selected';}?>>Domingo</option>
              
              </select> 
  
  
              <label for="ultimo_dia_sem">a:</label>
              <select name="ultimo_dia_sem" id="ultimo_dia_sem" class="form-control" style="width: 60%;">
                <option value="">Selecciona una opción</option>
                <option value="Lunes" <?php if($anuncio->getUltimoDiaSem()=='Lunes'){ echo 'Selected';}?>>Lunes</option>
                <option value="Martes" <?php if($anuncio->getUltimoDiaSem()=='Martes'){ echo 'Selected';}?>>Martes</option>
                <option value="Miércoles" <?php if($anuncio->getUltimoDiaSem()=='Miércoles'){ echo 'Selected';}?>>Miércoles</option>
                <option value="Jueves" <?php if($anuncio->getUltimoDiaSem()=='Jueves'){ echo 'Selected';}?>>Jueves</option>
                <option value="Viernes" <?php if($anuncio->getUltimoDiaSem()=='Viernes'){ echo 'Selected';}?>>Viernes</option>
                <option value="Sábado" <?php if($anuncio->getUltimoDiaSem()=='Sábado'){ echo 'Selected';}?>>Sábado</option>
                <option value="Domingo" <?php if($anuncio->getUltimoDiaSem()=='Domingo'){ echo 'Selected';}?>>Domingo</option>
              </select> 
              
              <br>
              <label>Abierto desde: </label><input class="form-control" type="time" name="entrada" id="entrada" value="<?php if($anuncio->getEntrada()){ echo $anuncio->getEntrada();}else{echo "00:00";} ?>" min="00:00" max="24:00" style="width: 60%;">
              <label>Hasta: </label><input class="form-control" type="time" name="cierre" id="cierre" value="<?php if($anuncio->getCierre()){ echo $anuncio->getCierre();}else{echo "00:00";} ?>" min="00:00" max="24:00" style="width: 60%;">
              </div> 

              <div class="form-group">
              <input type="submit" class="btn btn-primary" value="Guardar">
              </div>  
             
              </form>
              </div>
            
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
  

<?php
  include_once '../template/template1/footer.php';
?>