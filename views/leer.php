<?php
if (isset($_GET['capitulo']) == NULL || !isset($_GET['capitulo'])) {
  echo "No disponible";
} else {
  if ($verifychapters < 1) { ?>
    Capítulo no disponible
    <?php } else {
    if (isset($_GET['error'])) {
      if ($_GET['error'] == "true") {
        echo '<div class="alert alert-danger" role="alert">
            Algo salio mal.
              </div>';
      }
    }
    if (isset($_GET['manga']) == NULL || isset($_GET['capitulo']) == NULL || !isset($_GET['capitulo'])) {
      echo "No disponible";
    } else {
    ?>
      <div class="container">
        <center><button type="button" id="back" class="btn btn-primary" <?php if ($_GET['capitulo'] == 1) { ?> disabled <?php   } ?> onclick="window.location.href = 'leer?manga=<?php echo $_GET['manga']; ?>&capitulo=<?php echo $_GET['capitulo'] - 1; ?>';">
            <i class="bi bi-skip-backward"></i>
          </button>
          <button type="button" class="btn btn-secondary"> <a href="manga.php?manga=<?php echo $_GET['manga']; ?>#chapters"><i class="bi bi-list" style=""></i></a> </button>

          <button type="button" class="btn btn-primary" id="next" onclick="window.location.href = 'leer.php?manga=<?php echo $_GET['manga']; ?>&capitulo=<?php echo $_GET['capitulo'] + 1; ?>';"><i class="bi bi-skip-forward"></i>
          </button>
        </center>
        <?php
        $count = count(glob("../mangas/$_GET[manga]/$_GET[capitulo]/*.jpg"));
        ?>

        <div class="containerimg">
          <div class="row d-flex">
            <div class="d-flex fill">
              <div class="col-6 align-self-stretch col-md-6 page" onclick="prevPage()"></div>
              <div class="col-6 align-self-stretch col-md-6 page1" onclick="nextPage()"></div>
              <img id="pagina" class="paginapc" src="../mangas/<?php echo $_GET['manga'] ?>/<?php echo $_GET['capitulo'] ?>/1.jpg" onerror="this.src='../img/notfound.png'">
            </div>
          </div>
        </div>

      </div>
      <script type="text/javascript" charset="utf-8" async defer>
        if (isMobile.any()) {
          let img = document.getElementById('pagina');
          img.className = "paginamobile";
        };
      </script>
      <div class="d-flex justify-content-center">
        <center><button type="button" id="back" class="btn btn-primary" <?php if ($_GET['capitulo'] == 1) { ?> disabled <?php   } ?> onclick="window.location.href = 'leer?manga=<?php echo $_GET['manga']; ?>&capitulo=<?php echo $_GET['capitulo'] - 1; ?>';">
            <i class="bi bi-skip-backward"></i>
          </button>
          <button type="button" class="btn btn-secondary"> <a href="manga.php?manga=<?php echo $_GET['manga']; ?>#chapters"><i class="bi bi-list" style=""></i></a> </button>

          <button type="button" class="btn btn-primary" id="next" onclick="window.location.href = 'leer.php?manga=<?php echo $_GET['manga']; ?>&capitulo=<?php echo $_GET['capitulo'] + 1; ?>';"><i class="bi bi-skip-forward"></i>
          </button>
        </center>
      </div>
      <center>
        <p id="pagtext"> Página 1 de <?php echo $count ?></p>
      </center>

      <!--       
      <div class="anuncio1 mx-auto d-block">
        <a href="https://www.coca-cola.com.ar/"> <img src="../img/otros/cocacola.png"> </a>
      </div> -->

      <script type="application/javascript">
        lastpage = <?php echo $count ?>;
        currentpage = 1;
        let pagtext = document.getElementById("pagtext")



        <?php
        $getchapters = "SELECT * FROM mangachapters WHERE Manga_ID =" . $_GET['manga'] . " ORDER BY number DESC;";
        $resgetchapters = mysqli_query($conn, $getchapters);
        if (!$resgetchapters) {
          die();
        }
        $mangachapters = array();
        while ($row = mysqli_fetch_assoc($resgetchapters)) { {
            $mangachapters[] = $row;
          }
        }
        $keys = array_keys($mangachapters);
        $lastKey = $keys[count($keys) - 1];
        $firstchapter = $mangachapters[$lastKey]['number'];
        if ($firstchapter == $_GET['capitulo']) { ?>
          $(document).ready(function() {
            $('#back').addClass('disabled');
          });

        <?php }
        $lastchapter =   $mangachapters[0]['number'] - 1;
        if ($_GET['capitulo'] >  $lastchapter) { ?>
          $(document).ready(function() {
            $('#next').addClass('disabled');
          });
        <?php } ?>


        function minlimiter() {
          previous = currentpage - 1;
          <?php if ($_GET['capitulo'] !=  $firstchapter) { ?>
            if (previous < 1) {
              window.location.href = 'leer.php?manga=<?php echo $_GET['manga']; ?>&capitulo=<?php echo $_GET['capitulo'] - 1; ?>';
            }
          <?php } else { ?>
            if (previous < 2) {
              currentpage = 2;
            }
          <?php } ?>
        }

        <?php if ($_GET['capitulo'] == $mangachapters[0]['number']) {
        ?>

          function maxlimiter() {
            if (lastpage == currentpage) {
              currentpage = lastpage - 1;
            }
          }
        <?php } else { ?>

          function maxlimiter() {
            if (lastpage == currentpage) {
              window.location.href = 'leer?manga=<?php echo $_GET['manga']; ?>&capitulo=<?php echo $_GET['capitulo'] + 1; ?>';
            }
          }

        <?php } ?>

        function nextPage() {
          maxlimiter();
          let pagina = document.getElementById("pagina");
          currentpage++;
          pagina.src = `../mangas/<?php echo $_GET['manga'] ?>/<?php echo $_GET['capitulo'] ?>/${currentpage}.jpg`;
          pagtext.textContent = `Pagina ${currentpage} de ${lastpage}`;
          document.body.scrollTop = 10; // Para safari segun bootstrap
          document.documentElement.scrollTop = 10; // Para Chrome, Firefox, IE and Opera segun bootstrap parte 2
        }


        function prevPage() {
          minlimiter()
          let pagina = document.getElementById("pagina");
          currentpage--;
          pagina.src = `../mangas/<?php echo $_GET['manga'] ?>/<?php echo $_GET['capitulo'] ?>/${currentpage}.jpg`;
          pagtext.textContent = `Pagina ${currentpage} de ${lastpage}`;
          document.body.scrollTop = 10; // Para safari segun bootstrap
          document.documentElement.scrollTop = 10; // Para Chrome, Firefox, IE and Opera segun bootstrap parte 2
        }
        window.addEventListener("keydown", (event) => {
          if (event.defaultPrevented) {
            return;
          }
          switch (event.code) {

            case "ArrowLeft":

              prevPage()
              document.body.scrollTop = 10; // Para safari segun bootstrap
              document.documentElement.scrollTop = 10; // Para Chrome, Firefox, IE and Opera segun bootstrap parte 2
              break;

            case "ArrowRight":
              nextPage()
              document.body.scrollTop = 10; // Para safari segun bootstrap
              document.documentElement.scrollTop = 10; // Para Chrome, Firefox, IE and Opera segun bootstrap parte 2
              break;
          }
          refresh();
          if (event.code !== "Tab") {
            event.preventDefault();
          }
        }, true);


        function deactivate() {
          submit.className = "btn btn-primary btn-sm disabled";
        }

        function activate() {
          let submit = document.getElementById("submit");
          let content = document.getElementById("textarea");
          submit.className = "btn btn-primary btn-sm ";
          if (content.value == '') {
            deactivate();
          }
        }
      </script>
      </div>
      <div class="container">

        <?php if (isset($_SESSION['datos'])) { ?>
          <script type="module" src="../js/comentar.js"></script>
          <div class="container-fluid comentariossection">
            <h6>Comentarios</h6>

            <div class="card-body py-3 border-0">
              <div class="d-flex flex-start w-100">
                <img class="rounded-circle shadow-1-strong me-3" src="<?php echo $_SESSION['datos']['profile_pic'] ?>" width="70px" height="70px" />
                <div class="form-outline w-100">
                  <form method="post" id="comentar" oninput="activate()" action="">
                    <textarea class="form-control" name="comment" id="textarea" oninput="activate()" rows="4" style="background: #fff;" placeholder="Escribe tu comentario."></textarea>
                    <label class="form-label" for="textarea"></label>
                </div>
              </div>
              <div class="float-end mt-2 pt-1">
                <input type="submit" name="submit" id="submit" class="btn btn-primary btn-sm disabled">
              </div>
            </div>
            </form>

            <div class="toast-container position-fixed bottom-0 end-0 p-3">
              <div id="toast-success" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
                <div class="toast-header w-100 d-flex justify-content-between">
                  <img src="../img/Cattusmangalogo.png" style="width:60px" class="rounded me-2 " alt="...">
          
                  <button type="button" class="btn-close " data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
                <div class="toast-body">
                  Comentario subido con éxito.
                </div>
              </div>
            </div>

          <?php } else { ?>
            <br>
            <a class="text-primary" href="login.php">Inicia sesión para comentar!</a>
          <?php }; ?>
          </div>
      </div>
      </div>
      <div class="container my-5 py-5">
        <div class="row d-flex">
          <div class="col-md-12 col-lg-10 col-xl-8">
            <div class="row">
              <div class="col" id="comentarios">
                <hr>
                <script type="module" src="../js/getComentarios.js">
                  < /div> < /
                  div > <
                    /div> < /
                  div >

                    <
                    /div>

                  <?php }
              }
            } ?>