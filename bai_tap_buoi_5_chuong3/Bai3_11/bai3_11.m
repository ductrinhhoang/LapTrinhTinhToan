function [S1 S2] = bai3_11(n)
    v = 1 : 1 :n;
    S1 = sum(v);
    S2 = sum(1./(v.^3));
end