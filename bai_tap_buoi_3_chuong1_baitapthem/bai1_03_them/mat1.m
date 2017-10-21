function mat1()
    n=5;
    A = [2 4 6; 0 2 3; 0 0 2];
    fprintf('A^(%d): ',n);
    A^n
    fprintf('A^(-%d): ',n);
    A^(-n)
end