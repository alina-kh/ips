<?php
header("Content-Type: text/plain");

// Разработайте PHP приложение Survey Saver, которое сохраняет анкеты пользователей в файловой системе. Данные передаются в строке запроса. Возможные параметры запроса: first_name, last_name, email, age. Все файлы необходимо сохранять в директорию data. Название файла: <email>.txt Некоторые параметры могут отсутствовать, параметр email обязательный. В случае если такой файл <email>.txt уже существует, данные в этом файле обновляются.
$first_name = $_GET['name'];
$last_name = $_GET['last'];
$email = $_GET['email'];
$age = $_GET['age'];
$fileName = $email . '.txt';

if(!isset($first_name)){
  $first_name = ' ';
  echo "Имя пользователя не введено.".PHP_EOL;
}

if(!isset($last_name)){
  $last_name = ' ';
  echo "Фамилия пользователя не указана.".PHP_EOL;
}
if(!isset($age)){
  $age = ' ';
  echo "Возраст пользователя не указан.".PHP_EOL;
}

if(isset($_GET['email']))
{
  //file_put_contents('data/'.$fileName, "имя: " . $first_name . "\n". "фамилия: " . $last_name ."\n". "email: " . $email ."\n". "возраст: " . $age);
  file_put_contents('data/' . $fileName, $first_name . ',' . $last_name . ',' . $email . ',' . $age);
  echo 'Данные успешно записаны.; 
}
else {
  echo 'Необходимо ввести email';
}



