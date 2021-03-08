{Реализуйте функцию на языке pascal для получения любого из параметров QUERY_STRING. Она должна принимать строку - название параметра и возвращать строку - значение параметра. Заголовок функции:

	FUNCTION GetQueryStringParameter(Key: STRING): STRING;

	Для проверки этой используйте следующую программу:
PROGRAM WorkWithQueryString(INPUT, OUTPUT);
USES
  DOS;
BEGIN {WorkWithQueryString}
  WRITELN(‘First Name: ‘, GetQueryStringParameter(‘first_name’));
  WRITELN(‘Last Name: ‘, GetQueryStringParameter(‘last_name’));
  WRITELN(‘Age: ‘, GetQueryStringParameter(‘age’))
END. {WorkWithQueryString}

}
PROGRAM HelloUser(INPUT, OUTPUT);
VAR
firstName: string;
Var
lastName: string;
Var
age: char;
BEGIN
READLN(firstName);
WRITELN('First Name: ', firstName);
READLN(lastName);
WRITELN('Last Name: ', lastName);
READLN(age);
WRITELN('Age: ', age);
END.








