% Newton's Polynomial solver

% we pick 10 random points in [0,2pi] in ascending order. 
X=sort(rand([10,1])*2*pi);
% and we take the sin of it. 
Y=sin(X);
%(X,Y) are the points to interpolate. 


x=linspace(0,2*pi,200);

a=polyNewton(X,Y);
y=arrayfun(@(x) interpNewton(a,X,x), x);


function a=polyNewton(X,Y)
% this function calculates the coefficients of Newton's polynomial
% X and Y are the points to be interpolated.
% a returns the coefficients such that p(x)=a[1]+a[2](x-x[1])+a[3](x-x[2])(x-x[1])+...
% YOU ARE ALLOWED ONLY ONE FOR LOOP
% YOU ARE NOT ALLOWED TO ALLOCATE ANY EXTRA MEMORY
a=zeros(size(Y));
n = length(X);
a = Y;
for k = 1:n-1
    for j = n:-1:k+1
        a(j) = (a(j) - a(j-1)) / (X(j) - X(j-k));
        for i = k-1:-1:j-1
            a(i+1) = a(i+1) - a(j) * (X(k) - X(i));
        end
    end
end    
end


function y=interpNewton(a,X,x)
% this function takes the coefficients of the Newton polynomial (a) and the nodes (X) and returns the value
% of the polynomial at points in x
% YOU ARE ALLOWED ONLY ONE FOR LOOP   
%function y = interpNewton(a, X, x)
n = length(X);
y = a(n);
for k = n-1:-1:1
    y = y * (x - X(k)) + a(k);
end
end
