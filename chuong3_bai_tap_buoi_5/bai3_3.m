<<<<<<< HEAD
function ret = bai3_3(epsi)
sum = 0;
n = 1;
while(1/(2*n +1) > epsi)
    sum = sum + 1/n^2;
    n = n + 1;
end
ret = sqrt(6*sum);
n
=======
function [Pi, n] = bai3_3(e)
sum = 0;
n = 1;
while(pi - sqrt(sum*6) > e)
    sum = sum + 1/n^2;
    n = n + 1;
end
Pi = sqrt(6*sum);
>>>>>>> 3a284a064c4397f9ae58ef8f0bd04cf3e988630f
end