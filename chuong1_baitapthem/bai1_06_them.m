function bai1_06_them()
    fprintf('A*A^-1 = A^-1 * A = E\n');
    fprintf('So: \n');
    fprintf(' I    A_11*A_12^-1 + A_12*A_22^-1      I    A_11^-1*A_12 + A_12^-1*A_22\n');
    fprintf('                                    =                                      = E\n');
    fprintf(' O                 I                   O                 I\n');
    fprintf('\n=>  A_11*A_12^-1 + A_12*A_22^-1 = A_11^-1*A_12 + A_12^-1*A_22 = I\n');
end