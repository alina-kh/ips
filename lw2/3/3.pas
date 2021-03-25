PROGRAM HelloUser(INPUT, OUTPUT);
USES Dos;
VAR
  name, messages, x: STRING;
  n, xLength: integer;
BEGIN
  x := GetEnv('QUERY_STRING');
  xLength := length(x);
  n := Pos('name=', x);
  name := copy(x, n + 5, xLength);
  messages := 'Hello dear,' + name;
  WRITELN('Content-Type: text/plain');
  WRITELN;
  IF name = ''
  THEN
  BEGIN
    messages := 'Hello Anonimus';
  END;
  WRITELN(messages);
END.
