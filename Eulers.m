function [X, Y] = Eulers(xi, xf, h, y0, f)
%{
    xi - x value to start at
    xf - x value to stop at
    h - step size
    y0 - value of y(0)
    f - function
%}

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
