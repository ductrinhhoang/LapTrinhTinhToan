function [Pi, n] = bai3_3(e)
sum = 0;
n = 1;
while(pi - sqrt(sum*6) > e)
    sum = sum + 1/n^2;
    n = n + 1;
end
Pi = sqrt(6*sum);
end