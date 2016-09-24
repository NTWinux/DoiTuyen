// Xau
uses crt;
var 
    str:string[15];
    len,p,k:byte;
begin
    write('Nhap Xau: ');readln(str);
    len:=length(str);
    writeln('Do dai cua xau: ',len);
    writeln('Vi tri lay: ');readln(p);
    writeln('So Luong: ');readln(k);
    write(copy(str,p,k));
    readln;
end.