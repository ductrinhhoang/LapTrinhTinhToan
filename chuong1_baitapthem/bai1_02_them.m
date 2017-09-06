function bai1_02_them()
    syms a det_A; 
    A = [2 1 3 3;1 0 -1 0;a 2 1 1;4 3 2 4]
    det_A = det(A)
    fprintf('a!=0, rank(A)=4');
    fprintf('a=0, rank(A) = 3 because det(A(1:3;2:4)) !=0\n');
end