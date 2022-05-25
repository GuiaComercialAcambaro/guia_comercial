 <!-- Modal -->
 <div class="modal fade" id="ModalShow<?php echo $item[0];?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Ver detalles</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div class="d-block m-auto">
      <div class="modal-body">
     
      <div class="card" style="width: 60%; margin-left:20%;">
  <img class="card-img-top" src="../admin/modules/posts/<?php echo $item['url_imagen'];?>" >
  <div class="card-body">
    <h5 class="card-text"><strong><?php echo $item['titulo'];?></strong></h5>
    <p class="card-text">Publicado el: <?php echo $item[29];?></p>
    <p class="card-text"><?php echo $item[16];?></p>
  </div>
  <ul class="list-group list-group-flush">
  <li class="list-group-item">Clasificación: <?php echo $item['nombre'];?></li>
  <li class="list-group-item">Calle: <?php echo $item['calle'];?></li>
  <li class="list-group-item">Colonia: <?php echo $item['colonia'];?></li>
  <li class="list-group-item">CP: <?php echo $item['colonia'];?></li>
  <li class="list-group-item"><?php echo $item['municipio']." ".$item['estado'];?></li>
  <li class="list-group-item">Teléfono: <?php echo $item['telefono'];?></li>
    <li class="list-group-item">Whatsapp: <?php echo $item['whatsapp'];?></li>
    <li class="list-group-item">Facebook: <?php echo $item['facebook'];?></li>
    <li class="list-group-item">Youtube: <?php echo $item['youtube'];?></li>
    <li class="list-group-item">Instragram: <?php echo $item['instagram'];?></li>
    <li class="list-group-item">De: <?php echo $item['primer_dia_sem'];?> al <?php echo $item['ultimo_dia_sem'];?></li>
    <li class="list-group-item"> <?php echo $item['entrada']."-".$item['cierre'];?></li>
    <li class="list-group-item"> <?php 
        if($item['estatus_anuncio']=='Publicado'){
            echo '<span class="alert alert-success"> Publicado</span>';
        }elseif ($item['estatus_anuncio']=='Borrador'){
          echo '<span class="alert alert-warning">Borrador</span>';
        }else{
          echo '<span class="alert alert-danger">Inactivo</span>';
        } ?></li>
  </ul>
  
</div>
 
  </div>



      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        
      </div>

      </div>
   
  </div>
</div>