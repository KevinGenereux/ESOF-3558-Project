function D = BackFDiff(x, h, f)
D = (f(x+h) - f(x-h))/h;
end
