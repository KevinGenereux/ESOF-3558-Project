function I = CompSimpsons(a, b, n, f)
%{
    a - a value
    b - b value
    n - number of segments
%}
h = (b-a)/n;
oddTotal = 0;
evenTotal = 0;
X = a:h:b
for i = 1:2:n-1
    oddTotal = f(X(i));
end

for i = 2:2:n-2
    evenTotal = f(X(i));
end
oddTotal = oddTotal*4;
evenTotal = evenTotal*2;

I = (b-a) * (f(a) + oddTotal + evenTotal + f(b))/(3*n);
end
