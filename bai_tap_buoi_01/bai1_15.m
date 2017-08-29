function bai1_15()
    fprintf('Ta ma tran A(4x4) co cac gia tri tu 1 den 10');
    A = floor(20*rand(4,4) - 10)
    fprintf('1. Cong them 10 vao các phan tu o dong 1 va dong 2, gan ket qua cho B.');
    B = [A(1:2,:)+10;A(3:4,:)]
    fprintf('2. Cong them 10 vao cac phan tu o cot 1 va cot 4, gan ket qua cho C.');
    C = [(A(:,1)+10) A(:,2:3) (A(:,4)+10)]
    fprintf('3. Tinh nghich dao cac phan tu khac 0, cho la ma tran D.');
    %D = 1./ A;
    D = ones(4,4);
    for i= 1:4
        for j = 1:4
           if(A(i,j) == 0) D(i,j) = 0;
           else D(i,j) = 1/A(i,j);
           end
        end
    end
    D
    fprintf('4. Lay can bac 2 cua moi phan tu duong, gan ket qua E');
    E = ones(4,4);
    for i=1:4
        for j=1:4
           if(A(i,j) < 0) E(i,j) = A(i,j);
           else E(i,j) = sqrt(A(i,j));
           end
        end
    end
    E
end