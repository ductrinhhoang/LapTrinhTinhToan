function [B, g, norm_index] = lapdon_SP_change(A, b)
    %A la ma tran vuong cap n, b la vector cot n hang
    %Chuong trinh ta se tra ra B,g,norm_index. 
    %Trong do B, g la bien doi tu A*x=b thanh x = B*x+g va norm_index la ten chuan ta se su dung
    n = length(b);
    B = zeros(n,n);
    g = zeros(n,1);
    norm_index = check_cheo_troi(A);    
    if norm_index == -1
        fprintf('Ma tran khong cheo troi hang hay cheo troi cot. Khong nen su dung phuong phap lap don\n');
        return;
    end
    %Bay gio, ma tran chac chan vuong va se cheo troi hang hoac cheo troi cot
    for i=1:n
       g(i) = b(i)/A(i,i);
       for j=1:n
           if i~=j
               B(i,j) = -A(i,j)/A(i,i);
           end
       end
       A(i,i) = 0;       
    end
end