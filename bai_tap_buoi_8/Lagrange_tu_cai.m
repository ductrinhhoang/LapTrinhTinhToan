function P=Lagrange_tu_cai(x, y)
    syms t;
    n = length(x);
    P = zeros(1,n);
    for i=1:n
       P0 = y(i);
       for j=1:n
           if(j~=i)
               P0 = conv(P0,[1 -x(j)])/(x(i) - x(j));
           end
       end
       P = P + P0;
    end
    saiso_Lagrange(x, max(x), min(x));
end