function g = chebyshev(fx, a, b, n)
% n : bac da thuc noi suy
syms x;
f = inline('fx', 'x');
% array: Cac da thuc noi suy Chebushev
% co do dai la n + 1
array = [1 x 2*x^2 - 1 4*x^3 - 3*x];
if n == 2
    array(end) = [];
end
X = zeros(1, n + 1);
C = zeros(1, n + 1);
F = zeros(1, n + 1);
Sum = 0;
for k=0:n
    X(k + 1) = cos((2*n + 1 - 2*k)*pi/(2*n + 2))*(b - a)/2 + (a + b)/2;
end
F = subs(fx, X);
C(1) = sum(F)/(n + 1);
for j=1:n 
   Sum = 0; 
   for k=0:n
       Sum = Sum + F(k + 1)*cos(j*(2*n + 1 - 2*k)*pi/(2*(n + 1)));
   end
   C(j + 1) = 2*Sum/(n + 1);
end
fprintf('Da thuc noi suy Chebyshev bac n la:')
g = vpa(sum(C.*array));
syms t;
g = subs(g,x,t);
%ezplot(fx, [a, b]);
%ezplot(g, a, b);
%Kiem tra sai so
end