function bai2_05()
    syms t;
    fprintf('1. y = 1 + e^(-t^2/2), y''+ty = t\n');
    fprintf('   y''+ty = ');
    y = 1 + exp(-t^2/2);
    expand(diff(y) +t*y)
    
    fprintf('2. y = 1/(t-3), y''+y^2 = 0\n');
    fprintf('   y''+y^2 = ');
    y = 1/(t-3);
    expand(diff(y) +y^2)
    
    fprintf('3. y = 10 - t^2/2, y''.y+t.y = 0\n');
    fprintf('   y''.y+t.y = ');
    y = 10 - t^2/2;
    expand(diff(y)*y +y*t)
    
    fprintf('4. y = ln(t), y''.(2.e^y - x) = 1\n');
    fprintf('   y''.(2.e^y - x) = ');
    y = log(t);
    expand(diff(y)*(2*exp(y)-t))
    
    fprintf('5. e^t.cos(2t), y''''-2.y''+5y =0\n');
    fprintf('   y''''-2.y''+5y =');
    y = exp(t)*cos(2*t);
    expand(diff(y,2) -2*diff(y) + 5*y)
end