<?php
session_start();
require_once("../server/config.php");
$sql3 = "SELECT * FROM comments INNER JOIN users ON users.ID = comments.User_ID WHERE Manga_ID = $_GET[manga] AND mangachapter = $_GET[capitulo] ORDER BY comments.c_ID DESC";
$result3 = mysqli_query($conn, $sql3);
$resultCheck = mysqli_num_rows($result3);
if ($resultCheck > 0) {
  while ($row = mysqli_fetch_assoc($result3)) if ($row['deleted_at'] == NULL) { {
?>
      <div class="d-flex flex-start mt-4">
        <a href="../controllers/perfil.php?User=<?php echo $row['ID'] ?>">
          <img class="rounded-circle shadow-1-strong me-3" src="<?php echo $row['profile_pic'] ?>" alt="avatar" width="65" height="65" />
        </a>
        <div class="flex-grow-1 flex-shrink-1">
          <div class="">
            <div class="">
              <h5 class="mb-1">
                <?php echo $row['Name'] ?>
              </h5>
              <span class="text-muted small" id="<?php echo $row['c_ID'] ?>">Hace</span>
            </div>
            <p class="small mb-0">
              <?php echo htmlspecialchars($row['content']) ?>
            </p>
          </div>
        </div>
        <?php if (isset($_SESSION['datos']['ID']) != NULL && $row['ID'] != $_SESSION['datos']['ID']) { ?>
          <div class="d-flex justify-content-end align-items-start">
            <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#report<?php echo $row['c_ID'] ?>">
              <span class="badge text-bg-secondary"><i class="bi bi-flag-fill"></i></span>
            </button>

            <div class="modal fade" id="report<?php echo $row['c_ID'] ?>" tabindex="-1" aria-labelledby="rpot" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h1 class="modal-title fs-5">Reportar comentario</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    <p>Danos más información para procesar al comentario:</p>
                    <form action="../controllers/mangas/reportarcom.php?user=<?php echo $row['ID'] ?>&id=<?php echo $row['c_ID'] ?>" method="POST">
                      <textarea type="text" class="form-control" name="information" id="informacion"></textarea>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                    <button type="submit" class="btn btn-primary">Enviar</button>
                  </div>
                  </form>
                </div>
              </div>
            </div>
          </div>

      <?php }
      } ?>
      </div>
      <hr>
      <script>
        function fecha() {
          let fechadesde = document.getElementById("<?php echo $row['c_ID'] ?>");
          var datevalue = "<?php echo $row['created_at']; ?>";
          var date = Math.abs((new Date(datevalue).getTime() / 1000).toFixed(0));
          var currentdate = Math.abs((new Date().getTime() / 1000).toFixed(0));

          var diff = currentdate - date;
          var days = Math.floor(diff / 86400);
          var hours = Math.floor(diff / 3600) % 24;
          var minutes = Math.floor(diff / 60) % 60;
          if (days >= 1) {
            fechadesde.textContent = "Hace " + days + " dias";
          } else if (days < 1 && hours > 1) {
            fechadesde.textContent = "Hace " + hours + " horas";
          } else if (days < 1 && hours < 1) {
            fechadesde.textContent = "Hace " + minutes + " minutos";
          }
        }
        fecha();
      </script>
  <?php
  }
} else {
  echo "<p class='h6'>No hay ningun comentario. Se el primero en comentar!</p>";
}
