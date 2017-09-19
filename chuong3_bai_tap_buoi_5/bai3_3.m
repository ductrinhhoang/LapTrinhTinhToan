function n = bai_3()
e = pi^2/6;
sum = 0;
n = 1;
while(e > 10^(-12))
    sum = sum + 1/n^2;
    e = pi^2/6 - sum;
    n = n + 1;
end

end