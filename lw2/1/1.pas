PROGRAM Print(INPUT, OUTPUT);
USES 
  Dos;
BEGIN {Print}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN(GetEnv('REQUEST_METHOD'));
  WRITELN;
  WRITELN(GetEnv('QUERY_STRING'));
  WRITELN;
  WRITELN(GetEnv('CONTENT_LENGTH'));
  WRITELN;
  WRITELN(GetEnv('HTTP_USER_AGENT'));
  WRITELN;
  WRITELN(GetEnv('HTTP_HOST'));
END. {Print}

