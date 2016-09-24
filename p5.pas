// Xau
uses crt;
var 
    str:string[30];
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
    write('Xau sau khi xoa ',str);
    readln;
end.