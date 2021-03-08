{Реализуйте программу SarahRevere. Результат должен печататься в HttpResponse, входные данные должны передаваться в QUERY_STRING в формате ?lanterns=1 или ?lanterns=2. В данном задании можно сравнивать QUERY_STRING с необходимой строкой}
PROGRAM SarahRevere(INPUT, OUTPUT);
VAR
Lanterns: CHAR;
BEGIN
READ(Lanterns);
IF Lanterns = '1'
THEN
WRITELN('Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
ELSE
IF Lanterns = '2'
THEN
WRITELN('Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque')
ELSE
WRITELN('Sarah didn''t say')
END.