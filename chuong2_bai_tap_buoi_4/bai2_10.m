function bai2_10
syms n x
fprintf('1)')
symsum(1/n^2, 1, inf)
fprintf('2)')
symsum(1/n^4, 1, inf)
fprintf('3)')
symsum(1/2^n, 1, inf)
fprintf('4)')
symsum(x^n, 0, inf)
end