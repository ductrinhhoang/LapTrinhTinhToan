function poly = bai3_08(n)
    if(n == 0)
        poly = [1];
        return;
    elseif(n == 1)
        poly = [1 0];
        return;
    end;
    
    poly = [2*bai3_08(n-1) 0] - [0 0 bai3_08(n-2)];
    
end