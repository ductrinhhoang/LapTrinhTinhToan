function bai1_12
    x = [3 2 6 8]'
    y = [4 1 3 5]'
    fprintf('1. Lay tong cac phan tu x them vao y');
    y+sum(x)
    fprintf('2. Lay luy thua cac phan tu y la so mu tuong ung o y');
    y.^x
    fprintf('3. Chia tuong ung cac phan tu cua y cho x');
    y./x
    fprintf('4. Nhan tuong ung cac phan tu cua y va x, gan la x');
    z = y.*x
    fprintf('5. Tinh tong cac phan tu cua z, gan la w');
    w = sum(z)
    fprintf('6. Tinh x.*y - w');
    x.*y - w
    fprintf('7. Tinh tich vo huong x, y');
    x'*y
end