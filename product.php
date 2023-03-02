<?php
  include 'connect.php';
  // Product
  $getmorecategorie = $_GET['morecategories'];

  $sql_product = "SELECT * FROM product WHERE product_div = '$getmorecategorie' ";
  $queryProduct = mysqli_query($con, $sql_product);
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">
    <!-- Icon -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous"></head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  </head>
  <body>

    <!-- Navbar -->
    <?php include 'include/navbar.php';?>
    
    <div class="container my-5">
      <div class="row">
        <?php
          while($catData = mysqli_fetch_array($queryProduct)) {
              $product_id = $catData['product_id'];
              $product_name = $catData['product_name'];
              $product_img = $catData['product_img'];
              $product_details = $catData['product_details'];
              $product_div = $catData['product_div'];
        ?>
        <div class="col-sm-4">
          <div class="card" id="product_card">
            <img src="<?php echo $product_img?>" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title"><?php echo $product_name?></h5>
              <p class="card-text"><?php echo $product_details?></p>
            </div>
          </div>
        </div>
        <?php }?>

      </div>
    </div>

    <!-- Footer -->
    <?php include 'include/footer.php';?>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>
</html>