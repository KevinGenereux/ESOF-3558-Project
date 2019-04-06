%{
    ***Test Case***
    Input: CompSimpsons(0, 4, @(x) 1- 2.71828^(-x))
    Output: 3.0158
    Expected Output: 3.0158
    Solved Integral: 3.018
%}

%{
    ***Parameters***
    a - lower bound of integral
    b - upper bound of integral
    f - function
%}

% estimate of integral using composite integral
function I = CompSimpsons(a, b, f)

% number of segments in Composite Simpsons is 5 by default
n=5

% calculating step size
h = (b-a)/n;

% creating a 
X = a:h:b

% calculating the integral of first two segments using Simpson's 1/3 Rule 
TwoSegmentsIntegral = (h/3) * (f(X(1)) + 4*f(X(2)) + f(X(3)));
% calculating the integral of last three segments using Simpson's 3/8 Rule 
ThreeSegmentsIntegral = (3*h/8) * (f(X(3)) + 3*f(X(4)) + 3*f(X(5)) + f(X(6)));

% sum or results for first two segments and last three segments
integral = TwoSegmentsIntegral + ThreeSegmentsIntegral

end
