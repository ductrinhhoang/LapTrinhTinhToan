A = [4 0 2 0; 0 4 0 2; 2 0 5 0; 0 2 0 5];
C = chol(A);
display('Cholesky factorization of A is : ');
display(C);
%Since A has cholesky factorization, A is symmetric and positive definite
B = [4 4 2 0; 4 3 0 2; 2 0 5 0; 0 2 0 5];
%Easily see that B is symmetric
%Calculate the P_B(lambda) = det(B - lambda I)
%See that B has at least one negative eigenvalue, then conclude that B is
%not positive definite
try
    L = chol(B);
catch
    display('B is not positive definite');
end