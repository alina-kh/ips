<?php
// Разработайте приложение Remove Extra Blanks на языке PHP. В запросе GET передается параметр text. Скрипт выводит в стандартный поток вывода этот же текст без пробелов в начале и в конце, между словами один пробел.

header("Content-Type: text/plain");
$text = trim($_GET['text']);

echo str_replace(',' , ' ', $text);