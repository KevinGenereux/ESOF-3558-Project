%{   
    ***Test Data***
    Input: Secant(2.5, 3.5, @(x) x^3-6*x^2+11*x-6.1,3)
    Output: 3.222
    Expected Output: 3.222
%}

%{   
    ***Parameters***
    xi0 - initial x value
    xi1 - initial x value
    f - function
    stop - iteration to stop at
%}

% used to estimate the root of a function between two points
function X = Secant(xi0, xi1, f, stop)

% creating an array to store results
X = zeros(stop,1);

% iterate for number of times specified
for i = 0:stop-1
    
    % formula to estimate root for 1st iteration
    if i == 0
        X(i+1) = xi1 - ((f(xi1)*(xi0 - xi1))/(f(xi0) - f(xi1)));
    
    % formula to estimate root for 2nd iteration
    elseif i == 1
        X(i+1) = X(i) - ((f(X(i))*(xi1 - X(i)))/(f(xi1) - f(X(i))));
    
    % formula to estimate root for iterations after 2nd iteration
    else
        X(i+1) = X(i) - ((f(X(i))*(X(i-1) - X(i)))/(f(X(i-1)) - f(X(i))));
    end
end

end
