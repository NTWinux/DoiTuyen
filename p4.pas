uses crt;
// Mảng 2 Chiều

// Bài 1
// a/ Tính Tổng các phần tử lớn nhất mỗi hàng
// b/ Đếm so lần x xuất hiện trong mảng và vị trí của chúng

type Mang2Chieu=array[1..10,1..10]of integer;
var
    a:Mang2Chieu;
    m,n,i,j,s,max,x,c:integer;
begin
    k:=-32768;
    write('Dong: ');readln(m);
    write('Cot: ');readln(n);
    write('x:=');readln(x);
    c:=0;s:=0;
    for i:=1 to m do
    begin
        max:=-32768;
        for j:=1 to n do
        begin
            write('a[',i,',',j,']:=');readln(a[i,j]);
            if a[i,j]>max then max:=a[i,j];
            if a[i,j]=x then inc(c);
        end;
        s:=s+max;
    end;
    for i:=1 to m do
    begin
        for j:=1 to n do
            write(a[i,j]:4);
        writeln;
    end;
    writeln('a/ Tong cac phan tu lon nhat cua moi dong:',s);
    writeln('b/ So lan xuat hien x trong mang:',c);
    for i:=1 to m do
        for j:=1 to n do
            if a[i,j]=x then write('[',i,',',j,']');
    readln;
end.