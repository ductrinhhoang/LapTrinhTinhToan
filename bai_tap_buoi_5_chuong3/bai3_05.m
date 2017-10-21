function fact = bai3_05(n)
    a1 = 1:1:n;
    a2 = 2:2:n;
    a3 = 1:2:n;
    
    fact1 = prod(a1);
    fact2 = prod(a2);
    fact3 = prod(a3);
    
    fprintf('Cac gia tri n!, (2n)!! va (2n-1)! lan luot la: ');
    fact = [fact1; fact2; fact3];
end