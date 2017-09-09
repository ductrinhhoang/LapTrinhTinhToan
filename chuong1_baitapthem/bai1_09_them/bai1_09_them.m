function bai1_09_them()
    fprintf('1. let L mumultiplied by U equal A\n');
    fprintf('2. Equivalent 1.\n');
    fprintf('3. https://vi.wikipedia.org/wiki/Phân_tích_LU');
    fprintf('\n4. inductively: |u_i| > |d_i|\n');
    fprintf('i=1, |u_i| = |d_i| > |c_i|\n');
    fprintf('i=k, |u_k| = |d_k - l_k.c_(k-1)|\n');
    fprintf('          >= |d_k| - |a_k|/|u_(k-1)|.|c_(k-1)|\n');
    fprintf('          >= |d_k| - |a_k|, obviousness');
    fprintf('\n');
    fprintf('5. [l,u]=mylu ( [ 0 1 1 1 1 ] , [ 2 4 4 4 4 ] , [ 3 1 1 1 0 ] ) \n');
    [l,u]=mylu ( [ 0 1 1 1 1 ] , [ 2 4 4 4 4 ] , [ 3 1 1 1 0 ] )
end