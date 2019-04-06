%{
    ***Test Case***
    Input: LUDecomp([3, -2, 1; 2, 6, -4; -1, -2, 5], [-10; 44; -26])
    Output: -10.0000, 50.6667, -10.9091
    Expected Output: -10.0000, 50.6667, -10.9091
%}

%{
    ***Parameters***
    A - Matrix of simultaneous eqns
    B - Last column of simultaneous equations
%}

% used to solve a set of simultaneous equations
function [D, X] = LUDecomp(A, B)

% determining the maximum dimension of matrix
n = length(A);
% setting the upper matrix to matrix A
U = A;
% initializing lower matrix to identity matrix
L =  [1,0,0; 0,1,0; 0,0,1];

% creating an array to store D matrix values in forward substitution step
D = zeros(n,1);

% creating an array to store X matrix values in forward substitution step
X = zeros(n,1);

% iterating through elements in lower triangle of U matrix
% using Gaussian elimination to make these values 
for i = 1:n-1
    for k = i+1:n
        % calculating the factor to multiply the row by using gaussian
        % elimination
        fact = (U(k,i)/U(i,i));
        % subtracting a row by a multiple of the factor to get 0 element
        U(k,i:n) = U(k,i:n) - fact * U(i,i:n);
        % storing the factor in the lower matrix
        L(k,i) = fact;
    end
end

% calculating D matrix in forward substitution
for i = 1:n
    D(i) = B(i);
    % calculating the values for D matrix
    for j = 1:i-1
        D(i) = D(i) - L(i,j)*D(j);
    end
end

% calculating X matrix in backward substitution
for i = n:-1:1
    X(i) = D(i);
    % calculating the values for X matrix
    for j = i+1:n
        X(i) = (X(i)- U(i,j)*X(j)) / U(i,i) ;
    end
end
