function [Pi_est, count] = bai3_4(eps)
    a = 1;
    b = 1/sqrt(2);
    t = 1/4;
    x = 1;
    count = 0;
    while(abs(a-b) > eps)
        y = a;
        a = (a + b)/2;
        b = sqrt(b*y);
        t = t - x*(y - a)^2;
        x = 2*x;
        count = count + 1;
    end
    Pi_est = ((a + b)^2)/(4*t);
end