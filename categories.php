<?php
  include 'connect.php';

  $getcategorie = $_GET['categories'];

  $sql = "SELECT * FROM dropdownmenu";
  $query = mysqli_query($con, $sql);

  $sql_cat = "SELECT * FROM categories WHERE cat_div = '$getcategorie' ";
  $queryCat = mysqli_query($con, $sql_cat);
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Categories</title>
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
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <?php
                while($catData = mysqli_fetch_array($queryCat)) {
                    $cat_id = $catData['cat_id'];
                    $cat_img = $catData['cat_img'];
                    $cat_headline = $catData['cat_headline'];
                    $cat_txt = $catData['cat_txt'];
            ?>
          <div class="col">
            <a href="product.php?morecategories=<?php echo $cat_headline ?>">
                <div class="card h-100" id="product_card">
                  <img src="<?php echo $cat_img ?>" class="card-img-top" alt="...">
                  <div class="card-body">
                    <h5 class="card-title"><?php echo $cat_headline ?></h5>
                    <p class="card-text"><?php echo $cat_txt ?></p>
                  </div>
                </div>
            </a>
          </div>
            <?php }?>

        </div>
    </div>


    <!-- Footer -->
    <?php include 'include/footer.php';?>
    
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>
</html>