function [D, X] = LUDecomp(A, B)
n = length(A);
U = A;
L =  [1,0,0; 0,1,0; 0,0,1];
D = zeros(n,1);
X = zeros(n,1);

for i = 1:n-1
    for k = i+1:n
        fact = (U(k,i)/U(i,i));
        U(k,i:n) = U(k,i:n) - fact * U(i,i:n);
        L(k,i) = fact;
    end
end

for i = 1:n
    D(i) = B(i);
    for j = 1:i-1
        D(i) = D(i) - L(i,j)*D(j);
    end
end

for i = n:-1:1
    X(i) = D(i);
    for j = i+1:n
        X(i) = X(i)- U(i,j)*X(j);
    end
    X(i) = X(i)/U(i,i);
end
end
