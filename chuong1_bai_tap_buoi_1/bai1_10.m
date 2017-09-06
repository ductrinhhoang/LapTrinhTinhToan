x = randperm(35);
fprintf('Gia tri cua x : \n');
disp(x);

y = x;
y(x < 6 ) = 2;
y((x >= 6) & (x <= 20)) = x((x >= 6) & (x <= 20)) - 4;
y((x >= 20) & (x <= 25)) = 36 - x((x >= 20) & (x <= 25));

fprintf('Gia tri cua y : \n');
disp(y);
