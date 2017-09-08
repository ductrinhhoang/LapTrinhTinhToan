A = [4 0 2 0; 0 4 0 2; 2 0 5 0; 0 2 0 5];
C = chol(A);
display('Cholesky factorization of A is : ');
display(C);

B = [4 4 2 0; 4 3 0 2; 2 0 5 0; 0 2 0 5];
try
    L = chol(B);
catch
    display('B is not positive definite');
end