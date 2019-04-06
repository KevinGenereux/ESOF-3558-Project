%{   
    ***Test Data***
    Input: [X, Y] = Eulers(0, 2, 0.5, 1, @(t,y) y*t^2 - 1.1*y)
    Output: X = 0      0.5000    1.0000    1.5000    2.0000
            Y = 1.0000 0.4500    0.2587    0.2458    0.3872
    Expected Output: X = 0      0.5000    1.0000    1.5000    2.0000
                     Y = 1.0000 0.4500    0.2587    0.2458    0.3872
%}

%{
    ***Parameters***
    xi - x value to start at
    xf - x value to stop at
    h - step size
    y0 - value of y(0)
    f - function
%}

% used for initial value problems
function [X, Y] = Eulers(xi, xf, h, y0, f)

% creates a matrix X, that has values from xi to xf, increasing by h
X = xi:h:xf;

% length of largest matrix dimension
n = length(X);

% if X(n) current does not equal xf
if X(n) ~= xf
    % set X(n+1) to xf
    X(n+1) = xf;
    % increment the value of n
    n = n+1;
end

% create array to store data results
Y = zeros(n,1);

% initialize the value of y to y0 for the first iteration
Y(1) = y0;

% estimate value of y at next step using point and its derivative
for i = 1:n-1
    Y(i+1) = Y(i) + f(X(i),Y(i))*h;
end
end
