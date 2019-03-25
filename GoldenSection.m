function xopt = GoldenSection(xu, xl, f, stop)
ea = stop+1;
gr = 1.61803;
iter = 0;
while( ea > stop)
  iter = iter + 1;
  d = (gr-1)*(xu-xl);
  x1 = xl + d;
  x2 = xu - d;

  if ( f(x1) < f(x2))
    xopt = x1;
    ea = (2-gr)*abs((xu - xl)/xopt)*100;
  
  else
    xopt = x2;
    ea = ((2-gr)*abs((xu - xl)/xopt))*100;
    
  end
  
  if (f(x1) < f(x2))
      xl = x2;
      x2 = x1;
  else
