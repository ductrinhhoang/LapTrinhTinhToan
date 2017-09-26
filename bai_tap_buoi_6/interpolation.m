function f = interpolation (X, Y)
syms x ;
n = length(X);
W = zeros(n, n);
for i = 1:n
    W(:, i) = X'.^(i - 1);
end
f = W\Y';
end