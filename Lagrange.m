%{   
    ***Test Data***
    Input: Lagrange([0,1.8,5,6,8.2,9.2,12],[26,16.415,5.375,3.5,2.015,2.54,8],3.5)
    Output: 9.5938
    Expected Output: 9.5938
%}

%{
    ***Parameters***
    x - array of independent variables
    y - array of dependent variables
    xx - the value of x you are trying to interpolating for y
%}

function yint = Lagrange(x,y,xx)
% Lagrange: Lagrange interpolating polynomial
% yint = Lagrange(x,y,xx): Uses an (n − 1) −order
% Lagrange interpolating polynomial based on n data points
% to determine a value of the dependent variable (yint) at
% a given value of the independent variable, xx.
% input:
% x = independent variable
% y = dependent variable
% xx = value of independent variable at which the
% interpolation is calculated
% output:
% yint = interpolated value of dependent variable

% determine the max dimension length of a matrix
n = length(x);

% if the matrix is not n x n, display na error
if length(y) ~= n
    error('x and y must be same length');
end

% stores result
s = 0;

% iterating through each row of matrix
for i = 1:n
    
    % initializing product variable to each element in y array
        product = y(i);
    for j = 1:n
        
        % calculating lagrange product
        if i ~= j
            product = product*(xx - x(j))/(x(i) - x(j));
        end
    end
    
    %summing individual lagrange products
    s = s + product;
end

%interpolated value of y using lagrange polynomials
yint = s;
