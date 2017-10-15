function [I, n] = day_cung(f, a, b, esp) 
syms x;
df = diff(f);
ddf = diff(df);
dF = matlabFunction(df);
ddF = matlabFunction(ddf);
[dxMin dfMin] = fminbnd(dF, a, b);
[dxMax dfMax] = fminbnd(@(x) -dF(x), a, b);
[ddxMin ddfMin] = fminbnd(ddF, a, b);
[ddxMax ddfMax] = fminbnd(@(x) -ddF(x), a, b);
u = subs(f, a);
v = subs(f, b);
if(u*v > 0) 
        fprintf('[a, b] khong phai la khoang phan ly nghiem\n');
        return;
end
% kiem tra min(f')*max(f') > 0 tren [a, b] thi f' ko doi dau
% tuong tu cho f''
if(dfMin*(-dfMax) > 0 && ddfMin*(-ddfMax) > 0) 
    m=abs(dfMin);
    M=abs(dfMax);
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
else
    fprintf('Ham khong thoa man dieu kien hoi tu\n');
end
end