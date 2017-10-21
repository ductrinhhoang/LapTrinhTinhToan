%Prove by induction
%Easily see that upper-triangle nonsingular matrix order 2 has inverse
%matrix that is also upper-triangle

%Suppose the above assumption true for n = k, we need to prove that it is 
%also true for n = k + 1

% A = [ A1 A2; 0 a] where A1 is k by k matrix, a is 1 by 1 matrix ...
%From excercise 6, we have A^(-1) = [A1^-1 -A1^(-1) A2 1/a; 0 1/a]
%By induction hypothesis, we have A1^-1 is upper-triangle, therefore A^(-1)
%is also upper-triangle matrix
