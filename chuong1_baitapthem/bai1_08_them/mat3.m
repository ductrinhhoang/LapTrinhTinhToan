function A = mat3(n)
    x = -3*ones(1,n);
    y = ones(1,n-1);
    D1 = diag(y,1);
    D = diag(x);
    A = D + D1 + D1';
end