function Y = euler_ode(f, y0, a, b, n)
% Giai pt y' = f(x, y) tren doan [a, b]
% f(a) = y0, n la so moc tren doan [a, b]
%VD: giai y' = x - y^2; y(0) = 1
%f = @(x, y) x - y^2;
%euler_ode(f, 1, 0, 1, 100)
h = (b-a)/n;
X = a:h:b;
Y = zeros(1, n);
Y(1) = y0;
for i = 2:n
    Y(i) = Y(i-1) - f(X(i), Y(i));
end
end