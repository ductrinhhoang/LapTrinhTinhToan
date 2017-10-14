function p = hermite(x, y)
%x la cac moc noi suy. VD x = [1; 2; 3]
%y la ma tran gia tri va dao ham cac cap tai moc noi suy
%VD y = [-1 -2; 5 20; 55 90]

order= size(y, 2);
n = size(x, 1);
s = n * order;
z = zeros(s, 1);
dd = zeros(s);

for i = 1 : n
    for j = 1 : order
        z((i-1)*order + j) = x(i);
        dd((i-1)*order + j, 1) = y(i, 1);
    end
end

for i = 2 : s;
    k = 1;
    dd(1:s-i+1, i) = diff(dd(1:s-i+2,i-1));
    for j = 1 : s-i+1
        if(z(j+i-1) - z(j) == 0)
            dd(j,i) = y(k,i)/factorial(i-1);
            k = k+1;
        else
            dd(j,i) = dd(j,i) / (z(j+i-1) - z(j));
        end
    end
end

syms t;
p = dd(1,1);
for i = 2 : s
    p = p + dd(1, i) * prod(t - z(1:i-1));
end
p = simplify(p);
end










