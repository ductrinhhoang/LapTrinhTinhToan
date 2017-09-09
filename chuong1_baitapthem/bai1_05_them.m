A11 = [1 2 -3; 2 0 -1];
A12 = [-3 1; -1 2];
A21 = [-1 1 -1];
A22 = [-1 1];
B11 = [2 3; 0 -1; -1 -1];
B12 = [2 -3; 2 0; 0 -1];
B21 = [1 1; 2 2];
B22 = [-2 -3; 0 -1];
A = [A11 A12; A21 A22];
B = [B11 B12; B21 B22];
fprintf('A11*B11 + A12*B21');
A11*B11 + A12*B21
fprintf('A11*B12 + A12*B22');
A11*B12 + A12*B22
fprintf('A21*B11 + A22*B21');
A21*B11 + A22*B21
fprintf('A21*B12 + A22*B22');
A21*B12 + A22*B22
fprintf('A*B');
A*B
fprintf('Ket qua phep tinh [A11*B11 + A12*B21 A11*B12 + A12*B22; A21*B11 + A22*B21  A21*B12 + A22*B22]')
[A11*B11 + A12*B21 A11*B12 + A12*B22; A21*B11 + A22*B21  A21*B12 + A22*B22]
fprintf('2 cach tinh cho ket qua giong nhau \n');
% If B = [b.1, b.2, ..., b.n] is partitioned by columns then the partition
% of the product AB by colums is AB = [Ab.1, Ab.2, ..., Ab.n]
% We can easily show that 
% The conditions to get [A11 A12; A21 A22]* B[11 B12; B21 B22] = 
% = [A11B11 + A12B21 A11B12 + A12B22; A21B11 + A22B21 A21B12 + A22B22]
% is Aij has the same order as Bij for every i and j; A11 and B11 is square
% matrix
% By using block multiplication, we can easily prove that CAB = [lambda a^T*B11 ; 0 C1A1B1]
