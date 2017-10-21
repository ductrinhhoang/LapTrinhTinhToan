x = 1:10;
y = [3 1 5 6 8 2 9 4 7 0];
%Tra ve vector voi gia bang 1 tai nhung vi tri co gia tri >3 va <8, bang 0
%voi nhung vi tri con lai
fprintf('1. Ket qua cua phep tinh (x>3)&(x<8) : \n   ');
disp((x>3)&(x<8));
fprintf('\n');
%Tra ve vector voi gia tri > 5 cua x
fprintf('2. Ket qua cua phep tinh  x(x>5) : \n   ');
disp( x(x>5));
fprintf('\n');
%Tra ve vector tai vi tri cua x co gia tri <= 4 (4 vi tri dau tien cua y)
fprintf('3. Ket qua cua phep tinh  y(x<=4) : \n   ');
disp(y(x<=4));
fprintf('\n');
%Tra ve vector gom nhung gia tri < 2 va > 8 cua x
fprintf('4. Ket qua cua phep tinh x((x<2)| (x>=8)) : \n   ');
disp(x((x<2)| (x>=8)));
fprintf('\n');
%Tra ve vector gom vi tri ma tai do x co gia tri < 2 hoac >= 8 cua y
fprintf('5. Ket qua cua phep tinh y((x<2) |(x>=8)) : \n   ');
disp(y((x<2) |(x>=8)));
fprintf('\n');
%Tra ve vector gom vi tri ma tai do y co gia tri < 0 cua x
fprintf('6. Ket qua cua phep tinh x(y<0) : \n   ');
disp(x(y<0));
fprintf('\n');