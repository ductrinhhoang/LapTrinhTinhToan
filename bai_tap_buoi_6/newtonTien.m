function P = newtonTien(x,y,pos)
    %pos la vi tri noi suy
    syms t;
    X = bangtyhieu(x,y);
    P=X(pos,2);
    g=1;
    for i=pos:length(x)
        g=g*(t-x(i));
        P=P + g*X(pos,i+1);
    end
    P=expand(P);
end