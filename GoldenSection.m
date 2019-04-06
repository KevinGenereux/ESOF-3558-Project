function xopt = GoldenSection(xl, xu, f, stop)

% initialzing stopping condition
ea = stop+1;
% setting value of tau
tau =  (1+ sqrt(5)) / 2;
% initializng iteration counter value to 0
iter = 0;

% continue until stopping condition is reached
while( ea > stop)
  
  % increment iteration counter
  iter = iter + 1;
  
  % calculate difference
  d = (tau-1)*(xu-xl);
  
  % calculate lower and upper bounds
  x1 = xl + d;
  x2 = xu - d;

  %if f(x1) is less than f(x2), set the optimal value to x1
  if (f(x1) < f(x2))
    xopt = x1;
    ea = (2-tau)*abs((xu - xl)/xopt)*100;
  
  %if f(x2) is less than f(x1), set the optimal value to x2
  else
    xopt = x2;
    ea = ((2-tau)*abs((xu - xl)/xopt))*100;
    
  end
  
  %for the next iteration, x1 becomes upper bound and x2 becomes x1
  if (f(x1) < f(x2))
      xl = x2;
      x2 = x1;
  
  %for the next iteration, x2 becomes the newer lower limt and x1 becomes the new x2
  else
      xu = x1;
      x1 = x2;
  end
  
end
