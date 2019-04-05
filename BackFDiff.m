function D = BackFDiff(x, h, f)
%{
  x - x value
  h - step value
  f - fucntion
%}
D = (f(x) - f(x-h))/h;
end
