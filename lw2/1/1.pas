{Напечатайте в HttpResponse значение переменных окружения REQUEST_METHOD, QUERY_STRING, CONTENT_LENGTH, HTTP_USER_AGENT, HTTP_HOST

Чтобы QUERY_STRING не было пустым нужно добавить в url адрес значение, например: ?name=Ivan

CONTENT_LENGTH будет пустым поскольку вы отправляете GET запрос, пока отправить POST запрос не получиться, мы разберем это позже.
}

