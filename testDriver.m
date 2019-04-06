clc
%back diff
f = @(x) x^2 - 25*x^(-1)+ 32*x;
h = 0.1;
x = 2;
D = BackFDiff(x,h,f);
%actual, idk
fprintf("BackDiff: %f\n", D);

%eulers
y0 = 1;
ti = 0;
tf = 2;
h = 0.5;
f = @(t,y) y*t^2 - 1.1*y;
actual = exp( (((ti:h:tf).^3)/3) - 1.1*(ti:h:tf));
[t, YB1] = Eulers(ti,tf,h,y0,f);
fprintf("Eulers: \n");
disp(YB1);
fprintf("Actual: \n");
disp(actual);

%LU Decomp
A = [3, -2, 1; 2, 6, -4; -1, -2, 5];
B = [-10; 44; -26];
fprintf("LUDecomp: \n");
disp(LUDecomp(A,B));

%Golden Section Search
f = @(x) -2 * x ^ 0.5 + x + x ^ 2
fprintf("Golden Section Search: \n");
disp(GoldenSection(0,2,f,0.3)
