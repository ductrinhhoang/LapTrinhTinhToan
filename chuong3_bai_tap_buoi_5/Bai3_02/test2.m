function y = test2(x)
%This function compute the value sin(x) - cos(x) given x as input
%If there is no input, it will compute the function as if x equals zero
%If x is a vector, it will return a vector containing the correspond value
%with each element in x
if nargin < 1
    x = 0;
end;
 y = sin(x) - cos(x);
 ezplot('sin(x) - cos(x)');
end