%{
***Test Data***
Input: BackFDiff(3, 0.5, @(x) x^3 + 3*x^2 + 5)
Output: 39.2500
Expected Output: 39.2500
%}

%{
  ***Parameters*** 
  x - x value
  h - step value
  f - fucntion
%}
function D = BackFDiff(x, h, f)

%calculating Backward Finite-Difference O(h)-first Derivative
D = (f(x) - f(x-h))/h;

end
