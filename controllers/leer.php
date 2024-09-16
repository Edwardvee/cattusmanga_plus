 <?php
   require_once "../server/config.php";
   require_once "../server/check_user_logged.php";
   require_once "../resources/funciones.php";

   $view = "leer";

   $chapterget = mysqli_real_escape_string($conn, $_GET['capitulo']);
   $mangaget = mysqli_real_escape_string($conn, $_GET['manga']);
   $chkchapter = "SELECT * FROM mangachapters WHERE Manga_ID = '$mangaget' AND number = '$chapterget';";
   $chaptergetresult = mysqli_query($conn, $chkchapter);
   $verifychapters = mysqli_num_rows($chaptergetresult);
   if (isset($_SESSION['datos']['ID'])) {
      UserLastSeen($conn, $_SESSION['datos']['ID']);
   }
   require_once "../views/layoutnf.php";
