function n = toDecimal(v, b)
% v = vector or digits
% b = base
% n = number in decimal
LengthOfVector = length(v);
sum = 0;
Mult = LengthOfVector;

for i = 1:1:LengthOfVector
    Mult = Mult - 1;
    if v(i) ~= 0
        sum = sum + (v(i)*(b^Mult));
    end
end
n = sum;
end
