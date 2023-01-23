clc;clear;

sin_piBy3 = sin(pi/3);
x = 0;
n = 1;
eqn = ((-1)^x)*((pi^n)/(factorial(n)));

sum = (((-1)^x)*((pi^n)/(factorial(n))));
rel_error = 1;
while rel_error>=0.01
    x = x+1;
    n = n+2;
    old_sum = sum;
    sum = sum + (((-1)^x)*((pi^n)/(factorial(n))));
    toAbs = abs(sum - old_sum);
    rel_error = ((toAbs)/abs(old_sum))*100;
end

fprintf('Value of sin(pi/3) = %d\n',sin_piBy3);
fprintf('Value by Maclaurin Series = %d\n',sum);
fprintf('Last relative error = %d\n',rel_error);
fprintf('Number of iteration = %d\n',x);
