function bai1_02_them(a)
    if(nargin < 1)
        a = 0;
    end
    A = [2 1 3 3;1 0 -1 0;a 2 1 1;4 3 2 4];
    det_A = det(A)
    %Since det(A(1:3;2:4)) !=0, r(A) >= 3
    %Therefore if det(A) != 0 then r(A) = 4, else r(A) = 3
    
    fprintf('rank(A) = ');
    display(rank(A));
end