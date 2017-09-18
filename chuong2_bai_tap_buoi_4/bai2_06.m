syms y t;
dy = diff(y,t);

fprintf('1. Phuong trinh y'' + ty = t');
f = 'Dy + t*y -t = 0';
sol1 = dsolve(f)
syms_list = findsym(sol1);
C1 = find_c1(syms_list);
g = subs(sol1, C1, 2);
subplot(2,3,1);
ezplot(g);
title('1');

fprintf('2. Phuong trinh y'' + y^2 = 0');
f = 'Dy + y^2 = 0';
sol2 = dsolve(f)
syms_list = findsym(sol2(2));
C1 = find_c1(syms_list);
g = subs(sol2(2), C1, 2);
subplot(2,3,2);
ezplot(g);
title('2');

fprintf('3. Phuong trinh yy'' + ty = 0');
f = 'y*Dy + t*y = 0';
sol3 = dsolve(f)
syms_list = findsym(sol3(2));
C1 = find_c1(syms_list);
g = subs(sol3(2), C1, 2);
subplot(2,3,3);
ezplot(g);
title('3');

fprintf('4. Phuong trinh (2e^y - x)y'' = 1');
f = '(2*exp(y) - t)*Dy = 1';
sol4 = dsolve(f)
syms_list = findsym(sol4(1));
C1 = find_c1(syms_list);
g = subs(sol4(1), C1, 2);
subplot(2,3,4);
ezplot(g);
%nghiem con lai khong mang gia tri thuc
title('4');

fprintf('5. Phuong trinh (x + y^2)y'' = y');
f = '(t + y^2)*Dy - y = 0';
sol5 = dsolve(f)
syms_list = findsym(sol5(2));
C1 = find_c1(syms_list);
g = subs(sol5(2), C1, 2);
h = subs(sol5(3), C1, 2);
subplot(2,3,5);
ezplot(h, [0, 10]);
title('5');

fprintf('6. x(y''- y) = e^x');
f = 't*(Dy - y) - exp(t) = 0';
sol6 = dsolve(f)
syms_list = findsym(sol6);
C1 = find_c1(syms_list);
g = subs(sol6, C1, 2);
subplot(2,3,6);
ezplot(g);
title('6');