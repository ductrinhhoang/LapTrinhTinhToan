function [I, n] = chia_doi(f, a, b, esp)
syms x;
u = subs(f, a);
v = subs(f, b);
if (u*v > 0) 
    fprintf('Khoang [a, b] khong phai la khoang phan ly nghiem.\n');
else
    n = 0;
    while(b - a > esp)
        n = n + 1;
        c = (a + b)/2;
        if(subs(f, c) == 0) 
            fprintf('Nghiem cua phuong trinh la :\n');
            I = c;
            return;
        end
        if (subs(f, c)*subs(f, a) < 0) 
            b = c;
        else
            a = c;
        end
    end
    I = a;
end
end