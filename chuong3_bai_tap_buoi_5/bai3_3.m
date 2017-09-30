function ret = bai3_3(epsi)
sum = 0;
n = 1;
while(1/(2*n +1) > epsi)
    sum = sum + 1/n^2;
    n = n + 1;
end
ret = sqrt(6*sum);
n
end