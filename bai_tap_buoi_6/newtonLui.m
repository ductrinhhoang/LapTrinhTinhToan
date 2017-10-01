function P = newtonLui(x,y,pos)
    %pos la vi tri noi suy
    syms t;
    X = bangtyhieu(x,y);
    P=X(pos,2);
    g=1;
    for i=pos:-1:1
        g=g*(t-x(i));
        P=P + g*X(i,pos-i+3);
    end
    P=expand(P);
end