<?php
header("Content-Type: text/plain");

// Разработайте PHP приложение Survey Info, которое выводит данные анкеты пользователя, сохраненные в задании 4. Если значение отсутствует, выводить вместо него пробел.

//Выводить данные необходимо в виде:

//First Name: <name>
//Last Name: ...
//Email: <email>
//Age: 30
//В GET параметрах запроса передается email в виде ?email=ivan@mail.com.
function surveyInfo()
{
  $email = trim($_GET['email']);
  if (isset($email))
  {
    $filePath = '../4/data/'.$email.'.txt'; 
    if (file_exists($filePath)) 
    {
      $content = file_get_contents($filePath);
      $array = explode(',', $content);
      $res = "first name: " . $array[0] . "\n" . 
        "last name: ". $array[1]. "\n" .
        "email: " . $array[2]. "\n" . 
        "age: " . $array[3]. "\n";          
    }
    else 
    {
      $res = "Пользователя $email нет в системе";
    }
  }
  else 
  {
    $res = "Введите email";
  }
	return $res;    
}
echo surveyInfo();
