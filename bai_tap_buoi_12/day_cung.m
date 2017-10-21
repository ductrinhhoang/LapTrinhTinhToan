function [I, n] = day_cung(f, a, b, esp, maxCount) 
    %Dau vao: f la ham an x, a<b va [a,b] la khoang phan li nghiem
    %esp la sai so, maxCount la so lan lap toi da
    %VD: [I,n] = tiep_tuyen(@(x)x^3-1, 0.5, 2, 1e-6, 100)
    
    %dieu kien hoi tu: f' khong doi dau tren [a,b]
    %chon x0 sao cho f(x0)*f''(x0)>0
    syms x;
    if (diff(f,x,2) ~= 0)
        dF = matlabFunction(diff(f, x));
    else
        dF = diff(f,x);
        dF = @(x) dF;
    end
    if(diff(f,x,3) ~= 0)
        ddF = matlabFunction(diff(f, x, 2));
    else
        ddF = diff(f,x,2);
        ddF = @(x) ddF;
    end
    %[ddxMin, ddfMin] = fminbnd(ddF, a, b);
    [~, ddfMin] = fminbnd(ddF, a, b);%dung ~, thi ko can dung ddxMin nua
    [~, ddfMax] = fminbnd(@(x) -ddF(x), a, b);
    if(f(a)*f(b) > 0) 
        fprintf('[a, b] khong phai la khoang phan ly nghiem\n');
        return;
    end
    % kiem tra min(f')*max(f') > 0 tren [a, b] thi f' ko doi dau
    % tuong tu cho f''r
    if(ddfMin*(-ddfMax) > 0)
        %Khi nay, f'' khong doi dau nen max, min f' dat tai 2 dau mut
        if(dF(a)*dF(b)>0)
            m=min(abs(dF(a)), abs(dF(b)));
            M=max(abs(dF(a)), abs(dF(b)));
            %Chon x0 sao cho f(x0)*f''(x0)<0
            if(f(a)*ddF(a) > 0)
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
               return;
            end
            I = vpa(x1);
        else
            fprintf('Dao ham cap 1 doi dau, khong thoa man dieu kien hoi tu\n');            
        end
    else
        fprintf('Dao ham cap 2 doi dau, khong thoa man dieu kien hoi tu\n');
    end
end