function re = GradDes_abc(y,par,N)
a = par(1);
b = par(2);
c = par(3);
X_es = a + sqrt(b^2 + c^2)*rand(N,1);
d_a = 0;
d_b = 0;
d_c = 0;
H = -0.5*(y*exp(-X_es) - (2*exp(-X_es) - 0.5*exp(X_es))).^2 - X_es;
for i = 1:N
    d_a = d_a - H(i)*(X_es(i) - a)/(b^2 + c^2);
    d_b = d_b + H(i)*((X_es(i) - a)^2/(b^2 + c^2) - 1)*b/(b^2 + c^2);
    d_c = d_c + H(i)*((X_es(i) - a)^2/(b^2 + c^2) - 1)*c/(b^2 + c^2);
end
re = [d_a;d_b;d_c]/N;
end