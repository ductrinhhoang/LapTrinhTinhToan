function norm_index = check_cheo_troi(A)
    %Ham nay se kiem tra xem ma tran A la cheo troi hang hay cheo troi cot
    %Tu do, ta se chon chuan tuong ung voi chuan 1 hoac chuan vo cung
    %Ham se tra ve gia tri -1 neu nhu A khong the dung chuan 1 hoac vo cung
    norm_index = -1;
    n = size(A);
    A0 = abs(A);
    A0_sum_col = sum(A0,2);%Vector tong theo cot cua A0
    A0_sum_row = sum(A0,1)';%Vector tong theo hang cua A0
    Diag = diag(A0);%Duong cheo ma tran abs(A)
    if sum(2*Diag>A0_sum_col) == n
       %Kiem tra xem A co cheo troi cot khong
       fprintf('Ma tran cheo troi hang, ta chon chuan vo cung\n');
       norm_index = inf;
       return;
    end
    if sum(2*Diag>A0_sum_row) == n
       %Kiem tra xem A co cheo troi cot khong
       fprintf('Ma tran cheo troi cot, ta chon chuan 1\n');
       norm_index = 1;
       return;
    end
end