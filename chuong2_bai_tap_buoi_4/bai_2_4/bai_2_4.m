function bai_2_4
 syms x
 fprintf('1) int(sqrt(1 + sin(x)^2), 0, pi) = ')
 int(sqrt(1 + sin(x)^2), 0, pi)
 fprintf('2) int(sqrt(1 + (sin(x))^4), 0, pi) = ')
 int(sqrt(1 + sin(x)^4), 0, pi)
 fprintf('1) using quadl:')
 quadl(@myfun1, 0, pi);
 fprintf('2) using quadl:')
 quadl(@myfun2, 0, pi)
 end 