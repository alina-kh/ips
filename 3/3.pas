{Реализуйте программу, которая выводит приветствие ‘Hello dear, <name>!’. Имя должно передаваться в параметре name QUERY_STRING, в случае когда параметра name нет, должно выводиться ‘Hello Anonymous!’. В данном задании можно считать что параметр name стоит на первом месте, либо его нет. Можно использовать функции POS COPY для работы со строками
}
PROGRAM HelloUser(INPUT, OUTPUT);
VAR
Name: STRING;
BEGIN
READ(Name);
IF Name = ''
THEN
WRITELN('Hello Anonimus')
ELSE
WRITELN('Hello dear, ', Name)
END.