function bai3_6(n)
index = 1;
F1 = 1; F2 = 1;
fprintf('Day Fibonaxi: :            Sai so:              Ti le F(n + 1)/Fn \n');
fprintf('(%d)\n', F1);
fprintf('(%d)\n', F2);
while (index <= n - 2)
    F = F2 + F1;
    F1 = F2;
    F2 = F;
    fprintf('(%d)               ', F);
    fprintf('%13d               ', F2/F1);
    fprintf('%d\n', (1 + sqrt(5))/2 - F2/F1);
    index = index + 1;
end
fprintf('Ta thay rang ti le F(n + 1)/F(n) tien dan den (1 + sqrt(5))/2\n'); 
end