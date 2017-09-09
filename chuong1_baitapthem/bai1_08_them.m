function ddbound()
A = [-3 1 0 0; 1 -3 1 0; 0 1 -3 1; 0 0 1 -3]
b = [1 1 1 1]'
fprintf('det(A) != 0 so A is nonsingular matrix')
n = length(A);
x = zeros(1, n);
y = zeros(1, n);
syms ub;
Z = diag(A);
for i=1:n
    y(i) = abs(b(i))/(2*abs(A(i, i)) - sum(abs(A(i, :))));
end
if(min(y) <= 0)
    ub = -1
else
    ub = max(y)
end
end