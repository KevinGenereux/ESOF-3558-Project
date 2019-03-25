function D = BackFDiff(x, h, f)
%{
  x - x value
  h - step value
  f - fucntion
%}
D = (f(x+h) - f(x-h))/h;
end
