uses crt;
// Mảng 2 Chiều
// Bài 1,2,3,4
type Mang2Chieu=array[1..10,1..10]of integer;
{
var
    a,b:Mang2Chieu;
    m,n,i,j,s,max,x,c:integer;
    bool:boolean;
begin
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
}
// Bài 5
{
var 
    a,b,c:Mang2Chieu;
    i,j,m,n:integer;
    bool,bool2:boolean;
begin
    write('Dong: ');readln(m);
    write('Cot: ');readln(n);
    for i:=1 to m do
        for j:=1 to n do
        begin
            write('a[',i,',',j,']:=');readln(a[i,j]);
        end;
    for i:=1 to m do
        for j:=1 to n do
        begin
            write('b[',i,',',j,']:=');readln(b[i,j]);
        end;
    Bool:=True;Bool2:=True;
    for i:=1 to m do
        for j:=1 to n do
        begin
            if a[i,j]<>b[i,j] then bool:=False;
            if a[i,j]<=b[i,j] then bool2:=False;
        end;
    write('a/ ');
    if bool=True then writeln('A=B') else writeln('A<>B');
    write('b/ ')
    if bool2=True then writeln('Moi pt cua A > pt tuong ung cua B')
        else writeln('Moi pt cua A <= pt tuong ung cua B');
    write('c/ Ma tran C = A + B');
    for i:=1 to m do
        for j:=1 to n do
            c[i,j]:=a[i,j]+b[i,j];
    for i:=1 to m do
    begin
        for j:=1 to n do
            write(c[i,j]);
        writeln;
    end;
    readln;
end.
}
// Bài 6

var 
    a:Mang2Chieu;
    i,j,n:integer;
    bool:boolean;
begin
    write('Cot & Hang: ');readln(n);
    for i:=1 to n do
        for j:=1 to n do
        begin
            write('a[',i,',',j,']:=');readln(a[i,j]);
        end;
    Bool:=True;
    for i:=2 to n do
        for j:=0 to i-2 do
            if a[i,j]<>0 then bool:=False;
    for i:=1 to n do
    begin
        for j:=1 to n do
            write(a[i,j]:4);
        writeln;
    end;
    if bool=True then write('Ma tran tam giac')
        else write('Khong phai ma tran tam giac');
    readln;
end.
{
//Bai 7
var 
    a:Mang2Chieu;
    i,j,m,n,x,k:integer;
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
    for i:=1 to m do
        for j:=i+1 to m do
            if a[i,1]>a[j,1] then
                for x:=1 to n do
                begin
                    k:=a[i,x];
                    a[i,x]:=a[j,x];
                    a[j,x]:=k;
                end;
    readln;
    writeln('Sap xep cac pt cot 1 lap thanh day tang');
    for i:=1 to m do
    begin
        for j:=1 to n do
            write(a[i,j]:4);
        writeln;
    end;
    readln;
end.
}