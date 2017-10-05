function saiso_Lagrange(x, a, b)
    %x = [x1 x2 ... xn] la vecto chua n moc can noi suy, ta xet cac moc noi suy nam tren doan [-1 1]
    %a,b la 2 dau mut, khong nhat thiet a<=b
    
    %Sai so(cac moc noi suy thuoc [-1,1]) trong da thuc langrange = M*max|w(t)|*1/(n-1)!
    %Trong do, M la max cua ham f can xap xi
    %w(t) = (t-x1)(t-x2)...(t-xn)
    %|max(w(t)| la |max(w(t)| trong doan [-1,1]
    %Nhu vay, sai so cua da thuc Lagrange phu thuoc vao |max(w(t)| trong doan [-1 1]
    
    %Trong chuong trinh nay, cong viec chinh cua ta la tinh |max(w(t)| trong doan [-1 1]
    %|max(w(t)| se la
    
    n = length(x);
    syms t;
    w = [1];
    for i=1:n
        q = [1 -x(i)];%chinh la t - x(i)
        w = conv(w,q);%w = w*(t-x(i))
    end
    fprintf('Sai so la: M/(n-1)!*%f\n', maxAbsPoly(w, a , b));
end