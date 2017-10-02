function P = newtonTien(x,y,pos)
    %pos la vi tri noi suy
    syms t;
    X = bangtyhieu(x,y);
    P=X(pos,2);
    g=1;
    for i=pos+1:length(x)
        g=g*(t-x(i-1));
        P=P + g*X(pos,i+1);
    end
    P = expand(P);
end