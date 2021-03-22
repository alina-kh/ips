PROGRAM HelloUser(INPUT, OUTPUT);
USES 
  Dos;
VAR
  firstName, lastName, qSrt, age:  string;
  n: integer;
BEGIN
  qSrt := GetEnv('QUERY_STRING');
  Delete(qSrt, 1, 10);
  n := Pos('lastname=', qSrt);
  firstName := Copy(qSrt, 1, n-2);
  Delete(qSrt, 1, 9);
  Delete(qSrt, 1, n-1);
  n := Pos('&age=', qSrt);
  lastName := Copy(qSrt, 1, n-1);
  n := Pos('&age', qSrt);
  age := Copy(qSrt,n+5, n);
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', firstName);
  WRITELN('Last Name: ', lastName);
  WRITELN('Age: ', age);
END.
