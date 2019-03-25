function [X, Y] = Eulers(xi, xf, h, y0, f)
X = xi:h:xf;
n = length(X);

if X(n) ~= xf
    X(n+1) = xf;
    n = n+1;
end
Y = zeros(n,1);
Y(1) = y0;

for i = 1:n-1
    Y(i+1) = Y(i) + f(X(i),Y(i))*h;
end
end
