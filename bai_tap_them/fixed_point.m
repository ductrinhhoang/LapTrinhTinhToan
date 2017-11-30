function [X, k] = fixed_point(f, g, init, kmax, epsi)
% solving system u = f(u, v); v = g (u, v)
syms u v;
J = jacobian( [f ; g], [u; v]);
L = norm(subs(J, [u, v], init), 'inf');
if (L > 1)
    disp('ko thoa man dieu kien hoi tu');
    return;
end
x0 = init;
x1 = [subs(f, [u, v], x0) subs(g, [u, v], x0)];
k = 0;
while(norm(x1 - x0, 'inf') > epsi && k < kmax)
    x0 = double(x1);
    x1 = [subs(f, [u, v], x0) subs(g, [u, v], x0)];
    k = k+1;
end
X = double(x1);
end