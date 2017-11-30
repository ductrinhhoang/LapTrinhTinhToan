function Y = euler_caitien(f, y0, a, b, n)
h = (b-a)/n;
X = a:h:b;
Y = zeros(1, n);
Y(1) = y0;
for i = 2 : n
    z = Y(i-1) + h * f(X(i-1), Y(i-1));
    Y(i) = Y(i-1) + h*(f(X(i-1), Y(i-1)) + f(X(i-1) + h, z));
end
end