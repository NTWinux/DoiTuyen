// Xau
uses crt;
var 
    str,s:string[30];
    len,p,k:byte;
begin
    write('Nhap Xau: ');readln(str);
    len:=length(str);
    writeln('Do dai cua xau: ',len);
    write('Vi tri lay: ');readln(p);
    write('So Luong: ');readln(k);
    writeln(copy(str,p,k));
    write('Vi tri xoa: ');readln(p);
    write('So Luong: ');readln(k);
    delete(str,p,k);
    writeln('Xau sau khi xoa ',str);
    write('Vi tri chen: ');readln(p);
    write('Xau can chen: ');readln(s);
    insert(s,str,p);
    writeln('Xau sau khi chen: ',str);
    readln;
end.