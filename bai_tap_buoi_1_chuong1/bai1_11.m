x = [3, 15, 9, 12, -1, 0, -12, 9, 6, 1];

fprintf('1. Thuc chuyen gia tri duong thanh gia tri 0 \n   ');
y = x;
y(y > 0) = 0;
disp(y);

fprintf('2. Chuyen cac boi so cua 3 thanh so 3 \n   ');
y = x;
y(rem(y,3)==0) = 3;
disp(y);

fprintf('3. Nhan cac gia tri chan cho 5 \n   ');
y = x;
y(rem(y,2)==0) = y(rem(y,2)==0)*2;
disp(y);

fprintf('4. Gan cho vector y cac gia tri lon hon 10 cua x \n   ');
y = x(x>10);
disp(y);

fprintf('5.Chuyen cac gia tri nho hon trung binh cong thanh gia tri 0 \n   ');
mean = sum(x)/size(x,2);
y = x;
y(y<mean) = 0;
disp(y);
