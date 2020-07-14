<?
class classCSV {

  public $values;

  // метод считывания данных в память
  public function openFile($csvFile) {
    if (file_exists($csvFile)) {
      $array = [];
      $file = file($csvFile);
      foreach ($file as $elem) {
        $array[] = explode(";", $elem);
      }
    } else {
      $array = "Файл " . $csvFile . " не найден";
    };
    $bigArray = [];
    $bigArray[0] = 0;
    $bigArray[1] = $array;
    return $bigArray;
  }

  // установка значений свойства
  public function setValues($values) {
    $this->values = $values;
  }

  // метод вывода необходимых данных
  public function getValues($array) {
    for ($i = 0; $i < count($array[1][0]); $i++) {
      if ($this->values == $array[1][0][$i]) {
        $values = '<br>Значение данных колонки конкретной строки: ' . $array[1][$array[0]][$i];
        break;
      }
      else $values ='<br>Вы ввели неправильные данные';
    }
    return $values;
  }

  // метод перемещения указателя на первую запись
  public function first($array) {
    $array[0] = 1;
    $array[2] = 'Первая запись';
    return $array;
  }

  // метод перемещения указателя на следующую запись
  public function next($array) {
    $array[0]++;
    if($array[0] == count($array[1])-1) $array[2] = 'Последняя запись';
    return $array;
  }

  // метод перемещения указателя на предыдущую запись
  public function prev($array) {
    $array[0]--;
    if($array[0] == 1) $array[2] = 'Первая запись';
    return $array;
  }

}
?>
