function bai2_02()
    syms x;
    f = x^5 + 3*x^4 -3*x +7
    fprintf('1. Tinh f''\n');
    diff(f)
    fprintf('2. Tinh f(4), f''(4)');
    fprintf('\nf(4)= \n');
    subs(f,x,4)
    fprintf('\nf''(4)= \n');
    subs(diff(f),x,4)
    fprintf('3. Do f'' khong co diem de f ko xac dinh nen diem toi han cua f la cac nghiem cua f''=0\n');
    solve(diff(f))
end