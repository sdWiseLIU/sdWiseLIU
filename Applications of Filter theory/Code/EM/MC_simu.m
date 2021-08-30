function re = MC_simu(y,par,M)
N = numel(y) - 1;
a = par(1);
b = par(2);
c = par(3);
mu = par(4);
F = randn(M,1);
S = zeros(M,N + 1);
S(:,1) = F;
for i = 1:N
    P = a + b*F + c*randn(M,1);
    alpha = exp(-0.5*((y(i + 1) - mu)*exp(-P) + 0.5*exp(P)).^2 - P);
    A = resampling(alpha,P);
    F = A(:,1);
    index = A(:,2);
    S(:,1:i + 1) = [S(index,1:i),F];
end
re = S;
end