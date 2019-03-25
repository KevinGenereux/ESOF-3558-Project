function I = CompSimpsons(a, b, n, f)
h = (b-a)/2;
oddTotal = 0;
evenTotal = 0;

for i = 1:2:n-1
    oddTotal = f(h*i);
end

for i = 2:2:n-2
    evenTotal = f(h*i);
end
oddTotal = oddTotal*4;
evenTotal = evenTotal*2;

I = (b-a) * (f(a) + oddTotal + evenTotal + f(b))/(3*n);
end
