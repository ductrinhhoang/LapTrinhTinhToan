function [l,u] = mylu(a,d,c)
    u(1) = d(1); %d(1) difference 0
    l(1) = 0;
    n = length(a);
    for k=2:n
       l(k) = a(k)/u(k-1);
       u(k) = d(k) - l(k)*c(k-1);
    end
end