function result = bai3_13(a, eps)
    x1 = a/3;
    x2 = 1/3*(a/x1^2 + 2*x1);
    while (abs((x2-x1)/x1) < eps)
        x1 = x2;
        x2 = 1/3*(a/x1^2 + 2*x1);
    end
    result = x2;
end