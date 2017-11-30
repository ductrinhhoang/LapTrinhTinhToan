function x = newton(f1,f2,x,err,maxcount)
% f1,f2 are symbolic functions of two symbolic variables u,v.
% x is an initial approximate vector.
%err is the tolerance.
% maxcount is the maximum of iterations.
syms u v
count=1;
while(count<=maxcount)
F=[subs(subs(f1,u,x(1)),v,x(2));subs(subs(f2,u,x(1)),v,x(2))];
J=[subs(subs(diff(f1,u),u,x(1)),v,x(2)) subs(subs(diff(f1,v),u,x(1)),v,x(2));subs(subs(diff(f2,u),u,x(1)),v,x(2)) subs(subs(diff(f2,v),u,x(1)),v,x(2))];
F=double(F);
J=double(J);
y=linsolve(J,-F);
x=x+y;
if norm(y)<err
    break;
else 
    count=count+1; 
end 
end  % endwhile.
x=double(x);
if norm(y)<err
   fprintf(' \nthe procedure was successful');
   fprintf(' \n The real error: %f', norm(y)); 
   fprintf(' \n the number of iterations: %d', count);
else 
   fprintf('\nMaximum number of iterations exceeded');
end