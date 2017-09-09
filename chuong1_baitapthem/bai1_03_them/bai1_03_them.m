function bai1_03_them()
    A =[2 4 6; 0 2 3; 0 0 2];
    I = eye(3,3);
    B = A - 2*I;
    fprintf('1. B is a nilpotent matrix. So B^3 = zeros(3,3)\n');
    fprintf(' \n');
    
    syms n;
    fprintf('2. A = 2I + B, so\n');
    fprintf('        2^n      n2^(n+1) 3n(n+1)*2^(n-1)\n');
    fprintf('A^n =   0        2^n      3*2^(n-1)*n\n');
    fprintf('        0        0        2^n\n');
    
    fprintf('\n3. (I + B/2)*(I - B/2 + B^2/4)');
    (I + B/2)*(I - B/2 + B^2/4)
    fprintf('(I + B/2)*(I - B/2 + B^2/4) = A*(I - B/2 + B^2/4)/2');
    fprintf('\n=>C = A^-1 = (I - B/2 + B^2/4)/2\n');
    C = (I - B/2 + B^2/4)/2
    
    fprintf('\n4. A^-1 = I/2 + D, with D is a nilpotent matrix, so\n');
    fprintf('         1/2^n    -n/2^(n-1) 3n(n-1)/2^(n+1)\n');
    fprintf('A^-n =   0        1/2^n      -3n/2^(n+1)*n\n');
    fprintf('         0        0          1/2^n\n');
    
    fprintf('\n5. Compute A^(x+y) and F(x)*F(y) then compare');
end