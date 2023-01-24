function y = pi4Error(n)
% pshar111@asu.edu
sum = 0;
pi_by_4 = pi/4;
sum = 0;
for i = 0:1:n-1
    sum = sum + (((-1)^i)/(1 + (2*i)));
end
y= abs(sum - pi_by_4);
end
