function ret = bai3_14(n)
    if(nargin < 1)
        ret = 1;
        return;
    end;
    format long
    ret = 0;
    %Su dung ma hoa vo huong
    fprintf('thoi gian ma hoa vo huong \n');
    tic;
    for i = 1:1:n
        ret = ret + 1/(i^3);
    end
    toc;
    
    %Su dung ma vector hoa
    fprintf('thoi gian ma hoa vector \n');
    tic;
    v = 1 : 1 : n;
    ret = sum(1./(v.^3));
    toc;
end