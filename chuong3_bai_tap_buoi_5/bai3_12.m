function b = bai3_12(a, e)
x1 = a/2;
while(abs(((x1 + a/x1)/2 - x1)) > e)
    x1 = (x1 + a/x1)/2
end
b = x1;
end