function P = newton(x,y,x0)
    %x0 la vi tri muon noi suy
    syms t;
    n = length(x);
    k = 1;
    dmin = abs(x(1) - x0);
    for i=1:n
        d0 = abs(x(i) - x0);
        if (d0 < dmin) 
            dmin = d0;
            k = i;
        end
    end
    if (k <= n/2)
        P = newtonTien(x,y,k);
    else
        P = newtonLui(x,y,k);
    end
    fprintf('Gia tri P tai %f la: ',x0);
    fprintf('%f',subs(P,t,x0));
end    