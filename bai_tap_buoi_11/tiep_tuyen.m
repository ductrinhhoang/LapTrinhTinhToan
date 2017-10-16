function [I,n] = tiep_tuyen(f, a, b, eps)
    %Dau vao: f la ham, a<b va [a,b] la khoang phan li nghiem
    %eps la sai so
    
    %dieu kien hoi tu Furier: f', f'' khong doi dau tren [a,b]
    %chon x0 sao cho f(x0)*f''(x0)>0
    syms x;
    dF = matlabFunction(diff(f));
    ddF = matlabFunction(diff(dF, x));
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
    % kiem tra f' va f'' coi chung co doi dau tren [a,b] khong
    if(dfMin*(-dfMax) > 0 && ddfMin*(-ddfMax)>0) 
        m=min(abs(dfMin), abs(dfMax));
        M=max(abs(dfMin), abs(dfMax));
        %Chon x0 sao cho f(x0)*f''(x0)>0
        if(u*subs(ddF, a) < 0)
            d = a;
            x0 = b;
        else
            d = b;
            x0 = a;
        end
        n = 0;
        x1 = x0 - subs(f,x0)/dF(x0);
        while(eps < abs(subs(f,x0)/m))
            x0 = x1;
            x1 = x0 - subs(f,x0)/dF(x0);
            n = n + 1;
        end
        I = vpa(x1);
    else
        fprintf('Ham khong thoa man dieu kien hoi tu\n');
    end
end