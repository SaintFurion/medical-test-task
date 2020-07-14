<?
session_start();

include_once "functions.php";

$text = action($_POST['way'],  $_POST['command']);
?>
<!Doctype html>
<html>
<head>
  <title>Тестовое задание</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <header>
    <div class="container">
      <div class="clearfix">
        <h1>Тестовое задание</h1>
      </div>
      <h2>Консоль</h2>
      Доступные команды:
      <ol>
        <li>Введите путь до CSV-файла;</li>
        <li>first - переместить указатель на первую запись;</li>
        <li>next - переместить указатель на следующую запись;</li>
        <li>eof - признак конца файла.</li>
      </ol>
      <form action='' method='POST'>
        <input type='text' name='way' placeholder='Введите путь' value='<?=$_POST['way']?>'><br>
        <input type='text' name='command' placeholder='Введите команду'><br>
        <input type='submit' name='submit' value='Отправить'><br>
      </form>
      <?=$text;?>
    </div>
  </header>
</body>
</html>
