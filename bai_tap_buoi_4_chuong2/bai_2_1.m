function bai_2_1
 syms x a b
 fprintf('1) limit(sin(sqrt(x + 1)) - sin(sqrt(x)), inf) = ')
 limit(sin(sqrt(x + 1)) - sin(sqrt(x)), inf)
 fprintf('2) limit((sin(x) - sin(a))/(x - a), a) = ')
 limit((sin(x) - sin(a))/(x - a), a)
 fprintf('3) limit(sin(3*x)/sin(4*x), pi) = ')
 limit(sin(3*x)/sin(4*x), pi)
 fprintf('4) limit((1 - cos(x))/x*x, pi) = ')
 limit((1 - cos(x))/x*x, pi)
 fprintf('5) limit(log(cos(a*x))/log(cos(b*x)), 0) = ')
 limit(log(cos(a*x))/log(cos(b*x)), 0)
 end 