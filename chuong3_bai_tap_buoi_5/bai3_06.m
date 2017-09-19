function bai3_06()
fprintf('1) Muoi so hang dau tien cua day: \n');
n = 1;
F1 = 1; F2 = 1;
fprintf('(%d)', F1);
fprintf('(%d)', F2);
while (n <= 8)
    F = F2 + F1;
    F1 = F2;
    F2 = F;
    fprintf('(%d)', F);
    n = n + 1;
end
fprintf('\n');
fprintf('2) Day ti so Fn/F(n-1): \n');
index = 1;
while(index <= 50)
    F = F2 + F1;
    F1 = F2;
    F2 = F;
    fprintf('%d \n', F2/F1);
    index = index + 1;
end
fprintf('Ta thay rang ti le Fn/F(n - 1) tien dan den (1 + sqrt(5))/2\n'); 
end