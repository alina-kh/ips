PROGRAM HelloUser(INPUT, OUTPUT);
USES 
  Dos;
VAR
  Name: STRING;
BEGIN
  Name := GetEnv('QUERY_STRING');
  IF Name = ''
  THEN
  BEGIN
    WRITELN('Content-Type: text/plain');
    WRITELN;
    WRITELN('Hello Anonimus');
  END
  ELSE
  BEGIN
    WRITELN('Content-Type: text/plain');
    WRITELN;
    WRITELN('Hello dear, ', Name);
  END;
END.
