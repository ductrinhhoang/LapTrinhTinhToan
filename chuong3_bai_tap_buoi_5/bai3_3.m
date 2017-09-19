function pi = bai_3()
sum = 0;
n = 1;
while(1/n^2 > 10^(-12))
    sum = sum + 1/n^2;
    n = n + 1;
end
pi = sqrt(6*sum);
end