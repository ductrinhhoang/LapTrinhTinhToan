function f = interpolation (X, Y)
syms x ;
n = length(X);
W = zeros(n, n);
fprintf('X la cac moc noi suy\n');
disp(X);
fprintf('Y la vector gia tri cua cac moc noi suy\n'); 
disp(Y);
for i = 1:n
    W(:, i) = X'.^(i - 1);
end
fprintf('vector ket qua la he so tu x^0 den x^(n - 1):');
f = W\Y';
end