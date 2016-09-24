// Xau
uses crt;
var 
    str,s:string[70];
    len,p,k:byte;
    c:char;
    Count:array ['A'..'Z'] of byte;
begin
    write('Nhap Xau: ');readln(str);
//    len:=length(str);
//    writeln('Do dai cua xau: ',len);
//    write('Vi tri lay: ');readln(p);
//    write('So Luong: ');readln(k);
//    writeln(copy(str,p,k));
//   write('Vi tri xoa: ');readln(p);
//    write('So Luong: ');readln(k);
//    delete(str,p,k);
//   writeln('Xau sau khi xoa: ',str);
//    write('Vi tri chen: ');readln(p);
//    write('Xau can chen: ');readln(s);
//    insert(s,str,p);
//    writeln('Xau sau khi chen: ',str);
//    p:=0;
//    for p:=1 to length(str) Do
//        if (str[p] in ['0'..'9']) then inc(k);
//    write(k);
//    write(Upcase(str));
    for k:=1 to length(str) do
        if Upcase(str[k]) in ['A'..'Z'] then inc(Count[Upcase(str[k])]);
    for c:='A' to 'Z' do 
        if Count[c]<>0 then writeln(c,'-',Count[c]);
    readln;
end.