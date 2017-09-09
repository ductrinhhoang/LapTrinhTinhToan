function bai1_06_them()
    fprintf('A*A^-1 = A^-1 * A = E\n');
    fprintf('Proof: \n');
    fprintf(' I    -A_12*A_22^-1 + A_12*A_22^-1     \n');
    fprintf('                                    =  E\n');
    fprintf(' O                 I                   \n');
    %Obviously A11 and A22 must be square matrix and invertible
    %However A11 and A22 is nonsinguler if only if A is nonsingular
    fprintf('We need A to be invertible in order to perform such computation \n');
    fprintf('finding the inverse matrix of A');
end