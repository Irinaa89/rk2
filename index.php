<?php require("config.php");?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./styles/style.css" />
    <title>Perfumery&Makeup</title>
  </head>
  <body>
    <header class="header">
      <div class="wrapper">
        <div class="header__wrapper">
          <div class="logo"><a href="./index.php">Perfumery&Makeup</a></div>
        </div>
      </div>
    </header>

    <section class="underheader">
      <div class="wrapper">
        <div class="underheader__wrapper">
          <ul class="types">
            <li class="types__item"><a href="./index.php?type=man">Парфюмерия</a></li>
            <li class="types__item"><a href="./index.php?type=woman">Макияж</a></li>
          </ul>
          <ul class="authcart">
            <?php 

            if (isset($_GET["user"]) && $_GET["user"] != "") {
                echo '
                    <li><p>Здравствуйте, '.$_GET["user"].'</p></li>
                ';
            } else {
                echo '
                    <li class="authcart__item"><a class="login" href="./login.php">Войти</a></li>
                ';
            }
            
            ?>
          </ul>
        </div>
      </div>
    </section>

    <main class="main">
      <div class="wrapper">
        <div class="main__wrapper">
            <h2 class="products__title">Каталог товаров</h2>
          <ul class="products">
                <?php 

                if (!isset($_GET["type"])) {
                    $query = mysqli_query($connect, "SELECT * FROM products");

                    $products = mysqli_fetch_all($query);

                    foreach ($products as $product) {
                        echo '
                        <li class="products__item">
                            <img src="'.$product[3].'" width="250" height="300" />
                            <p class="price">'.$product[2].'</p>
                            <p class="title">'.$product[1].'</p>
                         </li>
                        ';
                    }
                } else {
                    if ($_GET["type"] == "man") {
                        $query = mysqli_query($connect, "SELECT * FROM products WHERE type='Perfumery'");

                        $products = mysqli_fetch_all($query);

                        foreach ($products as $product) {
                            echo '
                            <li class="products__item">
                                <img src="'.$product[3].'" width="250" height="300" />
                                <p class="price">'.$product[2].'</p>
                                <p class="title">'.$product[1].'</p>
                            </li>
                            ';
                        }
                    }
    
                    if ($_GET["type"] == "woman") {
                        $query = mysqli_query($connect, "SELECT * FROM products WHERE type='Makeup'");

                        $products = mysqli_fetch_all($query);

                        foreach ($products as $product) {
                            echo '
                            <li class="products__item">
                                <img src="'.$product[3].'" width="250" height="300" />
                                <p class="price">'.$product[2].'</p>
                                <p class="title">'.$product[1].'</p>
                            </li>
                            ';
                        }
                    }
                }
                
                ?>  
            </ul>
        </div>
      </div>
    </main>

    <footer class="footer">
      <div class="wrapper">
        <div class="footer__wrapper">
          <p class="last-update">Last update <span class="blue"><?php echo date("Y:h:i")?></span></p>
          <p class="arr">All rights reserved</p>
          <p class="author">Created by <span class="blue">Merkel Irina</span></p>
        </div>
      </div>
    </footer>
  </body>

</html>
