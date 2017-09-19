function bai3_9(n)
price = 0;
message = '';

switch logical(true)
    case {n < 0}
        message = 'Khong hop le';
    case {n < 100}
        price = 500*n;
    case n >= 100 && n <= 200
        price = 700*n;
    case n >= 200 && n <= 500
        price = 1000*n;
    case n > 500
        price = 1200*n;
        message = 'Han che su dung dien';
end
fprintf('So tien phai tra : %d\n', price);
fprintf('%c', message);
fprintf('\n');
end