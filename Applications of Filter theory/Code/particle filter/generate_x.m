function re = generate_x(a,b,c,delta_t,particles)
N = numel(particles);
X = zeros(N,1);
for i = 1:N
    X(i) = (a + b*particles(i))*delta_t + c*sqrt(delta_t)*randn;
end
re = X;
end