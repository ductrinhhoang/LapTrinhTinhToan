function P = newtonLui(x,y)
    syms t;
    X = bangtyhieu(x,y);
    n = length(x);
    P=X(n,2);
    g=1;
    for i=3:n+1
        g=g*(t-x(n+3-i));
        P=P + g*X(n-i+2, i);
    end
    P = expand(P);
end