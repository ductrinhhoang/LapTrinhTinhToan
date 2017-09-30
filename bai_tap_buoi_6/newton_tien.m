function p = newton_tien(x, y)
    n = size(y, 2);
    th = zeros(n); %ma tran chua cac ty hieu
    th(:, 1) = y'; % cot dau tien cua ma tran ty hieu = vector y

    %Tinh ty hieu cac cap, cac ty hieu duoc su dung de xay dung da thuc noi
    %suy se nam tren hang dau tien cua ma tran th
     for i = 1 : n-1
        th(1:n-i, i+1) = diff(th(1:n-i+1, i));
        for j = 1 : n-i
            th(j, i+1) = th(j, i+1) / (x(j+i) - x(j));
        end
     end
    
     %Xay dung da thuc noi suy
     syms t;
     p = th(1,1);
     for i = 2 : n
         p = p + th(1, i) * prod(t - x(1:i-1));
     end
     p = simplify(p);
end