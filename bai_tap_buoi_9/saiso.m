function eps = saiso(f, P, a, b)
    %a<=b
    syms t; %cac ham co an t
    g = f - P;
    eps = abs(subs(g,t,a));
    if eps < abs(subs(g,t,b))
       eps = abs(subs(g,t,b));
    end
    if(a == b)
       %Khi a == b
       eps = abs(sub(g,t,a));
       return;
    else
        arr = solve(diff(g), 'Real', true);%Nghiem thuc dao ham f - P
        for i = 1:length(arr)
            if(a<arr(i) && arr(i)<b)%Chi xet cac nghiem trong khoang (a,b)
                val = abs(subs(g,t,arr(i)));
                if eps < val
                   eps = val; 
                end
            end
        end
        eps = vpa(eps);
    end
end