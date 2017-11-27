function Y = runge_kutta(f, y0, a, b, n)
h = (b-a)/n;
X = a:h:b;
Y = zeros(1, n);
Y(1) = y0;
for i = 2 : n
    k1 = h * f(X(i-1), Y(i-1));
    k2 = h * f(X(i-1) + h/2, Y(i-1) + k1/2);
    k3 = h * f(X(i-1) + h/2, Y(i-1) + k2/2);
    k4 = h * f(X(i-1) + h, Y(i-1) + k3);
    Y(i) = Y(i-1) + 1/6 * (k1 + 2*k2 + 2*k3 + k4);
end
end