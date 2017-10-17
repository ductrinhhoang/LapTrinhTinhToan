function [I,n] = tiep_tuyen(f, a, b, eps, maxCount)
    %Dau vao: f la ham an x, a<b va [a,b] la khoang phan li nghiem
    %eps la sai so, maxCount la so lan lap toi da
    %VD: [I,n] = tiep_tuyen(@(x)x^3-1, 0.5, 2, 1e-6, 100)
    
    %dieu kien hoi tu Furier: f', f'' khong doi dau tren [a,b]
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
    % kiem tra f' va f'' coi chung co doi dau tren [a,b] khong
    if(dfMin*(-dfMax) > 0 && ddfMin*(-ddfMax)>0) 
        m=min(abs(dfMin), abs(dfMax));
        %Chon x0 sao cho f(x0)*f''(x0)>0
        if(u*ddF(a) < 0)
            x0 = b;
        else
            x0 = a;
        end
        n = 0;
        x1 = x0 - f(x0)/dF(x0);
        while(eps < abs(f(x0)/m) && n < maxCount)
            x0 = x1;
            x1 = x0 - f(x0)/dF(x0);
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