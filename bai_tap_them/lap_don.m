function [X, k] = lap_don(A, b, epsi, kmax)
    k = 0;
    if(abs(diag(A))*2 - sum(abs(A), 2) > 0)
        index = 'inf';
        B = zeros(size(A));
        for i = 1 : size(A, 1)
            B(i, :) = -A(i, :) / A(i,i); 
        end
        B = B + eye(size(A, 1));
        Z = eye(size(A,1));
        g = b ./ diag(A);
    elseif(abs(diag(A)')*2 - sum(abs(A), 1) > 0)
        index = 1;
        Z = diag(1./diag(A));
        B = eye(size(A,1)) - A*Z;
        g = b;
    else
        printf('ko la cheo troi');
    end
    
    x0 = zeros(size(A, 1), 1);
    x1 = B*x0 + g;
    while (norm(x1 - x0, index) > (1 - norm(B, index))*epsi / (norm(B, index)*norm(Z, index)) && k < kmax)
        x0 = x1;
        x1 = B*x0 + g;
        k = k+1;
    end;
    if(index == 1)
        X = Z * x1;
    else
        X = x1;
    end
end