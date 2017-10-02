function X = bangtyhieu(x,y)
    n=length(x);
    X = zeros(n,n+1);
    X(:,1) = x';
    X(:,2) = y';
    for j = 3:n+1
        X(1:n+2-j,j) = (X(2:n+3-j,j-1) - X(1:n+2-j, j-1))./(X(j-1:n,1) - X(1:n+2-j,1));
        %Xay dung cot thu j theo cong thuc
    end
end
