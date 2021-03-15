<?php
header("Content-Type: text/plain");

// Разработайте PHP приложение Survey Saver, которое сохраняет анкеты пользователей в файловой системе. Данные передаются в строке запроса. Возможные параметры запроса: first_name, last_name, email, age. Все файлы необходимо сохранять в директорию data. Название файла: <email>.txt Некоторые параметры могут отсутствовать, параметр email обязательный. В случае если такой файл <email>.txt уже существует, данные в этом файле обновляются.
function surveySaver()
{
    $first_name = $_GET['name'];
    $last_name = $_GET['last'];
    $email = $_GET['email'];
    $age = $_GET['age'];
    $fileName = $email . '.txt';

    if(!isset($first_name))
    {
        $first_name = ' ';
        $res = 'Имя пользователя не введено'."\n";
        return $res;
    }
      
    if(!isset($last_name))
    {
        $last_name = ' ';
        $res = 'Фамилия пользователя не указана' ."\n";
        return $res;
    }

    if(!isset($age))
    {
        $age = ' ';
        $res = 'Возраст пользователя не указан' ."\n";
        return $res;
    }

    if(isset($_GET['email']))
    {
        file_put_contents('data/' . $fileName, $first_name . ',' . $last_name . ',' . $email . ',' . $age);
        $res = 'Данные успешно записаны в файл ' . $email . '.txt'; 
        return $res;
    }
    else 
    {
        $res = 'Необходимо ввести email';
        return $res;
    }
}
echo surveySaver();
