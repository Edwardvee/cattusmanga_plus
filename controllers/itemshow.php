<?php



if (!isset($_GET['type']) || !isset($_GET['page'])) {
?><script>
    window.location.href = 'tienda.php?type=all&page=1';
        if (isMobile.any()) {
          let cardbody = document.getElementById('cardbody');
          let card = document.getElementById('card');
          cardbody.className = "cardbodymobile";
          card.className = "cardmobile";
        };
  </script> ?>
<?php
}
if (isset($_GET['lowest']) == NULL || isset($_GET['highest']) == NULL) {
  $filterprice = "";
  $fplink = "";
}
if (isset($_GET['lowest']) == 'true') {
  $filterprice = "ORDER BY price ASC";
  $fplink = "&lowest=true";
}
if (isset($_GET['highest']) == 'true') {
  $filterprice = "ORDER BY price DESC";
  $fplink = "&highest=true";
}

if ($_GET['type'] == 'all') {
  $reqtype = "";
}

if ($_GET['type'] == '1') {
  $reqtype = "AND type = 1";
}
if ($_GET['type'] == '2') {
  $reqtype = "AND type = 2";
}
if ($_GET['type'] == '3') {
  $reqtype = "AND type = 3";
}
if ($_GET['type'] > 3) {
  $reqtype = "";
}
if (!isset($_GET['page']) || isset($_GET['page']) == NULL || $_GET['page'] == '') {

  $page_number = 1;
} else {

  $page_number = $_GET['page'];
}
$limite = 6;

$initial_page = ($page_number - 1) * $limite;

$sqlget = "SELECT * FROM itemsshop WHERE showitem = 1 " . $reqtype . "  " . $filterprice . ";";
$resultget = mysqli_query($conn, $sqlget);
$sql = "SELECT * FROM itemsshop WHERE showitem = 1 " . $reqtype . "  " . $filterprice . " LIMIT " . $initial_page . ',' . $limite . ";";
$result = mysqli_query($conn, $sql);
$items = array();
if (mysqli_num_rows($result) > 0) {
  while ($row = mysqli_fetch_assoc($result)) {
    $items[] = $row;
  }
}
$total_rows = mysqli_num_rows($resultget);
$total_pages = ceil($total_rows / $limite);


foreach ($items as $items) {

?>
  <div class="col-sm-2 mb-5 d-flex align-items-stretch g-4">
    <div id="card" class="card box varios">
       <img src="../pointshop/<?php echo $items['imgcode'] ?>.png" class="card-img-top"  width="100px" min-width="100px" height="300px" min-height="300px" style="margin-top:0px " alt="image"> 
      <div id="cardbody" class="card-body d-flex flex-column">
        <center><h5 class="card-title"  style=""><?php echo $items['Name'] ?></h5></center>
        <p class="card-text" ><?php echo $items['Description'] ?></p>
        <?php
        if (isset($_SESSION['datos'])) {
          $sql1 = "SELECT * FROM itemsshop INNER JOIN userinventory ON itemsshop.ID = userinventory.item_ID WHERE userinventory.user_ID =" . $_SESSION['datos']['ID'] . " AND itemsshop.ID =" . $items['ID'] . ";";

          $result1 = mysqli_query($conn, $sql1);
          $row1 = mysqli_fetch_assoc($result1);
          if (isset($row1['user_ID']) && $row1['user_ID'] == $_SESSION['datos']['ID']) {
        ?>
            <center><a href="#" class="btn btn-primary disabled" style=""  ><?php echo "Obtenido" ?></a></center>
          <?php } else { ?>
            <center><a href="comprar.php?itemid=<?php echo $items['ID'] ?>" class="btn btn-primary"><?php echo $items['Price'] ?> <img src="../img/cattus_coin.png" width="20" height="20"></a></center>
          <?php }
        } else if (isset($_SESSION['datos']) == false) { ?><a href="login.php" class="btn btn-primary mt-auto align-self-"><?php echo $items['Price'] . "<img src='../img/cattus_coin.png' width='20' height='20'></a>";
                                                                                                                                            } ?></a>
      </div>
    </div>
  </div>

<?php }
?>
<script>
  if (isMobile.any()) {
    let cardbodies = document.querySelectorAll('.cardbody');
    let cards = document.querySelectorAll('.card');
    cardbodies.forEach(cardbody => {
      cardbody.className = "cardbodymobile";
    });
    cards.forEach(card => {
      card.className = "cardmobile";
    });
  };
</script>
