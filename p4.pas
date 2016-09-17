uses crt;
// Mang 2 Chieu
type Mang2Chieu=array[1..10,1..10]of integer;
var
    a:Mang2Chieu;
    m,n,i,j:integer;
begin
    write('Dong: ');readln(m);
    write('Cot: ');readln(n);
    for i:=1 to m do
        for j:=1 to n do
        begin
            write('a[',i,',',j,']:=');readln(a[i,j]);
        end;
    for i:=1 to m do
    begin
        for j:=1 to n do
            write(a[i,j]:4);
        writeln;
    end;
    readln;
end.