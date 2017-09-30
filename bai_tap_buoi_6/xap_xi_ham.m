function f = xap_xi_ham(X, gt)
syms t
gx = inline('gt', 't');
n = length(X);
Y = zeros(1, n);
W = zeros(n, n);
Y = subs(gt, X);
for i = 1:n
    W(:, i) = X'.^(i - 1);
end
f = W\Y';
f = f';
fprintf('Ket qua tra ra vector he so da thuc xap xi tu x^0, x^1, ..., x^(n - 1) voi n la length(X)');
end