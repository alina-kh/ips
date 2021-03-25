<?php

// header("Content-Type: text/plain");

// Разработайте PHP приложение Survey Saver, которое сохраняет анкеты пользователей в файловой системе. Данные передаются в строке запроса. Возможные параметры запроса: first_name, last_name, email, age. Все файлы необходимо сохранять в директорию data. Название файла: <email>.txt Некоторые параметры могут отсутствовать, параметр email обязательный. В случае если такой файл <email>.txt уже существует, данные в этом файле обновляются.
function surveySaver()
{
	$first_name = trim($_GET['name']) ;
	$last_name = trim($_GET['last']) ;
	$age = trim($_GET['age']) ;
	$email = trim($_GET['email']);
	
	if (!preg_match("/[0-9a-z_]+@[0-9a-z_^\.]+\.[a-z]{2,3}/i", $email)) 
  {
		$res = 'Неверно введен е-mail!';
	}
	else
	{
		$fileName = $email . '.txt';
		file_put_contents('data/' . $fileName, $first_name . ',' . $last_name . ',' . $email . ',' . $age);
		$res = 'Данные успешно записаны в файл ' . $email . '.txt'; 
	}
	return $res;
}
echo surveySaver();
