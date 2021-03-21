PROGRAM SarahRevere(INPUT, OUTPUT);
USES Dos;
VAR
  Lanterns: STRING;
VAR
  B: ShortString;
BEGIN
  Lanterns := GetEnv('QUERY_STRING');
  B := copy(Lanterns, 10, 1);
  IF B = '1'
    THEN
    BEGIN
	  WRITELN('Content-Type: text/plain');
	  WRITELN;
      WRITELN('Lorem ipsum dolor sit amet, consectetur adipiscing elit.');
	END
  ELSE
  IF B = '2'
    THEN
    BEGIN
	  WRITELN('Content-Type: text/plain');
      WRITELN;
      WRITELN('Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque');
    END
  ELSE
    BEGIN
	  WRITELN('Content-Type: text/plain');
      WRITELN;
      WRITELN('Sarah didnt say');
    END;	
END.
