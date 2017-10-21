function bai1_16
    A = [2 4 1 ; 6 7 2 ; 3 5 9]
    fprintf('1. Gan vector x bang dong thu nhat cua A');
    x = A(1,:)
    fprintf('2. Gan y la 2 dong con lai');
    y = A(2:3,:)
    fprintf('3. Tim phan tu lon nhat va nho nhat trong ma tran\n');
    fprintf('a. Phan tu lon nhat');
    MAX = max(max(A))
    fprintf('b. Phan tu nho nhat');
    MIN = min(min(A))
    fprintf('4. Tinh tong tat ca phan tu A');
    sum(sum(A),2)
end