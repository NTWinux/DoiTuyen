uses crt;
// Mảng 2 Chiều

// Bài 1
// a/ Tính Tổng các phần tử lớn nhất mỗi hàng
// b/ Đếm so lần x xuất hiện trong mảng và vị trí của chúng

// Bài 2
// Tìm ma trận chuyển vị

// Bài 3
// Kiểm tra ma trận thưa

// Bài 4
// Kiểm tra 2 hàng giống nhau. Tính tổng hàng đó.

type Mang2Chieu=array[1..10,1..10]of integer;
var
    a,b:Mang2Chieu;
    m,n,i,j,s,max,x,c:integer;
    bool:boolean;
begin
    max:=-32768;
    write('Dong: ');readln(m);
    write('Cot: ');readln(n);
//  write('x:=');readln(x);
//  c:=0;
    for i:=1 to m do
//  begin
//      max:=-32768;
        for j:=1 to n do
        begin
            write('a[',i,',',j,']:=');readln(a[i,j]);
//          if a[i,j]=0 then inc(c);
//          if a[i,j]>max then max:=a[i,j];
//          if a[i,j]=x then inc(c);
        end;
//      s:=s+max;
//  end;
    for i:=1 to m do
    begin
        for j:=1 to n do
            write(a[i,j]:4);
        writeln;
    end;
//  writeln('a/ Tong cac phan tu lon nhat cua moi dong:',s);
//  writeln('b/ So lan xuat hien x trong mang:',c);
//  for i:=1 to m do
//      for j:=1 to n do
//          if a[i,j]=x then write('[',i,',',j,']');
//  for i:=1 to m do
//      for j:=1 to n do
//          b[j,i]:=a[i,j];
//  writeln('Ma Tran Chuyen Vi');
//  for i:=1 to n do
//  begin
//      for j:=1 to m do
//          write(b[i,j]:4);
//      writeln;
//  end;
//  if c>=m*n/2 then write('Ma Tran Thua');
//  readln;
    for i:=1 to m do
    begin
        bool:=True;
        s:=0;
        for j:=i+1 to m do
        begin
            for x:=1 to n do
                if a[i,x]<>a[j,x] then bool:=False;  
            if bool=True then
            begin
                writeln(i,'-',j);
                for x:=1 to n do
                    s:=s+a[i,x];
                writeln('S:=',s);
            end;
        end;
    end;
    readln;
end.