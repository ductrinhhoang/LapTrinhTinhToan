function bai1_14()
    A = [2 7 9 7 ; 3 1 5 6 ; 8 1 2 5]
    fprintf('1. A'' (chuyen vi) = ');
    A'
    fprintf('2. sum(A) (vecto hang ma moi vi tri i tuong ung = tong cac gia tri o cot i trong ma tran A\n');
    fprintf('Co the viet khac la sum(A,1)');
    sum(A)
    fprintf('3. sum(A'') = ');
    sum(A')
    fprintf('4. sum(A, 2) (tuong tu sum(A), nhung lai la vecto cot tinh theo hang)');
    sum(A,2)
    fprintf('5. Gep ma tran [[A; sum(A)] = ');
    [[A; sum(A)] [sum(A, 2); sum(A(:))]]
end