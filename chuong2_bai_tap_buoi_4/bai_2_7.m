function bai_2_7
syms y1 y2 y3 y4 y5 y6
fprintf('1) Dy + t*y = t')
y1 = dsolve('Dy = -t*y + t', 'y(0) = 1')
ezplot(y1, -4, 4)
fprintf('2) Dy + y^2 = 0')
y2 = dsolve('Dy = -y^2', 'y(0) = 2')
ezplot(y2, 0, 5)
fprintf('3) y*Dy + t*y = 0')
y3 = dsolve('y*Dy + t*y = 0', 'y(1) = 4')
ezplot(y3, -4, 4)
fprintf('4) (2*exp(y) - x)*Dy = 1')
y4 = dsolve('(2*exp(y) - x)*Dy = 1', 'y(0) = 0', 'x')
% ezplot(y4, -5, 5)
fprintf('5) (x + y^2)*Dy = y')
y5 = dsolve('(x + y^2)*Dy = y', 'y(0) = 4', 'x')
ezplot(y5, -4, 6)
fprintf('6) x*(y - Dy) = exp(x)')
y6 = dsolve('x*(Dy - y) = exp(x)', 'y(1) = 4*exp(1)', 'x')
ezplot(y6, 0.001, 1)
end