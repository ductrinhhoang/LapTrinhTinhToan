function bai1_17
    A=[2 1 0;-2 5 -1;3 4 9]
    B=[3 1 2;-1 3 -2;3 4 5]
    fprintf('1. Tim X de X*A = B');
    X = B/A
    fprintf('2. Tim X de X*B = A');
    X = A/B
    fprintf('3. Xoa cot thu 2 cua ma tran A');
    A(:,2)= []
    fprintf('4. Them cot thu nhat cua ma tran B vao sau cot cuoi cua ma tran A');
    A = [A B(:,1)]
end