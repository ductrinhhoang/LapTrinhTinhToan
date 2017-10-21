function bai1_09_them()
    fprintf('1. let L multiplied by U equal A\n');
    fprintf('2. Can be easily drived from 1.\n');
    fprintf('3. inductively: |u_i| > |d_i|\n');
    fprintf('i=1, |u_i| = |d_i| > |c_i|\n');
    fprintf('i=k, |u_k| = |d_k - l_k.c_(k-1)|\n');
    fprintf('          >= |d_k| - |a_k|/|u_(k-1)|.|c_(k-1)|\n');
    fprintf('          >= |d_k| - |a_k|, obviously');
    fprintf('\n');
    %4.LU-factorization can be proved to be existed by using result from 1
    %Suppose there exist L' != L and U' != U such that A = LU = L'U'
    %We have L'^(-1)LUU^(-1) = L'^(-1)L'U'U^(-1)
    %Which's equivalent to L'^(-1)L  = U'U^(-1)
    %The leftside is lower-triangle, while the right side is upper-triangle
    %matrix, therefore both of them must be diagonal matrix
    %Furthermore L'^(-1)L has the diagonal of 1 => Q.E.D
    fprintf('5. [l,u]=mylu ( [ 0 1 1 1 1 ] , [ 2 4 4 4 4 ] , [ 3 1 1 1 0 ] ) \n');
    [l,u]=mylu ( [ 0 1 1 1 1 ] , [ 2 4 4 4 4 ] , [ 3 1 1 1 0 ] )
end