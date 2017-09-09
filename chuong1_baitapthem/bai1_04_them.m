%Call A * B = C
%c_ii = A(i, :) * B(:, i) = 1
%If j >= i
%c_ij = A(i, :) * B(:, j) = 1 * (-2)^(j-1) + 2 * (-2)^(j-2) = 0
%If j < i
%c_ij = 0
%We can conclude that A * B = I
