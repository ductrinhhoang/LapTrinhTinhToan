function P=Lagrange_tu_cai(x, y)
    syms t;
    n = length(x);
    P = 0;
    for i=1:n
       P0 = y(i);
       for j=1:n
           if(j~=i)
               P0 = P0*(t-x(j))/(x(i) - x(j));
           end
       end
       P = P + P0;
    end
    P = expand(P);
end