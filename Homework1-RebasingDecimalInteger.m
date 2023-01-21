function v = rebaseInteger(n,b,m)
% n=integer to be rebased
% b = new base
% m = number of digits
v = NaN(m,1);
test = [];
y = [0;0;0;0]
if b<=1
    for i = 1:1:m
        v(i) = -1;
    end
else
    remainder = 0;
    s=1;
    while n ~= 0
        remainder = rem(n,b);
        test(s) = remainder;
        n=floorDiv(n,b);
        s = s+1;
    end
f = 1;
for j = length(test):-1:1
    v(f) = test(j);
    f = f+1;
end
end
