function [x, n] = HPT_lapdon(A, b, eps, maxCount)
    %Giai he phuong trinh A*x = b voi sai so eps va so lan lap toi da maxCount   
    if(size(A,1)~=size(A,2))
       fprintf('Ma tran khong vuong. Khong the su dung phuong phap lap don');
       return;
    end
    %Bien doi A*x=b thanh x=B*x+g
    [B, g, norm_index] = lapdon_SP_change(A, b);
    %norm_index la ten chuan se su dung
    %norm_index se tra ve -1 neu khong chon duoc chuan theo ham lapdon_SP_change
    if norm_index == -1
        return;
    end
    x0 = g;
    x1 = B*x0+g;
    ss = norm(B,norm_index)*norm(x1-x0,norm_index)/(1-norm(B,norm_index));
    n=0;
    while ss>eps && n<maxCount
        n = n+1;
        x0 = x1;
        x1 = B*x0+g;
        ss = norm(B,norm_index)*norm(x1-x0,norm_index)/(1-norm(B,norm_index));
    end
    if n == maxCount
       fprintf('Da dat so lan lap toi da\n'); 
    end
    x = x1;
end