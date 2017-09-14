function bai2_08()
    syms x y;
    fprintf('1. z = y.ln(x^2 - y^2)\n');
    fprintf('   z''(x)/x + z''(y)/y = \n');
    z = y*log(x^2 - y^2);
    expand(diff(z,x)/x +diff(z,y)/y)
    fprintf('   z/y^2 = \n');
    expand(z/y^2)
    fprintf('Suy ra dieu phai chung mai\n');
    
    fprintf('2. z = y^(y/x).sin(y/x)\n');
    fprintf('   x^2.z''(x) + x.y.z''(y) = \n');
    z = y^(y/x)*sin(y/x);
    expand(diff(z,x)*x^2 +diff(z,y)*x*y)
    fprintf('   yz = \n');
    expand(y*z)
    fprintf('Suy ra dieu phai chung mai\n');
end
