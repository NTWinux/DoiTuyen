uses crt;
// Mang 2 Chieu
type Mang2Chieu=array[1..10,1..10]of integer;
var
    a:Mang2Chieu;
    m,n,i,j,s,k,x,c:integer;
begin
    k:=-32768;
    write('Dong: ');readln(m);
    write('Cot: ');readln(n);
    write('x:=');readln(x);
    c:=0;s:=0;
    for i:=1 to m do
    begin
        k:=-32768;
        for j:=1 to n do
        begin
            write('a[',i,',',j,']:=');readln(a[i,j]);
            if a[i,j]>k then k:=a[i,j];
            if a[i,j]=x then inc(c);
        end;
        s:=s+k;
    end;
    for i:=1 to m do
    begin
        for j:=1 to n do
            write(a[i,j]:4);
        writeln;
    end;
    writeln('Tong cac phan tu lon nhat cua moi dong:',s);
    writeln('So lan xuat hien x trong mang:',c);
    readln;
end.