program bt19;
uses crt;
var a,b,c:real;
    x,y,n:integer;
    z:longint;
    chon,so_bon,so_nam,so_sau,so_tam,so_chin,so_muoi:integer;
    so_mot,so_hai,so_ba:real;
function pt1(a,b:real):real;
    begin
        if (a = 0) and (b = 0) then writeln('PT co vo so nghiem');
        if a <> 0 then writeln('PT co kq la: ',-b/a:5:1);
        if (a = 0) and (b <> 0) then writeln('PT vo nghiem');
    end;
function pt2(a,b,c:real):real;
    var delta:real;
    begin
        delta:=b*b-4*a*c;
        if delta < 0 then writeln('PT vo nghiem');
        if delta = 0 then writeln('PT co nghiem kep: ',-b/(2*a):5:1);
        if delta > 0 then writeln('PT co hai nghiem phan biet, nghiem mot:',(-b+sqrt(delta))/(2*a):5:1,' , ','nghiem hai la: ',(-b-sqrt(delta))/(2*a):5:1); 
    end;
function tim(a,b:real):real;
    begin
        if a < b then writeln('Max = ',a:5:1,' , ','Min = ',b:5:1) else writeln('Max = ',b:5:1,' , ','Min = ',a:5:1);
    end;
function bon(a,b:integer):integer;
    var bc,uscln,bscnn:integer;
    begin
        bc:=a*b;
        while a <> b do 
            begin
                if a > b then a:=a-b else b:=b-a;
                bscnn:=bc div a;
                if a = b then uscln:=a;
            end;
        writeln('USCLN = ',uscln,' , ','BSCNN = ',bscnn);
    end;
function nam(n:integer):integer;
    var i,j:integer;
        check:boolean;
    begin
        for i:=1 to n do 
            begin
                check:=true;
                for j:=2 to trunc(sqrt(i)) do 
                    begin
                        if i mod j = 0 then
                            begin
                                check:=false;
                                break;
                            end;
                    end;
            end;
        if check then writeln('So ',n,' la so nguyen to') else writeln('So ',n,' ko ph la so nguyen to');
    end;
function sau(n:integer):integer;
    var i,tong:integer;
    begin
        tong:=0;
        for i:=1 to n-1 do if n mod i =0 then tong:=tong+i;
        if tong = n then writeln('So ',n,' la so hoan thien') else writeln('So ',n,' ko ph la so hoan thien');
    end;
procedure bay(n: Integer; phan: String);
begin
  if Length(phan) = n then
  begin
    WriteLn(phan); 
    Exit;
  end;
  
  bay(n, phan + '0'); // Thêm số 0 vào dãy
  bay(n, phan + '1'); // Thêm số 1 vào dãy
end;
procedure tam;
    var i,j:integer;
    begin
        for i:=1 to 9 do 
        begin
            for j:=1 to 10 do 
                begin
                    writeln(i,' x ',j,' = ',i*j);
                end;
        readln;
        end;            
    end;
function chin(n:longint):longint;
    var dem:integer;
        chuoi:string;
    begin
        str(n,chuoi);
        dem:=length(chuoi);
        writeln('So ',n,' co ',dem,' chu so');
    end;
function muoi(n:integer):integer;
    var chuoi:string;
        i:integer;
    begin
        str(n,chuoi);
        for i:=length(chuoi) downto 1 do write(chuoi[i]);
    end;
begin
    clrscr;
    writeln('1.Giải phương trình bậc nhất');
    writeln('2.Giải phương trình bậc hai');
    writeln('3.Tìm max,min của hai số');
    writeln('4.Tìm USCLN,BSCNN của hai số');
    writeln('5.Kiểm tra một số có phải là số nguyên tố không?');
    writeln('6.Kiểm tra một số có phải là số hoàn thiện không?');
    writeln('7.Đổi một số nguyên dương n sang dạng nhị phân');
    writeln('8.In ra bảng cửu chương từ 1 đến 9');
    writeln('9.Đếm có bao nhiêu số trong một số');
    writeln('10.In ra số đảo ngược của số đó');
    writeln('Bạn chọn đi!');
    readln(chon);

    if chon = 1 then 
        begin
            writeln('Nhap so a');
            readln(a);
            writeln('Nhap so b');
            readln(b);
            so_mot:=pt1(a,b);
        end;
    if chon = 2 then 
        begin
            writeln('Nhap so a:');
            readln(a);
            writeln('Nhap so b:');
            readln(b);
            writeln('Nhap so c:');
            readln(c);
            so_hai:=pt2(a,b,c);
        end;
    if chon = 3 then 
        begin
            writeln('Nhap so a:');
            readln(a);
            writeln('Nhap so b:');
            readln(b);
            so_ba:=tim(a,b);
        end;
    if chon = 4 then 
        begin
            writeln('Nhap so a:');
            readln(x);
            writeln('Nhap so b:');
            readln(y);
            so_bon:=bon(x,y);
        end;
    if chon = 5 then 
        begin
            writeln('Nhap so n:');
            readln(n);
            so_nam:=nam(n);
        end;
    if chon = 6 then 
        begin
            writeln('Nhap so n:');
            readln(n);
            so_sau:=sau(n);
        end;
    if chon = 7 then
        begin
            Writeln('Nhap so n:'); 
            Readln(n);
            Writeln('Các dãy nhị phân có độ dài ', n, ':');
            bay(n, '');
        end;
    if chon = 8 then 
        begin
            tam;
        end;
    if chon = 9 then 
        begin
            writeln('Nhap so z:');
            readln(z);
            so_chin:=chin(z);
        end;
    if chon = 10 then 
        begin
            writeln('Nhap so n:');    
            readln(n);
            so_muoi:=muoi(n);
        end;
readln;
end.