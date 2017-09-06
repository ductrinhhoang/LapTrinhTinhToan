x = [3 1 5 7 9 2 6];

fprintf('1. x(3) = '); disp(x(3));
fprintf('\n');

fprintf('2. x(1:7) = '); disp(x(1:7));
fprintf('\n');

fprintf('3. x(1:end) = '); disp(x(1:end));
fprintf('\n');

fprintf('4. x(1:end-1) = '); disp(x(1:end-1));
fprintf('\n');

fprintf('5. x(6:-2:1) = '); disp(x(6_:-2:1));
fprintf('\n');

fprintf('6. x([1 6 2 1 1]) = '); disp(x([1 6 2 1 1]));
fprintf('\n');

fprintf('7. sum(x) = '); disp(sum(x));
fprintf('   min(x) = '); disp(min(x));
fprintf('   max(x) = '); disp(max(x));
