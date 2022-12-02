<?php 
require("config.php");

$alertText = "";
$alertType = "";


if (!empty($_POST)) {
    $result = mysqli_query($connect, "SELECT * FROM users WHERE login=\"".$_POST['login']."\"");

    if (mysqli_num_rows($result) == 0) {
    $query = mysqli_query($connect, "INSERT INTO users (login, password) VALUES (
      \"".$_POST["login"]."\",
        \"".$_POST["password"]."\"
    )");

    $alertText = "Вы успешно зарегистрировались!";
    $alertType = "success";
    } else {
        $alertText = "Такой пользователь уже существует!";
        $alertType = "error";
    }
    
}

?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./styles/style.css" />
    <link rel="stylesheet" href="./styles/log-reg.css" />
    <title>Register</title>
  </head>
  <body>
    <header class="header">
      <div class="wrapper">
        <div class="header__wrapper">
            <div class="logo"><a href="./index.php">Perfumery&Makeup</a></div>
        </div>
      </div>
    </header>

    <main class="register">
      <div class="wrapper">
        <div class="register__wrapper">
        <?php echo "<div class='".$alertType."'>".$alertText."</div>"?>
          <h1>Регистрация</h1>
          <form method="POST">
            <div class="form__wrapper">
              <div class="form__item">
                <label for="login">Введите логин</label>
                <input type="text" id="login" name="login" />
              </div>

              <div class="form__item">
                <label for="password">Введите пароль</label>
                <input type="password" id="password" name="password" />
              </div>

              <div class="btn">
                <button type="submit">Зарегистрироваться</button>
              </div>

              <div class="haveacc">
                <a href="./login.php">Есть аккаунт?</a>
              </div>
            </div>
          </form>
        </div>
      </div>
    </main>

    <footer class="footer register-footer">
      <div class="wrapper">
        <div class="footer__wrapper">
          <p class="last-update">Last update <span class="blue"><?php echo date("Y:h:i")?></span></p>
          <p class="arr">All rights reserved</p>
          <p class="author">create by <span class="blue">Merkel Irina</span></p>
        </div>
      </div>
    </footer>
  </body>
</html>
