function L = Legendre(n)
    syms x;
    if(n==0) 
        L = [1];
    end
    if(n==1) 
        L = [0 1];
    end
    if(n>1)
       L0 = [Legendre(n-2) 0 0];
       L1 = [0 Legendre(n-1)];
       L = ((2*n-1)*L1 - (n-1)*L0)/n;
    end
end