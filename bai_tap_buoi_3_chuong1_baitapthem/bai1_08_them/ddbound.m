function ub = ddbound(A, b)
%1. If A has a solution x then for equation Ax = b,
%Choose xi so that |xi| = max_j |xj|
%We have bi = ai1*x1 + ... + aii*xi + ... ain*xn
%Therefore |bi| >= |aii*xi| - |xi * (ai1 + ai2 + ...)|
%So we bound for solution of A

%2. If A is singular, then exists x != 0 such that Ax = 0
%By the above bound, we have that 0 > max|xi|
%Which is a contrary, therefore A is nonsingular

n = length(A);
y = zeros(1, n);

for i=1:n
    y(i) = abs(b(i))/(2*abs(A(i, i)) - sum(abs(A(i, :))));
end
if(min(y) <= 0)
    ub = -1;
else
    ub = max(y);
end
end