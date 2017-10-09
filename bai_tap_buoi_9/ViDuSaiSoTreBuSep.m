a = 1;
b = -1;
syms t;
fx = exp(t)
x = [-1 0 1];
y = [exp(-1) 1 exp(1)];
g = chebyshev(fx, -1, 1, 2)
fprintf('Sai so: %f', saiso(fx, g, -1, 1));
P = Lagrange_tu_cai(x, y)
fprintf('Sai so: %f\n', saiso(fx, P, -1, 1));

