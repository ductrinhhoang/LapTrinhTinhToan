x = [2 -5 1 6];
fprintf('1. Cong them 16 vao tat ca phan tu \n   ');
y = x + 16;
disp(y);

fprintf('2. Cong them 3 vao tat ca phan tu o vi tri le \n   ');
y = x;
y(1:2:end) = y(1:2:end) +3;
disp(y);

fprintf('3. Lay can bac hai cua tat ca phan tu co gia tri duong \n   ');
y = x;
y(y > 0) = sqrt(y(y>0));
disp(y);

fprintf('4. Binh phuong cua tat ca phan tu \n   ');
y = x.^2;
disp(y);

