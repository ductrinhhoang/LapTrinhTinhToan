function [I,n] = tiep_tuyen(f, a, b, eps, maxCount)
    %Dau vao: f la ham an x, a<b va [a,b] la khoang phan li nghiem
    %eps la sai so, maxCount la so lan lap toi da
    %VD: [I,n] = tiep_tuyen(@(x)x^3-1, 0.5, 2, 1e-6, 100)
    
    %dieu kien hoi tu Furier: f', f'' khong doi dau tren [a,b]
    %chon x0 sao cho f(x0)*f''(x0)>0
    syms x;
    dF = matlabFunction(diff(f, x));
    if(diff(f,x,3) ~= 0)
        ddF = matlabFunction(diff(f, x, 2));
    else
        ddF = diff(f,x,2);
        ddF = @(x) ddF;
    end
    [~, ddfMin] = fminbnd(ddF, a, b);
    [~, ddfMax] = fminbnd(@(x) -ddF(x), a, b);
    if(f(a)*f(b) > 0) 
        fprintf('[a, b] khong phai la khoang phan ly nghiem\n');
        return;
    end
    % kiem tra f' va f'' coi chung co doi dau tren [a,b] khong
    if(ddfMin*(-ddfMax)>0) 
        %Khi nay, f'' khong doi dau nen max, min f' dat tai 2 dau mut
        if dF(a)*dF(b)>0
            m=min(abs(f(a)), abs(f(b)));
            %Chon x0 sao cho f(x0)*f''(x0)>0
            if(f(a)*ddF(a) < 0)
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
            fprintf('Dao ham cap 1 doi dau, khong thoa man dieu kien hoi tu\n');
        end
    else
        fprintf('Dao ham cap 2 doi dau, khong thoa man dieu kien hoi tu\n');
    end
end