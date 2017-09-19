function sum = bai3_03(epsi)
format long;
e = 10;
sum = 0;
n = 1;
while(e > epsi)
    sum = sum + 1/n^2;
    e = pi^2/6 - sum;
    n = n + 1;
end

end