function X = Secant(xi0, xi1, f, stop)
%{
    xi0 - initial x value
    xi1 - initial x value
    f - function
    stop - iteration to stop at
%}

X = zeros(stop,1);

for i = 0:stop-1
    if i == 0
        X(i+1) = xi1 - ((f(xi1)*(xi0 - xi1))/(f(xi0) - f(xi1)));
    
    elseif i == 1
        X(i+1) = X(i) - ((f(X(i))*(xi1 - X(i)))/(f(xi1) - f(X(i))));
       
    else
        X(i+1) = X(i) - ((f(X(i))*(X(i-1) - X(i)))/(f(X(i-1)) - f(X(i))));
    end
end

end
