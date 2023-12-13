<?php include_once("conexion.php");?>
<?php $conexion = new conexion(); # me conecto a la base de datos
 $oradores= $conexion->consultar("SELECT * FROM `oradores` limit 6"); # traer los primeros 6 oradores
?>
<?php include_once("header.php");?>

        <main>
             <div id="conferencia" class="conferencia">
                <div class="shadowmia">
                   <div class="containerflex" >
                        <div class="contenedor">
                            <h5 style="text-align: right;">Conf Bs As</h5>
                            <p>Bs AS llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y experiencia de los expertos que estan creando el futuro de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que tenemos para ti. Te esperamos!</p>
                            <button type="button" class="btn btn-outline-secondary colorBlanco">Quiero ser Orador</button>
                            <a class="btn btn-success" href="<?php echo BASE_URL; ?>pages/tickets.php" role="button">Comprar Tickets</a>
                            </div>
                   </div>
                </div>
            </div>
            <!--cards-->
           
        
           <section class="container mb-4" id="oradores">
        
        <h3 class="fw-semibold text-center">Conoce a los <span>oradores</span></h3>
        <div class="row justify-content-center">
            <div class="col-md-11">
                <div class="row row-cols-1 row-cols-md-3 g-4">
                <?php #leemos proyectos 1 por 1
                        foreach($oradores as $orador){ 
                ?>
                    <div class="col">
                        <div class="card h-100 shadow p-3 mb-5 bg-body rounded">
                            <img class="img-fluid card-img-top" style="object-fit:cover; width:100%; height:100%;" src="<?php echo BASE_URL; ?>assets/upload/<?php echo $orador['imagen'];?>" alt="<?php echo $orador['nombre'];?>">
                           
                            <div class="card-body">
                                
                                <h5 class="card-title"><?php echo $orador['nombre'];?> <?php echo $orador['apellido'];?></h5>
                                <p class="card-text"><?php echo $orador['mail'];?></p>
                                <p class="card-text"><?php echo $orador['tema'];?></p>
                            </div>
                        </div>
                    </div>
                <?php } ?>
                </div>
            </div>
        </div>
        <?php 

        if ( isset( $_SESSION['usuario']) and  $_SESSION['usuario']=="Admin") {
         
        ?>
            <div class="d-flex justify-content-center">
               <a class="btn btn-lg btn-success mt-3 text-center" href="<?php echo BASE_URL; ?>/pages/listado_admin.php">Crud de oradores</a>
            </div>       
        <?php 
        } else {
           
        ?>
           <div class="d-flex justify-content-center">
               <a class="btn btn-lg btn-success mt-3 text-center" href="<?php echo BASE_URL; ?>/pages/listado.php">Conoce más oradores</a>
            </div> 
        <?php 
        }
        ?>
                    
       
    </section>
         
            <!--fin de cards-->
            <section id="lugarFecha">
              <div class="card mb-3" >
                <div class="row g-0">
                  <div class="col-md-6">
                    <img src="<?php echo BASE_URL; ?>assets/img/honolulu.jpg" alt="Paisaje" loading="lazy" height="400" >
                  </div>
                  <div class="col-md-6  bg-dark">
                    <div class="card-body">
                      <h5 class="card-title colorBlanco">Bs.As. Octubre</h5>
                      <p class="card-text colorBlanco">Lorem ipsum dolor sit amet consectetur adipisicing elit. Id atque deserunt accusantium dolor voluptatum, tenetur harum tempora neque nesciunt tempore in nemo ut inventore temporibus reiciendis? Atque obcaecati porro repellendus!</p>
                      <a class="nav-link" href="#">
                        <button type="button" class="btn btn-outline-light text-white">Conocé Más</button>
                        </a> 
                    </div>
                  </div>
                </div>
              </div>
            </section>


            <section id="convierteteenOrador">
                <figure class="text-center">
                    <blockquote class="blockquote">
                      <p>CONVIERTETE EN UN</p>
                    </blockquote>
                    <h3 class="fw-semibold">ORADOR</h3>
                    <p>Anotate como orador para dar una <span class="subpunteado">charla ignite</span>. Cuéntanos de que quieres hablar!</p>
                </figure>
                <form action="<?php echo BASE_URL; ?>includes/guarda_orador.php" method="post" enctype="multipart/form-data">
                 <div class="container-form">
                  <div class="input-group mb-3">
                    <input type="text" name="nombre" class="form-control" placeholder="Nombre" aria-label="nombre">
                    <input type="text" name="apellido" class="form-control" placeholder="Apellido" aria-label="apellido">
                    </div>
                    <div class="row">
                        <div class="col mb-3">
                            <input type="email" name="email" id="email" class="form-control" placeholder="Email" aria-label="Email" required>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="archivo">Imagen del Orador</label>
                        <input required class="form-control" type="file" name ="archivo" id="archivo">
                    </div>
                    <div>
                      <div class="form-floating">
                        <textarea class="form-control" name="tema" id="tema" placeholder="Sobre que quieres hablar?" style="height: 100px" id="floatingTextarea"></textarea><label for="floatingTextarea">Sobre que quieres hablar?</label>                       
                      </div>
                      <p  class="fs-8">Recuerda incluir un titulo para tu charla</p>  
                  </div>
                      <input type="submit" class="btn btn-primary botonenviar" value="Enviar">
                      
                   <br>
                </div>
            </form>
              </section>
        </main>