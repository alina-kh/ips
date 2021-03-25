PROGRAM HelloUser(INPUT, OUTPUT);
USES 
  Dos;
VAR
  qSrt :  STRING;
  n, qSrtLength: INTEGER;
  i,k: INTEGER;

FUNCTION GetQueryStringParameter(key: STRING): STRING;
BEGIN
  qSrt := GetEnv('QUERY_STRING');
  n := Pos(key, qSrt);
  IF n = 0 
  THEN 
  BEGIN
	GetQueryStringParameter := ''
  END
  ELSE 
  BEGIN
    qSrtLength := length(qSrt);
	n := n + length(key) + 1;
	k := n;
    FOR i := n TO qSrtLength 
    DO 
    BEGIN
      IF qSrt[i] = '&' 
      THEN 
        BREAK;
      IF i = qSrtLength + 1
      THEN 
      BREAK;
      k := k + 1;
	END;
	GetQueryStringParameter := Copy(qSrt, n, k - n);
  END;
END;

BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'));
END.
