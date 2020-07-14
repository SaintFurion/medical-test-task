<?
class classCSV {

  // метод считывания данных в память
  public function openFile($csvFile) {
    if (file_exists($csvFile)) {
      $handle = fopen($csvFile, "r");
      $array = [];
      while(($line = fgetcsv($handle, 0, ";")) != false) {
        $array[] = $line;
      }
      fclose($handle);
    } else {
      $array = "Файл " . $csvFile . " не найден";
    };
    $bigArray = [];
    $bigArray[0] = 0;
    $bigArray[1] = $array;
    return $bigArray;
  }

  // метод перемещения указателя на первую запись
  public function first($array) {
    $array[0] = 1;
    $array[2] = '<p class="first">Первая запись</p>';
    return $array;
  }

  // метод перемещения указателя на следующую запись
  public function next($array) {
    $array[0]++;
    if($array[0] == count($array[1])-1) $array[2] = '<p>Последняя запись</p>';
    return $array;
  }

  // метод перемещения указателя на предыдущую запись
  public function prev($array) {
    $array[0]--;
    if($array[0] == 1) $array[2] = '<p>Первая запись</p>';
    return $array;
  }

}
?>
