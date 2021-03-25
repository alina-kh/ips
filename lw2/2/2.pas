{Реализуйте программу SarahRevere. Результат должен печататься в HttpResponse, входные данные должны передаваться в QUERY_STRING в формате ?lanterns=1 или ?lanterns=2. В данном задании можно сравнивать QUERY_STRING с необходимой строкой}
PROGRAM SarahRevere(INPUT, OUTPUT);
USES Dos;
VAR
  Lanterns, messages: STRING;
VAR
  B: ShortString;
BEGIN
  Lanterns := GetEnv('QUERY_STRING');
  B := copy(Lanterns, 10, 1);
  messages := 'Sarah didnt say';
  WRITELN('Content-Type: text/plain');
  WRITELN;
  IF B = '1'
  THEN
  BEGIN
    messages := 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.';
	END
  ELSE
  IF B = '2'
  THEN
  BEGIN
    messages := 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque';
  END;
  WRITELN(messages);
END.
