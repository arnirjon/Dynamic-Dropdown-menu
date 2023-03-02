<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">AR Nirjon</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Product
          </a>
          <ul class="dropdown-menu">
            <?php
              while ($data = mysqli_fetch_array($query)) {
                $id = $data['id'];
                $name = $data['name'];
                $menu_div = $data['menu_div'];
            ?>
            <li><a class="dropdown-item" href="categories.php?categories=<?php echo $menu_div ?>"><?php echo $name ?></a></li>
            <?php }?>
          </ul>
        </li>
        <li class="nav-item">
          <a href="https://nirjon.ml" class="nav-link">Contact</a>
        </li>
      </ul>
      <div class="text-end">
        <small class="follow">Follow us:</small>
        <a class="text-white-50 ms-3" href="https://github.com/arnirjon" title="Github" target="_blank">
          <i class="fab fa-github"></i>
        </a>
        <a class="text-white-50 ms-3" href="https://nirjon.ml" title="Website" target="_blank">
          <i class='fa fa-globe'></i>
        </a>
        <a class="text-white-50 ms-3" href="https://www.linkedin.com/in/atikur-rahamn" title="Linkedin" target="_blank">
          <i class="fab fa-linkedin-in"></i>
        </a>
      </div>
    </div>
  </div>
</nav>