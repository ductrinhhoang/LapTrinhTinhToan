function [I, n] = day_cung(f, a, b, esp) 
% f lien tuc va co dao ham lien tuc den cap 2  tren [a, b]
% f', f'' giu nguyen mot dau tren doan [a, b]
    syms x;
    dF = diff(f);
    ddF = diff(dF);
    m=min(abs(subs(dF,{x},a)),abs(subs(dF,{x},b)))
    M=max(abs(subs(dF,{x},a)),abs(subs(dF,{x},b)))
    u = subs(f, a);
    v = subs(f, b);
    if(u*v > 0) 
        fprintf('[a, b] khong phai la khoang phan ly nghiem');
        return;
    else
        if(u*subs(ddF, a) > 0)
            d = a;
            x0 = b;
        else
            d = b;
            x0 = a;
        end
        subs(f, x0)
        x1 = x0 - subs(f, x0)*(x0 - d)/(subs(f, x0) - subs(f, d))
        n = 0;
        while(abs(x1 - x0) > m*esp/(M - m))
            x0 = x1;
            x1 = x0 - subs(f, x0)*(x0 - d)/(subs(f, x0) - subs(f, d))
            n = n + 1;
        end
        I = x1;
    end
end