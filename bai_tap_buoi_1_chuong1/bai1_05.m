x = [1 5 2 8 9 0 1];
y = [5 2 2 6 0 0 2];
 
fprintf('1.  Ket qua phep tinh x > y : \n    ');
disp(x > y);
fprintf('\n');
 
fprintf('2.  Ket qua phep tinh y < x : \n    ');
disp(y < x);
fprintf('\n');

fprintf('3.  Ket qua phep tinh x == y : \n    ');
disp(x == y);
fprintf('\n');

fprintf('4.  Ket qua phep tinh x <= y : \n    ');
disp(x <= y);
fprintf('\n');

fprintf('5.  Ket qua phep tinh y >= x : \n    ');
disp(y >= x);
fprintf('\n');

fprintf('6.  Ket qua phep tinh x | y : \n    ');
disp(x | y);
fprintf('\n');

fprintf('7.  Ket qua phep tinh x & y : \n    ');
disp(x & y);
fprintf('\n');

fprintf('8.  Ket qua phep tinh x&(-y) : \n    ');
disp(x&(-y));
fprintf('\n');

fprintf('9.  Ket qua phep tinh (x>y) | (y<x) : \n    ');
disp((x>y) | (y<x));
fprintf('\n');

fprintf('10. Ket qua phep tinh (x>y) & (y<x) : \n    ');
disp((x>y)&(y<x));
fprintf('\n');


