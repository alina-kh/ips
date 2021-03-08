<?php
header("Content-Type: text/plain");

// Разработайте PHP приложение Survey Info, которое выводит данные анкеты пользователя, сохраненные в задании 4. Если значение отсутствует, выводить вместо него пробел.

//Выводить данные необходимо в виде:

//First Name: <name>
//Last Name: ...
//Email: <email>
//Age: 30
//В GET параметрах запроса передается email в виде ?email=ivan@mail.com.
$email = $_GET['email'];
if (isset($email)){
  $content = file_get_contents('../4/data/'.$email.'.txt');

  $array = explode(',', $content);
  echo "first name: " . $array[0] . "\n";
  echo "last name: ". $array[1]. "\n";
  echo "email: " . $array[2]. "\n";
  echo "age: " . $array[3]. "\n";
}