function [I, n] = day_cung(f, a, b, esp, maxCount) 
    %Dau vao: f la ham an x, a<b va [a,b] la khoang phan li nghiem
    %esp la sai so, maxCount la so lan lap toi da
    %VD: [I,n] = tiep_tuyen(@(x)x^3-1, 0.5, 2, 1e-6, 100)
    
    %dieu kien hoi tu: f' khong doi dau tren [a,b]
    %chon x0 sao cho f(x0)*f''(x0)>0
    syms x;
    dF = matlabFunction(diff(f, x));
    ddF = matlabFunction(diff(dF, x));
    [dxMin dfMin] = fminbnd(dF, a, b);
    [dxMax dfMax] = fminbnd(@(x) -dF(x), a, b);
    [ddxMin ddfMin] = fminbnd(ddF, a, b);
    [ddxMax ddfMax] = fminbnd(@(x) -ddF(x), a, b);
    u = f(a);
    v = f(b);
    if(u*v > 0) 
            fprintf('[a, b] khong phai la khoang phan ly nghiem\n');
            return;
    end
    % kiem tra min(f')*max(f') > 0 tren [a, b] thi f' ko doi dau
    % tuong tu cho f''r
    if(dfMin*(-dfMax) > 0) 
        m=min(abs(dfMin), abs(dfMax));
        M=max(abs(dfMin), abs(dfMax));
        %Chon x0 sao cho f(x0)*f''(x0)<0
        if(u*ddF(a) > 0)
            d = a;
            x0 = b;
        else
            d = b;
            x0 = a;
        end
        x1 = x0 - f(x0)*(x0 - d)/(f(x0) - f(d));
        n = 0;
        while(abs(x1 - x0) > m*esp/(M - m) && n < maxCount)
            x0 = x1;
            x1 = x0 - f(x0)*(x0 - d)/(f(x0) - f(d));
            n = n + 1;
        end
        if n == maxCount
           fprintf('Da dat so lan lap toi da'); 
        end
        I = vpa(x1);
    else
        fprintf('Ham khong thoa man dieu kien hoi tu\n');
    end
end