function [a,m]=interpSpectra(x,y)
% x and y are vectors containing the points to be interpolated 
% according to y=a*x^m
n = length(x);
x_log = log(x);
y_log = log(y);
c = polyfit(x_log, y_log, 1);
m = c(1);
a = exp(c(2));
end
