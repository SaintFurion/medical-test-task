<?
include_once "classCSV.php";

// функция выполнения команд
function action($way, $command, $values) {
  $csv = new classCSV;
  $get_csv = [];

  if (!empty($way)) {
    $get_csv = $csv->openFile($way);
  }

  if (!empty($command) && is_array($get_csv)) {
    if ($command == 'first') {
      $get_csv = $csv->first($get_csv);
      $_SESSION['CURSOR'] = $get_csv[0];
      $text = output($get_csv);
      $text .= $get_csv[2];
    }
    elseif ($command == 'next') {
      $get_csv[0] = $_SESSION['CURSOR'];
      $get_csv = $csv->next($get_csv);
      $_SESSION['CURSOR'] = $get_csv[0];
      $text = output($get_csv);
      $text .= $get_csv[2];
    }
    elseif ($command == 'prev') {
      $get_csv[0] = $_SESSION['CURSOR'];
      $get_csv = $csv->prev($get_csv);
      $_SESSION['CURSOR'] = $get_csv[0];
      $text = output($get_csv);
      $text .= $get_csv[2];
    } else {
      $text .= "<p>Команда введена неверно</p>";
    }
  } else {
    $text .= $get_csv[1];
  }

  // вывод конкретных данных
  if (!empty($values)) {
    $get_csv[0] = $_SESSION['CURSOR'];
    $csv->setValues($values);
    $text .= $csv->getValues($get_csv);
  }

  return $text;
}

// вывод массива данных
function output($array) {
  if (!empty($array)) {
    $arr = '';
    foreach ($array[1][$array[0]] as $elem) {
      $arr .= $elem . ' ';
    }
    $text .= '<p>' . $arr . '</p>';
  }
  return $text;
}
?>
