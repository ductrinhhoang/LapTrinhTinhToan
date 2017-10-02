function P = newtonTien(x,y)
    syms t;
    X = bangtyhieu(x,y);
    P=X(1,2);
    g=1;
    for i=2:length(x)
        g=g*(t-x(i-1));
        P=P + g*X(1,i+1);
    end
    P = expand(P);
end